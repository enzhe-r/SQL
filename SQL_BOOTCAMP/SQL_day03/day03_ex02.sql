SELECT m.pizza_name, m.price, p.name AS pizzeria_name
FROM menu AS m
JOIN pizzeria AS p ON m.pizzeria_id = p.id
LEFT JOIN person_order po ON m.id = po.menu_id
WHERE po.menu_id is NULL
ORDER BY 1, 2;
