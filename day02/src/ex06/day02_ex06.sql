SELECT m.pizza_name, pz.name AS pizzeria_name
FROM person_order AS po
JOIN menu AS m
ON m.id = po.menu_id
JOIN pizzeria AS pz
ON m.pizzeria_id = pz.id 
WHERE po.person_id = 1 OR po.person_id = 4
ORDER BY 1, 2;

