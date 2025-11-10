/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : EnergyManagementDB

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:27:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for EnergyAudits
-- ----------------------------
DROP TABLE IF EXISTS `EnergyAudits`;
CREATE TABLE `EnergyAudits` (
  `auditId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `auditDate` datetime NOT NULL,
  `auditorName` varchar(255) DEFAULT NULL,
  `auditResult` enum('合规','不合规') NOT NULL,
  `recommendations` text,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`auditId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `EnergyAudits_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `EnergyDevices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of EnergyAudits
-- ----------------------------
BEGIN;
INSERT INTO `EnergyAudits` VALUES (1, 1, '2023-10-01 08:00:00', 'David Auditor', '合规', '继续保持高效运行', '高');
INSERT INTO `EnergyAudits` VALUES (2, 2, '2023-10-01 09:00:00', 'Eva Inspector', '合规', '定期检查叶片', '中');
INSERT INTO `EnergyAudits` VALUES (3, 3, '2023-10-01 10:00:00', 'Frank Analyst', '不合规', '减少碳排放', '低');
COMMIT;

-- ----------------------------
-- Table structure for EnergyConsumption
-- ----------------------------
DROP TABLE IF EXISTS `EnergyConsumption`;
CREATE TABLE `EnergyConsumption` (
  `consumptionId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `energyConsumed` decimal(10,2) NOT NULL,
  `powerUsage` decimal(10,2) NOT NULL,
  `voltage` decimal(10,2) DEFAULT NULL,
  `current` decimal(10,2) DEFAULT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `humidity` decimal(5,2) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`consumptionId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `EnergyConsumption_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `EnergyDevices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=2039 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of EnergyConsumption
-- ----------------------------
BEGIN;
INSERT INTO `EnergyConsumption` VALUES (1, 1, '2023-10-01 08:00:00', 50.00, 100.00, 220.00, 0.50, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2, 2, '2023-10-01 09:00:00', 200.00, 500.00, 380.00, 1.30, 20.00, 60.00, '中');
INSERT INTO `EnergyConsumption` VALUES (3, 3, '2023-10-01 10:00:00', 500.00, 1000.00, 400.00, 2.50, 30.00, 40.00, '低');
INSERT INTO `EnergyConsumption` VALUES (4, 1, '2023-10-28 08:00:00', 6000.00, 600.00, 220.00, 0.50, 60.00, 10.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2001, 1001, '2024-01-10 08:00:00', 15.50, 300.00, 220.00, 1.50, 25.00, 60.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2002, 1001, '2025-02-15 09:00:00', 12.30, 300.00, 220.00, 1.50, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2003, 1001, '2025-03-20 10:00:00', 10.20, 300.00, 220.00, 1.50, 27.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2004, 1, '2023-03-15 08:00:00', 100.00, 200.00, 220.00, 0.90, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2005, 1, '2023-06-20 09:00:00', 150.00, 250.00, 220.00, 1.00, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2006, 2, '2023-05-10 10:00:00', 300.00, 400.00, 380.00, 1.20, 24.00, 60.00, '中');
INSERT INTO `EnergyConsumption` VALUES (2007, 2, '2023-09-12 11:00:00', 350.00, 450.00, 380.00, 1.30, 23.00, 58.00, '中');
INSERT INTO `EnergyConsumption` VALUES (2008, 3, '2023-02-05 07:00:00', 500.00, 600.00, 400.00, 2.00, 30.00, 40.00, '低');
INSERT INTO `EnergyConsumption` VALUES (2009, 3, '2023-11-25 13:00:00', 550.00, 650.00, 400.00, 2.10, 29.00, 42.00, '低');
INSERT INTO `EnergyConsumption` VALUES (2010, 1001, '2023-07-18 14:00:00', 200.00, 300.00, 220.00, 1.50, 28.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2011, 1001, '2023-12-05 15:00:00', 220.00, 320.00, 220.00, 1.60, 27.00, 52.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2012, 1, '2023-05-01 08:00:00', 120.00, 220.00, 220.00, 1.00, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2013, 1, '2023-08-01 09:00:00', 130.00, 230.00, 220.00, 1.10, 26.00, 52.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2014, 2, '2023-06-15 10:00:00', 300.00, 400.00, 380.00, 1.20, 24.00, 55.00, '中');
INSERT INTO `EnergyConsumption` VALUES (2015, 2, '2023-09-10 11:00:00', 320.00, 420.00, 380.00, 1.30, 23.00, 53.00, '中');
INSERT INTO `EnergyConsumption` VALUES (2016, 3, '2023-04-20 12:00:00', 500.00, 600.00, 400.00, 2.00, 30.00, 40.00, '低');
INSERT INTO `EnergyConsumption` VALUES (2017, 3, '2023-12-10 13:00:00', 520.00, 620.00, 400.00, 2.10, 29.00, 42.00, '低');
INSERT INTO `EnergyConsumption` VALUES (2018, 1, '2023-05-15 10:00:00', 100.00, 500.00, 220.00, 2.27, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2019, 11, '2023-06-01 08:00:00', 100.00, 500.00, 220.00, 2.50, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2020, 11, '2023-06-01 10:00:00', 200.00, 600.00, 220.00, 2.70, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2021, 2, '2025-03-01 10:00:00', 500.00, 600.00, 380.00, 1.30, 22.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2022, 2, '2025-05-01 11:00:00', 300.00, 550.00, 380.00, 1.20, 23.00, 60.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2023, 200, '2025-05-01 10:00:00', 300.00, 500.00, 220.00, 2.50, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2024, 201, '2025-05-01 11:00:00', 500.00, 600.00, 220.00, 2.70, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2025, 201, '2025-05-02 11:00:00', 400.00, 600.00, 220.00, 2.70, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2026, 1, '2025-03-01 10:00:00', 100.00, 500.00, 220.00, 2.50, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2027, 1, '2025-05-01 11:00:00', 200.00, 600.00, 220.00, 2.70, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2028, 1, '2025-03-01 10:00:00', 100.00, 500.00, 220.00, 2.50, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2029, 1, '2025-05-01 11:00:00', 200.00, 600.00, 220.00, 2.70, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2030, 123, '2023-06-01 10:00:00', 300.00, 500.00, 220.00, 2.50, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2031, 123, '2023-08-01 11:00:00', 400.00, 600.00, 220.00, 2.70, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2032, 123, '2023-06-01 10:00:00', 300.00, 500.00, 220.00, 2.50, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2033, 123, '2023-08-01 11:00:00', 400.00, 600.00, 220.00, 2.70, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2034, 1, '2023-01-05 08:00:00', 50.00, 100.00, 220.00, 0.50, 20.00, 40.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2035, 1, '2023-01-25 18:00:00', 100.00, 150.00, 220.00, 0.60, 22.00, 45.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2036, 10, '2022-06-01 10:00:00', 100.00, 300.00, 380.00, 1.30, 25.00, 50.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2037, 10, '2022-12-15 14:00:00', 150.00, 400.00, 380.00, 1.50, 26.00, 55.00, '高');
INSERT INTO `EnergyConsumption` VALUES (2038, 401, '2025-06-25 10:00:00', 5000.00, 15000.00, 400.00, 40.00, 30.00, 60.00, '高');
COMMIT;

-- ----------------------------
-- Table structure for EnergyDevices
-- ----------------------------
DROP TABLE IF EXISTS `EnergyDevices`;
CREATE TABLE `EnergyDevices` (
  `deviceId` int NOT NULL AUTO_INCREMENT,
  `deviceName` varchar(255) NOT NULL,
  `deviceType` enum('太阳能','风能','化石燃料') NOT NULL,
  `powerRating` decimal(10,2) NOT NULL,
  `efficiency` decimal(5,2) NOT NULL,
  `installationDate` datetime NOT NULL,
  `status` enum('运行中','维修中','停用') DEFAULT '运行中',
  `location` varchar(255) DEFAULT NULL,
  `manufacturerId` int DEFAULT NULL,
  `lastMaintenanceDate` datetime DEFAULT NULL,
  `nextMaintenanceDate` datetime DEFAULT NULL,
  `humidity` float DEFAULT NULL,
  `voltage` decimal(10,2) DEFAULT NULL,
  `current` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`deviceId`),
  KEY `manufacturerId` (`manufacturerId`),
  CONSTRAINT `EnergyDevices_ibfk_1` FOREIGN KEY (`manufacturerId`) REFERENCES `Manufacturers` (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=12346 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of EnergyDevices
-- ----------------------------
BEGIN;
INSERT INTO `EnergyDevices` VALUES (1, 'Solar Panel 1', '太阳能', 100.00, 95.00, '2023-01-15 10:00:00', '运行中', 'Sun City, USA', 1, '2023-06-15 14:00:00', '2023-12-15 14:00:00', NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (2, 'Wind Turbine 1', '风能', 500.00, 90.00, '2023-02-20 11:00:00', '运行中', 'Wind Town, Canada', 2, '2023-07-20 15:00:00', '2024-01-20 15:00:00', NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (3, 'Gas Generator 1', '化石燃料', 1000.00, 85.00, '2023-03-10 12:00:00', '维修中', 'Energy City, UK', 3, '2023-08-10 16:00:00', '2024-02-10 16:00:00', 10, 100.00, 20.00);
INSERT INTO `EnergyDevices` VALUES (6, 'TestDevice6', '风能', 1000.00, 85.00, '2025-01-01 00:00:00', '运行中', '测试地点', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (10, 'TestWindTurbine', '风能', 500.00, 90.00, '2021-12-01 00:00:00', '运行中', '测试地点', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (11, 'ExtremeDeviceX', '化石燃料', 1000.00, 80.00, '2023-01-01 00:00:00', '运行中', 'Test Location', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (20, '太阳能板', '太阳能', 500.00, 90.00, '2022-01-01 00:00:00', '运行中', '示例位置', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (30, '1', '风能', 1000.00, 85.00, '2022-01-01 00:00:00', '运行中', '测试场', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (100, 'TestDeviceLow', '太阳能', 100.00, 80.00, '2024-01-01 00:00:00', '运行中', 'Test Location', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (101, 'TestDeviceHigh', '太阳能', 100.00, 95.00, '2024-01-01 00:00:00', '运行中', 'Test Location', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (123, 'TestDevice123', '风能', 1000000.00, 85.00, '2023-01-01 00:00:00', '运行中', 'Test Site', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (200, '某制造商设备A', '风能', 500.00, 90.00, '2024-01-01 00:00:00', '运行中', '示例地点', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (201, '某制造商设备B', '风能', 600.00, 85.00, '2024-01-01 00:00:00', '运行中', '示例地点', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (300, '某制造商设备X', '风能', 500.00, 88.00, '2024-01-01 00:00:00', '运行中', '测试地点', 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (301, '某制造商设备Y', '风能', 600.00, 85.00, '2024-01-01 00:00:00', '运行中', '测试地点', 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (401, 'FutureDeviceA', '风能', 2000.00, 92.00, '2024-05-01 00:00:00', '运行中', '测试基地A', 888, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (402, 'FutureDeviceB', '太阳能', 1800.00, 90.00, '2024-06-01 00:00:00', '运行中', '测试基地B', 888, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (403, 'FutureDeviceC', '风能', 2200.00, 93.00, '2024-07-01 00:00:00', '运行中', '测试基地C', 888, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (1001, 'Solar Panel A', '太阳能', 300.00, 0.92, '2022-01-15 00:00:00', '运行中', '屋顶A区', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `EnergyDevices` VALUES (12345, 'TestExtremeDevice', '化石燃料', 1000000.00, 50.00, '2023-01-01 00:00:00', '运行中', 'Test Location', 1, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for EnergyEfficiency
-- ----------------------------
DROP TABLE IF EXISTS `EnergyEfficiency`;
CREATE TABLE `EnergyEfficiency` (
  `efficiencyId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `efficiency` decimal(5,2) NOT NULL,
  `energySaved` decimal(10,2) NOT NULL,
  `costSavings` decimal(10,2) NOT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`efficiencyId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `EnergyEfficiency_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `EnergyDevices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of EnergyEfficiency
-- ----------------------------
BEGIN;
INSERT INTO `EnergyEfficiency` VALUES (1, 1, '2023-10-01 08:00:00', 95.00, 5.00, 50.00, '高');
INSERT INTO `EnergyEfficiency` VALUES (2, 2, '2023-10-01 09:00:00', 90.00, 50.00, 500.00, '中');
INSERT INTO `EnergyEfficiency` VALUES (3, 3, '2023-10-01 10:00:00', 85.00, 150.00, 1500.00, '低');
INSERT INTO `EnergyEfficiency` VALUES (11, 1, '2025-01-10 08:00:00', 95.00, 60.00, 600.00, '高');
INSERT INTO `EnergyEfficiency` VALUES (12, 2, '2025-03-15 09:00:00', 90.00, 50.00, 500.00, '中');
INSERT INTO `EnergyEfficiency` VALUES (13, 3, '2025-05-20 10:00:00', 85.00, 75.00, 750.00, '低');
INSERT INTO `EnergyEfficiency` VALUES (14, 123, '2025-06-01 10:00:00', 90.00, 100.00, 1000.00, '高');
COMMIT;

-- ----------------------------
-- Table structure for EnergyForecasts
-- ----------------------------
DROP TABLE IF EXISTS `EnergyForecasts`;
CREATE TABLE `EnergyForecasts` (
  `forecastId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `forecastType` enum('能耗预测','发电量预测') NOT NULL,
  `forecastValue` decimal(10,2) NOT NULL,
  `confidenceLevel` decimal(5,2) NOT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`forecastId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `EnergyForecasts_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `EnergyDevices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of EnergyForecasts
-- ----------------------------
BEGIN;
INSERT INTO `EnergyForecasts` VALUES (1, 1, '2023-10-01 08:00:00', '能耗预测', 55.00, 95.00, '高');
INSERT INTO `EnergyForecasts` VALUES (2, 2, '2023-10-01 09:00:00', '发电量预测', 550.00, 90.00, '中');
INSERT INTO `EnergyForecasts` VALUES (3, 3, '2023-10-01 10:00:00', '能耗预测', 600.00, 85.00, '低');
INSERT INTO `EnergyForecasts` VALUES (4, 2, '2023-10-01 08:00:00', '能耗预测', 56.00, 99.00, '高');
COMMIT;

-- ----------------------------
-- Table structure for EnergyPolicies
-- ----------------------------
DROP TABLE IF EXISTS `EnergyPolicies`;
CREATE TABLE `EnergyPolicies` (
  `policyId` int NOT NULL AUTO_INCREMENT,
  `policyName` varchar(255) NOT NULL,
  `description` text,
  `effectiveDate` datetime NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `targetEfficiency` decimal(5,2) NOT NULL,
  `targetCarbonFootprint` decimal(10,2) NOT NULL,
  `status` enum('启用','禁用') DEFAULT '启用',
  PRIMARY KEY (`policyId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of EnergyPolicies
-- ----------------------------
BEGIN;
INSERT INTO `EnergyPolicies` VALUES (1, '绿色能源政策', '提高可再生能源使用比例', '2023-01-01 00:00:00', '2025-12-31 23:59:59', 95.00, 0.00, '启用');
INSERT INTO `EnergyPolicies` VALUES (2, '碳排放限制政策', '限制化石燃料的碳排放', '2023-01-01 00:00:00', '2025-12-31 23:59:59', 85.00, 100.00, '启用');
COMMIT;

-- ----------------------------
-- Table structure for EnvironmentalImpact
-- ----------------------------
DROP TABLE IF EXISTS `EnvironmentalImpact`;
CREATE TABLE `EnvironmentalImpact` (
  `impactId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `carbonFootprint` decimal(10,2) NOT NULL,
  `energySource` enum('太阳能','风能','化石燃料') NOT NULL,
  `pollutionLevel` decimal(10,2) DEFAULT NULL,
  `waterUsage` decimal(10,2) DEFAULT NULL,
  `landUsage` decimal(10,2) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`impactId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `EnvironmentalImpact_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `EnergyDevices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of EnvironmentalImpact
-- ----------------------------
BEGIN;
INSERT INTO `EnvironmentalImpact` VALUES (1, 1, '2023-10-01 08:00:00', 0.00, '太阳能', 0.00, 0.00, 10.00, '高');
INSERT INTO `EnvironmentalImpact` VALUES (2, 2, '2023-10-01 09:00:00', 0.00, '风能', 0.00, 0.00, 50.00, '中');
INSERT INTO `EnvironmentalImpact` VALUES (3, 3, '2023-10-01 10:00:00', 200.00, '化石燃料', 50.00, 10.00, 100.00, '低');
INSERT INTO `EnvironmentalImpact` VALUES (4, 1, '2023-10-01 08:00:00', 10000.00, '太阳能', 60.00, 0.00, 10.00, '高');
INSERT INTO `EnvironmentalImpact` VALUES (5, 123, '2023-06-01 10:00:00', 8500000.00, '风能', 50.00, 1000.00, 500.00, '高');
INSERT INTO `EnvironmentalImpact` VALUES (6, 123, '2023-08-01 12:00:00', 9000000.00, '风能', 55.00, 1100.00, 550.00, '高');
INSERT INTO `EnvironmentalImpact` VALUES (7, 123, '2023-06-01 10:00:00', 0.85, '风能', 10.00, 5.00, 2.00, '高');
INSERT INTO `EnvironmentalImpact` VALUES (8, 123, '2025-06-01 10:00:00', 0.85, '风能', 10.00, 5.00, 2.00, '高');
COMMIT;

-- ----------------------------
-- Table structure for Hypotheses
-- ----------------------------
DROP TABLE IF EXISTS `Hypotheses`;
CREATE TABLE `Hypotheses` (
  `hypothesisId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `hypothesisText` text NOT NULL,
  `status` enum('已验证','未验证') DEFAULT '未验证',
  `verificationDate` datetime DEFAULT NULL,
  `verificationResult` enum('真','假') DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`hypothesisId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `Hypotheses_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `EnergyDevices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of Hypotheses
-- ----------------------------
BEGIN;
INSERT INTO `Hypotheses` VALUES (1, 1, '提高太阳能板效率可减少碳排放', '已验证', '2023-10-05 12:00:00', '真', '高');
INSERT INTO `Hypotheses` VALUES (2, 2, '增加风力发电机的叶片数量可提高发电量', '未验证', NULL, NULL, '中');
INSERT INTO `Hypotheses` VALUES (3, 3, '使用更高效的化石燃料发电机可降低碳排放', '已验证', '2023-10-10 14:00:00', '假', '低');
INSERT INTO `Hypotheses` VALUES (4, NULL, '假设风力发电机的叶片半径增加到1000米，风速为50米/秒，输出功率将极大增加。然而，这种极端情况可能导致叶片材料无法承受巨大的风压，发电机过热，甚至结构崩溃。', '未验证', NULL, NULL, '高');
COMMIT;

-- ----------------------------
-- Table structure for MaintenanceRecords
-- ----------------------------
DROP TABLE IF EXISTS `MaintenanceRecords`;
CREATE TABLE `MaintenanceRecords` (
  `maintenanceId` int NOT NULL AUTO_INCREMENT,
  `deviceId` int DEFAULT NULL,
  `maintenanceDate` datetime NOT NULL,
  `maintenanceType` enum('定期维护','紧急维修') NOT NULL,
  `technicianName` varchar(255) DEFAULT NULL,
  `technicianContact` varchar(20) DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL,
  `partsReplaced` text,
  `maintenanceDescription` text,
  `nextMaintenanceDate` datetime DEFAULT NULL,
  PRIMARY KEY (`maintenanceId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `MaintenanceRecords_ibfk_1` FOREIGN KEY (`deviceId`) REFERENCES `EnergyDevices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of MaintenanceRecords
-- ----------------------------
BEGIN;
INSERT INTO `MaintenanceRecords` VALUES (1, 1, '2023-06-15 14:00:00', '定期维护', 'Bob Builder', '+1234567890', 499.00, '太阳能板', '清洁太阳能板', '2023-12-15 14:00:00');
INSERT INTO `MaintenanceRecords` VALUES (2, 2, '2023-07-20 15:00:00', '定期维护', 'Alice Engineer', '+0987654321', 1000.00, '叶片', '检查叶片', '2024-01-20 15:00:00');
INSERT INTO `MaintenanceRecords` VALUES (3, 3, '2023-08-10 16:00:00', '紧急维修', 'Charlie Mechanic', '+1122334455', 2000.00, '发电机', '修复发电机', '2024-02-10 16:00:00');
INSERT INTO `MaintenanceRecords` VALUES (4, 3, '2023-08-10 16:00:00', '紧急维修', 'Charlie Mechanic', '+1122334489', 10000.00, '发电机', '修复发电机', '2024-02-10 16:00:00');
INSERT INTO `MaintenanceRecords` VALUES (5, 3, '2019-08-10 16:00:00', '紧急维修', 'Charlie Mechanic', '+1122334489', 10000.00, '发电机', '修复发电机', '2019-01-10 16:00:00');
INSERT INTO `MaintenanceRecords` VALUES (7, 300, '2025-05-01 10:00:00', '定期维护', '技师A', '+1111111111', 500.00, '部件A', '检查与维护', '2025-11-01 10:00:00');
INSERT INTO `MaintenanceRecords` VALUES (8, 301, '2025-05-02 11:00:00', '定期维护', '技师B', '+2222222222', 1500.00, '部件B', '检查与维护', '2025-11-02 11:00:00');
INSERT INTO `MaintenanceRecords` VALUES (9, 401, '2025-06-20 09:00:00', '定期维护', 'Alice Tech', '+1234567890', 2000.00, '高压部件', '更换高压部件', '2025-12-20 09:00:00');
COMMIT;

-- ----------------------------
-- Table structure for Manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `Manufacturers`;
CREATE TABLE `Manufacturers` (
  `manufacturerId` int NOT NULL AUTO_INCREMENT,
  `manufacturerName` varchar(255) NOT NULL,
  `contactPerson` varchar(255) DEFAULT NULL,
  `contactEmail` varchar(255) DEFAULT NULL,
  `contactPhone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `revenue` decimal(15,2) DEFAULT NULL,
  `profit` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of Manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `Manufacturers` VALUES (1, 'SolarTech', 'John Doe', 'john.doe@solartech.com', '+1234567890', '123 Solar Street', 'Sun City', 'USA', 'www.solartech.com', 5000000.00, 1000000.00);
INSERT INTO `Manufacturers` VALUES (2, 'WindPower Inc.', 'Jane Smith', 'jane.smith@windpower.com', '+0987654321', '456 Wind Avenue', 'Wind Town', 'Canada', 'www.windpower.com', 3000000.00, 600000.00);
INSERT INTO `Manufacturers` VALUES (3, 'FossilEnergy', 'Alice Johnson', 'alice.johnson@fossilenergy.com', '+1122334455', '789 Fossil Lane', 'Energy City', 'UK', 'www.fossilenergy.com', 8000000.00, 2000000.00);
INSERT INTO `Manufacturers` VALUES (4, '制造商E', 'Test Person', 'test@e.com', '+000000000', 'No Address', 'No City', 'No Country', 'www.e.com', 5000000.00, 500000.00);
INSERT INTO `Manufacturers` VALUES (10, '某制造商名称', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000000.00, 100000.00);
INSERT INTO `Manufacturers` VALUES (20, '某制造商名称', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000000.00, 1000000.00);
INSERT INTO `Manufacturers` VALUES (30, '某制造商名称', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000000.00, 2000000.00);
INSERT INTO `Manufacturers` VALUES (50, 'EcoPower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000000.00, 2000000.00);
INSERT INTO `Manufacturers` VALUES (888, 'FutureEnergy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000000.00, 10000000.00);
INSERT INTO `Manufacturers` VALUES (999, 'EcoPower', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000000.00, 2000000.00);
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

-- ----------------------------
-- View structure for DeviceConsumption
-- ----------------------------
DROP VIEW IF EXISTS `DeviceConsumption`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `DeviceConsumption` AS select `ec`.`deviceId` AS `特定设备的ID`,sum(`ec`.`energyConsumed`) AS `totalEnergyConsumed`,avg(`ec`.`powerUsage`) AS `avgPowerUsage`,avg(`ec`.`voltage`) AS `avgVoltage`,avg(`ec`.`current`) AS `avgCurrent` from `EnergyConsumption` `ec` where (`ec`.`timestamp` between '2023-01-01 00:00:00' and '2023-12-31 23:59:59') group by `ec`.`deviceId`;

SET FOREIGN_KEY_CHECKS = 1;
