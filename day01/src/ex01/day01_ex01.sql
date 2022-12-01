SELECT uni.object_name
FROM (
    SELECT pizza_name AS object_name, 'menu' AS label
    FROM menu
    UNION ALL
    SELECT name AS object_name, 'person' AS label
    FROM person
    ORDER BY label DESC
) AS uni;
