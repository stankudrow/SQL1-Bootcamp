--s1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- #1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #4
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #5
COMMIT;

-- #6
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- session barrier

-- s2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- #2
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

-- #3
COMMIT;

-- #7
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
