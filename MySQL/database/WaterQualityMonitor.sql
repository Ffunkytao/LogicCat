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

 Date: 11/08/2025 12:31:37
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
) ENGINE=InnoDB AUTO_INCREMENT=5004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of WaterQualityData
-- ----------------------------
BEGIN;
INSERT INTO `WaterQualityData` VALUES (1, 1, '2023-10-01 08:00:00', 7.20, 8.50, 5.30, 22.50, 450.00, 300.00, 0.15, 1.20, 'Normal water quality parameters.');
INSERT INTO `WaterQualityData` VALUES (2, 2, '2023-10-01 09:00:00', 6.80, 7.80, 10.50, 24.00, 500.00, 350.00, 0.20, 1.50, 'Slightly elevated turbidity and ammonia levels.');
INSERT INTO `WaterQualityData` VALUES (3, 3, '2023-10-01 10:00:00', 7.50, 9.00, 3.20, 21.00, 400.00, 280.00, 0.10, 1.00, 'Optimal water quality conditions.');
INSERT INTO `WaterQualityData` VALUES (4, 4, '2023-10-01 11:00:00', 6.90, 6.50, 15.00, 25.50, 600.00, 400.00, 0.30, 2.00, 'High turbidity and temperature observed.');
INSERT INTO `WaterQualityData` VALUES (5, 5, '2023-10-01 12:00:00', 7.10, 8.00, 8.00, 23.00, 480.00, 320.00, 0.18, 1.30, 'Moderate water quality with slight variations.');
INSERT INTO `WaterQualityData` VALUES (6, 6, '2023-10-01 13:00:00', 7.30, 8.20, 6.50, 22.00, 470.00, 310.00, 0.16, 1.25, 'Stable water quality parameters.');
INSERT INTO `WaterQualityData` VALUES (7, 7, '2023-10-01 14:00:00', 7.00, 7.50, 12.00, 24.50, 550.00, 380.00, 0.25, 1.80, 'Increased turbidity and ammonia levels detected.');
INSERT INTO `WaterQualityData` VALUES (12, 1, '2023-10-01', 7.00, 8.50, 2.00, 15.00, 300.00, 200.00, 0.10, 1.00, 'Matching sample data for query test');
INSERT INTO `WaterQualityData` VALUES (13, 1, '2023-10-01', 15.00, 1000.00, 10000.00, 25.00, 400.00, 300.00, 0.10, 1.00, '第十三条测试数据，用于验证查询');
INSERT INTO `WaterQualityData` VALUES (14, 1, '2023-10-01 00:00:00', 6.80, 8.50, 5.30, 22.50, 450.00, 300.00, 0.15, 1.20, '用于验证 PHValue = 6.8 的查询');
INSERT INTO `WaterQualityData` VALUES (15, 1, '2023-10-01', 7.00, 2000.00, 1000.00, 22.50, 450.00, 300.00, 0.15, 1.20, '用于验证 CASE WHEN 条件查询');
INSERT INTO `WaterQualityData` VALUES (17, 1, '2023-10-01 00:00:00', 6.20, 8.50, 5.30, 20.00, 450.00, 300.00, 0.15, 1.20, '用于验证 IonStrength 和 IonStrengthCategory 计算');
INSERT INTO `WaterQualityData` VALUES (18, 1, '2023-10-01 00:00:00', 8.00, 9.00, 4.50, 30.00, 800.00, 500.00, 0.20, 1.50, '用于验证复杂 IonStrength 公式');
INSERT INTO `WaterQualityData` VALUES (19, 1, '2023-10-01 12:00:00', 7.50, 8.00, 2.00, 25.00, 400.00, 250.00, 0.10, 1.00, '用于验证溶解氧是否达到饱和状态');
INSERT INTO `WaterQualityData` VALUES (20, 1, '2023-10-01 14:00:00', 7.00, 8.00, 50.00, 22.00, 420.00, 280.00, 0.05, 1.10, '用于验证浊度是否适合直接饮用');
INSERT INTO `WaterQualityData` VALUES (21, 1, '2023-10-01 16:00:00', 7.20, 8.50, 10.00, 30.00, 2000.00, 300.00, 0.10, 1.00, '用于验证电导率估算总溶解固体');
INSERT INTO `WaterQualityData` VALUES (22, 1, '2023-10-01 18:00:00', 7.40, 9.00, 6.00, 25.00, 460.00, 310.00, 2.50, 10.00, '用于验证氮类污染物是否超过安全限值');
INSERT INTO `WaterQualityData` VALUES (23, 1, '2023-10-01 20:00:00', 7.00, 2.00, 4.00, 50.00, 500.00, 320.00, 0.08, 0.90, '用于验证氧气亏损计算');
INSERT INTO `WaterQualityData` VALUES (24, 1, '2023-10-01 22:00:00', 7.50, 8.00, 5.00, 25.00, 3000.00, 2000.00, 0.10, 1.00, '用于验证总溶解固体与电导率合理性');
INSERT INTO `WaterQualityData` VALUES (25, 1, '2023-10-01 23:00:00', 7.00, 1.00, 2.00, 80.00, 600.00, 400.00, 0.05, 0.80, '用于验证氧气亏损计算');
INSERT INTO `WaterQualityData` VALUES (26, 1, '2023-10-02 08:00:00', 7.20, 8.50, 3.00, 22.00, 450.00, 300.00, 10.00, 100.00, '用于验证氮类污染物是否超过安全限值');
INSERT INTO `WaterQualityData` VALUES (27, 1, '2023-10-02 09:00:00', 7.40, 4.00, 2.50, 35.00, 480.00, 310.00, 0.06, 0.95, '用于验证氧气亏损计算');
INSERT INTO `WaterQualityData` VALUES (28, 1, '2023-10-02 10:00:00', 7.00, 8.00, 4.00, 25.00, 2000.00, 1500.00, 0.07, 1.10, '用于验证总溶解固体与电导率合理性');
INSERT INTO `WaterQualityData` VALUES (29, 1, '2023-10-02 11:00:00', 7.60, 6.00, 2.00, 20.00, 420.00, 280.00, 0.04, 0.70, '用于验证氧气亏损计算');
INSERT INTO `WaterQualityData` VALUES (30, 1, '2023-10-02 12:00:00', 7.80, 9.00, 1.50, 10.00, 400.00, 260.00, 0.03, 0.60, '用于验证氧气亏损计算');
INSERT INTO `WaterQualityData` VALUES (31, 1, '2023-10-02 13:00:00', 7.50, 8.20, 2.00, 22.00, 430.00, 290.00, 0.30, 10.00, '用于验证氮类污染物安全限值状态');
INSERT INTO `WaterQualityData` VALUES (32, 1, '2023-10-02 14:00:00', 6.50, 8.00, 3.00, 25.00, 410.00, 270.00, 0.05, 0.90, '用于验证氢离子浓度计算');
INSERT INTO `WaterQualityData` VALUES (33, 1, '2023-10-02 15:00:00', 7.40, 8.00, 2.00, 20.00, 420.00, 280.00, 0.06, 1.00, '用于验证饱和溶解氧与氧气亏损计算');
INSERT INTO `WaterQualityData` VALUES (34, 1, '2023-10-02 16:00:00', 7.20, 8.40, 50.00, 15.00, 400.00, 260.00, 0.04, 0.80, '用于验证悬浮物浓度计算');
INSERT INTO `WaterQualityData` VALUES (35, 1, '2023-10-02 17:00:00', 7.00, 8.60, 100.00, 24.00, 430.00, 290.00, 0.07, 1.20, '用于验证浊度是否适合直接饮用');
INSERT INTO `WaterQualityData` VALUES (36, 1, '2023-10-02 18:00:00', 7.30, 8.30, 4.00, 25.00, 500.00, 337.00, 0.05, 0.90, '用于验证电导率估算总溶解固体');
INSERT INTO `WaterQualityData` VALUES (37, 1, '2023-10-02 19:00:00', 7.10, 8.70, 3.50, 26.00, 1000.00, 670.00, 0.06, 1.10, '用于验证电导率是否适合直接饮用');
INSERT INTO `WaterQualityData` VALUES (38, 1, '2023-10-02 20:00:00', 7.00, 8.50, 2.80, 24.00, 750.00, 500.00, 0.04, 0.95, '用于验证总溶解固体与电导率关系');
INSERT INTO `WaterQualityData` VALUES (39, 1, '2023-10-02 21:00:00', 7.40, 8.20, 5.00, 23.00, 1800.00, 1200.00, 0.08, 1.30, '用于验证总溶解固体是否适合直接饮用');
INSERT INTO `WaterQualityData` VALUES (40, 1, '2023-10-02 22:00:00', 7.20, 8.60, 3.00, 25.00, 450.00, 300.00, 2.00, 10.00, '用于验证总氮含量计算');
INSERT INTO `WaterQualityData` VALUES (2001, 1, '2023-12-01 14:30:00', 6.50, 7.80, 12.30, 18.50, 520.00, 380.00, 1.50, 10.00, 'Routine monitoring - meets query conditions');
INSERT INTO `WaterQualityData` VALUES (3001, 1, '2023-12-05 11:00:00', 8.50, 8.20, 2.10, 15.50, 350.00, 220.00, 0.80, 20.00, 'Drinking water suitability test sample');
INSERT INTO `WaterQualityData` VALUES (4001, 1, '2023-12-10 09:30:00', 9.00, 7.50, 5.20, 22.00, 600.00, 420.00, 0.30, 15.00, 'Alkaline water sample with pH 9.0');
INSERT INTO `WaterQualityData` VALUES (5001, 1, '2023-12-15 13:45:00', 7.20, 5.80, 25.60, 25.00, 1200.00, 850.00, 0.60, 18.00, '高电导率工业区下游水样');
COMMIT;

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
-- Records of WaterQualityMonitor
-- ----------------------------
BEGIN;
INSERT INTO `WaterQualityMonitor` VALUES (1, 'WQM-100', 'Yangtze River, Wuhan', '2022-01-15', '2022-02-10', 'AquaTech', 'Running', 30.584356, 114.298572, 'River', 'Monitoring water quality in the Yangtze River.');
INSERT INTO `WaterQualityMonitor` VALUES (2, 'WQM-200', 'West Lake, Hangzhou', '2021-11-20', '2021-12-05', 'HydroSense', 'Maintenance', 30.248593, 120.152791, 'Lake', 'Currently under maintenance for sensor calibration.');
INSERT INTO `WaterQualityMonitor` VALUES (3, 'WQM-150', 'Yellow River, Lanzhou', '2023-03-01', '2023-03-20', 'AquaTech', 'Running', 36.061089, 103.834305, 'River', 'Monitoring water quality in the Yellow River.');
INSERT INTO `WaterQualityMonitor` VALUES (4, 'WQM-300', 'Groundwater Station, Beijing', '2020-09-12', '2020-10-01', 'HydroSense', 'Stopped', 39.904202, 116.407394, 'Groundwater', 'Station temporarily stopped due to low water levels.');
INSERT INTO `WaterQualityMonitor` VALUES (5, 'WQM-250', 'Taihu Lake, Wuxi', '2022-05-18', '2022-06-05', 'AquaTech', 'Running', 31.230416, 120.137566, 'Lake', 'Monitoring water quality in Taihu Lake.');
INSERT INTO `WaterQualityMonitor` VALUES (6, 'WQM-400', 'Pearl River, Guangzhou', '2023-07-22', '2023-08-10', 'HydroSense', 'Running', 23.129110, 113.264385, 'River', 'Monitoring water quality in the Pearl River.');
INSERT INTO `WaterQualityMonitor` VALUES (7, 'WQM-350', 'Groundwater Station, Chengdu', '2021-04-30', '2021-05-15', 'AquaTech', 'Running', 30.658601, 104.064762, 'Groundwater', 'Monitoring groundwater quality in Chengdu.');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=7002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of WaterQualityWarningRule
-- ----------------------------
BEGIN;
INSERT INTO `WaterQualityWarningRule` VALUES (1, 'pH High Alert', 'pH', 8.50, 'pH', '>', 8, 'Notify Authorities', 'Triggered when pH exceeds 8.5. Indicates potential alkalinity issues.', 1);
INSERT INTO `WaterQualityWarningRule` VALUES (2, 'Low Dissolved Oxygen', 'Dissolved Oxygen', 4.00, 'mg/L', '<', 7, 'Aerate Water', 'Triggered when dissolved oxygen drops below 4 mg/L. Indicates poor water quality.', 1);
INSERT INTO `WaterQualityWarningRule` VALUES (3, 'High Turbidity Alert', 'Turbidity', 50.00, 'NTU', '>', 9, 'Issue Public Warning', 'Triggered when turbidity exceeds 50 NTU. Indicates potential contamination.', 1);
INSERT INTO `WaterQualityWarningRule` VALUES (4, 'Low pH Alert', 'pH', 6.00, 'pH', '<', 7, 'Add Alkaline Agents', 'Triggered when pH drops below 6.0. Indicates potential acidity issues.', 1);
INSERT INTO `WaterQualityWarningRule` VALUES (5, 'High Nitrate Alert', 'Nitrate', 10.00, 'mg/L', '>', 8, 'Notify Environmental Agency', 'Triggered when nitrate levels exceed 10 mg/L. Indicates potential pollution.', 1);
INSERT INTO `WaterQualityWarningRule` VALUES (6, 'High Ammonia Alert', 'Ammonia', 0.50, 'mg/L', '>', 9, 'Issue Immediate Warning', 'Triggered when ammonia levels exceed 0.5 mg/L. Indicates toxic conditions.', 1);
INSERT INTO `WaterQualityWarningRule` VALUES (7, 'Low Chlorine Alert', 'Chlorine', 0.20, 'mg/L', '<', 6, 'Add Chlorine', 'Triggered when chlorine levels drop below 0.2 mg/L. Indicates insufficient disinfection.', 1);
INSERT INTO `WaterQualityWarningRule` VALUES (8, 'Low dissolved oxygen alert', 'Dissolved oxygen warning', 5.00, 'mg/L', '<', 7, 'Activate aeration equipment', 'Trigger an alert when dissolved oxygen falls below 5 mg/L.', 1);
INSERT INTO `WaterQualityWarningRule` VALUES (9, 'Ammonia-nitrogen exceedance warning', 'ammonia nitrogen', 0.50, 'mg/L', '>', 8, 'Start the purification system.', 'Trigger an alert when the concentration of ammonia-nitrogen exceeds 0.5 mg/L.', 1);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of WaterQualityWarningTriggerRecord
-- ----------------------------
BEGIN;
INSERT INTO `WaterQualityWarningTriggerRecord` VALUES (1, 1, 1, '2023-10-01 14:30:00', 8.75, 'pH', 8, 'Notified local authorities and initiated water treatment.', 0, 'pH level exceeded the threshold of 8.5.');
INSERT INTO `WaterQualityWarningTriggerRecord` VALUES (2, 2, 2, '2023-09-25 08:15:00', 3.80, 'mg/L', 7, 'Aeration system activated to increase dissolved oxygen levels.', 0, 'Dissolved oxygen dropped below 4 mg/L.');
INSERT INTO `WaterQualityWarningTriggerRecord` VALUES (3, 3, 3, '2023-08-15 12:45:00', 55.00, 'NTU', 9, 'Public warning issued and water intake temporarily halted.', 0, 'Turbidity exceeded 50 NTU.');
INSERT INTO `WaterQualityWarningTriggerRecord` VALUES (4, 4, 4, '2023-07-10 16:20:00', 5.80, 'pH', 7, 'Alkaline agents added to water to raise pH levels.', 0, 'pH level dropped below 6.0.');
INSERT INTO `WaterQualityWarningTriggerRecord` VALUES (5, 5, 5, '2023-06-05 09:00:00', 12.50, 'mg/L', 8, 'Environmental agency notified for further investigation.', 0, 'Nitrate levels exceeded 10 mg/L.');
INSERT INTO `WaterQualityWarningTriggerRecord` VALUES (6, 6, 6, '2023-05-20 11:10:00', 0.60, 'mg/L', 9, 'Immediate warning issued and water treatment initiated.', 0, 'Ammonia levels exceeded 0.5 mg/L.');
INSERT INTO `WaterQualityWarningTriggerRecord` VALUES (7, 7, 7, '2023-04-15 18:30:00', 0.15, 'mg/L', 6, 'Chlorine added to water to restore disinfection levels.', 0, 'Chlorine levels dropped below 0.2 mg/L.');
INSERT INTO `WaterQualityWarningTriggerRecord` VALUES (10, 1, 1, '2023-10-01 12:00:00', 7.50, 'pH', 5, 'Adjusted pH levels', 0, 'pH slightly alkaline');
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
