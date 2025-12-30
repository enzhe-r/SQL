SELECT DISTINCT name 
FROM person
JOIN person_order po ON po.person_id = person.id
JOIN menu ON menu.id = po.menu_id
WHERE address IN ('Moscow', 'Samara') AND gender = 'male' AND pizza_name IN ('pepperoni pizza', 'mushroom pizza') 
ORDER BY 1 DESC;