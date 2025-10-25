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

 Date: 11/08/2025 12:31:25
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
-- Records of energy_consumption_analysis
-- ----------------------------
BEGIN;
INSERT INTO `energy_consumption_analysis` VALUES (1, 1, '2023-09-30', 45.00, 1.50, '2023-09-30 07:30:00', 2.00, '2023-09-30 23:00:00', 0.50, 27.00, '建议在非高峰时段使用');
INSERT INTO `energy_consumption_analysis` VALUES (2, 2, '2023-09-30', 36.00, 1.20, '2023-09-30 08:35:00', 1.80, '2023-09-30 22:00:00', 0.40, 21.60, '建议降低设定温度');
INSERT INTO `energy_consumption_analysis` VALUES (3, 3, '2023-09-30', 54.00, 1.80, '2023-09-30 09:28:00', 2.20, '2023-09-30 21:00:00', 0.60, 32.40, '建议定期清洗加热棒');
INSERT INTO `energy_consumption_analysis` VALUES (4, 4, '2023-09-30', 60.00, 2.00, '2023-09-30 10:25:00', 2.50, '2023-09-30 20:00:00', 0.70, 36.00, '建议使用节能模式');
INSERT INTO `energy_consumption_analysis` VALUES (5, 5, '2023-09-30', 45.00, 1.50, '2023-09-30 11:30:00', 2.00, '2023-09-30 19:00:00', 0.50, 27.00, '建议减少使用频率');
COMMIT;

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
-- Records of environment_data
-- ----------------------------
BEGIN;
INSERT INTO `environment_data` VALUES (1, 1, '2023-09-30', 20.00, 60.00, 15.00, 45.00, 2.50, 1013.25, 3.00, 500.00);
INSERT INTO `environment_data` VALUES (2, 2, '2023-09-30', 22.00, 58.00, 18.00, 40.00, 2.60, 1012.50, 2.80, 480.00);
INSERT INTO `environment_data` VALUES (3, 3, '2023-09-30', 25.00, 55.00, 20.00, 50.00, 2.70, 1011.75, 3.20, 520.00);
INSERT INTO `environment_data` VALUES (4, 4, '2023-09-30', 28.00, 50.00, 22.00, 55.00, 2.80, 1010.00, 3.50, 550.00);
INSERT INTO `environment_data` VALUES (5, 5, '2023-09-30', 21.00, 62.00, 16.00, 45.00, 2.40, 1013.00, 2.90, 490.00);
COMMIT;

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
-- Records of water_heater_info
-- ----------------------------
BEGIN;
INSERT INTO `water_heater_info` VALUES (1, '海尔', 'ES50H-MG', 50.00, 2.00, 220.00, 30.00, '一级', 20.50, '800x450x400', 36, '2022-01-15', 1999.00);
INSERT INTO `water_heater_info` VALUES (2, '美的', 'F50-21A1', 50.00, 1.80, 220.00, 35.00, '二级', 19.80, '780x430x390', 24, '2021-11-20', 1799.00);
INSERT INTO `water_heater_info` VALUES (3, '格力', 'GD50-20', 50.00, 2.20, 220.00, 28.00, '一级', 21.00, '810x460x410', 36, '2022-03-10', 2099.00);
INSERT INTO `water_heater_info` VALUES (4, '史密斯', 'E50VAD', 50.00, 2.50, 220.00, 25.00, '一级', 22.50, '820x470x420', 60, '2021-09-05', 2599.00);
INSERT INTO `water_heater_info` VALUES (5, '万和', 'E50-T4', 50.00, 2.00, 220.00, 30.00, '二级', 20.00, '800x450x400', 24, '2022-05-12', 1899.00);
COMMIT;

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

-- ----------------------------
-- Records of water_heater_usage
-- ----------------------------
BEGIN;
INSERT INTO `water_heater_usage` VALUES (1, 1, '2023-10-01', '2023-10-01 07:00:00', '2023-10-01 07:30:00', 30.00, 1.50, 45.00, 15.00, 45.00, 20.00, '加热速度很快');
INSERT INTO `water_heater_usage` VALUES (2, 2, '2023-10-01', '2023-10-01 08:00:00', '2023-10-01 08:35:00', 25.00, 1.20, 40.00, 18.00, 40.00, 22.00, '水温稳定');
INSERT INTO `water_heater_usage` VALUES (3, 3, '2023-10-01', '2023-10-01 09:00:00', '2023-10-01 09:28:00', 35.00, 1.80, 50.00, 20.00, 50.00, 25.00, '加热效率高');
INSERT INTO `water_heater_usage` VALUES (4, 4, '2023-10-01', '2023-10-01 10:00:00', '2023-10-01 10:25:00', 40.00, 2.00, 55.00, 22.00, 55.00, 28.00, '加热时间短');
INSERT INTO `water_heater_usage` VALUES (5, 5, '2023-10-01', '2023-10-01 11:00:00', '2023-10-01 11:30:00', 30.00, 1.50, 45.00, 16.00, 45.00, 21.00, '节能效果好');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
