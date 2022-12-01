SELECT daterange::date AS missing_date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS daterange
LEFT JOIN (
    SELECT *
    FROM person_visits
    WHERE (person_id = 1 OR person_id = 2)
    AND (visit_date BETWEEN '2022-01-01' AND '2022-01-10')
) AS rel
ON daterange = rel.visit_date
WHERE rel.person_id IS NULL
ORDER BY missing_date;
