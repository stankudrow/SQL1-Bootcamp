WITH women (pizzeria_name) AS (
    SELECT pz.name AS pizzeria_name 
    FROM person AS p
    JOIN person_visits AS pv
    ON p.id = pv.person_id
    JOIN pizzeria AS pz
    ON pv.pizzeria_id = pz.id
    WHERE p.gender = 'female'
),
    men (pizzeria_name) AS (
    SELECT pz.name AS pizzeria_name 
    FROM person AS p
    JOIN person_visits AS pv
    ON p.id = pv.person_id
    JOIN pizzeria AS pz
    ON pv.pizzeria_id = pz.id
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
