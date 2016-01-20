-- Cities
INSERT INTO Cities (cityName, countryCode) VALUES ('Reykjavik', 'IS');
INSERT INTO Cities (cityName, countryCode) VALUES ('Oslo', 'NO');
INSERT INTO Cities (cityName, countryCode) VALUES ('Stockholm', 'SE');
INSERT INTO Cities (cityName, countryCode) VALUES ('Copenhagen', 'DK');
INSERT INTO Cities (cityName, countryCode) VALUES ('Helsinki', 'FI');
INSERT INTO Cities (cityName, countryCode) VALUES ('London', 'GB');
INSERT INTO Cities (cityName, countryCode) VALUES ('Paris', 'FR');
INSERT INTO Cities (cityName, countryCode) VALUES ('Frankfurt', 'DE');
INSERT INTO Cities (cityName, countryCode) VALUES ('Zürich', 'CH');
INSERT INTO Cities (cityName, countryCode) VALUES ('Barcelona', 'ES');
INSERT INTO Cities (cityName, countryCode) VALUES ('Moscow', 'RU');
INSERT INTO Cities (cityName, countryCode) VALUES ('Warsaw', 'PL');
INSERT INTO Cities (cityName, countryCode) VALUES ('Torshavn', 'FO');
INSERT INTO Cities (cityName, countryCode) VALUES ('Milano', 'IT');
INSERT INTO Cities (cityName, countryCode) VALUES ('Vienna', 'AT');
INSERT INTO Cities (cityName, countryCode) VALUES ('Istanbul', 'TR');
INSERT INTO Cities (cityName, countryCode) VALUES ('Tel Aviv', 'IL');
INSERT INTO Cities (cityName, countryCode) VALUES ('Cairo', 'EG');
INSERT INTO Cities (cityName, countryCode) VALUES ('Doha', 'QA');
INSERT INTO Cities (cityName, countryCode) VALUES ('Dar es Salaam', 'TZ');
INSERT INTO Cities (cityName, countryCode) VALUES ('Nairobi', 'KE');
INSERT INTO Cities (cityName, countryCode) VALUES ('Johannesburg', 'ZA');
INSERT INTO Cities (cityName, countryCode) VALUES ('Teheran', 'IR');
INSERT INTO Cities (cityName, countryCode) VALUES ('Baghdad', 'IQ');
INSERT INTO Cities (cityName, countryCode) VALUES ('Mumbai', 'IN');
INSERT INTO Cities (cityName, countryCode) VALUES ('Beijing', 'CN');
INSERT INTO Cities (cityName, countryCode) VALUES ('Bangkok', 'TH');
INSERT INTO Cities (cityName, countryCode) VALUES ('Hanoi', 'VN');
INSERT INTO Cities (cityName, countryCode) VALUES ('Tokyo', 'JP');
INSERT INTO Cities (cityName, countryCode) VALUES ('Sydney', 'AU');
INSERT INTO Cities (cityName, countryCode) VALUES ('Auckland', 'NZ');
INSERT INTO Cities (cityName, countryCode) VALUES ('Boston', 'US');
INSERT INTO Cities (cityName, countryCode) VALUES ('Los Angeles', 'US');
INSERT INTO Cities (cityName, countryCode) VALUES ('Toronto', 'CA');
INSERT INTO Cities (cityName, countryCode) VALUES ('Kingston', 'JM');
INSERT INTO Cities (cityName, countryCode) VALUES ('Rio De Janeiro', 'BR');
INSERT INTO Cities (cityName, countryCode) VALUES ('Mexico City', 'MX');
INSERT INTO Cities (cityName, countryCode) VALUES ('Glasgow', 'GB');
INSERT INTO Cities (cityName, countryCode) VALUES ('Lissabon', 'PT');
INSERT INTO Cities (cityName, countryCode) VALUES ('Prague', 'CZ');
INSERT INTO Cities (cityName, countryCode) VALUES ('Buenos Aires', 'AR');
INSERT INTO Cities (cityName, countryCode) VALUES ('New York', 'US');
INSERT INTO Cities (cityName, countryCode) VALUES ('Athens', 'GR');

