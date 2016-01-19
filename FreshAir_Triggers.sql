USE `1212962259_freshair_international`;

DELIMITER $$
DROP TRIGGER IF EXISTS after_flight_insert $$
CREATE TRIGGER after_flight_insert
AFTER INSERT ON flights
FOR EACH ROW
  BEGIN
    #No idea how to stop the insert in the slightest
  END $$
DELIMITER ;

-- Functions(vonandi)

DELIMITER $$
DROP FUNCTION IF EXISTS count_seats $$
CREATE FUNCTION count_seats(aircraft_id CHAR(6))
  RETURNS INT
  BEGIN
    DECLARE seat_count INT;
    SELECT count(seatID) into seat_count
    FROM aircraftSeats
    WHERE aircraftSeats.aircraftID = aircraft_id;
    return seat_count;

  END $$
DELIMITER ;