/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : PhysicsLabDB

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 23:04:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Calculations
-- ----------------------------
DROP TABLE IF EXISTS `Calculations`;
CREATE TABLE `Calculations` (
  `calculationId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `formula` text NOT NULL,
  `inputData` text,
  `result` decimal(10,2) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`calculationId`),
  KEY `experimentId` (`experimentId`),
  CONSTRAINT `Calculations_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Constraints
-- ----------------------------
DROP TABLE IF EXISTS `Constraints`;
CREATE TABLE `Constraints` (
  `constraintId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `constraintText` text NOT NULL,
  `constraintType` enum('等式','不等式') DEFAULT '等式',
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`constraintId`),
  KEY `experimentId` (`experimentId`),
  CONSTRAINT `Constraints_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Devices
-- ----------------------------
DROP TABLE IF EXISTS `Devices`;
CREATE TABLE `Devices` (
  `deviceId` int NOT NULL AUTO_INCREMENT,
  `deviceName` varchar(255) NOT NULL,
  `deviceType` enum('示波器','光谱仪','其他') DEFAULT '其他',
  `calibrationDate` datetime DEFAULT NULL,
  `status` enum('正常','故障') DEFAULT '正常',
  `labId` int DEFAULT NULL,
  PRIMARY KEY (`deviceId`),
  KEY `labId` (`labId`),
  CONSTRAINT `Devices_ibfk_1` FOREIGN KEY (`labId`) REFERENCES `Labs` (`labId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for ExperimentData
-- ----------------------------
DROP TABLE IF EXISTS `ExperimentData`;
CREATE TABLE `ExperimentData` (
  `dataId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `deviceId` int DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `measurementValue` decimal(10,2) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  `environmentalConditions` text,
  PRIMARY KEY (`dataId`),
  KEY `experimentId` (`experimentId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `ExperimentData_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`),
  CONSTRAINT `ExperimentData_ibfk_2` FOREIGN KEY (`deviceId`) REFERENCES `Devices` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Experiments
-- ----------------------------
DROP TABLE IF EXISTS `Experiments`;
CREATE TABLE `Experiments` (
  `experimentId` int NOT NULL AUTO_INCREMENT,
  `experimentName` varchar(255) NOT NULL,
  `description` text,
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `status` enum('进行中','已完成') DEFAULT '进行中',
  `hypothesis` text,
  `objective` text,
  `researcherId` int DEFAULT NULL,
  `labId` int DEFAULT NULL,
  PRIMARY KEY (`experimentId`),
  KEY `researcherId` (`researcherId`),
  KEY `labId` (`labId`),
  CONSTRAINT `Experiments_ibfk_1` FOREIGN KEY (`researcherId`) REFERENCES `Researchers` (`researcherId`),
  CONSTRAINT `Experiments_ibfk_2` FOREIGN KEY (`labId`) REFERENCES `Labs` (`labId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Hypotheses
-- ----------------------------
DROP TABLE IF EXISTS `Hypotheses`;
CREATE TABLE `Hypotheses` (
  `hypothesisId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `hypothesisText` text NOT NULL,
  `status` enum('已验证','未验证') DEFAULT '未验证',
  `verificationDate` datetime DEFAULT NULL,
  `verificationResult` enum('真','假') DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`hypothesisId`),
  KEY `experimentId` (`experimentId`),
  CONSTRAINT `Hypotheses_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Labs
-- ----------------------------
DROP TABLE IF EXISTS `Labs`;
CREATE TABLE `Labs` (
  `labId` int NOT NULL AUTO_INCREMENT,
  `labName` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `equipmentCount` int DEFAULT NULL,
  `status` enum('开放','关闭') DEFAULT '开放',
  PRIMARY KEY (`labId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Researchers
-- ----------------------------
DROP TABLE IF EXISTS `Researchers`;
CREATE TABLE `Researchers` (
  `researcherId` int NOT NULL AUTO_INCREMENT,
  `researcherName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `role` enum('实验员','数据分析师') DEFAULT '实验员',
  `joinDate` datetime NOT NULL,
  PRIMARY KEY (`researcherId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for SensitivityAnalysis
-- ----------------------------
DROP TABLE IF EXISTS `SensitivityAnalysis`;
CREATE TABLE `SensitivityAnalysis` (
  `analysisId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `variableId` int DEFAULT NULL,
  `sensitivityValue` decimal(10,2) NOT NULL,
  `impact` enum('高','中','低') DEFAULT '中',
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`analysisId`),
  KEY `experimentId` (`experimentId`),
  KEY `variableId` (`variableId`),
  CONSTRAINT `SensitivityAnalysis_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`),
  CONSTRAINT `SensitivityAnalysis_ibfk_2` FOREIGN KEY (`variableId`) REFERENCES `Variables` (`variableId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for Variables
-- ----------------------------
DROP TABLE IF EXISTS `Variables`;
CREATE TABLE `Variables` (
  `variableId` int NOT NULL AUTO_INCREMENT,
  `experimentId` int DEFAULT NULL,
  `variableName` varchar(255) NOT NULL,
  `initialValue` decimal(10,2) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `dataQuality` enum('高','中','低') DEFAULT '高',
  PRIMARY KEY (`variableId`),
  KEY `experimentId` (`experimentId`),
  CONSTRAINT `Variables_ibfk_1` FOREIGN KEY (`experimentId`) REFERENCES `Experiments` (`experimentId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
