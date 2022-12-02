WITH Andrey_visits(pizzeria_name) AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN person_visits AS pv
    ON pv.pizzeria_id = pz.id
    JOIN person AS p
    ON pv.person_id = p.id
    WHERE p.name = 'Andrey'
),
Andrey_orders(pizzeria_name) AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN menu AS m
    ON m.pizzeria_id = pz.id
    JOIN person_order AS po
    ON po.menu_id = m.id
    JOIN person AS p
    ON po.person_id = p.id
    WHERE p.name = 'Andrey'
)

SELECT pizzeria_name
FROM Andrey_visits
EXCEPT
SELECT pizzeria_name
FROM Andrey_orders
ORDER BY 1;
