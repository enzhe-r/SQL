SELECT p.name, pizza_name, price, ROUND(m.price - (m.price * pd.discount/100)) AS discount_price,
    pz.name AS pizzeria_name
FROM person_order po 
INNER JOIN menu m ON m.id = po.menu_id
INNER JOIN person p ON p.id = po.person_id
INNER JOIN pizzeria pz ON m.pizzeria_id = pz.id
INNER JOIN person_discounts pd ON p.id = pd.person_id AND pd.pizzeria_id = m.pizzeria_id
ORDER BY 1, 2;