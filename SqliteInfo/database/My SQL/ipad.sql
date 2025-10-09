/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : ipad

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 22:04:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for TabletBasicInfo
-- ----------------------------
DROP TABLE IF EXISTS `TabletBasicInfo`;
CREATE TABLE `TabletBasicInfo` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ModelName` varchar(255) DEFAULT NULL,
  `ReleaseDate` varchar(20) DEFAULT NULL,
  `WeightGrams` decimal(10,2) DEFAULT NULL,
  `Dimensions` varchar(50) DEFAULT NULL,
  `ScreenSizeInches` decimal(5,2) DEFAULT NULL,
  `ResolutionWidth` int DEFAULT NULL,
  `ResolutionHeight` int DEFAULT NULL,
  `BatteryCapacityMAh` int DEFAULT NULL,
  `StorageOptionsGB` varchar(100) DEFAULT NULL,
  `PriceUSD` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for TabletBatteryPerformance
-- ----------------------------
DROP TABLE IF EXISTS `TabletBatteryPerformance`;
CREATE TABLE `TabletBatteryPerformance` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `TabletId` int DEFAULT NULL,
  `BatteryLifeHours` decimal(5,2) DEFAULT NULL,
  `ChargingTimeMinutes` int DEFAULT NULL,
  `StandbyTimeHours` decimal(5,2) DEFAULT NULL,
  `FastChargingWattage` decimal(5,2) DEFAULT NULL,
  `WirelessCharging` tinyint(1) DEFAULT NULL,
  `BatteryHealthPercent` decimal(5,2) DEFAULT NULL,
  `ChargeCycles` int DEFAULT NULL,
  `DischargeRateMA` decimal(10,2) DEFAULT NULL,
  `TemperatureCelsius` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for TabletCameraPerformance
-- ----------------------------
DROP TABLE IF EXISTS `TabletCameraPerformance`;
CREATE TABLE `TabletCameraPerformance` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `TabletId` int DEFAULT NULL,
  `RearCameraMP` decimal(5,2) DEFAULT NULL,
  `FrontCameraMP` decimal(5,2) DEFAULT NULL,
  `ApertureRear` decimal(3,1) DEFAULT NULL,
  `ApertureFront` decimal(3,1) DEFAULT NULL,
  `VideoResolution` varchar(50) DEFAULT NULL,
  `FrameRateFPS` int DEFAULT NULL,
  `OpticalZoomX` decimal(3,1) DEFAULT NULL,
  `DigitalZoomX` decimal(3,1) DEFAULT NULL,
  `LowLightPerformanceDB` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for TabletPerformanceData
-- ----------------------------
DROP TABLE IF EXISTS `TabletPerformanceData`;
CREATE TABLE `TabletPerformanceData` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `TabletId` int DEFAULT NULL,
  `CPUModel` varchar(100) DEFAULT NULL,
  `CPUCores` int DEFAULT NULL,
  `CPUSpeedGHz` decimal(5,2) DEFAULT NULL,
  `RAMGB` int DEFAULT NULL,
  `GPUModel` varchar(100) DEFAULT NULL,
  `AntutuScore` int DEFAULT NULL,
  `GeekbenchSingleCore` int DEFAULT NULL,
  `GeekbenchMultiCore` int DEFAULT NULL,
  `ThermalThrottlingPercent` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
