-- the copypaste of day08_ex01
-- with minor changes in the isolation level

-- s1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- #1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #2
UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';

-- #4
COMMIT;

-- #8
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';


-- session barrier

-- s2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- #3
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #5
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #6
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

-- #7
COMMIT;

-- #9
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
