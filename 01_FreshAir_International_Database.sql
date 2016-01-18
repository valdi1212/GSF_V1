-- ==================================*** CREATE DATABASE SECTION ***==================================
DROP DATABASE IF EXISTS `1212962259_FreshAir_International`;
CREATE DATABASE `1212962259_FreshAir_International`;
USE `1212962259_FreshAir_International`;
-- ====================================*** CREATE TABLE SECTION ***===================================
CREATE TABLE Countries
(
  alpha336612  CHAR(2)     NOT NULL,
  alpha336613  CHAR(3)     NOT NULL,
  alpha31662   CHAR(13)    NOT NULL,
  numeric33661 INT         NOT NULL,
  countryName  VARCHAR(75) NOT NULL,
  CONSTRAINT countrycodes_PK PRIMARY KEY (alpha336612)
);

CREATE TABLE Cities
(
  cityID      INT         NOT NULL AUTO_INCREMENT,
  cityName    VARCHAR(35) NOT NULL,
  countryCode CHAR(2),
  CONSTRAINT city_PK PRIMARY KEY (cityID),
  CONSTRAINT city_countries_FK FOREIGN KEY (countryCode) REFERENCES Countries (alpha336612)
);

CREATE TABLE Airports
(
  IATAcode    CHAR(3) NOT NULL,
  airportName VARCHAR(75),
  cityID      INT,
  CONSTRAINT airport_PK PRIMARY KEY (IATAcode),
  CONSTRAINT airport_city_FK FOREIGN KEY (cityID) REFERENCES Cities (cityID)
);

CREATE TABLE FlightSchedules
(
  flightNumber       CHAR(5) NOT NULL,
  originatingAirport CHAR(3) NOT NULL,
  destinationAirport CHAR(3) NOT NULL,
  distance           DECIMAL(7, 2),
  CONSTRAINT flightschedule_PK PRIMARY KEY (flightNumber),
  CONSTRAINT origin_city_FK FOREIGN KEY (originatingAirport) REFERENCES Airports (IATAcode),
  CONSTRAINT destination_city_FK FOREIGN KEY (destinationAirport) REFERENCES Airports (IATAcode)
);

CREATE TABLE Weekdays
(
  weekdayNumber INT NOT NULL,
  weekdayName   VARCHAR(25),
  CONSTRAINT weekday_PK PRIMARY KEY (weekdayNumber),
  CONSTRAINT dayname_UQ UNIQUE (weekdayName)
);

CREATE TABLE ScheduleWeekdays
(
  weekday      INT     NOT NULL,
  departure    TIME    NOT NULL,
  flightNumber CHAR(5) NOT NULL,
  CONSTRAINT scheduleweekdays_PK PRIMARY KEY (weekday, flightNumber),
  CONSTRAINT flightnumber_flightschedule_FK FOREIGN KEY (flightNumber) REFERENCES FlightSchedules (flightNumber),
  CONSTRAINT flightnumber_weekdays_FK FOREIGN KEY (weekday) REFERENCES Weekdays (weekdayNumber)
);

CREATE TABLE Stopovers
(
  flightNumber CHAR(5) NOT NULL,
  IATAcode     CHAR(3) NOT NULL,
  stopTime     TIME,
  CONSTRAINT stopover_PK PRIMARY KEY (flightNumber, IATAcode),
  CONSTRAINT stopover_flightschedule_FK FOREIGN KEY (flightNumber) REFERENCES FLightSchedules (flightNumber),
  CONSTRAINT stopover_airport_FK FOREIGN KEY (IATAcode) REFERENCES Airports (IATAcode)
);

CREATE TABLE Aircrafts
(
  aircraftID            CHAR(6),
  aircraftType          VARCHAR(35),
  maxNumberOfPassangers SMALLINT,
  enteredService        DATE,
  aircraftName          VARCHAR(55),
  CONSTRAINT Aircraft_FK PRIMARY KEY (aircraftID)
);

