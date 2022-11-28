SELECT (
    SELECT name
    FROM person
    WHERE id = subq.person_id
    ) AS person_name,
    (
        SELECT name
        FROM pizzeria
        WHERE id = subq.pizzeria_id
    ) AS pizzeria_name
FROM (
    SELECT person_id, pizzeria_id, visit_date
    FROM person_visits
    WHERE visit_date >= '2022-01-07' AND visit_date <='2022-01-09'
    ) AS subq
ORDER BY person_name ASC, pizzeria_name DESC;
