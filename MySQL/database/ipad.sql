/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : ipad

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:26:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tabletbasicinfo
-- ----------------------------
DROP TABLE IF EXISTS `tabletbasicinfo`;
CREATE TABLE `tabletbasicinfo`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `ModelName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ReleaseDate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `WeightGrams` decimal(10, 2) NULL DEFAULT NULL,
  `Dimensions` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ScreenSizeInches` decimal(5, 2) NULL DEFAULT NULL,
  `ResolutionWidth` int(0) NULL DEFAULT NULL,
  `ResolutionHeight` int(0) NULL DEFAULT NULL,
  `BatteryCapacityMAh` int(0) NULL DEFAULT NULL,
  `StorageOptionsGB` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PriceUSD` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabletbasicinfo
-- ----------------------------
INSERT INTO `tabletbasicinfo` VALUES (1, 'iPad Pro 12.9 (2022)', '2022-10-18', 682.00, '280.6x214.9x6.4', 12.90, 2732, 2048, 10758, '128,256,512,1024', 1099.00);
INSERT INTO `tabletbasicinfo` VALUES (2, 'Samsung Galaxy Tab S8 Ultra', '2022-02-25', 728.00, '326.4x208.6x5.5', 14.60, 2960, 1848, 11200, '128,256,512', 1099.99);
INSERT INTO `tabletbasicinfo` VALUES (3, 'Microsoft Surface Pro 9', '2022-10-25', 891.00, '287x209x9.3', 13.00, 2880, 1920, 9500, '128,256,512,1024', 999.99);
INSERT INTO `tabletbasicinfo` VALUES (4, 'Huawei MatePad Pro 12.6', '2021-06-02', 609.00, '286.5x184.7x6.7', 12.60, 2560, 1600, 10050, '128,256,512', 899.00);
INSERT INTO `tabletbasicinfo` VALUES (5, 'Lenovo Tab P12 Pro', '2021-09-09', 565.00, '285.6x184.5x5.6', 12.60, 2560, 1600, 10200, '128,256', 899.99);
INSERT INTO `tabletbasicinfo` VALUES (7, 'HeavyDutyTablet', NULL, 100000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (8, 'GiantScreenTablet', NULL, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (9, 'GiantDimensionTablet', NULL, NULL, '10000x10000x10000', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (10, 'UltraResTablet', NULL, NULL, NULL, NULL, 100000, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (11, 'UltraResTablet', NULL, NULL, NULL, NULL, NULL, 100000, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (12, 'MegaBatteryTablet', NULL, NULL, NULL, NULL, NULL, NULL, 1000000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (15, 'ThousandCoreTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (16, 'UltraSpeedTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (17, 'UltraSpeedTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (18, 'HighRAMTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (19, 'HighAntutuTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (20, 'HighGeekbenchTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (21, 'ExtremeThermalTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (22, 'ExtremeThermalTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (23, 'ExtremeThermalTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (24, 'LongLifeBatteryTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (25, 'LongLifeBatteryTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (26, 'RecentPowerTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, 5000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (27, 'FastChargeTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (28, 'SlowChargeTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (29, 'RecentStandbyTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, 8000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (30, 'LongStandbyTablet', NULL, NULL, NULL, NULL, NULL, NULL, 10000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (31, 'LongStandbyTablet', NULL, NULL, NULL, NULL, NULL, NULL, 10000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (32, 'FastChargeAnalysisTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, 6000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (33, 'HighPowerChargeTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (34, 'ExtremeFastChargeTablet', NULL, NULL, NULL, NULL, NULL, NULL, 8000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (35, 'HealthAnalysisTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, 7000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (36, 'LowBatteryHealthTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (37, 'SuperHealthTablet', NULL, NULL, NULL, NULL, NULL, NULL, 5000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (38, 'CycleAnalysisTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, 6000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (39, 'HighCycleTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (40, 'ExtremeCycleTablet', NULL, NULL, NULL, NULL, NULL, NULL, 5000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (41, 'DischargeAnalysisTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, 7500, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (42, 'HighDischargeTablet', NULL, NULL, NULL, NULL, NULL, NULL, 10000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (43, 'TempChargingAnalysisTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, 8000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (44, 'HighTempTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (45, 'ExtremeTempTablet', NULL, NULL, NULL, NULL, NULL, NULL, 5000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (46, 'HighResCameraTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (47, '100MPTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (48, 'PhotoStorageTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32', NULL);
INSERT INTO `tabletbasicinfo` VALUES (49, 'HighResPhotoTablet', NULL, NULL, NULL, NULL, NULL, NULL, 10000, '128', NULL);
INSERT INTO `tabletbasicinfo` VALUES (50, 'LowLightTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (52, 'LowApertureTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (53, 'UltraApertureTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (54, 'ApertureComparisonTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (55, 'BrightnessCalcTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (56, 'PhotoStorage64GBTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '64', NULL);
INSERT INTO `tabletbasicinfo` VALUES (57, 'UltraApertureDisplayTablet', NULL, NULL, NULL, NULL, 2560, 1600, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (58, 'VideoDataAnalysisTablet', '2024-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (59, 'UltraResVideoTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (60, 'LongLifeTablet', NULL, NULL, NULL, NULL, NULL, NULL, 10000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (61, 'HighDensityTablet', NULL, NULL, NULL, 10.50, 2560, 1600, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (62, 'BatteryHealthTablet', NULL, NULL, NULL, NULL, NULL, NULL, 8000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (63, 'HighFPSRecordingTablet', NULL, NULL, NULL, NULL, NULL, NULL, 50000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (64, 'ZoomAnalysisTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (65, 'DualCameraStorageTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (66, 'ExtremeZoomTablet', NULL, NULL, NULL, NULL, 2560, 1600, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (67, 'DigitalZoomHeightTablet', NULL, NULL, NULL, 10.00, NULL, 1600, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (68, 'ExtremeDigitalZoomTablet', NULL, NULL, NULL, NULL, 2560, 1600, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (69, 'LowLightCaptureTablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (70, 'SNRLowLightTablet', NULL, NULL, NULL, NULL, 2560, 1600, NULL, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (71, 'LowLightBatteryTablet', NULL, NULL, NULL, NULL, NULL, NULL, 8000, NULL, NULL);
INSERT INTO `tabletbasicinfo` VALUES (72, 'ExtremeLowLightTablet', NULL, NULL, NULL, NULL, 2560, 1600, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tabletbatteryperformance
-- ----------------------------
DROP TABLE IF EXISTS `tabletbatteryperformance`;
CREATE TABLE `tabletbatteryperformance`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `TabletId` int(0) NULL DEFAULT NULL,
  `BatteryLifeHours` decimal(5, 2) NULL DEFAULT NULL,
  `ChargingTimeMinutes` int(0) NULL DEFAULT NULL,
  `StandbyTimeHours` decimal(5, 2) NULL DEFAULT NULL,
  `FastChargingWattage` decimal(5, 2) NULL DEFAULT NULL,
  `WirelessCharging` tinyint(1) NULL DEFAULT NULL,
  `BatteryHealthPercent` decimal(5, 2) NULL DEFAULT NULL,
  `ChargeCycles` int(0) NULL DEFAULT NULL,
  `DischargeRateMA` decimal(10, 2) NULL DEFAULT NULL,
  `TemperatureCelsius` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabletbatteryperformance
-- ----------------------------
INSERT INTO `tabletbatteryperformance` VALUES (1, 1, 12.50, 120, 300.00, 18.00, 1, 95.00, 150, 500.00, 30.50);
INSERT INTO `tabletbatteryperformance` VALUES (2, 2, 15.00, 90, 350.00, 20.00, 0, 98.00, 100, 450.00, 28.00);
INSERT INTO `tabletbatteryperformance` VALUES (3, 3, 10.75, 150, 250.00, 15.00, 1, 92.50, 200, 600.00, 32.75);
INSERT INTO `tabletbatteryperformance` VALUES (24, 24, 100.00, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (25, 25, 100.00, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (26, 26, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (27, 27, NULL, 45, NULL, NULL, NULL, 98.00, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (28, 28, NULL, 10000, NULL, 65.00, NULL, 95.00, NULL, 2000.00, 25.00);
INSERT INTO `tabletbatteryperformance` VALUES (29, 29, NULL, NULL, 500.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (31, 31, NULL, NULL, 100.00, NULL, NULL, 97.00, NULL, 1000.00, 22.00);
INSERT INTO `tabletbatteryperformance` VALUES (32, 32, NULL, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (33, 33, NULL, NULL, NULL, 65.00, NULL, 96.00, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (34, 34, NULL, NULL, NULL, 100.00, NULL, 90.00, NULL, 3000.00, 45.00);
INSERT INTO `tabletbatteryperformance` VALUES (35, 35, NULL, NULL, NULL, NULL, NULL, 92.00, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (36, 36, 4.00, NULL, NULL, NULL, NULL, 45.00, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (37, 37, 20.00, NULL, NULL, NULL, NULL, 100.00, NULL, 1500.00, 25.00);
INSERT INTO `tabletbatteryperformance` VALUES (38, 38, NULL, NULL, NULL, NULL, NULL, 88.00, 120, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (39, 27, NULL, NULL, NULL, NULL, NULL, 40.00, 600, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (40, 40, NULL, NULL, NULL, NULL, NULL, 10.00, 100000, 500.00, 50.00);
INSERT INTO `tabletbatteryperformance` VALUES (41, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500.00, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (42, 42, NULL, NULL, NULL, NULL, NULL, 85.00, NULL, 100000.00, 35.00);
INSERT INTO `tabletbatteryperformance` VALUES (43, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40.00);
INSERT INTO `tabletbatteryperformance` VALUES (44, 44, NULL, NULL, NULL, NULL, NULL, 80.00, NULL, NULL, 45.00);
INSERT INTO `tabletbatteryperformance` VALUES (45, 45, NULL, NULL, NULL, NULL, NULL, 20.00, NULL, NULL, 100.00);
INSERT INTO `tabletbatteryperformance` VALUES (49, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000.00, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (60, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000.00, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (62, 62, NULL, NULL, NULL, NULL, NULL, 85.00, NULL, NULL, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (63, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000.00, NULL);
INSERT INTO `tabletbatteryperformance` VALUES (71, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500.00, NULL);

-- ----------------------------
-- Table structure for tabletcameraperformance
-- ----------------------------
DROP TABLE IF EXISTS `tabletcameraperformance`;
CREATE TABLE `tabletcameraperformance`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `TabletId` int(0) NULL DEFAULT NULL,
  `RearCameraMP` decimal(5, 2) NULL DEFAULT NULL,
  `FrontCameraMP` decimal(5, 2) NULL DEFAULT NULL,
  `ApertureRear` decimal(3, 1) NULL DEFAULT NULL,
  `ApertureFront` decimal(3, 1) NULL DEFAULT NULL,
  `VideoResolution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `FrameRateFPS` int(0) NULL DEFAULT NULL,
  `OpticalZoomX` decimal(3, 1) NULL DEFAULT NULL,
  `DigitalZoomX` decimal(3, 1) NULL DEFAULT NULL,
  `LowLightPerformanceDB` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabletcameraperformance
