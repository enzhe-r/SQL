SELECT DISTINCT p.name AS pizzeria_name
FROM pizzeria p
JOIN person_visits pv ON p.id = pv.pizzeria_id
JOIN menu ON menu.pizzeria_id = pv.pizzeria_id
JOIN person ON pv.person_id = person.id
WHERE person.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND menu.price < 800;