-- Airports
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('KEF', 'Keflavik Airport', 1); -- Iceland
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('OSL', 'Gardermoen', 2); -- Norway
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('ARN', 'Arlanda', 3); -- Stockholm
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('CPH', 'Kastrup', 4); -- Danmark
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('HEL', 'Helsinki Vantaa', 5); -- Finland
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('LHR', 'London Heathrow', 6); -- Great Britain
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('STN', 'London Stansted', 6); -- Great Britain
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('CDG', 'Charles de Gaulle International', 7); -- France
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('FRA', 'Frankfurt am Main International', 8); -- Germany
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('HHN', 'Frankfurt-Hahn', 8); -- Germany
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('ZRH', 'Zürich Airport', 9); -- Swiss
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('BCN', 'Barcelona International ', 10); -- Spain
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('SVO', 'Sheremetyevo International ', 11); -- Russia
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('WAW', 'Warsaw Chopin Airport', 12); -- Poland
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('FAE', 'Vagar Airport', 13); -- Faroe Islands
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('MXP', 'Malpensa International', 14); -- Italia
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('VIE', 'Vienna International', 15); -- Austria
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('IST', 'Istanbul Atatürk Airport', 16); -- Turkey
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('TLV', 'Ben Gurion International', 17); -- Israel
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('CAI', 'Cairo International', 18); -- Egypt
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('DOH', 'Doha International Airport', 19); -- Qatar
INSERT INTO Airports (IATAcode, airportName, CityID)
VALUES ('DAR', 'Julius Nyerere International Airport', 20); -- Tanzania
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('NBO', 'Jomo Kenyatta International', 21); -- Kenya
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('JNB', 'OR Tambo International', 22); -- South Africa
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('THR', 'Mehrabad International Airport', 23); -- Iran
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('BGW', 'Baghdad International Airport', 24); -- Irak
INSERT INTO Airports (IATAcode, airportName, CityID)
VALUES ('BOM', 'Chhatrapati Shivaji International Airport', 25); -- India
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('PEK', 'Beijing Capital International', 26); -- China
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('HKG', 'Hong Kong International Airport', 26); -- China
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('BKK', 'Suvarnabhumi', 27); -- Thailand
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('HAN', 'Noi Bai International Airport', 28); -- Viet Nam
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('NRT', 'Narita International', 29); -- Japan
INSERT INTO Airports (IATAcode, airportName, CityID)
VALUES ('SYD', 'Sydney Kingsford Smith International', 30); -- Australia
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('AKL', 'Auckland International', 31); -- New Zealand
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('BOS', 'Logan International', 32); -- U.S.A.
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('LAX', 'Los Angeles International', 33); -- U.S.A.
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('YYZ', 'Lester B. Pearson International', 34); -- Canada
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('KIN', 'Norman Manley International', 35); -- Jamaica
INSERT INTO Airports (IATAcode, airportName, CityID)
VALUES ('GIG', 'Galeão - Antônio Carlos Jobim International', 36); -- Brasil
INSERT INTO Airports (IATAcode, airportName, CityID)
VALUES ('MEX', 'Licenciado Benito Juarez International Airport', 37); -- Mexico
INSERT INTO Airports (IATAcode, airportName, CityID)
VALUES ('GLA', 'Glasgow International Airport', 38); -- Great Britain
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('LIS', 'Lisbon Portela Airport', 39); -- Portugal
INSERT INTO Airports (IATAcode, airportName, CityID)
VALUES ('PRG', 'Prague Václav Havel Airport', 40); -- Check Republic
INSERT INTO Airports (IATAcode, airportName, CityID)
VALUES ('IZE', 'Ministro Pistarini International Airport', 41); -- Argentina
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('JFK', 'John F. Kennedy Airport', 42); -- U.S.A.
INSERT INTO Airports (IATAcode, airportName, CityID) VALUES ('ATH', 'Athens International Airport', 43); -- Greece

