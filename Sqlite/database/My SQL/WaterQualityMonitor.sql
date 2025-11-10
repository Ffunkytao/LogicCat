/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : WaterQualityMonitor

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/01/2025 00:42:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for WaterQualityData
-- ----------------------------
DROP TABLE IF EXISTS `WaterQualityData`;
CREATE TABLE `WaterQualityData` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MonitorId` int DEFAULT NULL,
  `CollectionTime` varchar(20) DEFAULT NULL,
  `PHValue` decimal(5,2) DEFAULT NULL,
  `DissolvedOxygenMgL` decimal(10,2) DEFAULT NULL,
  `TurbidityNTU` decimal(10,2) DEFAULT NULL,
  `TemperatureCelsius` decimal(10,2) DEFAULT NULL,
  `ConductivityUsCm` decimal(10,2) DEFAULT NULL,
  `TotalDissolvedSolidsMgL` decimal(10,2) DEFAULT NULL,
  `AmmoniaNitrogenMgL` decimal(10,2) DEFAULT NULL,
  `NitrateNitrogenMgL` decimal(10,2) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for WaterQualityMonitor
-- ----------------------------
DROP TABLE IF EXISTS `WaterQualityMonitor`;
CREATE TABLE `WaterQualityMonitor` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MonitorModel` varchar(100) DEFAULT NULL,
  `InstallationLocation` varchar(255) DEFAULT NULL,
  `ManufactureDate` varchar(20) DEFAULT NULL,
  `InstallationDate` varchar(20) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `WaterSourceType` varchar(100) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for WaterQualityWarningRule
-- ----------------------------
DROP TABLE IF EXISTS `WaterQualityWarningRule`;
CREATE TABLE `WaterQualityWarningRule` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RuleName` varchar(100) DEFAULT NULL,
  `ParameterType` varchar(100) DEFAULT NULL,
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
-- Table structure for WaterQualityWarningTriggerRecord
-- ----------------------------
DROP TABLE IF EXISTS `WaterQualityWarningTriggerRecord`;
CREATE TABLE `WaterQualityWarningTriggerRecord` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MonitorId` int DEFAULT NULL,
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
