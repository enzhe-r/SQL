SELECT pizza_name,  pizzeria.name AS pizzeria_name
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN person ON person_order.person_id = person.id
WHERE person.name IN ('Denis', 'Anna')
ORDER BY 1, 2;

