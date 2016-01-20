USE `1212962259_freshair_international`;

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
    DECLARE msg VARCHAR(255);
    DECLARE flight_date DATE;
    DECLARE flight_time TIME;
    SELECT flights.flightDate
    INTO flight_date
    FROM flights
      JOIN bookings ON flights.flightCode = bookings.flightCode
    WHERE bookings.bookingNumber = new.bookingNumber;

    SELECT flights.flightTime
    INTO flight_time
    FROM flights
      JOIN bookings ON flights.flightCode = bookings.flightCode
    WHERE bookings.bookingNumber = new.bookingNumber;

    IF (cast(new.timeOfBooking AS DATE) > flight_date OR
        (cast(new.timeOfBooking AS DATE) = flight_date AND cast(new.timeOfBooking AS TIME) > flight_time))
    THEN
      SET msg = concat('Cannot book flight after it has left ', cast(new.timeOfBooking AS CHAR));
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = msg;
    END IF;
  END $$
DELIMITER ;

-- Functions(vonandi)

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

    RETURN concat(aircraft_id,' | ', aircraft_type);
  END $$
DELIMITER ;