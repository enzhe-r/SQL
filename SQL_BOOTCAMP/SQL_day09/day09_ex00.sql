CREATE TABLE person_audit (
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    type_event CHAR(1) NOT NULL,
    row_id INTEGER NOT NULL,
    name VARCHAR(100),
    age INTEGER,
    gender VARCHAR(10),
    address VARCHAR(200)
);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit()
RETURNS TRIGGER AS $fnc_trg_person_insert_audit$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)
        VALUES (CURRENT_TIMESTAMP, 'I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
    END IF;
    RETURN NEW;
END;
$fnc_trg_person_insert_audit$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_person_insert_audit
AFTER INSERT ON person
FOR EACH ROW
EXECUTE FUNCTION fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address) 
VALUES (10,'Damir', 22, 'male', 'Irkutsk');

SELECT * FROM person_audit WHERE row_id = 10;
