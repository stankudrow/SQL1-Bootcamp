WITH forgotten_menus(menu_id) AS
(
    SELECT id AS menu_id
    FROM menu 
    EXCEPT
    SELECT menu_id 
    FROM person_order
    ORDER BY menu_id
)

SELECT
    m.pizza_name,
    m.price,
    pz.name AS pizzeria_name
FROM menu AS m
JOIN forgotten_menus AS fms
ON m.id = fms.menu_id
JOIN pizzeria AS pz
ON m.pizzeria_id = pz.id
ORDER BY 1, 2;
