-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 17, 2020 at 10:16 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `304 Hospital Data`
--

-- --------------------------------------------------------

--
-- Table structure for table `Appointment1`
--

CREATE TABLE `Appointment1` (
  `Insurance_ID` int(11) NOT NULL,
  `Assigned_Physician_ID` int(11) DEFAULT NULL,
  `Examination_Room_Location` varchar(255) DEFAULT NULL,
  `Expected_Start_Time` time DEFAULT NULL,
  `Date_of_Appointment` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Appointment1`
--

INSERT INTO `Appointment1` (`Insurance_ID`, `Assigned_Physician_ID`, `Examination_Room_Location`, `Expected_Start_Time`, `Date_of_Appointment`) VALUES
(246172, 923439, 'Room 3 Block D', '08:30:00', '2020-06-20'),
(123456789, 967543, 'Room 2 Block A', '13:00:00', '2019-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `Appointment2`
--

CREATE TABLE `Appointment2` (
  `Insurance_ID` int(11) NOT NULL,
  `Appointment_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Appointment2`
--

INSERT INTO `Appointment2` (`Insurance_ID`, `Appointment_ID`) VALUES
(246172, 5649),
(696967, 60799),
(123456789, 52913);

-- --------------------------------------------------------

--
-- Table structure for table `Block1`
--

CREATE TABLE `Block1` (
  `Code` char(1) NOT NULL,
  `Num_of_Floors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Block1`
--

INSERT INTO `Block1` (`Code`, `Num_of_Floors`) VALUES
('A', 10),
('B', 8),
('C', 15),
('D', 6);

-- --------------------------------------------------------

--
-- Table structure for table `Block2`
--

CREATE TABLE `Block2` (
  `Code` char(1) NOT NULL,
  `Main_Office_Phone` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Block2`
--

INSERT INTO `Block2` (`Code`, `Main_Office_Phone`) VALUES
('A', 7786049911),
('B', 1019981107),
('C', 6048263779),
('D', 8867754321);

-- --------------------------------------------------------

--
-- Table structure for table `Caretaker`
--

CREATE TABLE `Caretaker` (
  `ID` int(11) NOT NULL,
  `Part_Time` char(3) DEFAULT NULL,
  `Full_Time` char(3) DEFAULT NULL,
  `Years_of_Experience` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Checks`
--

CREATE TABLE `Checks` (
  `Appointment_ID` int(11) NOT NULL,
  `Physician_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `ID` int(11) NOT NULL,
  `Department_Name` char(100) NOT NULL,
  `Phone` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`ID`, `Department_Name`, `Phone`) VALUES
(59443217, 'Pediatrics', 7785634421),
(998674, 'Psychiatry', 6045567432);

-- --------------------------------------------------------

--
-- Table structure for table `LivesIn`
--

CREATE TABLE `LivesIn` (
  `Patient_Stay_Admission_ID` int(11) NOT NULL,
  `Patient_Insurance_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Makes`
--

CREATE TABLE `Makes` (
  `Patient_ID` int(11) NOT NULL,
  `Appointment_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Medication`
--

CREATE TABLE `Medication` (
  `Code` int(11) NOT NULL,
  `Brand` char(50) DEFAULT NULL,
  `Name` char(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Medication`
--

INSERT INTO `Medication` (`Code`, `Brand`, `Name`, `Description`) VALUES
(110, 'Nexus', 'StomachMed', 'Cures Stomach aches'),
(121, 'Flo', 'Aspirin', 'Reduce Fever'),
(210, 'Nexus', 'Zinc', 'Men Hormone Growth'),
(213, 'Rachels', 'Nose', 'Cure Nose Allergies'),
(221, 'Rachels', 'NoseMed', 'Cure Nose Allergies');

-- --------------------------------------------------------

--
-- Table structure for table `Notes`
--

CREATE TABLE `Notes` (
  `Receptionist_ID` int(11) NOT NULL,
  `Appointment_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Nurse`
--

CREATE TABLE `Nurse` (
  `ID` int(11) NOT NULL,
  `Name` char(50) DEFAULT NULL,
  `Available_Days_and_Times` varchar(255) DEFAULT NULL,
  `Registered` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PatientAdvice1`
--

CREATE TABLE `PatientAdvice1` (
  `Phone` double NOT NULL,
  `Insurance_ID` int(11) NOT NULL,
  `Stay_Room_Number` int(11) DEFAULT NULL,
  `Stay_Room_Floor` int(11) DEFAULT NULL,
  `Stay_Room_Block_Code` char(1) DEFAULT NULL,
  `Assigned_Physician_ID` int(11) NOT NULL,
  `Caretaker_ID` int(11) DEFAULT NULL,
  `Medication_Code` int(11) DEFAULT NULL,
  `Medication_Name` char(50) DEFAULT NULL,
  `Medication_Brand` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PatientAdvice1`
--

INSERT INTO `PatientAdvice1` (`Phone`, `Insurance_ID`, `Stay_Room_Number`, `Stay_Room_Floor`, `Stay_Room_Block_Code`, `Assigned_Physician_ID`, `Caretaker_ID`, `Medication_Code`, `Medication_Name`, `Medication_Brand`) VALUES
(999999, 9999, NULL, NULL, NULL, 946211, NULL, NULL, NULL, NULL),
(222222222, 123456789, NULL, NULL, NULL, 967543, NULL, NULL, NULL, NULL),
(604111111, 246172, NULL, NULL, NULL, 9273524, NULL, NULL, NULL, NULL),
(909090909, 696967, NULL, NULL, NULL, 967543, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PatientStay1`
--

CREATE TABLE `PatientStay1` (
  `Patient_Insurance_ID` int(11) NOT NULL,
  `Room_Number` int(11) DEFAULT NULL,
  `Room_Floor` int(11) DEFAULT NULL,
  `Room_Block_Code` char(1) DEFAULT NULL,
  `Entering_Date_And_Time` varchar(255) DEFAULT NULL,
  `Leaving_Date_And_Time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PatientStay2`
--

CREATE TABLE `PatientStay2` (
  `Patient_Insurance_ID` int(11) NOT NULL,
  `Admission_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Patient_Advice2`
--

CREATE TABLE `Patient_Advice2` (
  `Phone` double NOT NULL,
  `Name` char(50) NOT NULL,
  `Gender` char(15) NOT NULL,
  `Address` char(100) NOT NULL,
  `Birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Patient_Advice2`
--

INSERT INTO `Patient_Advice2` (`Phone`, `Name`, `Gender`, `Address`, `Birthdate`) VALUES
(666, 'Honda', 'Male', 'Main Mall', '2000-01-01'),
(66666, 'Tang', 'Male', 'Kingston Ave.', '1998-07-31'),
(999999, 'Joyce', 'Female', 'Agronomy Road', '2000-02-01'),
(222222222, 'Jolin Tsai', 'Female', '323 Protege Street', '1980-04-11'),
(909090909, 'David Tao', 'Male', '480 Georgia Street', '1969-07-14'),
(6048179651, 'Anthony Wu', 'Male', '3333 Main Mall', '2000-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `Physician_BelongsTo_TrainedIn1`
--

CREATE TABLE `Physician_BelongsTo_TrainedIn1` (
  `Examination_Room_Location` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL,
  `Name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Physician_BelongsTo_TrainedIn1`
--

INSERT INTO `Physician_BelongsTo_TrainedIn1` (`Examination_Room_Location`, `ID`, `Name`) VALUES
('Room 1 Block B', 946211, 'Vanessa Pang'),
('Room 2 Block A', 967543, 'Justin Chen'),
('Room 3 Block D', 923439, 'Pawan Sharma');

-- --------------------------------------------------------

--
-- Table structure for table `Physician_BelongsTo_TrainedIn3`
--

CREATE TABLE `Physician_BelongsTo_TrainedIn3` (
  `Examination_Room_Location` varchar(255) NOT NULL,
  `Department_ID` int(11) DEFAULT NULL,
  `Specialty_ID` int(11) DEFAULT NULL,
  `Position` char(50) DEFAULT NULL,
  `Certification_Date_Issued` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Physician_BelongsTo_TrainedIn3`
--

INSERT INTO `Physician_BelongsTo_TrainedIn3` (`Examination_Room_Location`, `Department_ID`, `Specialty_ID`, `Position`, `Certification_Date_Issued`) VALUES
('Room 1 Block B', 59443217, 161, 'Registered', '2005-01-01'),
('Room 2 Block A', 998674, 162, 'Full time', '2000-01-01'),
('Room 3 Block D', 59443217, 161, 'Full Time', '2009-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `Physician_BelongsTo_TrainedIn4`
--

CREATE TABLE `Physician_BelongsTo_TrainedIn4` (
  `Examination_Room_Location` varchar(255) NOT NULL,
  `Available_Days_and_Times` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Physician_BelongsTo_TrainedIn4`
--

INSERT INTO `Physician_BelongsTo_TrainedIn4` (`Examination_Room_Location`, `Available_Days_and_Times`) VALUES
('Room 1 Block B', 'Mon Tues Thurs 8:30 - 14:00'),
('Room 2 Block A', 'Mon Wed Fri 9:00-19:00'),
('Room 3 Block D', 'Mon through Sat 8:30 - 15:00');

-- --------------------------------------------------------

--
-- Table structure for table `Provide`
--

CREATE TABLE `Provide` (
  `Patient_Insurance_ID` int(11) NOT NULL,
  `Medication_Code` int(11) NOT NULL,
  `Nurse_ID` int(11) NOT NULL,
  `Frequency_per_Day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Receptionist1`
--

CREATE TABLE `Receptionist1` (
  `ID` int(11) NOT NULL,
  `Counter_Location` varchar(255) DEFAULT NULL,
  `Counter_Number` int(11) DEFAULT NULL,
  `Name` char(50) DEFAULT NULL,
  `Phone` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Receptionist1`
--

INSERT INTO `Receptionist1` (`ID`, `Counter_Location`, `Counter_Number`, `Name`, `Phone`) VALUES
(123874, 'Block A Floor 3', 1, 'Anthony', 666666666);

-- --------------------------------------------------------

--
-- Table structure for table `Record`
--

CREATE TABLE `Record` (
  `Receptionist_ID` int(11) NOT NULL,
  `Medication_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Requests`
--

CREATE TABLE `Requests` (
  `Patient_Stay_Admission_ID` int(11) NOT NULL,
  `Physician_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Rooms_LocatedIn1`
--

CREATE TABLE `Rooms_LocatedIn1` (
  `Room_Number` int(11) NOT NULL,
  `Availability` char(3) DEFAULT NULL,
  `Room_Floor` int(11) DEFAULT NULL,
  `Room_Block_Code` char(1) DEFAULT NULL,
  `Room_Phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Rooms_LocatedIn1`
--

INSERT INTO `Rooms_LocatedIn1` (`Room_Number`, `Availability`, `Room_Floor`, `Room_Block_Code`, `Room_Phone`) VALUES
(346, 'Yes', 3, 'A', 604666666);

-- --------------------------------------------------------

--
-- Table structure for table `Specialty`
--

CREATE TABLE `Specialty` (
  `ID` int(11) NOT NULL,
  `Specialty_Name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Specialty`
--

INSERT INTO `Specialty` (`ID`, `Specialty_Name`) VALUES
(163, 'Internist'),
(161, 'Surgical'),
(162, 'Therapist');

-- --------------------------------------------------------

--
-- Table structure for table `StaysWith`
--

CREATE TABLE `StaysWith` (
  `Nurse_ID` int(11) NOT NULL,
  `Physician_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Suggests`
--

CREATE TABLE `Suggests` (
  `Medication_Code` int(11) NOT NULL,
  `Physician_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Takes`
--

CREATE TABLE `Takes` (
  `Patient_Insurance_ID` int(11) NOT NULL,
  `Medication_Code` int(11) NOT NULL,
  `Nurse_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TreatmentTypes_Require`
--

CREATE TABLE `TreatmentTypes_Require` (
  `Name` char(50) NOT NULL,
  `Patient_Insurance_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Treats`
--

CREATE TABLE `Treats` (
  `Patient_Insurance_ID` int(11) NOT NULL,
  `Physician_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UsedFor`
--

CREATE TABLE `UsedFor` (
  `Room_Number` int(11) NOT NULL,
  `Room_Floor` int(11) NOT NULL,
  `Room_Block_Code` char(1) NOT NULL,
  `Patient_Stay_Admission_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Appointment1`
--
ALTER TABLE `Appointment1`
  ADD PRIMARY KEY (`Insurance_ID`),
  ADD KEY `Examination_Room_Location` (`Examination_Room_Location`),
  ADD KEY `Assigned_Physician_ID` (`Assigned_Physician_ID`);

--
-- Indexes for table `Appointment2`
--
ALTER TABLE `Appointment2`
  ADD PRIMARY KEY (`Insurance_ID`,`Appointment_ID`),
  ADD KEY `Insurance_ID` (`Insurance_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`),
  ADD KEY `a_id` (`Appointment_ID`);

--
-- Indexes for table `Block1`
--
ALTER TABLE `Block1`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `Block2`
--
ALTER TABLE `Block2`
  ADD PRIMARY KEY (`Code`,`Main_Office_Phone`);

--
-- Indexes for table `Caretaker`
--
ALTER TABLE `Caretaker`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Caretaker_ID` (`ID`);

--
-- Indexes for table `Checks`
--
ALTER TABLE `Checks`
  ADD PRIMARY KEY (`Appointment_ID`,`Physician_ID`),
  ADD KEY `Physician_ID` (`Physician_ID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Department_Name` (`Department_Name`,`Phone`);

--
-- Indexes for table `LivesIn`
--
ALTER TABLE `LivesIn`
  ADD PRIMARY KEY (`Patient_Stay_Admission_ID`,`Patient_Insurance_ID`),
  ADD KEY `Patient_Insurance_ID` (`Patient_Insurance_ID`);

--
-- Indexes for table `Makes`
--
ALTER TABLE `Makes`
  ADD PRIMARY KEY (`Patient_ID`,`Appointment_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`);

--
-- Indexes for table `Medication`
--
ALTER TABLE `Medication`
  ADD PRIMARY KEY (`Code`),
  ADD UNIQUE KEY `Brand` (`Brand`,`Name`),
  ADD KEY `Medication_Code` (`Code`),
  ADD KEY `Medication_Name` (`Name`),
  ADD KEY `Medication_Brand` (`Brand`),
  ADD KEY `med_code` (`Code`);

--
-- Indexes for table `Notes`
--
ALTER TABLE `Notes`
  ADD PRIMARY KEY (`Receptionist_ID`,`Appointment_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`);

--
-- Indexes for table `Nurse`
--
ALTER TABLE `Nurse`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nurse_ID` (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `PatientAdvice1`
--
ALTER TABLE `PatientAdvice1`
  ADD PRIMARY KEY (`Phone`,`Insurance_ID`),
  ADD KEY `Stay_Room_Number` (`Stay_Room_Number`),
  ADD KEY `Stay_Room_Floor` (`Stay_Room_Floor`),
  ADD KEY `Stay_Room_Block_Code` (`Stay_Room_Block_Code`),
  ADD KEY `Assigned_Physician_ID` (`Assigned_Physician_ID`),
  ADD KEY `Caretaker_ID` (`Caretaker_ID`),
  ADD KEY `Patient_Insurance_ID` (`Insurance_ID`),
  ADD KEY `Medication_Code` (`Medication_Code`),
  ADD KEY `Medication_Name` (`Medication_Name`),
  ADD KEY `Medication_Brand` (`Medication_Brand`),
  ADD KEY `id` (`Insurance_ID`),
  ADD KEY `i_id` (`Insurance_ID`);

--
-- Indexes for table `PatientStay1`
--
ALTER TABLE `PatientStay1`
  ADD PRIMARY KEY (`Patient_Insurance_ID`),
  ADD KEY `Stay_Room_Number` (`Room_Number`),
  ADD KEY `Stay_Room_Floor` (`Room_Floor`),
  ADD KEY `Stay_Room_Block_Code` (`Room_Block_Code`);

--
-- Indexes for table `PatientStay2`
--
ALTER TABLE `PatientStay2`
  ADD PRIMARY KEY (`Patient_Insurance_ID`,`Admission_ID`),
  ADD KEY `stay_admission_id` (`Admission_ID`);

--
-- Indexes for table `Patient_Advice2`
--
ALTER TABLE `Patient_Advice2`
  ADD PRIMARY KEY (`Phone`,`Name`,`Gender`,`Address`,`Birthdate`),
  ADD KEY `Phone` (`Phone`);

--
-- Indexes for table `Physician_BelongsTo_TrainedIn1`
--
ALTER TABLE `Physician_BelongsTo_TrainedIn1`
  ADD PRIMARY KEY (`Examination_Room_Location`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `Physician_BelongsTo_TrainedIn3`
--
ALTER TABLE `Physician_BelongsTo_TrainedIn3`
  ADD PRIMARY KEY (`Examination_Room_Location`),
  ADD KEY `Specialty_ID` (`Specialty_ID`),
  ADD KEY `physician_belongsto_trainedin3_ibfk_2` (`Department_ID`);

--
-- Indexes for table `Physician_BelongsTo_TrainedIn4`
--
ALTER TABLE `Physician_BelongsTo_TrainedIn4`
  ADD PRIMARY KEY (`Examination_Room_Location`,`Available_Days_and_Times`),
  ADD KEY `Examination_Room_Location` (`Examination_Room_Location`);

--
-- Indexes for table `Provide`
--
ALTER TABLE `Provide`
  ADD PRIMARY KEY (`Patient_Insurance_ID`,`Medication_Code`,`Nurse_ID`),
  ADD KEY `Medication_Code` (`Medication_Code`),
  ADD KEY `Nurse_ID` (`Nurse_ID`);

--
-- Indexes for table `Receptionist1`
--
ALTER TABLE `Receptionist1`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `r_id` (`ID`),
  ADD KEY `receptionist_ID` (`ID`),
  ADD KEY `rid` (`ID`);

--
-- Indexes for table `Record`
--
ALTER TABLE `Record`
  ADD PRIMARY KEY (`Receptionist_ID`,`Medication_Code`),
  ADD KEY `Medication_Code` (`Medication_Code`);

--
-- Indexes for table `Requests`
--
ALTER TABLE `Requests`
  ADD PRIMARY KEY (`Patient_Stay_Admission_ID`,`Physician_ID`),
  ADD KEY `Physician_ID` (`Physician_ID`);

--
-- Indexes for table `Rooms_LocatedIn1`
--
ALTER TABLE `Rooms_LocatedIn1`
  ADD PRIMARY KEY (`Room_Number`),
  ADD KEY `rnum` (`Room_Number`);

--
-- Indexes for table `Specialty`
--
ALTER TABLE `Specialty`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Specialty_Name` (`Specialty_Name`);

--
-- Indexes for table `StaysWith`
--
ALTER TABLE `StaysWith`
  ADD PRIMARY KEY (`Nurse_ID`,`Physician_ID`),
  ADD KEY `Physician_ID` (`Physician_ID`);

--
-- Indexes for table `Suggests`
--
ALTER TABLE `Suggests`
  ADD PRIMARY KEY (`Medication_Code`,`Physician_ID`),
  ADD KEY `Physician_ID` (`Physician_ID`);

--
-- Indexes for table `Takes`
--
ALTER TABLE `Takes`
  ADD PRIMARY KEY (`Patient_Insurance_ID`,`Medication_Code`,`Nurse_ID`),
  ADD KEY `Medication_Code` (`Medication_Code`),
  ADD KEY `Nurse_ID` (`Nurse_ID`);

--
-- Indexes for table `TreatmentTypes_Require`
--
ALTER TABLE `TreatmentTypes_Require`
  ADD PRIMARY KEY (`Name`,`Patient_Insurance_ID`),
  ADD KEY `Patient_Insurance_ID` (`Patient_Insurance_ID`);

--
-- Indexes for table `Treats`
--
ALTER TABLE `Treats`
  ADD PRIMARY KEY (`Patient_Insurance_ID`,`Physician_ID`),
  ADD KEY `Physician_ID` (`Physician_ID`);

--
-- Indexes for table `UsedFor`
--
ALTER TABLE `UsedFor`
  ADD PRIMARY KEY (`Room_Number`,`Room_Floor`,`Room_Block_Code`,`Patient_Stay_Admission_ID`),
  ADD KEY `Room_Floor` (`Room_Floor`),
  ADD KEY `Room_Block_Code` (`Room_Block_Code`),
  ADD KEY `Patient_Stay_Admission_ID` (`Patient_Stay_Admission_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Appointment1`
--
ALTER TABLE `Appointment1`
  ADD CONSTRAINT `appointment1_ibfk_1` FOREIGN KEY (`Insurance_ID`) REFERENCES `Appointment2` (`Insurance_ID`),
  ADD CONSTRAINT `appointment1_ibfk_2` FOREIGN KEY (`Examination_Room_Location`) REFERENCES `Physician_BelongsTo_TrainedIn4` (`Examination_Room_Location`),
  ADD CONSTRAINT `appointment1_ibfk_3` FOREIGN KEY (`Insurance_ID`) REFERENCES `Appointment2` (`Insurance_ID`),
  ADD CONSTRAINT `appointment1_ibfk_4` FOREIGN KEY (`Examination_Room_Location`) REFERENCES `Physician_BelongsTo_TrainedIn4` (`Examination_Room_Location`),
  ADD CONSTRAINT `appointment1_ibfk_5` FOREIGN KEY (`Insurance_ID`) REFERENCES `Appointment2` (`Insurance_ID`),
  ADD CONSTRAINT `appointment1_ibfk_6` FOREIGN KEY (`Examination_Room_Location`) REFERENCES `Physician_BelongsTo_TrainedIn4` (`Examination_Room_Location`),
  ADD CONSTRAINT `appointment1_ibfk_7` FOREIGN KEY (`Assigned_Physician_ID`) REFERENCES `Physician_BelongsTo_TrainedIn1` (`ID`);

--
-- Constraints for table `Appointment2`
--
ALTER TABLE `Appointment2`
  ADD CONSTRAINT `appointment2_ibfk_1` FOREIGN KEY (`Insurance_ID`) REFERENCES `PatientAdvice1` (`Insurance_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Block1`
--
ALTER TABLE `Block1`
  ADD CONSTRAINT `block1_ibfk_1` FOREIGN KEY (`Code`) REFERENCES `Block2` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Checks`
--
ALTER TABLE `Checks`
  ADD CONSTRAINT `checks_ibfk_1` FOREIGN KEY (`Appointment_ID`) REFERENCES `Appointment2` (`Appointment_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `checks_ibfk_2` FOREIGN KEY (`Physician_ID`) REFERENCES `Physician_BelongsTo_TrainedIn1` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `LivesIn`
--
ALTER TABLE `LivesIn`
  ADD CONSTRAINT `livesin_ibfk_1` FOREIGN KEY (`Patient_Stay_Admission_ID`) REFERENCES `PatientStay2` (`Admission_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `livesin_ibfk_2` FOREIGN KEY (`Patient_Insurance_ID`) REFERENCES `PatientAdvice1` (`Insurance_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Makes`
--
ALTER TABLE `Makes`
  ADD CONSTRAINT `makes_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `PatientAdvice1` (`Insurance_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `makes_ibfk_2` FOREIGN KEY (`Appointment_ID`) REFERENCES `Appointment2` (`Appointment_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Notes`
--
ALTER TABLE `Notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`Receptionist_ID`) REFERENCES `Receptionist1` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notes_ibfk_2` FOREIGN KEY (`Appointment_ID`) REFERENCES `Appointment2` (`Appointment_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PatientStay1`
--
ALTER TABLE `PatientStay1`
  ADD CONSTRAINT `patientstay1_ibfk_1` FOREIGN KEY (`Patient_Insurance_ID`) REFERENCES `PatientStay2` (`Patient_Insurance_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PatientStay2`
--
ALTER TABLE `PatientStay2`
  ADD CONSTRAINT `patientstay2_ibfk_1` FOREIGN KEY (`Patient_Insurance_ID`) REFERENCES `PatientAdvice1` (`Insurance_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Physician_BelongsTo_TrainedIn1`
--
ALTER TABLE `Physician_BelongsTo_TrainedIn1`
  ADD CONSTRAINT `physician_belongsto_trainedin1_ibfk_1` FOREIGN KEY (`Examination_Room_Location`) REFERENCES `Physician_BelongsTo_TrainedIn3` (`Examination_Room_Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Physician_BelongsTo_TrainedIn3`
--
ALTER TABLE `Physician_BelongsTo_TrainedIn3`
  ADD CONSTRAINT `physician_belongsto_trainedin3_ibfk_1` FOREIGN KEY (`Examination_Room_Location`) REFERENCES `Physician_BelongsTo_TrainedIn4` (`Examination_Room_Location`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physician_belongsto_trainedin3_ibfk_2` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physician_belongsto_trainedin3_ibfk_3` FOREIGN KEY (`Specialty_ID`) REFERENCES `Specialty` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Provide`
--
ALTER TABLE `Provide`
  ADD CONSTRAINT `provide_ibfk_1` FOREIGN KEY (`Patient_Insurance_ID`) REFERENCES `PatientAdvice1` (`Insurance_ID`),
  ADD CONSTRAINT `provide_ibfk_2` FOREIGN KEY (`Medication_Code`) REFERENCES `Medication` (`Code`),
  ADD CONSTRAINT `provide_ibfk_3` FOREIGN KEY (`Nurse_ID`) REFERENCES `Nurse` (`ID`);

--
-- Constraints for table `Record`
--
ALTER TABLE `Record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`Receptionist_ID`) REFERENCES `Receptionist1` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`Medication_Code`) REFERENCES `Medication` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Requests`
--
ALTER TABLE `Requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`Patient_Stay_Admission_ID`) REFERENCES `PatientStay2` (`Admission_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`Physician_ID`) REFERENCES `Physician_BelongsTo_TrainedIn1` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `StaysWith`
--
ALTER TABLE `StaysWith`
  ADD CONSTRAINT `stayswith_ibfk_1` FOREIGN KEY (`Nurse_ID`) REFERENCES `Nurse` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stayswith_ibfk_2` FOREIGN KEY (`Physician_ID`) REFERENCES `Physician_BelongsTo_TrainedIn1` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Suggests`
--
ALTER TABLE `Suggests`
  ADD CONSTRAINT `suggests_ibfk_1` FOREIGN KEY (`Medication_Code`) REFERENCES `Medication` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suggests_ibfk_2` FOREIGN KEY (`Physician_ID`) REFERENCES `Physician_BelongsTo_TrainedIn1` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Takes`
--
ALTER TABLE `Takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`Patient_Insurance_ID`) REFERENCES `PatientAdvice1` (`Insurance_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`Medication_Code`) REFERENCES `Medication` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `takes_ibfk_3` FOREIGN KEY (`Nurse_ID`) REFERENCES `Nurse` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TreatmentTypes_Require`
--
ALTER TABLE `TreatmentTypes_Require`
  ADD CONSTRAINT `treatmenttypes_require_ibfk_1` FOREIGN KEY (`Patient_Insurance_ID`) REFERENCES `PatientAdvice1` (`Insurance_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Treats`
--
ALTER TABLE `Treats`
  ADD CONSTRAINT `treats_ibfk_1` FOREIGN KEY (`Patient_Insurance_ID`) REFERENCES `PatientAdvice1` (`Insurance_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treats_ibfk_2` FOREIGN KEY (`Physician_ID`) REFERENCES `Physician_BelongsTo_TrainedIn1` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
