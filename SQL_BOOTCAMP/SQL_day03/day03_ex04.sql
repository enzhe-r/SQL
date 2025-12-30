select * from person_order;
select * from menu;
(SELECT pz.name AS pizzeria_name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu ON po.menu_id = menu.id
JOIN pizzeria pz ON pizzeria_id = pz.id
WHERE p.gender = 'female'

EXCEPT
SELECT pz.name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu ON po.menu_id = menu.id
JOIN pizzeria pz ON pizzeria_id = pz.id
WHERE p.gender = 'male')

UNION 

(SELECT pz.name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu ON po.menu_id = menu.id
JOIN pizzeria pz ON pizzeria_id = pz.id
WHERE p.gender = 'male'

EXCEPT 
SELECT pz.name 
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu ON po.menu_id = menu.id
JOIN pizzeria pz ON pizzeria_id = pz.id
WHERE p.gender = 'female')
ORDER BY 1;