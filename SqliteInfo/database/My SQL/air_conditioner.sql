/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : air_conditioner

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 17:08:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for air_conditioner_info
-- ----------------------------
DROP TABLE IF EXISTS `air_conditioner_info`;
CREATE TABLE `air_conditioner_info` (
  `ac_id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `production_year` year DEFAULT NULL,
  `cooling_capacity_btu` int DEFAULT NULL,
  `heating_capacity_btu` int DEFAULT NULL,
  `energy_efficiency_ratio` decimal(5,2) DEFAULT NULL,
  `power_consumption_watts` decimal(10,2) DEFAULT NULL,
  `refrigerant_type` varchar(50) DEFAULT NULL,
  `noise_level_db` decimal(5,2) DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `warranty_period_months` int DEFAULT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for energy_consumption
-- ----------------------------
DROP TABLE IF EXISTS `energy_consumption`;
CREATE TABLE `energy_consumption` (
  `energy_id` int NOT NULL AUTO_INCREMENT,
  `ac_id` int DEFAULT NULL,
  `record_date` varchar(255) DEFAULT NULL,
  `energy_consumption_kwh` decimal(10,2) DEFAULT NULL,
  `power_consumption_watts` decimal(10,2) DEFAULT NULL,
  `temperature_setting_celsius` decimal(5,2) DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `fan_speed` varchar(50) DEFAULT NULL,
  `indoor_temperature_celsius` decimal(5,2) DEFAULT NULL,
  `outdoor_temperature_celsius` decimal(5,2) DEFAULT NULL,
  `humidity_percent` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`energy_id`),
  KEY `ac_id` (`ac_id`),
  CONSTRAINT `energy_consumption_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `air_conditioner_info` (`ac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for humidity_records
-- ----------------------------
DROP TABLE IF EXISTS `humidity_records`;
CREATE TABLE `humidity_records` (
  `humidity_id` int NOT NULL AUTO_INCREMENT,
  `ac_id` int DEFAULT NULL,
  `record_date` varchar(255) DEFAULT NULL,
  `indoor_humidity_percent` decimal(5,2) DEFAULT NULL,
  `outdoor_humidity_percent` decimal(5,2) DEFAULT NULL,
  `temperature_setting_celsius` decimal(5,2) DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `fan_speed` varchar(50) DEFAULT NULL,
  `power_consumption_watts` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`humidity_id`),
  KEY `ac_id` (`ac_id`),
  CONSTRAINT `humidity_records_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `air_conditioner_info` (`ac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for temperature_records
-- ----------------------------
DROP TABLE IF EXISTS `temperature_records`;
CREATE TABLE `temperature_records` (
  `temperature_id` int NOT NULL AUTO_INCREMENT,
  `ac_id` int DEFAULT NULL,
  `record_date` varchar(255) DEFAULT NULL,
  `indoor_temperature_celsius` decimal(5,2) DEFAULT NULL,
  `outdoor_temperature_celsius` decimal(5,2) DEFAULT NULL,
  `temperature_setting_celsius` decimal(5,2) DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `fan_speed` varchar(50) DEFAULT NULL,
  `humidity_percent` decimal(5,2) DEFAULT NULL,
  `power_consumption_watts` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`temperature_id`),
  KEY `ac_id` (`ac_id`),
  CONSTRAINT `temperature_records_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `air_conditioner_info` (`ac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `usage_id` int NOT NULL AUTO_INCREMENT,
  `ac_id` int DEFAULT NULL,
  `usage_date` varchar(255) DEFAULT NULL,
  `usage_duration_hours` decimal(5,2) DEFAULT NULL,
  `temperature_setting_celsius` decimal(5,2) DEFAULT NULL,
  `fan_speed` varchar(50) DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `power_consumption_watts` decimal(10,2) DEFAULT NULL,
  `indoor_temperature_celsius` decimal(5,2) DEFAULT NULL,
  `outdoor_temperature_celsius` decimal(5,2) DEFAULT NULL,
  `humidity_percent` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`usage_id`),
  KEY `ac_id` (`ac_id`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `air_conditioner_info` (`ac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