CREATE TABLE Flights
(
  flightCode   INT     NOT NULL AUTO_INCREMENT,
  flightDate   DATE    NOT NULL,
  flightNumber CHAR(5) NOT NULL,
  aircraftID   CHAR(6) NOT NULL,
  flightTime   TIME,
  CONSTRAINT flightPK PRIMARY KEY (flightCode),
  CONSTRAINT flight_data_UQ UNIQUE (flightDate, flightNumber, aircraftID),
  CONSTRAINT flight_flightschedule_FK FOREIGN KEY (flightNumber) REFERENCES FlightSchedules (flightNumber),
  CONSTRAINT flight_aircraft_FK FOREIGN KEY (aircraftID) REFERENCES Aircrafts (aircraftID)
);

CREATE TABLE Classes
(
  classID   INT NOT NULL AUTO_INCREMENT,
  className VARCHAR(25),
  CONSTRAINT class_PK PRIMARY KEY (classID)
);

CREATE TABLE AircraftSeats
(
  seatID        INT         NOT NULL AUTO_INCREMENT,
  rowNumber     TINYINT     NOT NULL,
  seatNumber    CHAR(1)     NOT NULL,
  seatPlacement VARCHAR(15) NULL,
  deck          CHAR(5),
  classID       INT         NOT NULL,
  aircraftID    CHAR(6)     NOT NULL,
  CONSTRAINT seat_PK PRIMARY KEY (seatID),
  CONSTRAINT seat_class_FK FOREIGN KEY (classID) REFERENCES Classes (classID),
  CONSTRAINT seat_plane_FK FOREIGN KEY (aircraftID) REFERENCES Aircrafts (aircraftID)
);

CREATE TABLE Bookings
(
  bookingNumber   INT      NOT NULL AUTO_INCREMENT,
  timeOfBooking   DATETIME NOT NULL,
  paymentType     BIT, -- 1: credit card.	0: debet card(cash)
  cardIssuedBy    VARCHAR(35),
  cardholdersName VARCHAR(55),
  flightCode      INT      NOT NULL,
  classID         INT               DEFAULT 3,
  returnFLight    BOOLEAN           DEFAULT TRUE,
  CONSTRAINT booking_PK PRIMARY KEY (bookingNumber),
  CONSTRAINT booking_flight_FK FOREIGN KEY (flightCode) REFERENCES Flights (flightCode),
  CONSTRAINT booking_class_FK FOREIGN KEY (classID) REFERENCES Classes (classID)
);

CREATE TABLE PriceCategories
(
  categoryID             INT NOT NULL AUTO_INCREMENT,
  categoryName           VARCHAR(35),
  validFrom              DATE,
  validTo                DATE,
  minimumPrice           INT,
  refundable             BOOLEAN,
  seatNumberRestrictions INT,
  classID                INT,
  CONSTRAINT pricecategory_PK PRIMARY KEY (categoryID),
  CONSTRAINT category_class_FK FOREIGN KEY (classID) REFERENCES Classes (classID)
);

CREATE TABLE Prices
(
  priceID         INT NOT NULL AUTO_INCREMENT,
  amount          INT NOT NULL,
  priceCategoryID INT NOT NULL,
  CONSTRAINT price_PK PRIMARY KEY (priceID),
  CONSTRAINT price_pricecategory_FK FOREIGN KEY (priceCategoryID) REFERENCES PriceCategories (categoryID)
);

CREATE TABLE Passengers
(
  seatingID     INT         NOT NULL AUTO_INCREMENT,
  personID      VARCHAR(35) NOT NULL,
  personName    VARCHAR(75) NOT NULL,
  priceID       INT,
  seatID        INT         NOT NULL,
  bookingNumber INT         NOT NULL,
  CONSTRAINT seating_PK PRIMARY KEY (seatingID),
  CONSTRAINT seting_price_FK FOREIGN KEY (priceID) REFERENCES Prices (priceID),
  CONSTRAINT seating_booking_FK FOREIGN KEY (bookingNumber) REFERENCES Bookings (bookingNumber),
  CONSTRAINT seating_seat_FK FOREIGN KEY (seatID) REFERENCES AircraftSeats (seatID)
);

