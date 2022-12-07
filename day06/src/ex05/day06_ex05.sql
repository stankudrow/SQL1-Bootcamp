COMMENT ON TABLE person_discounts
IS 'The discounts for pizzeria visitors';

COMMENT ON COLUMN person_discounts.person_id
IS 'The foreign key referencing to person.id';

COMMENT ON COLUMN person_discounts.pizzeria_id
IS 'The foreign key referencing to pizzeria.id';
