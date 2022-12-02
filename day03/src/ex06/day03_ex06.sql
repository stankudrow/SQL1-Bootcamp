WITH pizzarias(id, pizza_name, pizzeria_name, price) AS
(
    SELECT
        m.id,
        m.pizza_name AS pizza_name,
        pz.name AS pizzeria_name,
        m.price AS price
    FROM menu AS m
    JOIN pizzeria AS pz
    ON m.pizzeria_id = pz.id
)

SELECT
    s1.pizza_name AS pizza_name,
    s1.pizzeria_name AS pizzeria_name_1,
    s2.pizzeria_name AS pizzeria_name_2,
    s1.price AS price
FROM pizzarias AS s1, pizzarias AS s2
WHERE s1.pizza_name = s2.pizza_name
    AND s1.price = s2.price
    AND s1.pizzeria_name != s2.pizzeria_name
    AND s1.id > s2.id
ORDER BY pizza_name;
