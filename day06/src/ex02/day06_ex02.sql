SELECT
    p.name,
    m.pizza_name,
    m.price,
    ROUND(m.price * (1 - pd.discount/100)) AS discount_price,
    pz.name AS pizzeria_name
FROM person AS p
JOIN person_order AS po
ON po.person_id = p.id
JOIN menu AS m
ON po.menu_id = m.id
JOIN person_discounts AS pd
ON (
    pd.person_id = p.id
    AND
    pd.pizzeria_id = m.pizzeria_id
)
JOIN pizzeria AS pz
ON pd.pizzeria_id = pz.id
ORDER BY 1, 2;
