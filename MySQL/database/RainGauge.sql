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

 Date: 11/08/2025 12:29:57
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of HistoricalRainfallAnalysis
-- ----------------------------
BEGIN;
INSERT INTO `HistoricalRainfallAnalysis` VALUES (1, 1, '2023-10-01 14:30:00', '2023-09-01 00:00:00', '2023-09-30 23:59:59', 150.50, 5.20, 15.00, 0.50, 'September rainfall analysis: Moderate rainfall with occasional heavy downpours.');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (2, 2, '2023-09-25 08:15:00', '2023-08-01 00:00:00', '2023-08-31 23:59:59', 200.75, 6.80, 20.00, 1.00, 'August rainfall analysis: Heavy rainfall with consistent intensity.');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (3, 3, '2023-08-15 12:45:00', '2023-07-01 00:00:00', '2023-07-31 23:59:59', 300.20, 10.50, 25.00, 2.00, 'July rainfall analysis: Extreme rainfall with high intensity.');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (4, 4, '2023-07-10 16:20:00', '2023-06-01 00:00:00', '2023-06-30 23:59:59', 100.00, 3.50, 12.00, 0.20, 'June rainfall analysis: Moderate rainfall with light intensity.');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (5, 5, '2023-06-05 09:00:00', '2023-05-01 00:00:00', '2023-05-31 23:59:59', 50.00, 1.80, 8.00, 0.10, 'May rainfall analysis: Light rainfall with low intensity.');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (6, 6, '2023-05-20 11:10:00', '2023-04-01 00:00:00', '2023-04-30 23:59:59', 120.30, 4.00, 10.00, 0.50, 'April rainfall analysis: Moderate rainfall with occasional heavy downpours.');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (7, 7, '2023-04-15 18:30:00', '2023-03-01 00:00:00', '2023-03-31 23:59:59', 80.00, 2.70, 7.00, 0.30, 'March rainfall analysis: Light rainfall with consistent intensity.');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (8, 1, '2023-11-01 10:00:00', '2023-10-01 00:00:00', '2023-10-31 23:59:59', 10500.00, 15.20, 35.00, 2.50, 'Extreme rainfall in October');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (9, 1, '2023-12-01 10:00:00', '2023-11-01 00:00:00', '2023-11-30 23:59:59', 12000.00, 18.80, 40.00, 3.00, 'Record-breaking November rainfall');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (11, 8, '2023-12-31 23:59:59', '2023-01-01 00:00:00', '2023-12-31 23:59:59', 1600.00, 5.00, 100.00, 0.00, 'High annual rainfall');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (12, 8, '2022-12-31 23:59:59', '2022-01-01 00:00:00', '2022-12-31 23:59:59', 1550.00, 4.80, 95.00, 0.00, 'High annual rainfall');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (13, 8, '2021-12-31 23:59:59', '2021-01-01 00:00:00', '2021-12-31 23:59:59', 1520.00, 4.60, 90.00, 0.00, 'High annual rainfall');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (16, 2, '2023-07-05 15:00:00', '2023-07-01 00:00:00', '2023-07-04 23:59:59', 850.00, 120.50, 1050.00, 15.00, 'Extreme rainfall event in July');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (17, 2, '2023-08-10 09:30:00', '2023-08-05 00:00:00', '2023-08-09 23:59:59', 920.00, 135.75, 1200.00, 20.00, 'Record-breaking rainfall intensity');
INSERT INTO `HistoricalRainfallAnalysis` VALUES (18, 2, '2023-09-15 14:45:00', '2023-09-10 00:00:00', '2023-09-14 23:59:59', 780.00, 110.25, 1500.00, 18.00, 'Typhoon-induced heavy rainfall');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RainGauge
-- ----------------------------
BEGIN;
INSERT INTO `RainGauge` VALUES (1, 'RG-100', 'Mountainside, Sichuan', '2022-03-15', '2022-04-10', 'RainTech', 'Running', 30.658601, 104.064762, 1200.50, 'Monitoring rainfall in mountainous region.');
INSERT INTO `RainGauge` VALUES (2, 'RG-200', 'Urban Area, Beijing', '2021-05-20', '2021-06-05', 'HydroSense', 'Maintenance', 39.904202, 116.407394, 50.00, 'Currently under maintenance for sensor calibration.');
INSERT INTO `RainGauge` VALUES (3, 'RG-150', 'Coastal Area, Shanghai', '2023-01-10', '2023-02-01', 'RainTech', 'Running', 31.230416, 121.473701, 10.00, 'Monitoring rainfall in coastal region.');
INSERT INTO `RainGauge` VALUES (4, 'RG-300', 'Plateau, Tibet', '2020-08-12', '2020-09-01', 'HydroSense', 'Stopped', 29.654084, 91.110221, 4500.00, 'Station temporarily stopped due to extreme weather conditions.');
INSERT INTO `RainGauge` VALUES (5, 'RG-250', 'Forest Area, Yunnan', '2022-07-18', '2022-08-05', 'RainTech', 'Running', 25.045806, 102.709999, 1800.00, 'Monitoring rainfall in forested region.');
INSERT INTO `RainGauge` VALUES (6, 'RG-400', 'Desert Area, Xinjiang', '2023-05-22', '2023-06-10', 'HydroSense', 'Running', 41.112900, 85.240104, 800.00, 'Monitoring rainfall in desert region.');
INSERT INTO `RainGauge` VALUES (7, 'RG-350', 'Rural Area, Henan', '2021-04-30', '2021-05-15', 'RainTech', 'Running', 34.747847, 113.624931, 200.00, 'Monitoring rainfall in rural region.');
INSERT INTO `RainGauge` VALUES (8, 'RG-800', 'Mountainous Area, Yunnan', '2020-06-15', '2020-07-01', 'RainTech', 'Running', 25.045806, 102.709999, 1000.00, 'Potential long-term monitoring site');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RainfallData
-- ----------------------------
BEGIN;
INSERT INTO `RainfallData` VALUES (1, 1, '2023-10-01 14:30:00', 15.50, 5.20, 22.30, 65.00, 3.50, 120.00, 1013.25, 'Moderate rainfall with light wind.');
INSERT INTO `RainfallData` VALUES (2, 2, '2023-09-25 08:15:00', 8.75, 2.10, 18.50, 70.00, 2.00, 90.00, 1012.50, 'Light rainfall with calm wind.');
INSERT INTO `RainfallData` VALUES (3, 3, '2023-08-15 12:45:00', 30.20, 10.50, 25.00, 80.00, 5.00, 150.00, 1010.00, 'Heavy rainfall with moderate wind.');
INSERT INTO `RainfallData` VALUES (4, 4, '2023-07-10 16:20:00', 5.00, 1.50, 20.00, 60.00, 1.50, 180.00, 1014.00, 'Light rainfall with calm wind.');
INSERT INTO `RainfallData` VALUES (5, 5, '2023-06-05 09:00:00', 50.00, 15.00, 28.00, 85.00, 7.00, 200.00, 1008.00, 'Extreme rainfall with strong wind.');
INSERT INTO `RainfallData` VALUES (6, 6, '2023-05-20 11:10:00', 12.30, 3.80, 19.50, 75.00, 4.00, 100.00, 1011.50, 'Moderate rainfall with light wind.');
INSERT INTO `RainfallData` VALUES (7, 7, '2023-04-15 18:30:00', 25.00, 8.00, 24.00, 78.00, 6.00, 170.00, 1009.00, 'Heavy rainfall with moderate wind.');
INSERT INTO `RainfallData` VALUES (10, 1, '2023-06-01 08:00:00', 15.00, 5.00, 22.00, 65.00, 3.50, 120.00, 1013.25, 'Morning rainfall');
INSERT INTO `RainfallData` VALUES (11, 1, '2023-06-01 10:00:00', 25.00, 8.00, 23.00, 68.00, 4.00, 125.00, 1012.50, 'Increasing intensity');
INSERT INTO `RainfallData` VALUES (12, 1, '2023-07-15 14:00:00', 10.00, 3.00, 26.00, 70.00, 2.50, 110.00, 1011.00, 'Afternoon light rain');
INSERT INTO `RainfallData` VALUES (13, 1, '2023-07-15 17:00:00', 30.00, 10.00, 24.00, 75.00, 5.00, 130.00, 1010.00, 'Heavy rain later');
INSERT INTO `RainfallData` VALUES (14, 1, '2023-09-01 09:30:00', 8.00, 2.50, 20.00, 60.00, 3.00, 100.00, 1014.00, 'Early September rain');
INSERT INTO `RainfallData` VALUES (15, 1, '2023-09-01 11:00:00', 20.00, 6.50, 21.00, 65.00, 4.50, 115.00, 1013.00, 'Intensity increased');
INSERT INTO `RainfallData` VALUES (20, 3, '2023-08-15 14:30:00', 0.00, 0.00, 105.50, 220.00, 0.00, 0.00, 1010.00, 'Sensor malfunction during heat wave');
INSERT INTO `RainfallData` VALUES (21, 4, '2023-07-20 12:45:00', 0.00, 0.00, 120.00, 250.00, 0.00, 0.00, 1008.00, 'Extreme conditions - possible sensor failure');
INSERT INTO `RainfallData` VALUES (22, 5, '2023-09-05 16:20:00', 0.00, 0.00, 110.20, 210.00, 0.00, 0.00, 1012.00, 'Abnormal readings after lightning strike');
INSERT INTO `RainfallData` VALUES (23, 3, '2023-08-16 15:00:00', 0.00, 0.00, 102.00, 205.00, 0.00, 0.00, 1011.00, 'Continued sensor issues');
INSERT INTO `RainfallData` VALUES (24, 2, '2023-07-28 18:00:00', 10500.00, 350.00, 25.00, 95.00, 12.00, 180.00, 1005.00, 'Extreme flood event - typhoon rainfall');
INSERT INTO `RainfallData` VALUES (25, 2, '2023-08-15 12:00:00', 12000.00, 400.00, 24.50, 98.00, 15.00, 170.00, 1003.00, 'Record-breaking rainfall - station flooded');
INSERT INTO `RainfallData` VALUES (26, 2, '2023-09-02 06:00:00', 15000.00, 500.00, 23.00, 99.00, 18.00, 160.00, 1002.00, 'Catastrophic rainfall - sensor damage suspected');
INSERT INTO `RainfallData` VALUES (30, 3, '2023-03-10 08:00:00', 12.00, 4.00, 18.00, 75.00, 3.00, 120.00, 1012.00, 'Morning light rain');
INSERT INTO `RainfallData` VALUES (31, 3, '2023-03-10 10:30:00', 25.00, 8.50, 19.00, 80.00, 4.50, 130.00, 1011.00, 'Increasing intensity');
INSERT INTO `RainfallData` VALUES (32, 3, '2023-06-15 14:00:00', 8.00, 2.50, 26.00, 85.00, 8.00, 150.00, 1005.00, 'Pre-typhoon rain');
INSERT INTO `RainfallData` VALUES (33, 3, '2023-06-15 16:45:00', 50.00, 20.00, 24.00, 90.00, 15.00, 160.00, 1002.00, 'Typhoon heavy rain');
INSERT INTO `RainfallData` VALUES (34, 3, '2023-09-05 09:15:00', 15.00, 5.00, 22.00, 78.00, 4.00, 110.00, 1010.00, 'September shower');
INSERT INTO `RainfallData` VALUES (35, 3, '2023-09-05 12:00:00', 10.00, 3.00, 23.00, 75.00, 5.00, 120.00, 1009.00, 'Rain decreasing');
INSERT INTO `RainfallData` VALUES (40, 3, '2023-07-10 14:30:00', 150.00, 1000.00, 25.00, 95.00, 15.00, 180.00, 1000.00, 'Extreme rainfall intensity - typhoon event');
INSERT INTO `RainfallData` VALUES (41, 3, '2023-08-05 18:45:00', 200.00, 1000.00, 24.00, 98.00, 18.00, 170.00, 998.00, 'Record rainfall intensity - sensor check needed');
INSERT INTO `RainfallData` VALUES (42, 3, '2023-09-12 16:20:00', 180.00, 1000.00, 23.50, 97.00, 16.00, 160.00, 1001.00, 'Catastrophic rainfall - possible sensor error');
INSERT INTO `RainfallData` VALUES (43, 2, '2024-01-15 02:30:00', 0.00, 0.00, -220.00, 5.00, 0.80, 270.00, 1012.00, '极寒天气测试数据');
INSERT INTO `RainfallData` VALUES (46, 1, '2024-02-01 10:00:00', 55.00, 10.00, 25.00, 80.00, 4.50, 180.00, 1008.00, 'Exceeds threshold');
INSERT INTO `RainfallData` VALUES (47, 2, '2024-02-01 12:00:00', 60.00, 12.00, 24.00, 85.00, 5.00, 200.00, 1006.50, 'Exceeds threshold');
INSERT INTO `RainfallData` VALUES (48, 3, '2024-02-01 14:00:00', 70.00, 15.00, 26.00, 90.00, 6.00, 220.00, 1005.00, 'Exceeds threshold');
INSERT INTO `RainfallData` VALUES (49, 1, '2024-03-01 10:00:00', 10000.00, 500.00, 25.00, 80.00, 6.00, 180.00, 1000.00, 'Extreme rainfall event');
INSERT INTO `RainfallData` VALUES (50, 2, '2024-03-01 12:00:00', 12000.00, 600.00, 24.00, 85.00, 7.00, 200.00, 995.00, 'Record-breaking rainfall');
INSERT INTO `RainfallData` VALUES (51, 3, '2024-03-01 14:00:00', 15000.00, 750.00, 26.00, 90.00, 8.00, 220.00, 990.00, 'Historical flood level');
INSERT INTO `RainfallData` VALUES (52, 1, '2024-04-01 10:00:00', 50.00, 5.00, 25.00, 80.00, 120.00, 180.00, 1005.00, 'High wind speed');
INSERT INTO `RainfallData` VALUES (53, 2, '2024-04-01 12:00:00', 60.00, 6.00, 24.00, 85.00, 150.00, 200.00, 1003.50, 'Extreme wind event');
INSERT INTO `RainfallData` VALUES (54, 3, '2024-04-01 14:00:00', 70.00, 7.00, 26.00, 90.00, 90.00, 800.00, 1002.00, 'Abnormal wind direction');
INSERT INTO `RainfallData` VALUES (61, 3, '2024-07-01 10:00:00', 60.00, 100.00, 25.00, 80.00, 5.00, 180.00, 1010.00, 'Exceeds threshold');
INSERT INTO `RainfallData` VALUES (62, 3, '2024-07-01 12:00:00', 70.00, 100.00, 24.00, 85.00, 6.00, 200.00, 1008.00, 'Exceeds threshold');
INSERT INTO `RainfallData` VALUES (63, 3, '2024-07-01 14:00:00', 80.00, 100.00, 26.00, 90.00, 7.00, 220.00, 1005.00, 'Exceeds threshold');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RainfallWarningRule
-- ----------------------------
BEGIN;
INSERT INTO `RainfallWarningRule` VALUES (1, 'Heavy Rainfall Alert', 'Rainfall', 50.00, 'mm', '>', 9, 'Issue Public Warning', 'Triggered when rainfall exceeds 50 mm. Indicates potential flooding risk.', 1);
INSERT INTO `RainfallWarningRule` VALUES (2, 'High Rainfall Intensity Alert', 'Rainfall Intensity', 10.00, 'mm/h', '>', 8, 'Notify Authorities', 'Triggered when rainfall intensity exceeds 10 mm/h. Indicates heavy downpour.', 1);
INSERT INTO `RainfallWarningRule` VALUES (3, 'Low Rainfall Alert', 'Rainfall', 5.00, 'mm', '<', 6, 'Monitor Drought Conditions', 'Triggered when rainfall drops below 5 mm. Indicates potential drought.', 1);
INSERT INTO `RainfallWarningRule` VALUES (4, 'Extreme Rainfall Alert', 'Rainfall', 100.00, 'mm', '>', 10, 'Evacuate Affected Areas', 'Triggered when rainfall exceeds 100 mm. Indicates severe flooding risk.', 1);
INSERT INTO `RainfallWarningRule` VALUES (5, 'Moderate Rainfall Intensity Alert', 'Rainfall Intensity', 5.00, 'mm/h', '>', 7, 'Issue Local Warning', 'Triggered when rainfall intensity exceeds 5 mm/h. Indicates moderate rain.', 1);
INSERT INTO `RainfallWarningRule` VALUES (6, 'Light Rainfall Alert', 'Rainfall', 1.00, 'mm', '<', 5, 'Monitor Water Supply', 'Triggered when rainfall drops below 1 mm. Indicates very dry conditions.', 1);
INSERT INTO `RainfallWarningRule` VALUES (7, 'High Wind with Rainfall Alert', 'Wind Speed', 10.00, 'm/s', '>', 8, 'Issue Storm Warning', 'Triggered when wind speed exceeds 10 m/s during rainfall. Indicates storm conditions.', 1);
INSERT INTO `RainfallWarningRule` VALUES (8, 'Heavy Rainfall Alert', 'Rainfall', 50.00, 'mm', '>', 9, 'Issue Public Warning', 'Triggered when rainfall exceeds 50 mm', 1);
INSERT INTO `RainfallWarningRule` VALUES (9, 'Extreme Rainfall Alert', 'Rainfall', 5000.00, 'mm', '>', 10, 'Evacuate Affected Areas', 'Triggered when rainfall exceeds 5000 mm', 1);
INSERT INTO `RainfallWarningRule` VALUES (10, 'High Rainfall Alert', 'Rainfall', 50.00, 'mm', '>', 8, 'Notify Authorities', 'Triggered when rainfall exceeds 50 mm', 1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data` (
  `device_id` int DEFAULT NULL,
  `energy_saved` decimal(10,2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
