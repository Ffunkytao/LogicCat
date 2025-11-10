/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:28:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Affiliated_With
-- ----------------------------
DROP TABLE IF EXISTS `Affiliated_With`;
CREATE TABLE `Affiliated_With` (
  `Physician` int NOT NULL,
  `Department` int NOT NULL,
  `PrimaryAffiliation` tinyint(1) NOT NULL,
  PRIMARY KEY (`Physician`,`Department`),
  CONSTRAINT `fk_Affiliated_With_Physician_EmployeeID` FOREIGN KEY (`Physician`) REFERENCES `Physician` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of Affiliated_With
-- ----------------------------
BEGIN;
INSERT INTO `Affiliated_With` VALUES (1, 1, 1);
INSERT INTO `Affiliated_With` VALUES (2, 1, 1);
INSERT INTO `Affiliated_With` VALUES (3, 1, 0);
INSERT INTO `Affiliated_With` VALUES (3, 2, 1);
INSERT INTO `Affiliated_With` VALUES (4, 1, 1);
INSERT INTO `Affiliated_With` VALUES (5, 1, 1);
INSERT INTO `Affiliated_With` VALUES (6, 2, 1);
INSERT INTO `Affiliated_With` VALUES (7, 1, 0);
INSERT INTO `Affiliated_With` VALUES (7, 2, 1);
INSERT INTO `Affiliated_With` VALUES (8, 1, 1);
INSERT INTO `Affiliated_With` VALUES (9, 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for Appointment
-- ----------------------------
DROP TABLE IF EXISTS `Appointment`;
CREATE TABLE `Appointment` (
  `ApptID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `ApptDate` datetime DEFAULT NULL,
  `ApptType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ApptID`),
  KEY `PatientID` (`PatientID`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `Appointment_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`PatientID`),
  CONSTRAINT `Appointment_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`)
) ENGINE=InnoDB AUTO_INCREMENT=5003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Appointment
-- ----------------------------
BEGIN;
INSERT INTO `Appointment` VALUES (5001, 100000001, 1001, '2008-04-27 10:00:00', '初诊');
INSERT INTO `Appointment` VALUES (5002, 100000002, 1002, '2008-04-27 11:00:00', '复诊');
COMMIT;

