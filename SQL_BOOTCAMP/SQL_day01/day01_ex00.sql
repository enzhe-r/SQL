SELECT id as object_id, pizza_name as object_name FROM menu
UNION ALL
SELECT id, name FROM person
ORDER BY 1, 2;