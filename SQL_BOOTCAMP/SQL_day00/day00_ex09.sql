SELECT 
    (SELECT name FROM person WHERE id = pv.person_id) AS person_name,
    (SELECT name FROM pizzeria WHERE id = pv.pizzeria_id) AS person_name
FROM 
        (SELECT * from person_visits where visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv
ORDER BY 1, 2 DESC;