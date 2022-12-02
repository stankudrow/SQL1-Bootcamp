WITH women (pizzeria_name) AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN menu AS m
    ON pz.id = m.pizzeria_id
    JOIN person_order AS po
    ON m.id = po.menu_id
    JOIN person AS p
    ON po.person_id = p.id
    WHERE p.gender = 'female'
),
    men (pizzeria_name) AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN menu AS m
    ON pz.id = m.pizzeria_id
    JOIN person_order AS po
    ON m.id = po.menu_id
    JOIN person AS p
    ON po.person_id = p.id
    WHERE p.gender = 'male'
)

SELECT pizzeria_name
FROM
(
    (
        SELECT pizzeria_name
        FROM women
        EXCEPT
        SELECT pizzeria_name
        FROM men
    )
    UNION
    (
        SELECT pizzeria_name
        FROM men
        EXCEPT
        SELECT pizzeria_name
        FROM women
    )
) AS onlies
ORDER BY 1;
