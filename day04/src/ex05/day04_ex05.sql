CREATE VIEW v_price_with_discount AS (
    SELECT
        p.name,
        m.pizza_name,
        m.price,
        m.price * 0.9 AS discount_price
    FROM person_order AS po
    INNER JOIN person AS p ON po.person_id = p.id
    INNER JOIN menu AS m ON po.menu_id = m.id
ORDER BY name, pizza_name
);
