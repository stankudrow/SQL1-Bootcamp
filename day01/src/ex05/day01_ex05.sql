-- certainly `SELECT *` will do, but for the clarity sake...
SELECT
    person.id AS "person.id",
    person.name AS "person.name",
    person.age AS "person.age",
    person.gender AS "person.gender",
    person.address AS "person.address",
    pizzeria.id AS "pizzeria.id",
    pizzeria.name AS "pizzeria.name",
    pizzeria.rating AS "pizzeria.rating"
FROM person, pizzeria
ORDER BY person.id, pizzeria.id;
