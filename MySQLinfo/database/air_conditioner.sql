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

 Date: 11/08/2025 10:56:01
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
-- Records of air_conditioner_info
-- ----------------------------
BEGIN;
INSERT INTO `air_conditioner_info` VALUES (1, 'Daikin', 'FTXS35LVMA', 2022, 12000, 13000, 3.50, 1100.00, 'R410A', 19.00, 32.50, '800x300x200', 60);
INSERT INTO `air_conditioner_info` VALUES (2, 'Mitsubishi', 'MSZ-FH09NA', 2021, 9000, 10000, 4.00, 900.00, 'R32', 20.00, 28.00, '780x290x210', 72);
INSERT INTO `air_conditioner_info` VALUES (3, 'LG', 'LP1419IVSM', 2023, 14000, 15000, 3.80, 1200.00, 'R410A', 21.00, 34.00, '820x310x220', 60);
INSERT INTO `air_conditioner_info` VALUES (4, 'Samsung', 'AR12TXHQAWKN', 2022, 11000, 12000, 3.70, 1000.00, 'R32', 18.50, 30.00, '790x295x205', 60);
INSERT INTO `air_conditioner_info` VALUES (5, 'Panasonic', 'CS-XE9PKEW', 2023, 10000, 11000, 4.20, 950.00, 'R410A', 20.50, 29.50, '800x300x200', 72);
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
-- Table structure for computer_system
-- ----------------------------
DROP TABLE IF EXISTS `computer_system`;
CREATE TABLE `computer_system` (
  `cpu_score` int DEFAULT NULL,
  `gpu_score` int DEFAULT NULL,
  `memory_score` int DEFAULT NULL,
  `storage_score` int DEFAULT NULL,
  `overall_score` int DEFAULT NULL,
  `test_temperature_celsius` int DEFAULT NULL,
  `power_consumption_watts` int DEFAULT NULL,
  `rated_operating_temperature_celsius` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Records of energy_consumption
-- ----------------------------
BEGIN;
INSERT INTO `energy_consumption` VALUES (1, 1, '2023-10-01', 5.50, 1100.00, 22.00, 'Cooling', 'High', 25.00, 35.00, 60.00);
INSERT INTO `energy_consumption` VALUES (2, 2, '2023-10-02', 8.00, 900.00, 24.00, 'Heating', 'Medium', 20.00, 10.00, 50.00);
INSERT INTO `energy_consumption` VALUES (3, 3, '2023-10-03', 6.00, 1200.00, 26.00, 'Cooling', 'Low', 28.00, 38.00, 65.00);
INSERT INTO `energy_consumption` VALUES (4, 4, '2023-10-04', 7.50, 1000.00, 23.00, 'Dehumidify', 'High', 26.00, 36.00, 70.00);
INSERT INTO `energy_consumption` VALUES (5, 5, '2023-10-05', 4.00, 950.00, 25.00, 'Fan', 'Medium', 27.00, 37.00, 55.00);
COMMIT;

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
-- Records of humidity_records
-- ----------------------------
BEGIN;
INSERT INTO `humidity_records` VALUES (1, 1, '2023-10-01', 60.00, 70.00, 22.00, 'Cooling', 'High', 1100.00);
INSERT INTO `humidity_records` VALUES (2, 2, '2023-10-02', 50.00, 60.00, 24.00, 'Heating', 'Medium', 900.00);
INSERT INTO `humidity_records` VALUES (3, 3, '2023-10-03', 65.00, 75.00, 26.00, 'Cooling', 'Low', 1200.00);
INSERT INTO `humidity_records` VALUES (4, 4, '2023-10-04', 70.00, 80.00, 23.00, 'Dehumidify', 'High', 1000.00);
INSERT INTO `humidity_records` VALUES (5, 5, '2023-10-05', 55.00, 65.00, 25.00, 'Fan', 'Medium', 950.00);
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for programming_questions
-- ----------------------------
DROP TABLE IF EXISTS `programming_questions`;
CREATE TABLE `programming_questions` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '问题的唯一标识符',
  `question` text NOT NULL COMMENT '问题的内容',
  `answer` text NOT NULL COMMENT '对应的问题答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for refrigerant_properties
-- ----------------------------
DROP TABLE IF EXISTS `refrigerant_properties`;
CREATE TABLE `refrigerant_properties` (
  `refrigerant_type` varchar(50) NOT NULL,
  `phase_change_heat_kj_per_kg` float DEFAULT NULL,
  `refrigerant_flow_rate_kg_per_s` float DEFAULT NULL,
  PRIMARY KEY (`refrigerant_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Records of temperature_records
-- ----------------------------
BEGIN;
INSERT INTO `temperature_records` VALUES (1, 1, '2023-10-01', 25.00, 35.00, 22.00, 'Cooling', 'High', 60.00, 1100.00);
INSERT INTO `temperature_records` VALUES (2, 2, '2023-10-02', 20.00, 10.00, 24.00, 'Heating', 'Medium', 50.00, 900.00);
INSERT INTO `temperature_records` VALUES (3, 3, '2023-10-03', 28.00, 38.00, 26.00, 'Cooling', 'Low', 65.00, 1200.00);
INSERT INTO `temperature_records` VALUES (4, 4, '2023-10-04', 26.00, 36.00, 23.00, 'Dehumidify', 'High', 70.00, 1000.00);
INSERT INTO `temperature_records` VALUES (5, 5, '2023-10-05', 27.00, 37.00, 25.00, 'Fan', 'Medium', 55.00, 950.00);
COMMIT;

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

-- ----------------------------
-- Records of usage_records
-- ----------------------------
BEGIN;
INSERT INTO `usage_records` VALUES (1, 1, '2023-10-01', 5.50, 22.00, 'High', 'Cooling', 1100.00, 25.00, 35.00, 60.00);
INSERT INTO `usage_records` VALUES (2, 2, '2023-10-02', 8.00, 24.00, 'Medium', 'Heating', 900.00, 20.00, 10.00, 50.00);
INSERT INTO `usage_records` VALUES (3, 3, '2023-10-03', 6.00, 26.00, 'Low', 'Cooling', 1200.00, 28.00, 38.00, 65.00);
INSERT INTO `usage_records` VALUES (4, 4, '2023-10-04', 7.50, 23.00, 'High', 'Dehumidify', 1000.00, 26.00, 36.00, 70.00);
INSERT INTO `usage_records` VALUES (5, 5, '2023-10-05', 4.00, 25.00, 'Medium', 'Fan', 950.00, 27.00, 37.00, 55.00);
COMMIT;

-- ----------------------------
-- View structure for air_conditioner_info_views
-- ----------------------------
DROP VIEW IF EXISTS `air_conditioner_info_views`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `air_conditioner_info_views` AS select `air_conditioner_info`.`ac_id` AS `ac_id`,`air_conditioner_info`.`manufacturer` AS `manufacturer`,`air_conditioner_info`.`model` AS `model`,`air_conditioner_info`.`production_year` AS `production_year`,`air_conditioner_info`.`cooling_capacity_btu` AS `cooling_capacity_btu`,`air_conditioner_info`.`heating_capacity_btu` AS `heating_capacity_btu`,`air_conditioner_info`.`energy_efficiency_ratio` AS `energy_efficiency_ratio`,`air_conditioner_info`.`power_consumption_watts` AS `power_consumption_watts`,`air_conditioner_info`.`refrigerant_type` AS `refrigerant_type`,`air_conditioner_info`.`noise_level_db` AS `noise_level_db`,`air_conditioner_info`.`weight_kg` AS `weight_kg`,`air_conditioner_info`.`dimensions` AS `dimensions`,`air_conditioner_info`.`warranty_period_months` AS `warranty_period_months` from `air_conditioner_info`;

SET FOREIGN_KEY_CHECKS = 1;
