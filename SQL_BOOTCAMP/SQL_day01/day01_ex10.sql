SELECT p.name AS person_name, pizza_name, pz.name AS pizzeria_name
FROM person_order po
INNER JOIN person p ON po.person_id = p.id
INNER JOIN menu ON po.menu_id = menu.id 
INNER JOIN pizzeria pz ON menu.pizzeria_id = pz.id 
ORDER BY 1, 2, 3;