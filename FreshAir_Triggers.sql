USE `1212962259_freshair_international`;

-- Töflur

DELIMITER $$
DROP TABLE IF EXISTS FreshAirLogs $$
CREATE TABLE FreshAirLogs
(
  logID        INT     NOT NULL AUTO_INCREMENT,
  logText      VARCHAR(125),
  logDate      DATE             DEFAULT NULL,
  flightNumber CHAR(5) NOT NULL,
  CONSTRAINT freshairlogPK PRIMARY KEY (logID)
);

DELIMITER ;
-- Triggerar

DELIMITER $$
DROP TRIGGER IF EXISTS before_flight_insert $$
CREATE TRIGGER before_flight_insert
BEFORE INSERT ON flights
FOR EACH ROW
  BEGIN
    DECLARE msg VARCHAR(255);
    IF (new.flightDate < NOW())
    THEN
      SET msg = concat('Cannot register flight with past date ', cast(new.flightDate AS CHAR));
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = msg;
    END IF;
  END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS before_booking_insert $$
CREATE TRIGGER before_booking_insert
BEFORE INSERT ON bookings
FOR EACH ROW
  BEGIN
    -- stoppar bókun ef flugið er nú þegar farið
    DECLARE msg VARCHAR(255);
    DECLARE flight_date DATE;

    -- setur gögn í breytuna flight_date
    SELECT flights.flightDate
    INTO flight_date
    FROM flights
      JOIN bookings ON flights.flightCode = bookings.flightCode
    WHERE bookings.bookingNumber = new.bookingNumber;

	-- VIRKAR EKKI SIGGI!!!
    IF (cast(new.timeOfBooking AS DATE) > cast(flight_date AS DATE))
    THEN
      SET msg = concat('Cannot book flight after it has left.');
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = msg;
    END IF;

    -- stoppar bókun ef það eru engin tóm sæti
    IF (count_free_seats(new.flightCode) <= 0)
    THEN
      SET msg = concat('Cannot book flight. Seats full.');
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = msg;
    END IF;
  END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS before_flightschedule_insert $$
CREATE TRIGGER before_flightschedule_insert
BEFORE INSERT ON flightschedules
FOR EACH ROW
  BEGIN
    INSERT INTO FreshAirLogs (logText, logDate, flightNumber)
    VALUES ('Ný flugáætlun skráð', curdate(), new.flightNumber);
  END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS before_flightschedule_update $$
CREATE TRIGGER before_flightschedule_update
BEFORE UPDATE ON flightschedules
FOR EACH ROW
  BEGIN
    INSERT INTO FreshAirLogs (logText, logDate, flightNumber)
    VALUES ('Flugáætlun uppfærð', curdate(), new.flightNumber);
  END $$
DELIMITER ;

-- Functions

DELIMITER $$
DROP FUNCTION IF EXISTS count_seats $$
CREATE FUNCTION count_seats(aircraft_id CHAR(6))
  RETURNS INT
  BEGIN
    DECLARE seat_count INT;

    SELECT count(seatID)
    INTO seat_count
    FROM aircraftSeats
    WHERE aircraftSeats.aircraftID = aircraft_id;
    RETURN seat_count;

  END $$
DELIMITER ;

DELIMITER $$
DROP FUNCTION IF EXISTS count_free_seats $$
CREATE FUNCTION count_free_seats(flight_code INT(11))
  RETURNS INT
  BEGIN
    DECLARE seat_count INT;

    SELECT maxNumberOfPassangers - count(bookingNumber)
    INTO seat_count
    FROM bookings
      JOIN flights ON bookings.flightCode = flights.flightCode
      JOIN aircrafts ON flights.aircraftID = aircrafts.aircraftID
    WHERE flight_code = bookings.flightCode;

    RETURN seat_count;
  END $$
DELIMITER ;

DELIMITER $$
DROP FUNCTION IF EXISTS count_taken_seats $$
CREATE FUNCTION count_taken_seats(flight_code INT(11))
  RETURNS INT
  BEGIN
    DECLARE seat_count INT;

    SELECT count(bookingNumber)
    INTO seat_count
    FROM bookings
      JOIN flights ON bookings.flightCode = flights.flightCode
      JOIN aircrafts ON flights.aircraftID = aircrafts.aircraftID
    WHERE flight_code = bookings.flightCode;

    RETURN seat_count;
  END $$
DELIMITER ;

DELIMITER $$
DROP FUNCTION IF EXISTS get_flight_info $$
CREATE FUNCTION get_flight_info(flight_code INT(11))
  RETURNS VARCHAR(255)
  BEGIN
    DECLARE aircraft_id CHAR(6);
    DECLARE aircraft_type VARCHAR(35);

    SELECT aircrafts.aircraftID
    INTO aircraft_id
    FROM aircrafts
      JOIN flights ON aircrafts.aircraftID = flights.aircraftID
    WHERE flight_code = flights.flightCode;

    SELECT aircrafts.aircraftType
    INTO aircraft_type
    FROM aircrafts
      JOIN flights ON aircrafts.aircraftID = flights.aircraftID
    WHERE flight_code = flights.flightCode;

    RETURN concat(aircraft_id, ' | ', aircraft_type);
  END $$
DELIMITER ;