-- ----------------------------
INSERT INTO `tabletcameraperformance` VALUES (1, 1, 12.50, 8.00, 1.8, 2.2, '1920x1080', 30, 2.0, 5.0, 45.00);
INSERT INTO `tabletcameraperformance` VALUES (2, 2, 16.00, 10.00, 1.6, 2.0, '3840x2160', 60, 3.0, 10.0, 50.00);
INSERT INTO `tabletcameraperformance` VALUES (3, 3, 20.00, 12.00, 1.4, 1.8, '1920x1080', 30, 2.5, 8.0, 55.00);
INSERT INTO `tabletcameraperformance` VALUES (4, 4, 8.00, 5.00, 2.0, 2.4, '1280x720', 30, 1.5, 3.0, 40.00);
INSERT INTO `tabletcameraperformance` VALUES (5, 5, 48.00, 16.00, 1.7, 2.2, '3840x2160', 60, 5.0, 12.0, 60.00);
INSERT INTO `tabletcameraperformance` VALUES (6, 6, 12.30, 7.50, 1.9, 2.1, '1920x1080', 30, 2.0, 6.0, 47.50);
INSERT INTO `tabletcameraperformance` VALUES (7, 7, 64.00, 20.00, 1.5, 1.8, '7680x4320', 120, 10.0, 20.0, 65.00);
INSERT INTO `tabletcameraperformance` VALUES (46, 46, 48.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (47, 47, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (48, 48, NULL, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (49, 49, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (50, 50, NULL, NULL, 1.8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (52, 52, NULL, NULL, 3.2, NULL, NULL, NULL, NULL, NULL, 45.00);
INSERT INTO `tabletcameraperformance` VALUES (53, 53, NULL, NULL, 0.1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (54, 54, NULL, NULL, 1.8, 2.0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (55, 55, NULL, NULL, 1.6, 2.4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (56, 56, NULL, NULL, NULL, 2.2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (57, 57, NULL, NULL, 0.3, 0.5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (58, 58, NULL, NULL, NULL, NULL, '3840x2160', 60, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (59, 59, NULL, NULL, NULL, NULL, '100000x100000', 30, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (64, 64, NULL, NULL, NULL, NULL, NULL, NULL, 5.0, 10.0, NULL);
INSERT INTO `tabletcameraperformance` VALUES (65, 65, 12.00, 8.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tabletcameraperformance` VALUES (66, 66, NULL, NULL, NULL, NULL, NULL, NULL, 10.0, 20.0, NULL);
INSERT INTO `tabletcameraperformance` VALUES (67, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.0, NULL);
INSERT INTO `tabletcameraperformance` VALUES (68, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.0, NULL);
INSERT INTO `tabletcameraperformance` VALUES (69, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -10.00);
INSERT INTO `tabletcameraperformance` VALUES (70, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -15.00);
INSERT INTO `tabletcameraperformance` VALUES (71, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -12.00);
INSERT INTO `tabletcameraperformance` VALUES (72, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -40.00);

-- ----------------------------
-- Table structure for tabletperformancedata
-- ----------------------------
DROP TABLE IF EXISTS `tabletperformancedata`;
CREATE TABLE `tabletperformancedata`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `TabletId` int(0) NULL DEFAULT NULL,
  `CPUModel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CPUCores` int(0) NULL DEFAULT NULL,
  `CPUSpeedGHz` decimal(5, 2) NULL DEFAULT NULL,
  `RAMGB` int(0) NULL DEFAULT NULL,
  `GPUModel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AntutuScore` int(0) NULL DEFAULT NULL,
  `GeekbenchSingleCore` int(0) NULL DEFAULT NULL,
  `GeekbenchMultiCore` int(0) NULL DEFAULT NULL,
  `ThermalThrottlingPercent` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabletperformancedata
-- ----------------------------
INSERT INTO `tabletperformancedata` VALUES (1, 1, 'Snapdragon 888', 8, 2.84, 8, 'Adreno 660', 750000, 1130, 3700, 5.00);
INSERT INTO `tabletperformancedata` VALUES (2, 2, 'Apple A14 Bionic', 6, 3.10, 6, 'Apple GPU', 800000, 1600, 4200, 3.50);
INSERT INTO `tabletperformancedata` VALUES (3, 3, 'Exynos 2100', 8, 2.90, 12, 'Mali-G78 MP14', 730000, 1100, 3600, 4.20);
INSERT INTO `tabletperformancedata` VALUES (8, 8, NULL, 1000, NULL, NULL, NULL, NULL, NULL, NULL, 5.00);
INSERT INTO `tabletperformancedata` VALUES (9, 9, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, 10.00);
INSERT INTO `tabletperformancedata` VALUES (10, 10, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 8.00);
INSERT INTO `tabletperformancedata` VALUES (11, 11, NULL, NULL, NULL, NULL, NULL, 1000000, NULL, NULL, 7.50);
INSERT INTO `tabletperformancedata` VALUES (12, 12, NULL, NULL, NULL, NULL, NULL, NULL, 100000, NULL, 6.00);
INSERT INTO `tabletperformancedata` VALUES (13, 13, NULL, NULL, 3.00, NULL, NULL, NULL, NULL, NULL, 100.00);
INSERT INTO `tabletperformancedata` VALUES (23, 23, NULL, NULL, 3.00, NULL, NULL, NULL, NULL, NULL, 100.00);
INSERT INTO `tabletperformancedata` VALUES (27, 27, NULL, NULL, NULL, NULL, NULL, 850000, 1800, 7200, 5.20);
INSERT INTO `tabletperformancedata` VALUES (33, 33, NULL, NULL, NULL, NULL, NULL, 900000, 1900, 7500, 6.50);
INSERT INTO `tabletperformancedata` VALUES (36, 36, NULL, NULL, NULL, NULL, NULL, 300000, 800, 3200, 15.00);
INSERT INTO `tabletperformancedata` VALUES (39, 39, NULL, NULL, NULL, NULL, NULL, 250000, 700, 2800, 18.00);
INSERT INTO `tabletperformancedata` VALUES (44, 44, NULL, NULL, NULL, NULL, NULL, 750000, 1600, 6400, 12.50);
INSERT INTO `tabletperformancedata` VALUES (52, 52, NULL, NULL, NULL, NULL, NULL, 650000, 1400, 5600, NULL);

SET FOREIGN_KEY_CHECKS = 1;
