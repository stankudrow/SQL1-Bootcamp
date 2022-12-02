SELECT
    m.pizza_name,
    m.price,
    pz.name,
    pv.visit_date
FROM menu AS m
JOIN pizzeria AS pz
ON m.pizzeria_id = pz.id
JOIN person_visits AS pv
ON pv.pizzeria_id = pz.id
JOIN person AS p
ON pv.person_id = p.id
WHERE (
    p.name = 'Kate'
    AND m.price BETWEEN 800 AND 1000
)
ORDER BY m.pizza_name, m.price, pz.name;
