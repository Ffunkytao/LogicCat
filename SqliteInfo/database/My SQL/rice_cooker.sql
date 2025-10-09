/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : rice_cooker

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 23:24:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for maintenance_records
-- ----------------------------
DROP TABLE IF EXISTS `maintenance_records`;
CREATE TABLE `maintenance_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rice_cooker_id` int NOT NULL,
  `maintenance_date` varchar(255) NOT NULL,
  `maintenance_type` varchar(100) DEFAULT NULL,
  `maintenance_cost` float DEFAULT NULL,
  `maintenance_duration` float DEFAULT NULL,
  `replaced_parts` varchar(255) DEFAULT NULL,
  `maintenance_notes` text,
  `technician_name` varchar(100) DEFAULT NULL,
  `technician_contact` varchar(50) DEFAULT NULL,
  `next_maintenance_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rice_cooker_id` (`rice_cooker_id`),
  CONSTRAINT `maintenance_records_ibfk_1` FOREIGN KEY (`rice_cooker_id`) REFERENCES `rice_cooker_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for performance_tests
-- ----------------------------
DROP TABLE IF EXISTS `performance_tests`;
CREATE TABLE `performance_tests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rice_cooker_id` int NOT NULL,
  `test_date` varchar(255) NOT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `initial_temperature` float DEFAULT NULL,
  `final_temperature` float DEFAULT NULL,
  `time_to_boil` float DEFAULT NULL,
  `energy_consumption` float DEFAULT NULL,
  `rice_quality_score` float DEFAULT NULL,
  `water_evaporation_rate` float DEFAULT NULL,
  `test_notes` text,
  PRIMARY KEY (`id`),
  KEY `rice_cooker_id` (`rice_cooker_id`),
  CONSTRAINT `performance_tests_ibfk_1` FOREIGN KEY (`rice_cooker_id`) REFERENCES `rice_cooker_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for rice_cooker_info
-- ----------------------------
DROP TABLE IF EXISTS `rice_cooker_info`;
CREATE TABLE `rice_cooker_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `capacity` float NOT NULL,
  `power_rating` float NOT NULL,
  `voltage_rating` float NOT NULL,
  `weight` float NOT NULL,
  `material` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `warranty_period` int DEFAULT NULL,
  `production_date` date DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rice_cooker_id` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `duration` float NOT NULL,
  `temperature_setting` float DEFAULT NULL,
  `actual_max_temperature` float DEFAULT NULL,
  `energy_consumption` float DEFAULT NULL,
  `rice_type` varchar(50) DEFAULT NULL,
  `rice_quantity` float DEFAULT NULL,
  `water_quantity` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rice_cooker_id` (`rice_cooker_id`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`rice_cooker_id`) REFERENCES `rice_cooker_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
