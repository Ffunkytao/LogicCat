/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : AlarmSystem

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 17:22:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for HistoricalDataAnalysis
-- ----------------------------
DROP TABLE IF EXISTS `HistoricalDataAnalysis`;
CREATE TABLE `HistoricalDataAnalysis` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EventType` varchar(100) DEFAULT NULL,
  `AnalysisTime` varchar(20) DEFAULT NULL,
  `DataStartTime` varchar(20) DEFAULT NULL,
  `DataEndTime` varchar(20) DEFAULT NULL,
  `TotalEvents` int DEFAULT NULL,
  `AverageSeverity` decimal(5,2) DEFAULT NULL,
  `MaxSeverity` int DEFAULT NULL,
  `MinSeverity` int DEFAULT NULL,
  `FalseAlarmRate` decimal(5,2) DEFAULT NULL,
  `AnalysisResult` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for WarningEvent
-- ----------------------------
DROP TABLE IF EXISTS `WarningEvent`;
CREATE TABLE `WarningEvent` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EventType` varchar(100) DEFAULT NULL,
  `EventTime` varchar(20) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `SeverityLevel` int DEFAULT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `RadiusKm` decimal(10,2) DEFAULT NULL,
  `PopulationAffected` int DEFAULT NULL,
  `EstimatedDamageUSD` decimal(15,2) DEFAULT NULL,
  `EventDescription` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for WarningNotificationRecord
-- ----------------------------
DROP TABLE IF EXISTS `WarningNotificationRecord`;
CREATE TABLE `WarningNotificationRecord` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EventId` int DEFAULT NULL,
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
-- Table structure for WarningRule
-- ----------------------------
DROP TABLE IF EXISTS `WarningRule`;
CREATE TABLE `WarningRule` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RuleName` varchar(100) DEFAULT NULL,
  `EventType` varchar(100) DEFAULT NULL,
  `ThresholdValue` decimal(15,2) DEFAULT NULL,
  `ThresholdUnit` varchar(50) DEFAULT NULL,
  `ConditionOperator` varchar(10) DEFAULT NULL,
  `SeverityLevel` int DEFAULT NULL,
  `ActionType` varchar(100) DEFAULT NULL,
  `RuleDescription` text,
  `IsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for WarningTriggerRecord
-- ----------------------------
DROP TABLE IF EXISTS `WarningTriggerRecord`;
CREATE TABLE `WarningTriggerRecord` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EventId` int DEFAULT NULL,
  `RuleId` int DEFAULT NULL,
  `TriggerTime` varchar(20) DEFAULT NULL,
  `TriggerValue` decimal(15,2) DEFAULT NULL,
  `TriggerUnit` varchar(50) DEFAULT NULL,
  `SeverityLevel` int DEFAULT NULL,
  `ActionTaken` varchar(255) DEFAULT NULL,
  `IsFalseAlarm` tinyint(1) DEFAULT NULL,
  `TriggerDescription` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
