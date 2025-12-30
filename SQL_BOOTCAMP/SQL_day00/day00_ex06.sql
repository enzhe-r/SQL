SELECT (SELECT name FROM person WHERE person.id = person_order.person_id) AS name,
    CASE
    WHEN (SELECT name FROM person WHERE person.id = person_order.person_id) = 'Denis' then 'true'
    ELSE 'false'
    END check_name
FROM person_order
WHERE menu_id IN (13, 14, 18) and (order_date = '2022-01-07');