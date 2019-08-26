-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2018 at 01:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcalvert05`
--

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Addresses`
--

CREATE TABLE `EZY_Addresses` (
  `AddressID` int(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Town/City` varchar(255) NOT NULL,
  `CountryID` int(10) NOT NULL,
  `Postcode/Zip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Addresses`
--

INSERT INTO `EZY_Addresses` (`AddressID`, `Address`, `Town/City`, `CountryID`, `Postcode/Zip`) VALUES
(1, '5 Mount Royal', 'Lisburn', 1, 'BT27 5BF');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_AgeGroup`
--

CREATE TABLE `EZY_AgeGroup` (
  `AgeGroupID` int(10) NOT NULL,
  `AgeGroup` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_AgeGroup`
--

INSERT INTO `EZY_AgeGroup` (`AgeGroupID`, `AgeGroup`) VALUES
(1, 'Adult'),
(2, 'Child'),
(3, 'Infant');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Airports`
--

CREATE TABLE `EZY_Airports` (
  `AirportID` int(10) NOT NULL,
  `AirportName` varchar(255) NOT NULL,
  `AirportCode` varchar(255) NOT NULL,
  `Latitude` double(20,4) NOT NULL,
  `Longitude` double(20,4) NOT NULL,
  `CityID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Airports`
--

INSERT INTO `EZY_Airports` (`AirportID`, `AirportName`, `AirportCode`, `Latitude`, `Longitude`, `CityID`) VALUES
(1, 'London Heathrow', 'LHR', 51.4700, -0.4543, 1),
(2, 'London Gatwick', 'LGW', 51.1537, -0.1821, 1),
(3, 'Belfast International', 'BFS', 54.6618, -6.2162, 2),
(4, 'Edinburgh', 'EDI', 55.9508, -3.3615, 3),
(5, 'Adolfo Suarez', 'MAD', 40.4983, 3.5676, 4),
(6, 'Rome Fiumcino', 'FCO', 41.7735, 12.2397, 5),
(7, 'Berlin Schoenefeld', 'SXF', 52.3733, 13.5064, 6),
(8, 'Lisbon Portela', 'LIS', 38.7756, -9.1338, 7),
(9, 'Paris Charles de Gaulle', 'CDG', 49.0097, 2.5479, 8),
(10, 'Dublin', 'DUB', 53.4254, -6.2499, 9),
(11, ' Amsterdam Schiphol', 'AMS', 52.3105, 4.7683, 10),
(12, 'Brussels', 'BRU', 50.5405, 4.4856, 11),
(13, 'Warsaw Chopin', 'WAW', 52.4493, 20.6512, 12);

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Bags`
--

CREATE TABLE `EZY_Bags` (
  `BagID` int(10) NOT NULL,
  `BagTypeID` int(10) NOT NULL,
  `PassengerID` int(10) NOT NULL,
  `BaggageUniqueID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Bags`
--

INSERT INTO `EZY_Bags` (`BagID`, `BagTypeID`, `PassengerID`, `BaggageUniqueID`) VALUES
(1, 1, 1, 'Neill123456'),
(2, 2, 1, 'neill1234567');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_BagType`
--

CREATE TABLE `EZY_BagType` (
  `BagTypeID` int(10) NOT NULL,
  `BagType` varchar(255) NOT NULL,
  `BagPrice` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_BagType`
--

INSERT INTO `EZY_BagType` (`BagTypeID`, `BagType`, `BagPrice`) VALUES
(1, '15kg', 6.99),
(2, '23kg', 9.99),
(3, '26kg', 21.99),
(4, 'Cabin Bag', 0.00),
(5, 'Bicycle', 45.00),
(6, 'Canoe', 45.00),
(7, 'Firearm', 37.00),
(8, 'Golf Bag', 37.00),
(9, 'Hang Glider', 45.00),
(10, 'Skis', 37.00),
(11, 'Snowboard', 37.00),
(12, 'Windsurfing', 45.00);

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Cities`
--

CREATE TABLE `EZY_Cities` (
  `CityID` int(10) NOT NULL,
  `City` varchar(255) NOT NULL,
  `CountryID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Cities`
--

INSERT INTO `EZY_Cities` (`CityID`, `City`, `CountryID`) VALUES
(1, 'London', 1),
(2, 'Belfast', 1),
(3, 'Edinburgh', 1),
(4, 'Madrid', 2),
(5, 'Rome', 3),
(6, 'Berlin', 4),
(7, 'Lisbon', 5),
(8, 'Paris', 6),
(9, 'Dublin', 7),
(10, 'Amsterdam', 8),
(11, 'Brussels', 9),
(12, 'Warsaw', 10);

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Countries`
--

CREATE TABLE `EZY_Countries` (
  `CountryID` int(10) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Countries`
--

INSERT INTO `EZY_Countries` (`CountryID`, `Country`) VALUES
(1, 'United Kingdom'),
(2, 'Spain'),
(3, 'Italy'),
(4, 'Germany'),
(5, 'Portugal'),
(6, 'France'),
(7, 'Ireland'),
(8, 'Netherlands'),
(9, 'Belgium'),
(10, 'Poland');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_DiallingCodes`
--

CREATE TABLE `EZY_DiallingCodes` (
  `DiallingCodeID` int(10) NOT NULL,
  `DiallingCode` varchar(255) NOT NULL,
  `CountryID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_DiallingCodes`
--

INSERT INTO `EZY_DiallingCodes` (`DiallingCodeID`, `DiallingCode`, `CountryID`) VALUES
(1, '(+44)', 1),
(2, '(+34)', 2),
(3, '(+39)', 3),
(4, '(+49)', 4),
(5, '(+351)', 5),
(6, '(+33)', 6),
(7, '(+353)', 7),
(8, '(+31)', 8),
(9, '(+32)', 9),
(10, '(+48)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Flights`
--

CREATE TABLE `EZY_Flights` (
  `FlightID` int(10) NOT NULL,
  `RouteID` int(10) NOT NULL,
  `PlaneTypeID` int(10) NOT NULL,
  `TerminalID` int(10) NOT NULL,
  `FlightNumber` varchar(255) NOT NULL,
  `DepartureTime` datetime NOT NULL,
  `ArrivalTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Orders`
--

CREATE TABLE `EZY_Orders` (
  `OrderID` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `OrderDate` date NOT NULL,
  `TotalPrice` double(10,2) NOT NULL,
  `UniqueBookingReference` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Orders`
--

INSERT INTO `EZY_Orders` (`OrderID`, `UserID`, `OrderDate`, `TotalPrice`, `UniqueBookingReference`) VALUES
(2, 2, '2018-11-01', 0.00, '0');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Passengers`
--

CREATE TABLE `EZY_Passengers` (
  `PassengerID` int(10) NOT NULL,
  `TitleID` int(10) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `SecondName` varchar(255) NOT NULL,
  `PassportNumber` int(9) NOT NULL,
  `AgeGroupID` int(10) NOT NULL,
  `FlightID` int(10) NOT NULL,
  `PurposeID` int(10) NOT NULL,
  `TravelInsuranceID` int(10) NOT NULL,
  `OrderID` int(10) NOT NULL,
  `SpecialAssistanceID` int(10) DEFAULT NULL,
  `SeatID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Passengers`
--

INSERT INTO `EZY_Passengers` (`PassengerID`, `TitleID`, `FirstName`, `SecondName`, `PassportNumber`, `AgeGroupID`, `FlightID`, `PurposeID`, `TravelInsuranceID`, `OrderID`, `SpecialAssistanceID`, `SeatID`) VALUES
(1, 1, 'Neill', 'Calvert', 123456789, 1, 0, 2, 1, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `EZY_PaymentDetails`
--

CREATE TABLE `EZY_PaymentDetails` (
  `PaymentID` int(10) NOT NULL,
  `OrderID` int(10) NOT NULL,
  `CardNumber` int(16) NOT NULL,
  `CVV` int(3) NOT NULL,
  `PaymentTypeID` int(10) NOT NULL,
  `ExpiryDate` date NOT NULL,
  `CardHolderName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EZY_PaymentType`
--

CREATE TABLE `EZY_PaymentType` (
  `PaymentTypeID` int(10) NOT NULL,
  `PaymentType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_PaymentType`
--

INSERT INTO `EZY_PaymentType` (`PaymentTypeID`, `PaymentType`) VALUES
(1, 'Debit Mastercard'),
(2, 'Visa'),
(3, 'Visa Debit'),
(4, 'UK Maestro'),
(5, 'MasterCard'),
(6, 'American Express'),
(7, 'Visa Electron'),
(8, 'UATP/Airbus'),
(9, 'Diners Club'),
(10, 'Discover');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_PlaneType`
--

CREATE TABLE `EZY_PlaneType` (
  `PlaneTypeID` int(10) NOT NULL,
  `Model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Purpose`
--

CREATE TABLE `EZY_Purpose` (
  `PurposeID` int(10) NOT NULL,
  `Purpose` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Purpose`
--

INSERT INTO `EZY_Purpose` (`PurposeID`, `Purpose`) VALUES
(1, 'Business'),
(2, 'Leisure');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Routes`
--

CREATE TABLE `EZY_Routes` (
  `RouteID` int(10) NOT NULL,
  `OriginAirport` int(10) NOT NULL,
  `ArrivalAirport` int(10) NOT NULL,
  `RouteName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Routes`
--

INSERT INTO `EZY_Routes` (`RouteID`, `OriginAirport`, `ArrivalAirport`, `RouteName`) VALUES
(1, 1, 3, 'London-Belfast'),
(2, 1, 4, 'London-Edinburgh'),
(3, 1, 5, 'London-Madrid'),
(4, 3, 6, 'Belfast-Rome'),
(5, 7, 2, 'Berlin-Gatwick'),
(6, 3, 1, 'Belfast-London'),
(7, 6, 3, 'Rome-Belfast');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Seats`
--

CREATE TABLE `EZY_Seats` (
  `SeatID` int(10) NOT NULL,
  `SeatName` varchar(255) NOT NULL,
  `PlaneTypeID` int(10) NOT NULL,
  `SeatTypeID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EZY_SeatTypes`
--

CREATE TABLE `EZY_SeatTypes` (
  `SeatTypeID` int(10) NOT NULL,
  `SeatType` varchar(255) NOT NULL,
  `SeatPrice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EZY_SpecialAssistance`
--

CREATE TABLE `EZY_SpecialAssistance` (
  `SpecialAssistanceID` int(10) NOT NULL,
  `SpecialAssistance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_SpecialAssistance`
--

INSERT INTO `EZY_SpecialAssistance` (`SpecialAssistanceID`, `SpecialAssistance`) VALUES
(1, 'Blind'),
(2, 'Wheelchair Bound'),
(3, 'Guide Dog'),
(4, 'Deaf'),
(5, 'Intellectual Disability'),
(6, 'Nut Allergy');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Terminals`
--

CREATE TABLE `EZY_Terminals` (
  `TerminalID` int(10) NOT NULL,
  `AirportID` int(10) NOT NULL,
  `Terminal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Terminals`
--

INSERT INTO `EZY_Terminals` (`TerminalID`, `AirportID`, `Terminal`) VALUES
(1, 1, '2'),
(2, 2, 'North'),
(3, 3, '1'),
(4, 4, '1'),
(5, 5, '4'),
(6, 6, '3'),
(7, 7, '5'),
(8, 8, '2'),
(9, 9, '2'),
(10, 10, '1'),
(11, 11, 'B'),
(12, 12, '3'),
(13, 13, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Titles`
--

CREATE TABLE `EZY_Titles` (
  `TitleID` int(10) NOT NULL,
  `Title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Titles`
--

INSERT INTO `EZY_Titles` (`TitleID`, `Title`) VALUES
(1, 'Mr'),
(2, 'Mrs'),
(3, 'Miss'),
(4, 'Master');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_TravelInsurance`
--

CREATE TABLE `EZY_TravelInsurance` (
  `TravelInsuranceID` int(10) NOT NULL,
  `InsuranceStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_TravelInsurance`
--

INSERT INTO `EZY_TravelInsurance` (`TravelInsuranceID`, `InsuranceStatus`) VALUES
(1, 'Insured'),
(2, 'Uninsured');

-- --------------------------------------------------------

--
-- Table structure for table `EZY_Users`
--

CREATE TABLE `EZY_Users` (
  `UserID` int(10) NOT NULL,
  `TitleID` int(10) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `SecondName` varchar(255) NOT NULL,
  `AddressID` int(10) NOT NULL,
  `DiallingCodeID` int(10) NOT NULL,
  `PhoneNumber` bigint(14) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `AirportPreference` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZY_Users`
--

INSERT INTO `EZY_Users` (`UserID`, `TitleID`, `FirstName`, `SecondName`, `AddressID`, `DiallingCodeID`, `PhoneNumber`, `Email`, `Password`, `AirportPreference`) VALUES
(2, 1, 'Neill', 'Calvert', 1, 1, 2892676615, 'mcalvert05@qub.ac.uk', 'p@$$w0rd', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EZY_Addresses`
--
ALTER TABLE `EZY_Addresses`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `FK_AddressCountry` (`CountryID`);

--
-- Indexes for table `EZY_AgeGroup`
--
ALTER TABLE `EZY_AgeGroup`
  ADD PRIMARY KEY (`AgeGroupID`);

--
-- Indexes for table `EZY_Airports`
--
ALTER TABLE `EZY_Airports`
  ADD PRIMARY KEY (`AirportID`),
  ADD KEY `FK_AirportCity` (`CityID`);

--
-- Indexes for table `EZY_Bags`
--
ALTER TABLE `EZY_Bags`
  ADD PRIMARY KEY (`BagID`),
  ADD KEY `FK_PassengerBags` (`PassengerID`),
  ADD KEY `FK_BagType` (`BagTypeID`);

--
-- Indexes for table `EZY_BagType`
--
ALTER TABLE `EZY_BagType`
  ADD PRIMARY KEY (`BagTypeID`);

--
-- Indexes for table `EZY_Cities`
--
ALTER TABLE `EZY_Cities`
  ADD PRIMARY KEY (`CityID`),
  ADD KEY `FK_CityCountries` (`CountryID`);

--
-- Indexes for table `EZY_Countries`
--
ALTER TABLE `EZY_Countries`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `EZY_DiallingCodes`
--
ALTER TABLE `EZY_DiallingCodes`
  ADD PRIMARY KEY (`DiallingCodeID`),
  ADD KEY `FK_CountryDiallingCode` (`CountryID`);

--
-- Indexes for table `EZY_Flights`
--
ALTER TABLE `EZY_Flights`
  ADD PRIMARY KEY (`FlightID`),
  ADD KEY `FK_FlightRoute` (`RouteID`),
  ADD KEY `FK_FlightTerminal` (`TerminalID`),
  ADD KEY `FK_FlightPlaneType` (`PlaneTypeID`);

--
-- Indexes for table `EZY_Orders`
--
ALTER TABLE `EZY_Orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `FK_UserOrder` (`UserID`);

--
-- Indexes for table `EZY_Passengers`
--
ALTER TABLE `EZY_Passengers`
  ADD PRIMARY KEY (`PassengerID`),
  ADD KEY `FK_PassengerTitle` (`TitleID`),
  ADD KEY `FK_PassengerPurpose` (`PurposeID`),
  ADD KEY `FK_PassengerTravelInsurance` (`TravelInsuranceID`),
  ADD KEY `FK_PassengerAgeGroup` (`AgeGroupID`),
  ADD KEY `FK_SpecialAssistanceID` (`SpecialAssistanceID`),
  ADD KEY `FK_PassengerOrderID` (`OrderID`);

--
-- Indexes for table `EZY_PaymentDetails`
--
ALTER TABLE `EZY_PaymentDetails`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `FK_PaymentDetailsOrder` (`OrderID`),
  ADD KEY `FK_PaymentType` (`PaymentTypeID`);

--
-- Indexes for table `EZY_PaymentType`
--
ALTER TABLE `EZY_PaymentType`
  ADD PRIMARY KEY (`PaymentTypeID`);

--
-- Indexes for table `EZY_PlaneType`
--
ALTER TABLE `EZY_PlaneType`
  ADD PRIMARY KEY (`PlaneTypeID`);

--
-- Indexes for table `EZY_Purpose`
--
ALTER TABLE `EZY_Purpose`
  ADD PRIMARY KEY (`PurposeID`);

--
-- Indexes for table `EZY_Routes`
--
ALTER TABLE `EZY_Routes`
  ADD PRIMARY KEY (`RouteID`),
  ADD KEY `FK_OriginAirport` (`OriginAirport`),
  ADD KEY `FK_ArrivalAirport` (`ArrivalAirport`);

--
-- Indexes for table `EZY_Seats`
--
ALTER TABLE `EZY_Seats`
  ADD PRIMARY KEY (`SeatID`),
  ADD KEY `FK_PlaneTypeSeat` (`PlaneTypeID`),
  ADD KEY `FK_SeatType` (`SeatTypeID`);

--
-- Indexes for table `EZY_SeatTypes`
--
ALTER TABLE `EZY_SeatTypes`
  ADD PRIMARY KEY (`SeatTypeID`);

--
-- Indexes for table `EZY_SpecialAssistance`
--
ALTER TABLE `EZY_SpecialAssistance`
  ADD PRIMARY KEY (`SpecialAssistanceID`);

--
-- Indexes for table `EZY_Terminals`
--
ALTER TABLE `EZY_Terminals`
  ADD PRIMARY KEY (`TerminalID`),
  ADD KEY `FK_AirportTerminal` (`AirportID`);

--
-- Indexes for table `EZY_Titles`
--
ALTER TABLE `EZY_Titles`
  ADD PRIMARY KEY (`TitleID`);

--
-- Indexes for table `EZY_TravelInsurance`
--
ALTER TABLE `EZY_TravelInsurance`
  ADD PRIMARY KEY (`TravelInsuranceID`);

--
-- Indexes for table `EZY_Users`
--
ALTER TABLE `EZY_Users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `FK_Titles` (`TitleID`),
  ADD KEY `FK_UserAddress` (`AddressID`),
  ADD KEY `FK_UserAirportPreference` (`AirportPreference`),
  ADD KEY `FK_UserDiallingCodeID` (`DiallingCodeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EZY_Addresses`
--
ALTER TABLE `EZY_Addresses`
  MODIFY `AddressID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `EZY_AgeGroup`
--
ALTER TABLE `EZY_AgeGroup`
  MODIFY `AgeGroupID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `EZY_Airports`
--
ALTER TABLE `EZY_Airports`
  MODIFY `AirportID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `EZY_Bags`
--
ALTER TABLE `EZY_Bags`
  MODIFY `BagID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EZY_BagType`
--
ALTER TABLE `EZY_BagType`
  MODIFY `BagTypeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `EZY_Cities`
--
ALTER TABLE `EZY_Cities`
  MODIFY `CityID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `EZY_Countries`
--
ALTER TABLE `EZY_Countries`
  MODIFY `CountryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `EZY_DiallingCodes`
--
ALTER TABLE `EZY_DiallingCodes`
  MODIFY `DiallingCodeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `EZY_Flights`
--
ALTER TABLE `EZY_Flights`
  MODIFY `FlightID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EZY_Orders`
--
ALTER TABLE `EZY_Orders`
  MODIFY `OrderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EZY_Passengers`
--
ALTER TABLE `EZY_Passengers`
  MODIFY `PassengerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `EZY_PaymentDetails`
--
ALTER TABLE `EZY_PaymentDetails`
  MODIFY `PaymentID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EZY_PaymentType`
--
ALTER TABLE `EZY_PaymentType`
  MODIFY `PaymentTypeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `EZY_PlaneType`
--
ALTER TABLE `EZY_PlaneType`
  MODIFY `PlaneTypeID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EZY_Purpose`
--
ALTER TABLE `EZY_Purpose`
  MODIFY `PurposeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EZY_Routes`
--
ALTER TABLE `EZY_Routes`
  MODIFY `RouteID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `EZY_Seats`
--
ALTER TABLE `EZY_Seats`
  MODIFY `SeatID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EZY_SeatTypes`
--
ALTER TABLE `EZY_SeatTypes`
  MODIFY `SeatTypeID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EZY_SpecialAssistance`
--
ALTER TABLE `EZY_SpecialAssistance`
  MODIFY `SpecialAssistanceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `EZY_Terminals`
--
ALTER TABLE `EZY_Terminals`
  MODIFY `TerminalID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `EZY_Titles`
--
ALTER TABLE `EZY_Titles`
  MODIFY `TitleID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `EZY_TravelInsurance`
--
ALTER TABLE `EZY_TravelInsurance`
  MODIFY `TravelInsuranceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EZY_Users`
--
ALTER TABLE `EZY_Users`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EZY_Addresses`
--
ALTER TABLE `EZY_Addresses`
  ADD CONSTRAINT `FK_AddressCountry` FOREIGN KEY (`CountryID`) REFERENCES `EZY_Countries` (`CountryID`);

--
-- Constraints for table `EZY_Airports`
--
ALTER TABLE `EZY_Airports`
  ADD CONSTRAINT `FK_AirportCity` FOREIGN KEY (`CityID`) REFERENCES `EZY_Cities` (`CityID`);

--
-- Constraints for table `EZY_Bags`
--
ALTER TABLE `EZY_Bags`
  ADD CONSTRAINT `FK_BagType` FOREIGN KEY (`BagTypeID`) REFERENCES `EZY_BagType` (`BagTypeID`),
  ADD CONSTRAINT `FK_PassengerBags` FOREIGN KEY (`PassengerID`) REFERENCES `EZY_Passengers` (`PassengerID`);

--
-- Constraints for table `EZY_Cities`
--
ALTER TABLE `EZY_Cities`
  ADD CONSTRAINT `FK_CityCountries` FOREIGN KEY (`CountryID`) REFERENCES `EZY_Countries` (`CountryID`);

--
-- Constraints for table `EZY_DiallingCodes`
--
ALTER TABLE `EZY_DiallingCodes`
  ADD CONSTRAINT `FK_CountryDiallingCode` FOREIGN KEY (`CountryID`) REFERENCES `EZY_Countries` (`CountryID`);

--
-- Constraints for table `EZY_Flights`
--
ALTER TABLE `EZY_Flights`
  ADD CONSTRAINT `FK_FlightPlaneType` FOREIGN KEY (`PlaneTypeID`) REFERENCES `EZY_PlaneType` (`PlaneTypeID`),
  ADD CONSTRAINT `FK_FlightRoute` FOREIGN KEY (`RouteID`) REFERENCES `EZY_Routes` (`RouteID`),
  ADD CONSTRAINT `FK_FlightTerminal` FOREIGN KEY (`TerminalID`) REFERENCES `EZY_Terminals` (`TerminalID`);

--
-- Constraints for table `EZY_Orders`
--
ALTER TABLE `EZY_Orders`
  ADD CONSTRAINT `FK_UserOrder` FOREIGN KEY (`UserID`) REFERENCES `EZY_Users` (`UserID`);

--
-- Constraints for table `EZY_Passengers`
--
ALTER TABLE `EZY_Passengers`
  ADD CONSTRAINT `FK_PassengerAgeGroup` FOREIGN KEY (`AgeGroupID`) REFERENCES `EZY_AgeGroup` (`AgeGroupID`),
  ADD CONSTRAINT `FK_PassengerOrderID` FOREIGN KEY (`OrderID`) REFERENCES `EZY_Orders` (`OrderID`),
  ADD CONSTRAINT `FK_PassengerPurpose` FOREIGN KEY (`PurposeID`) REFERENCES `EZY_Purpose` (`PurposeID`),
  ADD CONSTRAINT `FK_PassengerTitle` FOREIGN KEY (`TitleID`) REFERENCES `EZY_Titles` (`TitleID`),
  ADD CONSTRAINT `FK_PassengerTravelInsurance` FOREIGN KEY (`TravelInsuranceID`) REFERENCES `EZY_TravelInsurance` (`TravelInsuranceID`),
  ADD CONSTRAINT `FK_SpecialAssistanceID` FOREIGN KEY (`SpecialAssistanceID`) REFERENCES `EZY_SpecialAssistance` (`SpecialAssistanceID`);

--
-- Constraints for table `EZY_PaymentDetails`
--
ALTER TABLE `EZY_PaymentDetails`
  ADD CONSTRAINT `FK_PaymentDetailsOrder` FOREIGN KEY (`OrderID`) REFERENCES `EZY_Orders` (`OrderID`),
  ADD CONSTRAINT `FK_PaymentType` FOREIGN KEY (`PaymentTypeID`) REFERENCES `EZY_PaymentType` (`PaymentTypeID`);

--
-- Constraints for table `EZY_Routes`
--
ALTER TABLE `EZY_Routes`
  ADD CONSTRAINT `FK_ArrivalAirport` FOREIGN KEY (`ArrivalAirport`) REFERENCES `EZY_Airports` (`AirportID`),
  ADD CONSTRAINT `FK_OriginAirport` FOREIGN KEY (`OriginAirport`) REFERENCES `EZY_Airports` (`AirportID`);

--
-- Constraints for table `EZY_Seats`
--
ALTER TABLE `EZY_Seats`
  ADD CONSTRAINT `FK_PlaneTypeSeat` FOREIGN KEY (`PlaneTypeID`) REFERENCES `EZY_PlaneType` (`PlaneTypeID`),
  ADD CONSTRAINT `FK_SeatType` FOREIGN KEY (`SeatTypeID`) REFERENCES `EZY_SeatTypes` (`SeatTypeID`);

--
-- Constraints for table `EZY_Terminals`
--
ALTER TABLE `EZY_Terminals`
  ADD CONSTRAINT `FK_AirportTerminal` FOREIGN KEY (`AirportID`) REFERENCES `EZY_Airports` (`AirportID`);

--
-- Constraints for table `EZY_Users`
--
ALTER TABLE `EZY_Users`
  ADD CONSTRAINT `FK_Titles` FOREIGN KEY (`TitleID`) REFERENCES `EZY_Titles` (`TitleID`),
  ADD CONSTRAINT `FK_UserAddress` FOREIGN KEY (`AddressID`) REFERENCES `EZY_Addresses` (`AddressID`),
  ADD CONSTRAINT `FK_UserAirportPreference` FOREIGN KEY (`AirportPreference`) REFERENCES `EZY_Airports` (`AirportID`),
  ADD CONSTRAINT `FK_UserDiallingCodeID` FOREIGN KEY (`DiallingCodeID`) REFERENCES `EZY_DiallingCodes` (`DiallingCodeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