-- ----------------------------
-- Table structure for Block
-- ----------------------------
DROP TABLE IF EXISTS `Block`;
CREATE TABLE `Block` (
  `BlockID` int NOT NULL AUTO_INCREMENT,
  `BlockName` varchar(50) DEFAULT NULL,
  `Floor` int DEFAULT NULL,
  PRIMARY KEY (`BlockID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Block
-- ----------------------------
BEGIN;
INSERT INTO `Block` VALUES (1, 'A座', 1);
INSERT INTO `Block` VALUES (2, 'B座', 1);
INSERT INTO `Block` VALUES (3, 'C座', 2);
COMMIT;

-- ----------------------------
-- Table structure for Department
-- ----------------------------
DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
  `DeptID` int NOT NULL AUTO_INCREMENT,
  `DeptName` varchar(100) DEFAULT NULL,
  `BlockID` int DEFAULT NULL,
  PRIMARY KEY (`DeptID`),
  KEY `BlockID` (`BlockID`),
  CONSTRAINT `Department_ibfk_1` FOREIGN KEY (`BlockID`) REFERENCES `Block` (`BlockID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Department
-- ----------------------------
BEGIN;
INSERT INTO `Department` VALUES (10, '内科', 1);
INSERT INTO `Department` VALUES (20, '外科', 2);
INSERT INTO `Department` VALUES (30, '儿科', 3);
COMMIT;

-- ----------------------------
-- Table structure for Doctor
-- ----------------------------
DROP TABLE IF EXISTS `Doctor`;
CREATE TABLE `Doctor` (
  `DoctorID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `DeptID` int DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`),
  KEY `DeptID` (`DeptID`),
  CONSTRAINT `Doctor_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `Department` (`DeptID`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Doctor
-- ----------------------------
BEGIN;
INSERT INTO `Doctor` VALUES (1001, '张三', 10, '主任医师');
INSERT INTO `Doctor` VALUES (1002, '李四', 20, '副主任');
INSERT INTO `Doctor` VALUES (1003, '王五', 30, '主治医师');
COMMIT;

-- ----------------------------
-- Table structure for Medication
-- ----------------------------
DROP TABLE IF EXISTS `Medication`;
CREATE TABLE `Medication` (
  `MedID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `Medication` varchar(100) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `AppointmentID` int DEFAULT NULL,
  `Dose` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MedID`),
  KEY `PatientID` (`PatientID`),
  KEY `AppointmentID` (`AppointmentID`),
  CONSTRAINT `Medication_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`PatientID`),
  CONSTRAINT `Medication_ibfk_2` FOREIGN KEY (`AppointmentID`) REFERENCES `Appointment` (`ApptID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Medication
-- ----------------------------
BEGIN;
INSERT INTO `Medication` VALUES (1, 100000001, 'Aspirin', '2008-04-27 10:00:00', 5001, '100mg');
INSERT INTO `Medication` VALUES (2, 100000002, 'Ibuprofen', '2008-04-27 11:00:00', 5002, '200mg');
INSERT INTO `Medication` VALUES (9, 100000004, 'Paracetamol', '2008-04-30 16:53:00', NULL, '5');
COMMIT;

-- ----------------------------
-- Table structure for On_Call
-- ----------------------------
DROP TABLE IF EXISTS `On_Call`;
CREATE TABLE `On_Call` (
  `Nurse` int NOT NULL,
  `BlockFloor` int NOT NULL,
  `BlockCode` int NOT NULL,
  `OnCallStart` datetime NOT NULL,
  `OnCallEnd` datetime NOT NULL,
  PRIMARY KEY (`Nurse`,`BlockFloor`,`BlockCode`,`OnCallStart`,`OnCallEnd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of On_Call
-- ----------------------------
BEGIN;
INSERT INTO `On_Call` VALUES (101, 1, 1, '2008-11-04 11:00:00', '2008-11-04 19:00:00');
INSERT INTO `On_Call` VALUES (101, 1, 2, '2008-11-04 11:00:00', '2008-11-04 19:00:00');
INSERT INTO `On_Call` VALUES (102, 1, 3, '2008-11-04 11:00:00', '2008-11-04 19:00:00');
INSERT INTO `On_Call` VALUES (103, 1, 1, '2008-11-04 19:00:00', '2008-11-05 03:00:00');
INSERT INTO `On_Call` VALUES (103, 1, 2, '2008-11-04 19:00:00', '2008-11-05 03:00:00');
INSERT INTO `On_Call` VALUES (103, 1, 3, '2008-11-04 19:00:00', '2008-11-05 03:00:00');
COMMIT;

-- ----------------------------
-- Table structure for Patient
-- ----------------------------
DROP TABLE IF EXISTS `Patient`;
CREATE TABLE `Patient` (
  `PatientID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DeptID` int DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  KEY `DeptID` (`DeptID`),
  CONSTRAINT `Patient_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `Department` (`DeptID`)
) ENGINE=InnoDB AUTO_INCREMENT=100000005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Patient
-- ----------------------------
BEGIN;
INSERT INTO `Patient` VALUES (100000001, '赵六', '1980-01-15 00:00:00', '男', 10);
INSERT INTO `Patient` VALUES (100000002, '钱七', '1975-06-20 00:00:00', '女', 20);
INSERT INTO `Patient` VALUES (100000003, '孙八', '1990-09-05 00:00:00', '男', 30);
INSERT INTO `Patient` VALUES (100000004, '测试病人', '1990-01-01 00:00:00', '未知', 10);
COMMIT;

-- ----------------------------
-- Table structure for Physician
-- ----------------------------
DROP TABLE IF EXISTS `Physician`;
CREATE TABLE `Physician` (
  `EmployeeID` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Position` varchar(30) NOT NULL,
  `SSN` int NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of Physician
-- ----------------------------
BEGIN;
INSERT INTO `Physician` VALUES (1, 'John Dorian', 'Staff Internist', 111111111);
INSERT INTO `Physician` VALUES (2, 'Elliot Reid', 'Attending Physician', 222222222);
INSERT INTO `Physician` VALUES (3, 'Christopher Turk', 'Surgical Attending Physician', 333333333);
INSERT INTO `Physician` VALUES (4, 'Percival Cox', 'Senior Attending Physician', 444444444);
INSERT INTO `Physician` VALUES (5, 'Bob Kelso', 'Head Chief of Medicine', 555555555);
INSERT INTO `Physician` VALUES (6, 'Todd Quinlan', 'Surgical Attending Physician', 666666666);
INSERT INTO `Physician` VALUES (7, 'John Wen', 'Surgical Attending Physician', 777777777);
INSERT INTO `Physician` VALUES (8, 'Keith Dudemeister', 'MD Resident', 888888888);
INSERT INTO `Physician` VALUES (9, 'Molly Clock', 'Attending Psychiatrist', 999999999);
COMMIT;

-- ----------------------------
-- Table structure for Prescribes
-- ----------------------------
DROP TABLE IF EXISTS `Prescribes`;
CREATE TABLE `Prescribes` (
  `Physician` int NOT NULL,
  `Patient` int NOT NULL,
  `Medication` int NOT NULL,
  `Date` datetime NOT NULL,
  `Appointment` int DEFAULT NULL,
  `Dose` varchar(30) NOT NULL,
  PRIMARY KEY (`Physician`,`Patient`,`Medication`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of Prescribes
-- ----------------------------
BEGIN;
INSERT INTO `Prescribes` VALUES (1, 100000001, 1, '2008-04-24 10:47:00', 13216584, '5');
INSERT INTO `Prescribes` VALUES (9, 100000004, 2, '2008-04-27 10:53:00', 86213939, '10');
INSERT INTO `Prescribes` VALUES (9, 100000004, 2, '2008-04-30 16:53:00', NULL, '5');
COMMIT;

-- ----------------------------
-- Table structure for Procedures
-- ----------------------------
DROP TABLE IF EXISTS `Procedures`;
CREATE TABLE `Procedures` (
  `Code` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Cost` double NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Procedures
-- ----------------------------
BEGIN;
INSERT INTO `Procedures` VALUES (1, 'Reverse Rhinopodoplasty', 1500);
INSERT INTO `Procedures` VALUES (2, 'Obtuse Pyloric Recombobulation', 3750);
INSERT INTO `Procedures` VALUES (3, 'Folded Demiophtalmectomy', 4500);
INSERT INTO `Procedures` VALUES (4, 'Complete Walletectomy', 10000);
INSERT INTO `Procedures` VALUES (5, 'Obfuscated Dermogastrotomy', 4899);
INSERT INTO `Procedures` VALUES (6, 'Reversible Pancreomyoplasty', 5600);
INSERT INTO `Procedures` VALUES (7, 'Follicular Demiectomy', 25);
COMMIT;

-- ----------------------------
-- Table structure for Room
-- ----------------------------
DROP TABLE IF EXISTS `Room`;
CREATE TABLE `Room` (
  `RoomNumber` int NOT NULL AUTO_INCREMENT,
  `RoomType` varchar(20) DEFAULT NULL,
  `BlockFloor` int DEFAULT NULL,
  `BlockCode` int DEFAULT NULL,
  `Unavailable` int DEFAULT NULL,
  PRIMARY KEY (`RoomNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Room
-- ----------------------------
BEGIN;
INSERT INTO `Room` VALUES (222, 'Single', 2, 3, 0);
COMMIT;

-- ----------------------------
-- Table structure for Stay
-- ----------------------------
DROP TABLE IF EXISTS `Stay`;
CREATE TABLE `Stay` (
  `StayID` int NOT NULL,
  `Patient` int NOT NULL,
  `Room` int NOT NULL,
  `StayStart` datetime NOT NULL,
  `StayEnd` datetime NOT NULL,
  PRIMARY KEY (`StayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of Stay
-- ----------------------------
BEGIN;
INSERT INTO `Stay` VALUES (3215, 100000001, 111, '2008-05-01 00:00:00', '2008-05-04 00:00:00');
INSERT INTO `Stay` VALUES (3216, 100000003, 123, '2008-05-03 00:00:00', '2008-05-14 00:00:00');
INSERT INTO `Stay` VALUES (3217, 100000004, 112, '2008-05-02 00:00:00', '2008-05-03 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for Trained_In
-- ----------------------------
DROP TABLE IF EXISTS `Trained_In`;
CREATE TABLE `Trained_In` (
  `Physician` int NOT NULL,
  `Treatment` int NOT NULL,
  `CertificationDate` datetime NOT NULL,
  `CertificationExpires` datetime NOT NULL,
  PRIMARY KEY (`Physician`,`Treatment`),
  KEY `fk_Trained_In_Procedures_Code` (`Treatment`),
  CONSTRAINT `fk_Trained_In_Physician_EmployeeID` FOREIGN KEY (`Physician`) REFERENCES `Physician` (`EmployeeID`),
  CONSTRAINT `fk_Trained_In_Procedures_Code` FOREIGN KEY (`Treatment`) REFERENCES `Procedures` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of Trained_In
-- ----------------------------
BEGIN;
INSERT INTO `Trained_In` VALUES (3, 1, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (3, 2, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (3, 5, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (3, 6, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (3, 7, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (6, 2, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (6, 5, '2007-01-01 00:00:00', '2007-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (6, 6, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (7, 1, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (7, 2, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (7, 3, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (7, 4, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (7, 5, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (7, 6, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
INSERT INTO `Trained_In` VALUES (7, 7, '2008-01-01 00:00:00', '2008-12-31 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for Undergoes
-- ----------------------------
DROP TABLE IF EXISTS `Undergoes`;
CREATE TABLE `Undergoes` (
  `Patient` int DEFAULT NULL,
  `BlockFloor` int DEFAULT NULL,
  `RoomNumber` int DEFAULT NULL,
  `DateUndergoes` datetime DEFAULT NULL,
  `Physician` int DEFAULT NULL,
  `AssistingNurse` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Undergoes
-- ----------------------------
BEGIN;
INSERT INTO `Undergoes` VALUES (100000004, 4, 3217, '2008-05-13 00:00:00', 3, 103);
COMMIT;

-- ----------------------------
-- Table structure for carbon_emissions
-- ----------------------------
DROP TABLE IF EXISTS `carbon_emissions`;
CREATE TABLE `carbon_emissions` (
  `id` int NOT NULL,
  `emission_factor` decimal(10,2) DEFAULT NULL,
  `annual_emissions_tonnes` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data` (
  `device_id` int DEFAULT NULL,
  `energy_saved` decimal(10,2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for fuzzy_membership
-- ----------------------------
DROP TABLE IF EXISTS `fuzzy_membership`;
CREATE TABLE `fuzzy_membership` (
  `id` int NOT NULL,
  `variable_name` varchar(50) DEFAULT NULL,
  `membership_level` varchar(50) DEFAULT NULL,
  `threshold_value` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SET FOREIGN_KEY_CHECKS = 1;
