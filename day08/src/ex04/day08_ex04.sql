--s1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- #1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #4
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #6
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #7
COMMIT;

-- #8
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- session barrier

--s2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- #2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- #3
UPDATE pizzeria
SET rating = 3.0
WHERE name = 'Pizza Hut';

-- #5
COMMIT;

-- #9
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
