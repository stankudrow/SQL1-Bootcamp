SELECT
    order_date,
    FORMAT('%s (age: %s)', name, age) AS person_information
FROM (
    SELECT order_date, person_id AS id
    FROM person_order
) AS po
NATURAL JOIN person
ORDER BY order_date, person_information;
