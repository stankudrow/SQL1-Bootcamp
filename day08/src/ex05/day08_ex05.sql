--s1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- #1
SELECT SUM(rating) FROM pizzeria;

-- #4
SELECT SUM(rating) FROM pizzeria;

-- #5
COMMIT;

-- #7
SELECT SUM(rating) FROM pizzeria;

--s2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- #2
UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';

-- #3
COMMIT;

-- #6
SELECT SUM(rating) FROM pizzeria;
