/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : water_heater

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:29:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for energy_consumption_analysis
-- ----------------------------
DROP TABLE IF EXISTS `energy_consumption_analysis`;
CREATE TABLE `energy_consumption_analysis`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `heater_id` int(0) NULL DEFAULT NULL,
  `analysis_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total_energy_consumed` decimal(10, 2) NULL DEFAULT NULL,
  `average_daily_energy` decimal(10, 2) NULL DEFAULT NULL,
  `peak_energy_time` datetime(0) NULL DEFAULT NULL,
  `peak_energy_value` decimal(10, 2) NULL DEFAULT NULL,
  `low_energy_time` datetime(0) NULL DEFAULT NULL,
  `low_energy_value` decimal(10, 2) NULL DEFAULT NULL,
  `energy_cost` decimal(10, 2) NULL DEFAULT NULL,
  `energy_saving_tips` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `avg_daily_consumption` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `heater_id`(`heater_id`) USING BTREE,
  CONSTRAINT `energy_consumption_analysis_ibfk_1` FOREIGN KEY (`heater_id`) REFERENCES `water_heater_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of energy_consumption_analysis
-- ----------------------------
INSERT INTO `energy_consumption_analysis` VALUES (1, 1, '2023-09-30', 45.00, 1.50, '2023-09-30 07:30:00', 2.00, '2023-09-30 23:00:00', 0.50, 27.00, '建议在非高峰时段使用', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (2, 2, '2023-09-30', 36.00, 1.20, '2023-09-30 08:35:00', 1.80, '2023-09-30 22:00:00', 0.40, 21.60, '建议降低设定温度', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (3, 3, '2023-09-30', 54.00, 1.80, '2023-09-30 09:28:00', 2.20, '2023-09-30 21:00:00', 0.60, 32.40, '建议定期清洗加热棒', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (4, 4, '2023-09-30', 60.00, 2.00, '2023-09-30 10:25:00', 2.50, '2023-09-30 20:00:00', 0.70, 36.00, '建议使用节能模式', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (5, 5, '2023-09-30', 45.00, 1.50, '2023-09-30 11:30:00', 2.00, '2023-09-30 19:00:00', 0.50, 27.00, '建议减少使用频率', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (68, NULL, NULL, 500.00, NULL, NULL, 10.00, NULL, 1.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (69, NULL, NULL, 500.00, NULL, NULL, 20.00, NULL, 1.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (70, NULL, NULL, 500.00, NULL, NULL, 10.00, NULL, 5.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (71, NULL, NULL, 400.00, NULL, NULL, 10.00, NULL, 1.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (72, NULL, NULL, 300.00, 10.00, NULL, 15.00, NULL, 5.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (73, NULL, NULL, 300.00, 10.00, NULL, 20.00, NULL, 5.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (74, NULL, NULL, 400.00, 10.00, NULL, 15.00, NULL, 5.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (75, NULL, NULL, 300.00, 12.00, NULL, 15.00, NULL, 5.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (76, 161, NULL, NULL, NULL, NULL, 20.00, NULL, 2.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (77, 162, NULL, NULL, NULL, NULL, 15.00, NULL, 5.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (78, 163, NULL, NULL, NULL, NULL, 10.00, NULL, 5.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (79, NULL, NULL, 1000000.00, NULL, NULL, 10000.00, NULL, 0.10, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (80, NULL, NULL, 1000000.00, NULL, NULL, 5000.00, NULL, 0.10, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (81, NULL, NULL, 500000.00, NULL, NULL, 10000.00, NULL, 0.10, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (82, NULL, NULL, 1000000.00, NULL, NULL, 10000.00, NULL, 1.00, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (83, NULL, NULL, 500.00, NULL, NULL, 10.00, NULL, 1.00, 300.00, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (84, NULL, NULL, 500.00, NULL, NULL, 15.00, NULL, 2.00, 350.00, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (85, NULL, NULL, 400.00, NULL, NULL, 10.00, NULL, 1.00, 240.00, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (86, NULL, NULL, 400.00, NULL, NULL, 20.00, NULL, 5.00, 240.00, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (87, 1, NULL, NULL, NULL, NULL, 15.00, NULL, 3.00, 200.00, 'reduce usage during peak hours', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (88, 2, NULL, NULL, NULL, NULL, 12.00, NULL, 4.00, 250.00, 'regularly clean the heating elements', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (89, NULL, NULL, 1000000.00, NULL, NULL, 50000.00, NULL, 0.10, 1000000.00, NULL, 10000.00);
INSERT INTO `energy_consumption_analysis` VALUES (92, 1000, '2025-11-27', 150.00, 5.00, '2025-11-27 18:30:00', 6.00, '2025-11-27 04:00:00', 1.00, 90.00, 'Keep heating settings consistent', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (93, 99999, NULL, NULL, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (94, 10004, '2025-11-28', 150.00, 4.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (96, 10005, '2025-11-27', NULL, NULL, '2025-11-27 18:00:00', 25.00, '2025-11-27 04:00:00', 1.50, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (97, 10006, '2025-11-27', 900.00, 2.50, NULL, NULL, NULL, NULL, 550.00, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (98, 10008, '2025-11-27', 150.00, 4.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (99, 10009, '2025-11-27', 150.00, 4.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (100, 9999, '2025-11-27', 150.00, 4.50, '2025-11-27 18:00:00', 6.00, '2025-11-27 04:00:00', 1.00, 90.00, 'Checked OK', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (101, 10015, '2025-11-15', 350.00, 10.00, '2025-11-15 19:30:00', 8.00, '2025-11-15 03:00:00', 0.50, 210.00, 'Peak and low times logged.', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (102, 10016, '2025-11-28', 120.00, 4.00, NULL, 5.00, NULL, 1.00, 72.00, 'Excellent efficiency.', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (103, 10017, '2025-11-28', 180.00, 6.00, NULL, 7.50, NULL, 1.50, 108.00, 'Good efficiency.', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (104, 10018, '2025-12-15', 500.00, 16.13, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (105, 10018, '2025-07-15', 150.00, 4.84, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (106, 10019, '2025-11-28', 15000.00, 50.00, NULL, 10.00, NULL, 1.00, 9000.00, 'Extreme consumption recorded.', NULL);
INSERT INTO `energy_consumption_analysis` VALUES (107, 10029, '2025-11-20', 350.00, 11.66, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (108, 10028, '2025-11-21', 300.00, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (109, 10029, '2025-11-22', 250.00, 8.33, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (110, 10030, '2025-11-23', 200.00, 6.66, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `energy_consumption_analysis` VALUES (111, 10028, '2025-11-24', 150.00, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for environment_data
-- ----------------------------
DROP TABLE IF EXISTS `environment_data`;
CREATE TABLE `environment_data`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `heater_id` int(0) NULL DEFAULT NULL,
  `record_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ambient_temperature` decimal(10, 2) NULL DEFAULT NULL,
  `humidity` decimal(10, 2) NULL DEFAULT NULL,
  `water_inlet_temperature` decimal(10, 2) NULL DEFAULT NULL,
  `water_outlet_temperature` decimal(10, 2) NULL DEFAULT NULL,
  `water_pressure` decimal(10, 2) NULL DEFAULT NULL,
  `air_pressure` decimal(10, 2) NULL DEFAULT NULL,
  `wind_speed` decimal(10, 2) NULL DEFAULT NULL,
  `solar_radiation` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `heater_id`(`heater_id`) USING BTREE,
  CONSTRAINT `environment_data_ibfk_1` FOREIGN KEY (`heater_id`) REFERENCES `water_heater_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of environment_data