-- Price Categories
INSERT INTO Pricecategories (categoryName, validFrom, validTo, minimumPrice, refundable, seatNumberRestrictions, classID)
VALUES ('FullEconomyScandinavia', '2014-05-01', '2014-09-30', 35000, 1, 0, 3);
INSERT INTO Pricecategories (categoryName, validFrom, validTo, minimumPrice, refundable, seatNumberRestrictions, classID)
VALUES ('BasicEconomyScandinavia', '2014-05-01', '2014-09-30', 23000, 0, 0, 3);
INSERT INTO Pricecategories (categoryName, validFrom, validTo, minimumPrice, refundable, seatNumberRestrictions, classID)
VALUES ('ReducedEconomyScandinavia', '2014-05-01', '2014-09-30', 14700, 0, 15, 3);
INSERT INTO Pricecategories (categoryName, validFrom, validTo, minimumPrice, refundable, seatNumberRestrictions, classID)
VALUES ('BusinessClassKEF-OSL', '2014-05-01', '2014-09-30', 70000, 1, 0, 2);
INSERT INTO Pricecategories (categoryName, validFrom, validTo, minimumPrice, refundable, seatNumberRestrictions, classID)
VALUES ('Football Alliance', '2014-05-01', '2014-12-31', 12500, 1, 0, 2);
INSERT INTO Pricecategories (categoryName, validFrom, validTo, minimumPrice, refundable, seatNumberRestrictions, classID)
VALUES ('Ociania special', '2014-05-01', '2014-12-31', 98900, 1, 35, 3);
INSERT INTO Pricecategories (categoryName, validFrom, validTo, minimumPrice, refundable, seatNumberRestrictions, classID)
VALUES ('Ociania supercomfort', '2014-05-01', '2014-12-31', 197200, 1, 15, 2);
INSERT INTO Pricecategories (categoryName, validFrom, validTo, minimumPrice, refundable, seatNumberRestrictions, classID)
VALUES ('Ociania complete', '2014-05-01', '2014-12-31', 311000, 1, 8, 1);

-- Prices
INSERT INTO Prices (amount, priceCategoryID) VALUES (76000, 4);
INSERT INTO Prices (amount, priceCategoryID) VALUES (81000, 4);
INSERT INTO Prices (amount, priceCategoryID) VALUES (14700, 3);
INSERT INTO Prices (amount, priceCategoryID) VALUES (23000, 2);
INSERT INTO Prices (amount, priceCategoryID) VALUES (35000, 1);
INSERT INTO Prices (amount, priceCategoryID) VALUES (12500, 5);
INSERT INTO Prices (amount, priceCategoryID) VALUES (112000, 6);
INSERT INTO Prices (amount, priceCategoryID) VALUES (225000, 7);
INSERT INTO Prices (amount, priceCategoryID) VALUES (366000, 8);

