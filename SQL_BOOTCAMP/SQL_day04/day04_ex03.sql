SELECT generated_date AS missing_date
FROM v_generated_dates AS gd
LEFT JOIN person_visits AS pv ON generated_date = pv.visit_date
WHERE pv.visit_date IS NULL
ORDER BY 1;
