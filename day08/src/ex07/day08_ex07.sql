-- deadlock situation

--s1
BEGIN;

-- #1
UPDATE person
SET name = 'Geoffroy'
WHERE id = 1;

-- #3
UPDATE person
SET name = 'Geoffroy'
WHERE id = 2;


-- session barrier

--s2
BEGIN;

-- #2
UPDATE person
SET name = 'Geoffroy'
WHERE id = 2;

-- #4
UPDATE person
SET name = 'Geoffroy'
WHERE id = 1;