-- Flight Schedules
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA501', 'KEF', 'OSL', 1748);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA502', 'OSL', 'KEF', 1748);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA503', 'KEF', 'ARN', 2136);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA504', 'ARN', 'KEF', 2136);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA505', 'KEF', 'CPH', 2137);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA506', 'CPH', 'KEF', 2137);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA507', 'KEF', 'HEL', 2418);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA508', 'HEL', 'KEF', 2418);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA509', 'KEF', 'FAE', 801);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA510', 'FAE', 'KEF', 801);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA401', 'KEF', 'LHR', 1890);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA402', 'LHR', 'KEF', 1890);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA403', 'KEF', 'STN', 1890);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA404', 'STN', 'KEF', 1890);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA405', 'KEF', 'CDG', 2234);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA406', 'CDG', 'KEF', 2234);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA407', 'KEF', 'FRA', 2379);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA408', 'FRA', 'KEF', 2379);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA409', 'KEF', 'HHN', 2379);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA410', 'HHN', 'KEF', 2379);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA411', 'KEF', 'ZRH', 2622);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA412', 'ZRH', 'KEF', 2622);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA413', 'KEF', 'BCN', 2968);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA414', 'BCN', 'KEF', 2968);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA415', 'KEF', 'SVO', 3311);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA416', 'SVO', 'KEF', 3311);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA417', 'KEF', 'WAW', 2774);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA418', 'WAW', 'KEF', 2774);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA419', 'KEF', 'MXP', 2827);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA420', 'MXP', 'KEF', 2827);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA421', 'KEF', 'VIE', 2891);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA422', 'VIE', 'KEF', 2891);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA423', 'KEF', 'GLA', 1339);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA424', 'GLA', 'KEF', 1339);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA425', 'KEF', 'LIS', 2951);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA426', 'LIS', 'KEF', 2951);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA427', 'KEF', 'PRG', 2640);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA428', 'PRG', 'KEF', 2640);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA429', 'KEF', 'ATH', 4171);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA430', 'ATH', 'KEF', 4171);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA601', 'KEF', 'IST', 4125);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA602', 'IST', 'KEF', 4125);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA603', 'KEF', 'TLV', 5242);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA604', 'TLV', 'KEF', 5242);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA201', 'KEF', 'CAI', 5276);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA202', 'CAI', 'KEF', 5276);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA203', 'KEF', 'NBO', 8695);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA204', 'NBO', 'KEF', 8695);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA205', 'KEF', 'DAR', 9366);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA206', 'DAR', 'KEF', 9366);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA207', 'KEF', 'JNB', 10950);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA208', 'JNB', 'KEF', 10950);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA701', 'KEF', 'DOH', 6704);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA702', 'DOH', 'KEF', 6704);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA703', 'KEF', 'THR', 5700);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA704', 'THR', 'KEF', 5700);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA705', 'KEF', 'BGW', 5585);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA706', 'BGW', 'KEF', 5585);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA901', 'KEF', 'BOM', 8354);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA902', 'BOM', 'KEF', 8354);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA903', 'KEF', 'PEK', 7892);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA904', 'PEK', 'KEF', 7892);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA911', 'KEF', 'HKG', 9700);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA912', 'HKG', 'KEF', 9700);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA905', 'KEF', 'BKK', 10107);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA906', 'BKK', 'KEF', 10107);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA907', 'KEF', 'HAN', 9549);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA908', 'HAN', 'KEF', 9549);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA909', 'KEF', 'NRT', 8808);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA910', 'NRT', 'KEF', 8808);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA101', 'KEF', 'SYD', 16635);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA102', 'SYD', 'KEF', 16635);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA103', 'KEF', 'AKL', 16801);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA104', 'AKL', 'KEF', 16801);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA801', 'KEF', 'YYZ', 4199);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA802', 'YYZ', 'KEF', 4199);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA803', 'KEF', 'LAX', 6940);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA804', 'LAX', 'KEF', 6940);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA805', 'KEF', 'BOS', 3917);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA806', 'BOS', 'KEF', 3917);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA807', 'KEF', 'JFK', 4207);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA808', 'JFK', 'KEF', 4207);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA809', 'KEF', 'KIN', 6519);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA810', 'KIN', 'KEF', 6519);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA301', 'KEF', 'MEX', 7460);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA302', 'MEX', 'KEF', 7460);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA305', 'KEF', 'GIG', 9867);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA306', 'GIG', 'KEF', 9867);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA303', 'KEF', 'IZE', 11405);
INSERT INTO FlightSchedules (flightNumber, originatingAirport, destinationAirport, distance)
VALUES ('FA304', 'IZE', 'KEF', 11405);

-- ScheduleWeekdays  Keflavik - Oslo - Keflavik
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (1, '08:10', 'FA501');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (2, '08:10', 'FA501');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (3, '08:10', 'FA501');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (4, '08:10', 'FA501');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (5, '08:10', 'FA501');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (6, '07:40', 'FA501');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (7, '07:40', 'FA501');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (1, '12:45', 'FA502');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (2, '12:45', 'FA502');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (3, '12:45', 'FA502');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (4, '12:45', 'FA502');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (5, '12:45', 'FA502');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (6, '12:15', 'FA502');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (7, '12:15', 'FA502');
-- ScheduleWeekdays  Keflavik - Sydney - Keflavik
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (1, '00:30', 'FA101');
INSERT INTO ScheduleWeekdays (weekday, departure, flightNumber) VALUES (2, '01:30', 'FA102');

