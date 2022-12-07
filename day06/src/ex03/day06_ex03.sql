CREATE UNIQUE INDEX IF NOT EXISTS idx_person_discounts_unique
ON person_discounts(person_id, pizzeria_id);

SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT *
FROM person_discounts
WHERE person_id = (
    SELECT id
    FROM person
    WHERE name = 'Elvira'
);
