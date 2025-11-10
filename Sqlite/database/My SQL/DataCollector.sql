/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : DataCollector

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 21:08:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for DataCollectionNotificationRecord
-- ----------------------------
DROP TABLE IF EXISTS `DataCollectionNotificationRecord`;
CREATE TABLE `DataCollectionNotificationRecord` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `TriggerId` int DEFAULT NULL,
  `NotificationTime` varchar(20) DEFAULT NULL,
  `RecipientType` varchar(100) DEFAULT NULL,
  `RecipientCount` int DEFAULT NULL,
  `NotificationMethod` varchar(100) DEFAULT NULL,
  `NotificationContent` text,
  `IsAcknowledged` tinyint(1) DEFAULT NULL,
  `AcknowledgedTime` varchar(20) DEFAULT NULL,
  `NotificationStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for DataCollectionRecord
-- ----------------------------
DROP TABLE IF EXISTS `DataCollectionRecord`;
CREATE TABLE `DataCollectionRecord` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CollectorId` int DEFAULT NULL,
  `CollectionTime` varchar(20) DEFAULT NULL,
  `DataType` varchar(100) DEFAULT NULL,
  `DataValue` decimal(15,2) DEFAULT NULL,
  `DataUnit` varchar(50) DEFAULT NULL,
  `MinValue` decimal(15,2) DEFAULT NULL,
  `MaxValues` decimal(15,2) DEFAULT NULL,
  `AverageValue` decimal(15,2) DEFAULT NULL,
  `DataAccuracy` decimal(5,2) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for DataCollectionRule
-- ----------------------------
DROP TABLE IF EXISTS `DataCollectionRule`;
CREATE TABLE `DataCollectionRule` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RuleName` varchar(100) DEFAULT NULL,
  `DataType` varchar(100) DEFAULT NULL,
  `ThresholdValue` decimal(15,2) DEFAULT NULL,
  `ThresholdUnit` varchar(50) DEFAULT NULL,
  `ConditionOperator` varchar(10) DEFAULT NULL,
  `CollectionFrequency` varchar(50) DEFAULT NULL,
  `ActionType` varchar(100) DEFAULT NULL,
  `RuleDescription` text,
  `IsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for DataCollector
-- ----------------------------
DROP TABLE IF EXISTS `DataCollector`;
CREATE TABLE `DataCollector` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CollectorModel` varchar(100) DEFAULT NULL,
  `InstallationLocation` varchar(255) DEFAULT NULL,
  `ManufactureDate` varchar(20) DEFAULT NULL,
  `InstallationDate` varchar(20) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `ElevationMeters` decimal(10,2) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