-- Flights
-- FA501	KEF - OSL	Maí 2014 
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-01', 'FA501', 'TF-CNA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-02', 'FA501', 'TF-CNA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-03', 'FA501', 'TF-BRA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-04', 'FA501', 'TF-BRA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-05', 'FA501', 'TF-HUX', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-06', 'FA501', 'TF-HUX', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-07', 'FA501', 'TF-HUX', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-08', 'FA501', 'TF-HUX', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-09', 'FA501', 'TF-GSF', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-10', 'FA501', 'TF-BRA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-11', 'FA501', 'TF-BRA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-12', 'FA501', 'TF-LUS', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-13', 'FA501', 'TF-PHY', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-14', 'FA501', 'TF-LUS', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-15', 'FA501', 'TF-CNA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-16', 'FA501', 'TF-CNA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-17', 'FA501', 'TF-BRA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-18', 'FA501', 'TF-BRA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-19', 'FA501', 'TF-LUS', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-20', 'FA501', 'TF-LUS', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-21', 'FA501', 'TF-LUS', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-22', 'FA501', 'TF-PHY', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-23', 'FA501', 'TF-GSF', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-24', 'FA501', 'TF-BRA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-25', 'FA501', 'TF-BRA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-26', 'FA501', 'TF-GSF', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-27', 'FA501', 'TF-CNA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-28', 'FA501', 'TF-LUS', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-29', 'FA501', 'TF-CNA', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-30', 'FA501', 'TF-GSF', '2:45');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-31', 'FA501', 'TF-BRA', '2:45');
-- FA501	OSL - KEF	Maí 2014 
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-01', 'FA502', 'TF-CNA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-02', 'FA502', 'TF-CNA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-03', 'FA502', 'TF-BRA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-04', 'FA502', 'TF-BRA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-05', 'FA502', 'TF-HUX', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-06', 'FA502', 'TF-HUX', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-07', 'FA502', 'TF-HUX', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-08', 'FA502', 'TF-HUX', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-09', 'FA502', 'TF-GSF', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-10', 'FA502', 'TF-BRA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-11', 'FA502', 'TF-BRA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-12', 'FA502', 'TF-LUS', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-13', 'FA502', 'TF-PHY', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-14', 'FA502', 'TF-LUS', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-15', 'FA502', 'TF-CNA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-16', 'FA502', 'TF-CNA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-17', 'FA502', 'TF-BRA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-18', 'FA502', 'TF-BRA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-19', 'FA502', 'TF-LUS', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-20', 'FA502', 'TF-LUS', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-21', 'FA502', 'TF-LUS', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-22', 'FA502', 'TF-PHY', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-23', 'FA502', 'TF-GSF', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-24', 'FA502', 'TF-BRA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-25', 'FA502', 'TF-BRA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-26', 'FA502', 'TF-GSF', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-27', 'FA502', 'TF-CNA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-28', 'FA502', 'TF-LUS', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-29', 'FA502', 'TF-CNA', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-30', 'FA502', 'TF-GSF', '2:55');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime) VALUES ('2014-05-31', 'FA502', 'TF-BRA', '2:55');
-- FA101	KEF - SYD	Maí	2014
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime)
VALUES ('2014-05-05', 'FA101', 'TF-ASA', '22:00');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime)
VALUES ('2014-05-12', 'FA101', 'TF-ASA', '22:00');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime)
VALUES ('2014-05-19', 'FA101', 'TF-ASA', '22:00');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime)
VALUES ('2014-05-26', 'FA101', 'TF-ASA', '22:00');
-- FA102	SYD - KEF	Maí	2014
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime)
VALUES ('2014-05-06', 'FA102', 'TF-ASA', '22:00');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime)
VALUES ('2014-05-13', 'FA102', 'TF-ASA', '22:00');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime)
VALUES ('2014-05-20', 'FA102', 'TF-ASA', '22:00');
INSERT INTO Flights (flightDate, flightNumber, aircraftID, flightTime)
VALUES ('2014-05-27', 'FA102', 'TF-ASA', '22:00');

-- Stopovers
INSERT INTO Stopovers (flightNumber, IATAcode, stopTime) VALUES ('FA101', 'PEK', '01:30');
INSERT INTO Stopovers (flightNumber, IATAcode, stopTime) VALUES ('FA102', 'HKG', '01:30');

