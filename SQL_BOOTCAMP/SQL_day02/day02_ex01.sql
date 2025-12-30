SELECT days::DATE AS missing_date
FROM 
    (SELECT person_id, visit_date
    FROM person_visits 
    WHERE person_id IN (1, 2)
    AND visit_date BETWEEN '2022-01-01' AND '2022-01-10') AS visits
    RIGHT JOIN generate_series('2022-01-01', '2022-01-10', interval '1 day') AS days
ON days = visits.visit_date
WHERE visits.person_id is NULL
ORDER BY 1;