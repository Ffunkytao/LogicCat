/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : RainGauge

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 23:05:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for HistoricalRainfallAnalysis
-- ----------------------------
DROP TABLE IF EXISTS `HistoricalRainfallAnalysis`;
CREATE TABLE `HistoricalRainfallAnalysis` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `GaugeId` int DEFAULT NULL,
  `AnalysisTime` varchar(20) DEFAULT NULL,
  `DataStartTime` varchar(20) DEFAULT NULL,
  `DataEndTime` varchar(20) DEFAULT NULL,
  `TotalRainfallMm` decimal(15,2) DEFAULT NULL,
  `AverageRainfallIntensityMmH` decimal(10,2) DEFAULT NULL,
  `MaxRainfallIntensityMmH` decimal(10,2) DEFAULT NULL,
  `MinRainfallIntensityMmH` decimal(10,2) DEFAULT NULL,
  `AnalysisResult` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for RainGauge
-- ----------------------------
DROP TABLE IF EXISTS `RainGauge`;
CREATE TABLE `RainGauge` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `GaugeModel` varchar(100) DEFAULT NULL,
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

-- ----------------------------
-- Table structure for RainfallData
-- ----------------------------
DROP TABLE IF EXISTS `RainfallData`;
CREATE TABLE `RainfallData` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `GaugeId` int DEFAULT NULL,
  `CollectionTime` varchar(20) DEFAULT NULL,
  `RainfallMm` decimal(10,2) DEFAULT NULL,
  `RainfallIntensityMmH` decimal(10,2) DEFAULT NULL,
  `TemperatureCelsius` decimal(10,2) DEFAULT NULL,
  `HumidityPercent` decimal(10,2) DEFAULT NULL,
  `WindSpeedMps` decimal(10,2) DEFAULT NULL,
  `WindDirectionDegrees` decimal(10,2) DEFAULT NULL,
  `AtmosphericPressureHpa` decimal(10,2) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for RainfallWarningRule
-- ----------------------------
DROP TABLE IF EXISTS `RainfallWarningRule`;
CREATE TABLE `RainfallWarningRule` (
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

SET FOREIGN_KEY_CHECKS = 1;
