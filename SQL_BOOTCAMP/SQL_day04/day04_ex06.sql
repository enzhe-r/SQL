CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pz.name AS pizzeria_name
FROM person AS p
JOIN person_visits AS pv ON p.id = pv.person_id
JOIN pizzeria AS pz ON pv.pizzeria_id = pz.id
JOIN menu AS m ON pz.id = m.pizzeria_id
WHERE p.name = 'Dmitriy' AND pv.visit_date = DATE '2022-01-08' AND m.price < 800;

SELECT * FROM mv_dmitriy_visits_and_eats;