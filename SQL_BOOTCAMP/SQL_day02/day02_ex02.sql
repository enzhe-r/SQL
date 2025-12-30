SELECT COALESCE(person.name,'-') AS person_name, pv.visit_date, COALESCE(pizzeria.name, '-') AS pizzeria_name 
FROM (SELECT * from person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') as PV
FULL JOIN person ON person.id = PV.person_id
FULL JOIN pizzeria ON PV.pizzeria_id = pizzeria.id
ORDER BY 1, 2, 3;