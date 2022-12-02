WITH women (pizzeria_name) AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN person_visits AS pv
    ON pz.id = pv.pizzeria_id
    JOIN person AS p
    ON pv.person_id = p.id
    WHERE p.gender = 'female'
),
    men (pizzeria_name) AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN person_visits AS pv
    ON pz.id = pv.pizzeria_id
    JOIN person AS p
    ON pv.person_id = p.id
    WHERE p.gender = 'male'
)

SELECT pizzeria_name
FROM
(
    (
        SELECT pizzeria_name
        FROM women
        EXCEPT ALL
        SELECT pizzeria_name
        FROM men
    )
    UNION ALL
    (
        SELECT pizzeria_name
        FROM men
        EXCEPT ALL
        SELECT pizzeria_name
        FROM women
    )
) AS onlies
ORDER BY 1;
