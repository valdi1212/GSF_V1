USE `1212962259_freshair_international`;

DELIMITER $$

CREATE TRIGGER before_flight_insert
BEFORE INSERT ON flights
FOR EACH ROW
BEGIN

END $$