SELECT p.name AS name
FROM person_order AS po
JOIN person AS p
ON p.id = po.person_id
JOIN menu AS m
ON m.id = po.menu_id
WHERE p.gender = 'female' AND m.pizza_name = 'pepperoni pizza'
AND po.person_id IN (
    SELECT person_order.person_id
    FROM person_order
    JOIN person ON person.id = person_order.person_id
    JOIN menu ON menu.id = person_order.menu_id
    WHERE gender = 'female' AND menu.pizza_name = 'cheese pizza'
)
ORDER BY name;
