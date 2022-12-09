-- s1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';

COMMIT;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';


-- session barrier

-- s2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

COMMIT;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
