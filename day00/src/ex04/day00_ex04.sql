SELECT CONCAT(name, FORMAT('(age:%s, gender:''%s'', address:''%s'')', age, gender, address))
AS person_information
FROM person
ORDER BY person_information;
