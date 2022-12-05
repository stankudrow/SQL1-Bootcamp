SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT
    m.pizza_name,
    pz.name AS pizzeria_name
FROM menu AS m
INNER JOIN pizzeria AS pz
ON m.pizzeria_id = pz.id;