-- ----------------------------
INSERT INTO `environment_data` VALUES (1, 1, '2023-09-30', 20.00, 60.00, 15.00, 45.00, 2.50, 1013.25, 3.00, 500.00);
INSERT INTO `environment_data` VALUES (2, 2, '2023-09-30', 22.00, 58.00, 18.00, 40.00, 2.60, 1012.50, 2.80, 480.00);
INSERT INTO `environment_data` VALUES (3, 3, '2023-09-30', 25.00, 55.00, 20.00, 50.00, 2.70, 1011.75, 3.20, 520.00);
INSERT INTO `environment_data` VALUES (4, 4, '2023-09-30', 28.00, 50.00, 22.00, 55.00, 2.80, 1010.00, 3.50, 550.00);
INSERT INTO `environment_data` VALUES (5, 5, '2023-09-30', 21.00, 62.00, 16.00, 45.00, 2.40, 1013.00, 2.90, 490.00);
INSERT INTO `environment_data` VALUES (6, 3, NULL, NULL, NULL, -273.00, 1000.00, NULL, NULL, NULL, 1000000.00);
INSERT INTO `environment_data` VALUES (7, NULL, NULL, 45.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (8, NULL, NULL, 35.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (9, NULL, NULL, 42.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (10, 168, NULL, 35.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (11, 1, NULL, 35.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (12, 1, NULL, 35.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (13, 171, '2023-11-08', 30.00, 70.00, 10.00, 35.00, 2.00, 1010.00, 4.00, 600.00);
INSERT INTO `environment_data` VALUES (14, 100, '2023-11-08', 30.00, 70.00, 10.00, 35.00, 2.00, 1010.00, 4.00, 600.00);
INSERT INTO `environment_data` VALUES (16, 10007, '2025-11-27', 32.00, NULL, NULL, NULL, NULL, NULL, NULL, 550.00);
INSERT INTO `environment_data` VALUES (17, 10008, '2025-11-27', 15.00, NULL, NULL, NULL, 4.00, NULL, 12.00, NULL);
INSERT INTO `environment_data` VALUES (18, 10009, '2025-11-27', 15.00, 65.00, 10.00, 45.00, 4.00, 1013.00, 12.00, 200.00);
INSERT INTO `environment_data` VALUES (19, 9999, '2025-11-27', 15.00, 65.00, 10.00, 45.00, 4.00, 1013.00, 12.00, 200.00);
INSERT INTO `environment_data` VALUES (20, 10010, '2025-11-27', 5.00, 85.00, 5.00, 45.00, 3.00, 1010.00, 1.00, 50.00);
INSERT INTO `environment_data` VALUES (21, 10011, '2025-11-27', 35.00, 30.00, 15.00, 55.00, 4.00, 1000.00, 60.00, 600.00);
INSERT INTO `environment_data` VALUES (22, 10012, NULL, 35.00, 50.00, 25.00, 45.00, 2.50, 1010.00, 2.00, 800.00);
INSERT INTO `environment_data` VALUES (23, 10012, NULL, 10.00, 70.00, 10.00, 45.00, 2.50, 1015.00, 1.00, 50.00);
INSERT INTO `environment_data` VALUES (24, 10013, '2025-07-01', 35.00, 50.00, 25.00, 45.00, 2.50, 1010.00, 2.00, 800.00);
INSERT INTO `environment_data` VALUES (25, 10013, '2025-12-01', 10.00, 70.00, 10.00, 45.00, 2.50, 1015.00, 1.00, 50.00);
INSERT INTO `environment_data` VALUES (26, 10025, '2025-08-01', 40.00, 50.00, 30.00, 60.00, 3.00, 1010.00, 5.00, 900.00);
INSERT INTO `environment_data` VALUES (27, 10026, '2025-08-02', 38.00, 55.00, 28.00, 58.00, 3.20, 1009.00, 4.50, 850.00);
INSERT INTO `environment_data` VALUES (28, 10025, '2025-08-03', 35.00, 60.00, 25.00, 55.00, 3.10, 1008.00, 4.00, 800.00);
INSERT INTO `environment_data` VALUES (29, 10027, '2025-08-04', 33.00, 65.00, 23.00, 53.00, 3.30, 1007.00, 3.50, 750.00);
INSERT INTO `environment_data` VALUES (30, 10026, '2025-08-05', 31.00, 70.00, 21.00, 51.00, 3.40, 1006.00, 3.00, 700.00);
INSERT INTO `environment_data` VALUES (31, 10034, '2025-11-28', 25.00, 60.00, 10.00, 45.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (32, 10035, '2025-11-28', 25.00, 55.00, 15.00, 45.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (33, 10036, '2025-11-28', 25.00, 58.00, 12.00, 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (34, 10037, '2025-11-28', 25.00, 62.00, 10.00, 35.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (35, 10038, '2025-11-28', 25.00, 50.00, 13.00, 35.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (36, 10039, '2025-11-28', 30.00, 60.00, 15.00, 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (37, 10040, '2025-11-28', 30.00, 55.00, 15.00, 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (38, 10041, '2025-11-28', 30.00, 58.00, 15.00, 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (39, 10042, '2025-11-28', 30.00, 62.00, 15.00, 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `environment_data` VALUES (40, 10043, '2025-11-28', 30.00, 50.00, 15.00, 40.00, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for water_heater_info
-- ----------------------------
DROP TABLE IF EXISTS `water_heater_info`;
CREATE TABLE `water_heater_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `capacity` decimal(10, 2) NULL DEFAULT NULL,
  `power_rating` decimal(10, 2) NULL DEFAULT NULL,
  `voltage` decimal(10, 2) NULL DEFAULT NULL,
  `heating_time` decimal(10, 2) NULL DEFAULT NULL,
  `energy_efficiency_rating` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `weight` decimal(10, 2) NULL DEFAULT NULL,
  `dimensions` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_period` int(0) NULL DEFAULT NULL,
  `manufacture_date` date NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of water_heater_info
-- ----------------------------
INSERT INTO `water_heater_info` VALUES (1, '海尔', 'ES50H-MG', 50.00, 2.00, 220.00, 30.00, '一级', 20.50, '800x450x400', 36, '2022-01-15', 1999.00);
INSERT INTO `water_heater_info` VALUES (2, '美的', 'F50-21A1', 50.00, 1.80, 220.00, 35.00, '二级', 19.80, '780x430x390', 24, '2021-11-20', 1799.00);
INSERT INTO `water_heater_info` VALUES (3, '格力', 'GD50-20', 50.00, 2.20, 220.00, 28.00, '一级', 21.00, '810x460x410', 36, '2022-03-10', 2099.00);
INSERT INTO `water_heater_info` VALUES (4, '史密斯', 'E50VAD', 50.00, 2.50, 220.00, 25.00, '一级', 22.50, '820x470x420', 60, '2021-09-05', 2599.00);
INSERT INTO `water_heater_info` VALUES (5, '万和', 'E50-T4', 50.00, 2.00, 220.00, 30.00, '二级', 20.00, '800x450x400', 24, '2022-05-12', 1899.00);
INSERT INTO `water_heater_info` VALUES (38, NULL, NULL, NULL, 3.00, NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (39, NULL, NULL, NULL, 2.00, NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (40, NULL, NULL, NULL, 3.00, NULL, 45.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (41, NULL, NULL, NULL, 4.00, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (71, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (72, NULL, NULL, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (73, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (74, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (81, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (82, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (83, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (84, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (85, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (91, NULL, NULL, 1000.00, 100.00, NULL, 1.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (92, NULL, NULL, 50.00, 3.00, NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (93, NULL, NULL, 1000.00, 50.00, NULL, 1.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (94, NULL, NULL, 1000.00, 100.00, NULL, 2.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (100, 'NanoBrand', 'Nano-Mini-X1', 20.00, 1.00, 220.00, 15.00, '一级', 8.00, '490x400x350', 24, '2023-01-01', 999.00);
INSERT INTO `water_heater_info` VALUES (101, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (102, NULL, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (103, NULL, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (104, NULL, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (111, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (112, NULL, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (113, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (114, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (121, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (124, NULL, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (131, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (132, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (133, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (161, 'BrandA', 'ModelX', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (162, 'BrandB', 'ModelY', 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (163, 'BrandC', 'ModelZ', 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (164, NULL, 'ModelA', 60.00, 1.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (165, NULL, 'ModelB', 45.00, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (166, NULL, 'ModelC', 55.00, 1.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_info` VALUES (167, NULL, 'EcoHeat-Slim-A1', NULL, NULL, NULL, NULL, NULL, NULL, '450x450x450', NULL, '2022-03-15', NULL);
INSERT INTO `water_heater_info` VALUES (168, NULL, 'EcoHeat-Slim-A1', NULL, NULL, NULL, NULL, NULL, NULL, '450x450x450', NULL, '2022-03-15', NULL);
INSERT INTO `water_heater_info` VALUES (169, NULL, 'EcoHeat-Slim-A1', NULL, NULL, NULL, NULL, NULL, NULL, '450x450x450', NULL, '2022-03-15', NULL);
INSERT INTO `water_heater_info` VALUES (170, NULL, 'EcoHeat-Slim-A1', NULL, NULL, NULL, NULL, NULL, NULL, '450x450x450', NULL, '2022-03-15', NULL);
INSERT INTO `water_heater_info` VALUES (171, 'NanoBrand', 'Nano-Mini-X1', 20.00, 1.00, 220.00, 15.00, '一级', 8.00, '490x400x350', 24, '2023-01-01', 999.00);
INSERT INTO `water_heater_info` VALUES (1000, 'UltraFlow', 'AquaMax-70', 70.00, 3.00, 220.00, 20.00, 'A+', 25.00, '600x400x400', 36, '2024-06-01', 3500.00);
INSERT INTO `water_heater_info` VALUES (9999, 'PressurePro', 'WindGuard-V2', 60.00, 3.00, 220.00, 30.00, 'A+', 25.00, '750x450x400', 36, '2024-03-01', 4000.00);
INSERT INTO `water_heater_info` VALUES (10003, 'MidSize-Pro', 'Ultra-75', 75.00, NULL, NULL, NULL, NULL, NULL, '750x450x400', NULL, '2024-07-01', 1800.00);
INSERT INTO `water_heater_info` VALUES (10004, 'EcoGiant', 'HighEff-M1', NULL, NULL, NULL, NULL, NULL, NULL, '900x500x500', NULL, '2023-10-01', 3000.00);
INSERT INTO `water_heater_info` VALUES (10005, 'ExtremeHeat', 'Peak-Pro-X', NULL, NULL, NULL, NULL, NULL, NULL, '850x450x450', NULL, '2024-09-01', 4500.00);
INSERT INTO `water_heater_info` VALUES (10006, 'LongLife', 'Guarana-120', NULL, NULL, NULL, NULL, NULL, NULL, '700x400x350', 12, '2024-08-01', 2500.00);
INSERT INTO `water_heater_info` VALUES (10007, 'SolarMax', 'Outdoor-H1', NULL, NULL, NULL, NULL, NULL, NULL, '600x600x600', NULL, '2024-06-15', 3200.00);
INSERT INTO `water_heater_info` VALUES (10008, 'PressurePro', 'WindGuard-V2', NULL, NULL, NULL, NULL, NULL, NULL, '750x450x400', NULL, '2024-03-01', 4000.00);
INSERT INTO `water_heater_info` VALUES (10009, 'PressurePro', 'WindGuard-V2', NULL, NULL, NULL, NULL, NULL, NULL, '750x450x400', NULL, '2024-03-01', 4000.00);
INSERT INTO `water_heater_info` VALUES (10010, 'HumidityGuard', 'Winter-55', 55.00, 2.50, 220.00, 40.00, 'A', 22.00, '800x450x400', 24, '2024-11-01', 2800.00);
INSERT INTO `water_heater_info` VALUES (10011, 'ExtremeEnvironment', 'SolarWind-99', 70.00, 3.50, 220.00, 20.00, 'A+', 30.00, '900x500x450', 36, '2024-10-01', 5500.00);
INSERT INTO `water_heater_info` VALUES (10012, 'A', 'Alpha-3000', 60.00, 3.00, 220.00, 45.00, 'A+', 28.00, '800x400x400', 36, '2024-12-01', 3000.00);
INSERT INTO `water_heater_info` VALUES (10013, 'EnergyBrand', 'EcoTemp-X', 50.00, 2.00, 220.00, 30.00, 'A', 20.00, '700x400x400', 36, '2024-06-01', 2000.00);
INSERT INTO `water_heater_info` VALUES (10014, 'AnomalyTest', 'Extreme-Z', 10.00, 5.00, 220.00, 10.00, 'N/A', 5.00, '400x300x300', 1, '2025-01-01', 100000.00);
INSERT INTO `water_heater_info` VALUES (10015, 'TimeAnalyzer', 'Check-T1', 50.00, 2.00, 220.00, 30.00, 'A', 20.00, '750x400x350', 24, '2024-01-01', 2000.00);
INSERT INTO `water_heater_info` VALUES (10016, 'Haier', 'HighEff-P', 60.00, 3.00, 220.00, 30.00, 'A+', 25.00, '800x400x400', 36, '2024-01-01', 3000.00);
INSERT INTO `water_heater_info` VALUES (10017, 'Haier', 'Standard-A', 50.00, 2.50, 220.00, 40.00, 'A', 22.00, '750x450x350', 24, '2023-05-01', 2000.00);
INSERT INTO `water_heater_info` VALUES (10018, 'SeasonalTest', 'FourSeasons', 80.00, 3.00, 220.00, 40.00, 'A', 35.00, '850x500x400', 36, '2024-01-01', 4000.00);
INSERT INTO `water_heater_info` VALUES (10019, 'AnomalyCheck', 'HighLoad-15K', 100.00, 3.00, 220.00, 45.00, 'A', 40.00, '1000x500x500', 60, '2024-03-01', 5000.00);
INSERT INTO `water_heater_info` VALUES (10020, 'BrandA', 'Eco-P50', 50.00, 2.00, 220.00, 30.00, '1', 20.00, '750x400x400', 36, '2024-05-01', 1500.00);
INSERT INTO `water_heater_info` VALUES (10021, 'BrandA', 'Eco-P60', 60.00, 2.20, 220.00, 35.00, '1', 22.00, '800x450x450', 36, '2024-06-01', 1800.00);
INSERT INTO `water_heater_info` VALUES (10022, 'BrandB', 'Pro-V50', 50.00, 2.50, 220.00, 28.00, '1', 21.00, '780x420x420', 24, '2024-07-01', 2000.00);
INSERT INTO `water_heater_info` VALUES (10023, 'BrandB', 'Pro-V70', 70.00, 3.00, 220.00, 30.00, '1', 25.00, '900x480x480', 24, '2024-08-01', 2200.00);
INSERT INTO `water_heater_info` VALUES (10024, 'BrandC', 'Elite-M55', 55.00, 2.80, 220.00, 32.00, '1', 23.00, '850x460x400', 60, '2024-09-01', 2500.00);
INSERT INTO `water_heater_info` VALUES (10025, 'HotEnv', 'Summer-1', 60.00, 3.00, 220.00, 30.00, 'A', 25.00, '700x400x400', 36, '2024-05-01', 3000.00);
INSERT INTO `water_heater_info` VALUES (10026, 'HotEnv', 'Summer-2', 70.00, 3.50, 220.00, 35.00, 'A+', 30.00, '800x450x450', 36, '2024-06-01', 3500.00);
INSERT INTO `water_heater_info` VALUES (10027, 'HotEnv', 'Summer-3', 50.00, 2.50, 220.00, 25.00, 'A', 22.00, '650x380x380', 24, '2024-07-01', 2500.00);
INSERT INTO `water_heater_info` VALUES (10028, 'BrandX', 'Eff-100', 80.00, 3.00, 220.00, 40.00, '1', 30.00, '850x450x400', 36, '2024-05-01', 3500.00);
INSERT INTO `water_heater_info` VALUES (10029, 'BrandY', 'Con-120', 100.00, 3.50, 220.00, 45.00, '1', 40.00, '950x500x450', 60, '2024-06-01', 4000.00);
INSERT INTO `water_heater_info` VALUES (10030, 'BrandZ', 'Eco-90', 90.00, 2.50, 220.00, 35.00, '1', 35.00, '900x480x420', 36, '2024-07-01', 3800.00);
INSERT INTO `water_heater_info` VALUES (10031, 'UserTest', 'Feedback-1', 60.00, 3.00, 220.00, 30.00, 'A', 25.00, '700x400x400', 36, '2024-05-01', 3000.00);
INSERT INTO `water_heater_info` VALUES (10032, 'UserTest', 'Feedback-2', 70.00, 3.50, 220.00, 35.00, 'A+', 30.00, '800x450x450', 36, '2024-06-01', 3500.00);
INSERT INTO `water_heater_info` VALUES (10033, 'UserTest', 'Feedback-3', 50.00, 2.50, 220.00, 25.00, 'A', 22.00, '650x380x380', 24, '2024-07-01', 2500.00);
INSERT INTO `water_heater_info` VALUES (10034, 'A', 'ModelA-01', 50.00, 2.00, 220.00, 30.00, 'A+', 20.00, '700x400x400', 36, '2024-01-01', 2500.00);
INSERT INTO `water_heater_info` VALUES (10035, 'A', 'ModelA-02', 60.00, 2.50, 220.00, 35.00, 'A', 25.00, '800x450x450', 24, '2024-02-01', 2800.00);
INSERT INTO `water_heater_info` VALUES (10036, 'A', 'ModelA-03', 40.00, 1.80, 220.00, 25.00, 'A+', 18.00, '650x350x350', 36, '2024-03-01', 2200.00);
INSERT INTO `water_heater_info` VALUES (10037, 'A', 'ModelA-04', 70.00, 3.00, 220.00, 40.00, 'A', 30.00, '900x500x500', 60, '2024-04-01', 3200.00);
INSERT INTO `water_heater_info` VALUES (10038, 'A', 'ModelA-05', 55.00, 2.20, 220.00, 32.00, 'A+', 23.00, '750x420x420', 48, '2024-05-01', 2600.00);
INSERT INTO `water_heater_info` VALUES (10039, 'BrandX', 'ModelX200-A', 50.00, 2.00, 220.00, 30.00, 'A+', 20.00, '700x400x400', 36, '2024-01-01', 2500.00);
INSERT INTO `water_heater_info` VALUES (10040, 'BrandY', 'Con-X200-B', 60.00, 2.50, 220.00, 40.00, 'A', 25.00, '800x450x450', 24, '2024-02-01', 2800.00);
INSERT INTO `water_heater_info` VALUES (10041, 'BrandX', 'Eco-X200-C', 40.00, 1.80, 220.00, 25.00, 'A+', 18.00, '650x350x350', 36, '2024-03-01', 2200.00);
INSERT INTO `water_heater_info` VALUES (10042, 'BrandZ', 'Pro-X200-D', 70.00, 3.00, 220.00, 60.00, 'A', 30.00, '900x500x500', 60, '2024-04-01', 3200.00);
INSERT INTO `water_heater_info` VALUES (10043, 'BrandY', 'Max-X200-E', 55.00, 2.20, 220.00, 35.00, 'A+', 23.00, '750x420x420', 48, '2024-05-01', 2600.00);
INSERT INTO `water_heater_info` VALUES (99999, 'TestBrand', 'TestModel', NULL, NULL, NULL, NULL, NULL, NULL, '500x500x500', NULL, '2020-01-01', 0.00);

-- ----------------------------
-- Table structure for water_heater_usage
-- ----------------------------
DROP TABLE IF EXISTS `water_heater_usage`;
CREATE TABLE `water_heater_usage`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `heater_id` int(0) NULL DEFAULT NULL,
  `usage_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `water_used` decimal(10, 2) NULL DEFAULT NULL,
  `energy_consumed` decimal(10, 2) NULL DEFAULT NULL,
  `temperature_set` decimal(10, 2) NULL DEFAULT NULL,
  `initial_temperature` decimal(10, 2) NULL DEFAULT NULL,
  `final_temperature` decimal(10, 2) NULL DEFAULT NULL,
  `ambient_temperature` decimal(10, 2) NULL DEFAULT NULL,
  `user_feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `heater_id`(`heater_id`) USING BTREE,
  CONSTRAINT `water_heater_usage_ibfk_1` FOREIGN KEY (`heater_id`) REFERENCES `water_heater_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of water_heater_usage
-- ----------------------------
INSERT INTO `water_heater_usage` VALUES (1, 1, '2023-10-01', '2023-10-01 07:00:00', '2023-10-01 07:30:00', 30.00, 1.50, 45.00, 15.00, 45.00, 20.00, '加热速度很快');
INSERT INTO `water_heater_usage` VALUES (2, 2, '2023-10-01', '2023-10-01 08:00:00', '2023-10-01 08:35:00', 25.00, 1.20, 40.00, 18.00, 40.00, 22.00, '水温稳定');
INSERT INTO `water_heater_usage` VALUES (3, 3, '2023-10-01', '2023-10-01 09:00:00', '2023-10-01 09:28:00', 35.00, 1.80, 50.00, 20.00, 50.00, 25.00, '加热效率高');
INSERT INTO `water_heater_usage` VALUES (4, 4, '2023-10-01', '2023-10-01 10:00:00', '2023-10-01 10:25:00', 40.00, 2.00, 55.00, 22.00, 55.00, 28.00, '加热时间短');
INSERT INTO `water_heater_usage` VALUES (5, 5, '2023-10-01', '2023-10-01 11:00:00', '2023-10-01 11:30:00', 30.00, 1.50, 45.00, 16.00, 45.00, 21.00, '节能效果好');
INSERT INTO `water_heater_usage` VALUES (60, 71, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 60.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (61, 72, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 60.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (62, 73, NULL, NULL, NULL, NULL, NULL, NULL, 20.00, 60.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (63, 74, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 70.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (64, 81, NULL, NULL, NULL, NULL, 0.80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (65, 81, NULL, NULL, NULL, NULL, 1.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (66, 82, NULL, NULL, NULL, NULL, 0.90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (67, 83, NULL, NULL, NULL, NULL, 1.50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (68, 83, NULL, NULL, NULL, NULL, 1.70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (69, 84, NULL, NULL, NULL, NULL, 1.60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (70, 85, NULL, NULL, NULL, NULL, 1.20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (71, 101, NULL, NULL, NULL, 10.00, 5.00, 50.00, 10.00, 50.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (72, 102, NULL, NULL, NULL, 20.00, 5.00, 60.00, 10.00, 50.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (73, 103, NULL, NULL, NULL, 10.00, 6.00, 50.00, 10.00, 50.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (74, 104, NULL, NULL, NULL, 10.00, 5.00, 50.00, 15.00, 50.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (75, 111, NULL, NULL, NULL, NULL, 3.00, NULL, 15.00, 45.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (76, 112, NULL, NULL, NULL, NULL, 3.00, NULL, 15.00, 45.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (77, 113, NULL, NULL, NULL, NULL, 5.00, NULL, 15.00, 45.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (78, 114, NULL, NULL, NULL, NULL, 2.00, NULL, 10.00, 40.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (121, 121, NULL, NULL, NULL, NULL, 3.00, NULL, 5.00, 45.00, 5.00, NULL);
INSERT INTO `water_heater_usage` VALUES (122, 121, NULL, NULL, NULL, NULL, 3.00, NULL, 25.00, 45.00, 25.00, NULL);
INSERT INTO `water_heater_usage` VALUES (123, 124, NULL, NULL, NULL, NULL, 2.50, NULL, 15.00, 40.00, 15.00, NULL);
INSERT INTO `water_heater_usage` VALUES (124, 131, NULL, NULL, NULL, 1000000.00, 1000000.00, NULL, -273.00, 1000.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (125, 132, NULL, NULL, NULL, 1000000.00, 500000.00, NULL, 10.00, 50.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (126, 133, NULL, NULL, NULL, 500000.00, 1000000.00, NULL, 20.00, 60.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (127, NULL, NULL, '2025-11-27 17:00:00', '2025-11-27 17:00:10', 0.83, NULL, NULL, 10.00, 50.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (128, NULL, NULL, '2025-11-27 17:00:00', '2025-11-27 17:00:10', 0.83, NULL, NULL, 10.00, 50.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (129, NULL, NULL, '2025-11-27 17:00:00', '2025-11-27 17:00:10', 0.83, NULL, NULL, 10.00, 50.00, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (132, 1000, '2025-11-27', '2025-11-27 18:00:00', '2025-11-27 19:00:00', 120.00, 4.50, 50.00, 15.00, 50.00, 25.00, 'High water flow and quick heating');
INSERT INTO `water_heater_usage` VALUES (133, 99999, '2025-11-27', NULL, NULL, 120.00, 4.50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (134, 10003, '2025-11-28', '2025-11-28 07:00:00', '2025-11-28 07:45:00', 80.00, 2.90, NULL, 15.00, 50.00, 22.00, NULL);
INSERT INTO `water_heater_usage` VALUES (135, 10004, '2025-11-28', NULL, NULL, 150.00, 3.50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (136, 10007, '2025-11-27', NULL, NULL, 80.00, 9.50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `water_heater_usage` VALUES (137, 10011, '2025-11-27', NULL, NULL, 150.00, 50.00, 50.00, 15.00, 50.00, 35.00, NULL);
INSERT INTO `water_heater_usage` VALUES (138, 10012, '2025-11-28', NULL, NULL, 100.00, 4.00, 45.00, 15.00, 45.00, 20.00, NULL);
INSERT INTO `water_heater_usage` VALUES (139, 10012, NULL, NULL, NULL, 50.00, 1.50, 45.00, 25.00, 45.00, 35.00, NULL);
INSERT INTO `water_heater_usage` VALUES (140, 10012, NULL, NULL, NULL, 50.00, 3.00, 45.00, 10.00, 45.00, 10.00, NULL);
INSERT INTO `water_heater_usage` VALUES (141, 10013, '2025-07-01', NULL, NULL, 50.00, 1.50, 45.00, 25.00, 45.00, 35.00, NULL);
INSERT INTO `water_heater_usage` VALUES (142, 10013, '2025-12-01', NULL, NULL, 50.00, 3.00, 45.00, 10.00, 45.00, 10.00, NULL);
INSERT INTO `water_heater_usage` VALUES (143, 10014, '2025-11-28', '2025-11-28 00:00:00', '2025-11-28 00:01:00', 1.00, 10.00, 1000.00, -200.00, 1000.00, -273.00, 'System failure recorded');
INSERT INTO `water_heater_usage` VALUES (144, 10032, '2025-11-27', '2025-11-27 10:00:00', '2025-11-27 10:30:00', 40.00, 2.50, 45.00, 20.00, 45.00, 25.00, 'The performance is statisfy and quick.');
INSERT INTO `water_heater_usage` VALUES (145, 10033, '2025-11-26', '2025-11-26 12:00:00', '2025-11-26 12:40:00', 35.00, 2.80, 50.00, 18.00, 50.00, 22.00, 'Overall I am statisfy with the heating time.');
INSERT INTO `water_heater_usage` VALUES (146, 10031, '2025-11-25', '2025-11-25 14:00:00', '2025-11-25 14:20:00', 30.00, 1.90, 40.00, 22.00, 40.00, 28.00, 'Very statisfy. Good energy use.');
INSERT INTO `water_heater_usage` VALUES (147, 10032, '2025-11-24', '2025-11-24 16:00:00', '2025-11-24 16:35:00', 45.00, 3.20, 55.00, 15.00, 55.00, 20.00, 'The water volume is statisfy.');

SET FOREIGN_KEY_CHECKS = 1;
