WITH dates AS (
    SELECT generate_series('2022-01-01', '2022-01-10', interval '1 day')::DATE AS visit_date
)
SELECT 
    d.visit_date AS missing_date
FROM 
    dates d
LEFT JOIN person_visits pv ON d.visit_date = pv.visit_date AND pv.person_id IN (1, 2)
WHERE pv.person_id IS NULL
ORDER BY missing_date;