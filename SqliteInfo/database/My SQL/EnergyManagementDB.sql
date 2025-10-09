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

 Date: 27/01/2025 21:44:43
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

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
  PRIMARY KEY (`deviceId`),
  KEY `manufacturerId` (`manufacturerId`),
  CONSTRAINT `EnergyDevices_ibfk_1` FOREIGN KEY (`manufacturerId`) REFERENCES `Manufacturers` (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

SET FOREIGN_KEY_CHECKS = 1;
