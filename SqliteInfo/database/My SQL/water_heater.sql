/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : water_heater

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/01/2025 00:42:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for energy_consumption_analysis
-- ----------------------------
DROP TABLE IF EXISTS `energy_consumption_analysis`;
CREATE TABLE `energy_consumption_analysis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heater_id` int DEFAULT NULL,
  `analysis_date` varchar(255) DEFAULT NULL,
  `total_energy_consumed` decimal(10,2) DEFAULT NULL,
  `average_daily_energy` decimal(10,2) DEFAULT NULL,
  `peak_energy_time` datetime DEFAULT NULL,
  `peak_energy_value` decimal(10,2) DEFAULT NULL,
  `low_energy_time` datetime DEFAULT NULL,
  `low_energy_value` decimal(10,2) DEFAULT NULL,
  `energy_cost` decimal(10,2) DEFAULT NULL,
  `energy_saving_tips` text,
  PRIMARY KEY (`id`),
  KEY `heater_id` (`heater_id`),
  CONSTRAINT `energy_consumption_analysis_ibfk_1` FOREIGN KEY (`heater_id`) REFERENCES `water_heater_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for environment_data
-- ----------------------------
DROP TABLE IF EXISTS `environment_data`;
CREATE TABLE `environment_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heater_id` int DEFAULT NULL,
  `record_date` varchar(255) DEFAULT NULL,
  `ambient_temperature` decimal(10,2) DEFAULT NULL,
  `humidity` decimal(10,2) DEFAULT NULL,
  `water_inlet_temperature` decimal(10,2) DEFAULT NULL,
  `water_outlet_temperature` decimal(10,2) DEFAULT NULL,
  `water_pressure` decimal(10,2) DEFAULT NULL,
  `air_pressure` decimal(10,2) DEFAULT NULL,
  `wind_speed` decimal(10,2) DEFAULT NULL,
  `solar_radiation` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `heater_id` (`heater_id`),
  CONSTRAINT `environment_data_ibfk_1` FOREIGN KEY (`heater_id`) REFERENCES `water_heater_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for water_heater_info
-- ----------------------------
DROP TABLE IF EXISTS `water_heater_info`;
CREATE TABLE `water_heater_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `capacity` decimal(10,2) DEFAULT NULL,
  `power_rating` decimal(10,2) DEFAULT NULL,
  `voltage` decimal(10,2) DEFAULT NULL,
  `heating_time` decimal(10,2) DEFAULT NULL,
  `energy_efficiency_rating` varchar(10) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `warranty_period` int DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for water_heater_usage
-- ----------------------------
DROP TABLE IF EXISTS `water_heater_usage`;
CREATE TABLE `water_heater_usage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heater_id` int DEFAULT NULL,
  `usage_date` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `water_used` decimal(10,2) DEFAULT NULL,
  `energy_consumed` decimal(10,2) DEFAULT NULL,
  `temperature_set` decimal(10,2) DEFAULT NULL,
  `initial_temperature` decimal(10,2) DEFAULT NULL,
  `final_temperature` decimal(10,2) DEFAULT NULL,
  `ambient_temperature` decimal(10,2) DEFAULT NULL,
  `user_feedback` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `heater_id` (`heater_id`),
  CONSTRAINT `water_heater_usage_ibfk_1` FOREIGN KEY (`heater_id`) REFERENCES `water_heater_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
