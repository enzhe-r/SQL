SELECT po.order_date, CONCAT(name, ' (age: ', p.age, ')') AS person_information FROM person p
INNER JOIN person_order po ON p.id = po.person_id
ORDER BY 1, 2;