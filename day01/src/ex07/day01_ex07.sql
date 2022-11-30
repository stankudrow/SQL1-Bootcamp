SELECT
    order_date,
    FORMAT('%s (age: %s)', name, age) AS person_information
FROM person_order as po
JOIN person as p ON p.id = po.person_id
ORDER BY order_date, person_information;
