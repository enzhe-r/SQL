SELECT pizza_name, price, pz.name AS pizzeria_name, pv.visit_date
FROM person_visits AS pv 
JOIN person ON person.id = pv.person_id
JOIN pizzeria AS pz ON pv.pizzeria_id = pz.id
JOIN menu ON menu.pizzeria_id = pz.id
WHERE person.name = 'Kate' AND price BETWEEN 800 AND 1000
ORDER BY 1, 2, 3;
