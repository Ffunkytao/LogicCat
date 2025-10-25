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

 Date: 11/08/2025 12:28:17
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
-- Records of TabletBasicInfo
-- ----------------------------
BEGIN;
INSERT INTO `TabletBasicInfo` VALUES (1, 'iPad Pro 12.9 (2022)', '2022-10-18', 682.00, '280.6x214.9x6.4', 12.90, 2732, 2048, 10758, '128,256,512,1024', 1099.00);
INSERT INTO `TabletBasicInfo` VALUES (2, 'Samsung Galaxy Tab S8 Ultra', '2022-02-25', 728.00, '326.4x208.6x5.5', 14.60, 2960, 1848, 11200, '128,256,512', 1099.99);
INSERT INTO `TabletBasicInfo` VALUES (3, 'Microsoft Surface Pro 9', '2022-10-25', 891.00, '287x209x9.3', 13.00, 2880, 1920, 9500, '128,256,512,1024', 999.99);
INSERT INTO `TabletBasicInfo` VALUES (4, 'Huawei MatePad Pro 12.6', '2021-06-02', 609.00, '286.5x184.7x6.7', 12.60, 2560, 1600, 10050, '128,256,512', 899.00);
INSERT INTO `TabletBasicInfo` VALUES (5, 'Lenovo Tab P12 Pro', '2021-09-09', 565.00, '285.6x184.5x5.6', 12.60, 2560, 1600, 10200, '128,256', 899.99);
COMMIT;

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
-- Records of TabletBatteryPerformance
-- ----------------------------
BEGIN;
INSERT INTO `TabletBatteryPerformance` VALUES (1, 1, 12.50, 120, 300.00, 18.00, 1, 95.00, 150, 500.00, 30.50);
INSERT INTO `TabletBatteryPerformance` VALUES (2, 2, 15.00, 90, 350.00, 20.00, 0, 98.00, 100, 450.00, 28.00);
INSERT INTO `TabletBatteryPerformance` VALUES (3, 3, 10.75, 150, 250.00, 15.00, 1, 92.50, 200, 600.00, 32.75);
COMMIT;

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
-- Records of TabletCameraPerformance
-- ----------------------------
BEGIN;
INSERT INTO `TabletCameraPerformance` VALUES (1, 1, 12.50, 8.00, 1.8, 2.2, '1920x1080', 30, 2.0, 5.0, 45.00);
INSERT INTO `TabletCameraPerformance` VALUES (2, 2, 16.00, 10.00, 1.6, 2.0, '3840x2160', 60, 3.0, 10.0, 50.00);
INSERT INTO `TabletCameraPerformance` VALUES (3, 3, 20.00, 12.00, 1.4, 1.8, '1920x1080', 30, 2.5, 8.0, 55.00);
INSERT INTO `TabletCameraPerformance` VALUES (4, 4, 8.00, 5.00, 2.0, 2.4, '1280x720', 30, 1.5, 3.0, 40.00);
INSERT INTO `TabletCameraPerformance` VALUES (5, 5, 48.00, 16.00, 1.7, 2.2, '3840x2160', 60, 5.0, 12.0, 60.00);
INSERT INTO `TabletCameraPerformance` VALUES (6, 6, 12.30, 7.50, 1.9, 2.1, '1920x1080', 30, 2.0, 6.0, 47.50);
INSERT INTO `TabletCameraPerformance` VALUES (7, 7, 64.00, 20.00, 1.5, 1.8, '7680x4320', 120, 10.0, 20.0, 65.00);
COMMIT;

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

-- ----------------------------
-- Records of TabletPerformanceData
-- ----------------------------
BEGIN;
INSERT INTO `TabletPerformanceData` VALUES (1, 1, 'Snapdragon 888', 8, 2.84, 8, 'Adreno 660', 750000, 1130, 3700, 5.00);
INSERT INTO `TabletPerformanceData` VALUES (2, 2, 'Apple A14 Bionic', 6, 3.10, 6, 'Apple GPU', 800000, 1600, 4200, 3.50);
INSERT INTO `TabletPerformanceData` VALUES (3, 3, 'Exynos 2100', 8, 2.90, 12, 'Mali-G78 MP14', 730000, 1100, 3600, 4.20);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
