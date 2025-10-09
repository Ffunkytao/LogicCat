/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : computer

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 20:44:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for battery_usage
-- ----------------------------
DROP TABLE IF EXISTS `battery_usage`;
CREATE TABLE `battery_usage` (
  `battery_usage_id` int NOT NULL AUTO_INCREMENT,
  `computer_id` int DEFAULT NULL,
  `usage_date` varchar(255) DEFAULT NULL,
  `usage_duration_hours` decimal(5,2) DEFAULT NULL,
  `battery_health_percent` decimal(5,2) DEFAULT NULL,
  `battery_capacity_wh` decimal(5,2) DEFAULT NULL,
  `power_consumption_watts` decimal(5,2) DEFAULT NULL,
  `temperature_celsius` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`battery_usage_id`),
  KEY `computer_id` (`computer_id`),
  CONSTRAINT `battery_usage_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `computer_info` (`computer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for computer_info
-- ----------------------------
DROP TABLE IF EXISTS `computer_info`;
CREATE TABLE `computer_info` (
  `computer_id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `production_year` int DEFAULT NULL,
  `cpu_model` varchar(100) DEFAULT NULL,
  `cpu_cores` int DEFAULT NULL,
  `cpu_threads` int DEFAULT NULL,
  `cpu_base_frequency_ghz` decimal(5,2) DEFAULT NULL,
  `cpu_max_frequency_ghz` decimal(5,2) DEFAULT NULL,
  `ram_size_gb` int DEFAULT NULL,
  `ram_type` varchar(50) DEFAULT NULL,
  `storage_size_gb` int DEFAULT NULL,
  `storage_type` varchar(50) DEFAULT NULL,
  `gpu_model` varchar(100) DEFAULT NULL,
  `gpu_vram_gb` int DEFAULT NULL,
  `screen_size_inches` decimal(5,2) DEFAULT NULL,
  `screen_resolution` varchar(20) DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `battery_capacity_wh` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`computer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for performance_tests
-- ----------------------------
DROP TABLE IF EXISTS `performance_tests`;
CREATE TABLE `performance_tests` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `computer_id` int DEFAULT NULL,
  `test_date` varchar(255) DEFAULT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `cpu_score` decimal(10,2) DEFAULT NULL,
  `gpu_score` decimal(10,2) DEFAULT NULL,
  `ram_score` decimal(10,2) DEFAULT NULL,
  `storage_score` decimal(10,2) DEFAULT NULL,
  `overall_score` decimal(10,2) DEFAULT NULL,
  `temperature_celsius` decimal(5,2) DEFAULT NULL,
  `power_consumption_watts` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`test_id`),
  KEY `computer_id` (`computer_id`),
  CONSTRAINT `performance_tests_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `computer_info` (`computer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `usage_id` int NOT NULL AUTO_INCREMENT,
  `computer_id` int DEFAULT NULL,
  `usage_date` varchar(255) DEFAULT NULL,
  `usage_duration_hours` decimal(5,2) DEFAULT NULL,
  `usage_type` varchar(100) DEFAULT NULL,
  `cpu_usage_percent` decimal(5,2) DEFAULT NULL,
  `gpu_usage_percent` decimal(5,2) DEFAULT NULL,
  `ram_usage_percent` decimal(5,2) DEFAULT NULL,
  `storage_usage_percent` decimal(5,2) DEFAULT NULL,
  `power_consumption_watts` decimal(5,2) DEFAULT NULL,
  `temperature_celsius` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`usage_id`),
  KEY `computer_id` (`computer_id`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `computer_info` (`computer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
