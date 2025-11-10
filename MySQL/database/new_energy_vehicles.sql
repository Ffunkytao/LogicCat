/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : new_energy_vehicles

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:28:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
-- Table structure for charging_records
-- ----------------------------
DROP TABLE IF EXISTS `charging_records`;
CREATE TABLE `charging_records` (
  `Record_Id` int NOT NULL AUTO_INCREMENT COMMENT '充电记录唯一标识',
  `Vehicle_Id` int DEFAULT NULL COMMENT '车辆ID（外键）',
  `Station_Id` int DEFAULT NULL COMMENT '充电站ID（外键）',
  `Start_Time` datetime DEFAULT NULL COMMENT '充电开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '充电结束时间',
  `Energy_Consumed_Kwh` decimal(10,2) DEFAULT NULL COMMENT '消耗的电量（千瓦时）',
  `Cost_Usd` decimal(10,2) DEFAULT NULL COMMENT '充电费用（美元）',
  `Initial_Battery_Percentage` decimal(5,2) DEFAULT NULL COMMENT '充电开始时的电池百分比',
  `Final_Battery_Percentage` decimal(5,2) DEFAULT NULL COMMENT '充电结束时的电池百分比',
  `Charging_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '充电类型（如：快充、慢充）',
  `Temperature_Celsius` decimal(5,2) DEFAULT NULL COMMENT '充电时环境温度（摄氏度）',
  `Weather_Conditions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '天气情况',
  PRIMARY KEY (`Record_Id`),
  KEY `vehicle_id` (`Vehicle_Id`),
  KEY `station_id` (`Station_Id`),
  CONSTRAINT `charging_records_ibfk_1` FOREIGN KEY (`Vehicle_Id`) REFERENCES `vehicles` (`Vehicle_Id`),
  CONSTRAINT `charging_records_ibfk_2` FOREIGN KEY (`Station_Id`) REFERENCES `charging_stations` (`Station_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of charging_records
-- ----------------------------
BEGIN;
INSERT INTO `charging_records` VALUES (1, 1, 1, '2023-10-01 10:00:00', '2023-10-01 12:30:00', 50.00, 15.00, 20.00, 80.00, 'Fast', 25.00, 'Sunny');
INSERT INTO `charging_records` VALUES (2, 2, 2, '2023-10-02 14:00:00', '2023-10-02 16:00:00', 60.00, 15.00, 15.00, 85.00, 'Ultra-Fast', 28.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (3, 3, 3, '2023-10-03 09:00:00', '2023-10-03 11:00:00', 40.00, 8.00, 10.00, 70.00, 'Fast', 22.00, 'Rainy');
INSERT INTO `charging_records` VALUES (4, 4, 4, '2023-10-04 18:00:00', '2023-10-04 20:00:00', 30.00, 8.40, 25.00, 75.00, 'Fast', 20.00, 'Clear');
INSERT INTO `charging_records` VALUES (5, 5, 5, '2023-10-05 12:00:00', '2023-10-05 14:00:00', 20.00, 4.40, 30.00, 80.00, 'Standard', 18.00, 'Sunny');
INSERT INTO `charging_records` VALUES (7, 12, 6, '2023-11-01 08:00:00', '2023-11-01 09:00:00', 1000.00, 500.00, 20.00, 30.00, 'Ultra-Fast', 25.00, 'Sunny');
INSERT INTO `charging_records` VALUES (8, 12, 6, '2023-11-02 09:00:00', '2023-11-02 10:00:00', 1000.00, 500.00, 25.00, 35.00, 'Ultra-Fast', 26.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (9, 12, 6, '2023-11-03 10:00:00', '2023-11-03 11:00:00', 1000.00, 500.00, 30.00, 40.00, 'Ultra-Fast', 24.00, 'Rainy');
INSERT INTO `charging_records` VALUES (10, 12, 6, '2023-11-04 11:00:00', '2023-11-04 12:00:00', 1000.00, 500.00, 35.00, 45.00, 'Ultra-Fast', 23.00, 'Clear');
INSERT INTO `charging_records` VALUES (11, 12, 6, '2023-11-05 12:00:00', '2023-11-05 13:00:00', 1000.00, 500.00, 40.00, 50.00, 'Ultra-Fast', 22.00, 'Sunny');
INSERT INTO `charging_records` VALUES (12, 12, 6, '2023-11-06 13:00:00', '2023-11-06 14:00:00', 1000.00, 500.00, 45.00, 55.00, 'Ultra-Fast', 21.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (13, 12, 6, '2023-11-07 14:00:00', '2023-11-07 15:00:00', 1000.00, 500.00, 50.00, 60.00, 'Ultra-Fast', 20.00, 'Rainy');
INSERT INTO `charging_records` VALUES (14, 12, 6, '2023-11-08 15:00:00', '2023-11-08 16:00:00', 1000.00, 500.00, 55.00, 65.00, 'Ultra-Fast', 19.00, 'Foggy');
INSERT INTO `charging_records` VALUES (15, 12, 6, '2023-11-09 16:00:00', '2023-11-09 17:00:00', 1000.00, 500.00, 60.00, 70.00, 'Ultra-Fast', 18.00, 'Snowy');
INSERT INTO `charging_records` VALUES (16, 12, 6, '2023-11-10 17:00:00', '2023-11-10 18:00:00', 1000.00, 500.00, 65.00, 75.00, 'Ultra-Fast', 17.00, 'Windy');
INSERT INTO `charging_records` VALUES (17, 12, 6, '2023-11-11 18:00:00', '2023-11-11 19:00:00', 1000.00, 500.00, 70.00, 80.00, 'Ultra-Fast', 16.00, 'Stormy');
INSERT INTO `charging_records` VALUES (18, 13, 1, '2023-11-20 09:00:00', '2023-11-20 10:00:00', 15.00, 4.50, 30.00, 40.00, 'Standard', 20.00, 'Clear');
INSERT INTO `charging_records` VALUES (19, 14, 7, '2023-11-01 08:00:00', '2023-11-01 08:30:00', 42.00, 10.50, 30.00, 40.00, 'Fast', 25.00, 'Sunny');
INSERT INTO `charging_records` VALUES (20, 14, 7, '2023-11-01 09:00:00', '2023-11-01 09:30:00', 42.00, 10.50, 35.00, 45.00, 'Fast', 24.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (21, 14, 7, '2023-11-01 10:00:00', '2023-11-01 10:30:00', 42.00, 10.50, 40.00, 50.00, 'Fast', 23.00, 'Rainy');
INSERT INTO `charging_records` VALUES (22, 14, 7, '2023-11-01 11:00:00', '2023-11-01 11:30:00', 42.00, 10.50, 45.00, 55.00, 'Fast', 22.00, 'Foggy');
INSERT INTO `charging_records` VALUES (23, 14, 7, '2023-11-01 12:00:00', '2023-11-01 12:30:00', 42.00, 10.50, 50.00, 60.00, 'Fast', 21.00, 'Snowy');
INSERT INTO `charging_records` VALUES (24, 14, 7, '2023-11-01 13:00:00', '2023-11-01 13:30:00', 42.00, 10.50, 55.00, 65.00, 'Fast', 20.00, 'Windy');
INSERT INTO `charging_records` VALUES (25, 14, 7, '2023-11-01 14:00:00', '2023-11-01 14:30:00', 42.00, 10.50, 60.00, 70.00, 'Fast', 19.00, 'Clear');
INSERT INTO `charging_records` VALUES (26, 14, 7, '2023-11-01 15:00:00', '2023-11-01 15:30:00', 42.00, 10.50, 65.00, 75.00, 'Fast', 18.00, 'Hazy');
INSERT INTO `charging_records` VALUES (27, 14, 7, '2023-11-01 16:00:00', '2023-11-01 16:30:00', 42.00, 10.50, 70.00, 80.00, 'Fast', 17.00, 'Overcast');
INSERT INTO `charging_records` VALUES (28, 14, 7, '2023-11-01 17:00:00', '2023-11-01 17:30:00', 42.00, 10.50, 75.00, 85.00, 'Fast', 16.00, 'Mist');
INSERT INTO `charging_records` VALUES (29, 14, 7, '2023-11-01 18:00:00', '2023-11-01 18:30:00', 42.00, 10.50, 80.00, 90.00, 'Fast', 15.00, 'Thunderstorm');
INSERT INTO `charging_records` VALUES (39, 18, 1, '2023-11-15 14:00:00', '2023-11-15 15:00:00', 80.00, 24.00, 20.00, 80.00, 'Ultra-Fast', 35.00, 'Sunny');
INSERT INTO `charging_records` VALUES (44, 22, 8, '2023-11-20 08:00:00', '2023-11-20 09:00:00', 50.00, 17.50, 20.00, 80.00, 'Ultra-Fast', 28.00, 'Clear');
INSERT INTO `charging_records` VALUES (45, 22, 8, '2023-11-20 09:00:00', '2023-11-20 10:00:00', 50.00, 17.50, 25.00, 85.00, 'Ultra-Fast', 27.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (46, 22, 8, '2023-11-20 10:00:00', '2023-11-20 11:00:00', 50.00, 17.50, 30.00, 90.00, 'Ultra-Fast', 26.00, 'Rainy');
INSERT INTO `charging_records` VALUES (47, 23, 8, '2023-11-20 09:00:00', '2023-11-20 10:00:00', 50.00, 17.50, 25.00, 85.00, 'Ultra-Fast', 27.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (48, 24, 8, '2023-11-20 10:00:00', '2023-11-20 11:00:00', 50.00, 17.50, 30.00, 90.00, 'Ultra-Fast', 26.00, 'Rainy');
INSERT INTO `charging_records` VALUES (50, 30, 9, '2023-11-20 08:00:00', '2023-11-20 09:00:00', 50.00, 17.50, 20.00, 80.00, 'Ultra-Fast', 28.00, 'Clear');
INSERT INTO `charging_records` VALUES (51, 31, 9, '2023-11-20 09:00:00', '2023-11-20 10:00:00', 50.00, 17.50, 25.00, 85.00, 'Ultra-Fast', 27.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (52, 32, 9, '2023-11-20 10:00:00', '2023-11-20 11:00:00', 50.00, 17.50, 30.00, 90.00, 'Ultra-Fast', 26.00, 'Rainy');
INSERT INTO `charging_records` VALUES (60, 33, 1, '2023-12-01 08:00:00', '2023-12-01 09:00:00', 65.00, 19.50, 40.00, 70.00, 'Ultra-Fast', 4.00, 'Snowy');
INSERT INTO `charging_records` VALUES (61, 33, 1, '2023-12-02 09:00:00', '2023-12-02 10:00:00', 65.00, 19.50, 70.00, 95.00, 'Ultra-Fast', 3.00, 'Blizzard');
INSERT INTO `charging_records` VALUES (62, 34, 1, '2023-12-10 07:00:00', '2023-12-10 08:00:00', 42.00, 14.70, 30.00, 80.00, 'Ultra-Fast', 25.00, 'Clear');
INSERT INTO `charging_records` VALUES (63, 36, 10, '2023-08-01 14:00:00', '2023-08-01 15:00:00', 36.00, 14.40, 20.00, 60.00, 'Ultra-Fast', 38.00, 'Sunny');
INSERT INTO `charging_records` VALUES (64, 37, 11, '2023-12-01 08:00:00', '2023-12-01 09:00:00', 10.00, 3.00, 40.00, 50.00, 'Ultra-Fast', 25.00, 'Clear');
INSERT INTO `charging_records` VALUES (65, 37, 11, '2023-12-02 09:00:00', '2023-12-02 10:00:00', 15.00, 4.50, 50.00, 65.00, 'Ultra-Fast', 26.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (66, 37, 11, '2023-12-03 10:00:00', '2023-12-03 11:00:00', 20.00, 6.00, 65.00, 80.00, 'Ultra-Fast', 27.00, 'Rainy');
INSERT INTO `charging_records` VALUES (67, 38, 12, '2023-07-15 15:00:00', '2023-07-15 16:00:00', 40.00, 16.00, 20.00, 60.00, 'Ultra-Fast', 37.00, 'Sunny');
INSERT INTO `charging_records` VALUES (68, 38, 10, '2023-07-16 16:00:00', '2023-07-16 17:00:00', 42.67, 17.07, 25.00, 65.00, 'Ultra-Fast', 39.00, 'Clear');
INSERT INTO `charging_records` VALUES (69, 38, 13, '2023-08-10 14:00:00', '2023-08-10 15:00:00', 50.00, 15.00, 20.00, 70.00, 'Ultra-Fast', 38.00, 'Clear');
INSERT INTO `charging_records` VALUES (70, 38, 13, '2023-08-11 15:00:00', '2023-08-11 16:00:00', 50.00, 15.00, 25.00, 75.00, 'Ultra-Fast', 39.00, 'Sunny');
INSERT INTO `charging_records` VALUES (71, 38, 13, '2023-08-12 16:00:00', '2023-08-12 17:00:00', 50.00, 15.00, 30.00, 80.00, 'Ultra-Fast', 40.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (72, 38, 13, '2023-08-13 17:00:00', '2023-08-13 18:00:00', 50.00, 15.00, 35.00, 85.00, 'Ultra-Fast', 41.00, 'Rainy');
INSERT INTO `charging_records` VALUES (73, 38, 13, '2023-08-14 18:00:00', '2023-08-14 19:00:00', 50.00, 15.00, 40.00, 90.00, 'Ultra-Fast', 42.00, 'Thunderstorm');
INSERT INTO `charging_records` VALUES (74, 38, 13, '2023-08-15 19:00:00', '2023-08-15 20:00:00', 50.00, 15.00, 45.00, 95.00, 'Ultra-Fast', 43.00, 'Stormy');
INSERT INTO `charging_records` VALUES (75, 39, 1, '2023-11-01 08:00:00', '2023-11-01 09:00:00', 20.00, 7.00, 40.00, 60.00, 'Fast', 25.00, 'Sunny');
INSERT INTO `charging_records` VALUES (76, 39, 1, '2023-11-02 08:00:00', '2023-11-02 09:00:00', 20.00, 7.00, 45.00, 65.00, 'Fast', 24.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (77, 39, 1, '2023-11-03 08:00:00', '2023-11-03 09:00:00', 20.00, 7.00, 50.00, 70.00, 'Fast', 23.00, 'Rainy');
INSERT INTO `charging_records` VALUES (78, 39, 1, '2023-11-06 08:00:00', '2023-11-06 09:00:00', 20.00, 7.00, 55.00, 75.00, 'Fast', 22.00, 'Clear');
INSERT INTO `charging_records` VALUES (79, 39, 1, '2023-11-07 08:00:00', '2023-11-07 09:00:00', 20.00, 7.00, 60.00, 80.00, 'Fast', 21.00, 'Foggy');
INSERT INTO `charging_records` VALUES (80, 39, 1, '2023-11-11 10:00:00', '2023-11-11 11:00:00', 30.00, 10.50, 70.00, 90.00, 'Fast', 20.00, 'Sunny');
INSERT INTO `charging_records` VALUES (81, 39, 1, '2023-11-12 11:00:00', '2023-11-12 12:00:00', 30.00, 10.50, 75.00, 95.00, 'Fast', 19.00, 'Clear');
INSERT INTO `charging_records` VALUES (82, 40, 1, '2023-11-06 09:00:00', '2023-11-06 10:00:00', 20.00, 6.00, 40.00, 60.00, 'Fast', 22.00, 'Clear');
INSERT INTO `charging_records` VALUES (83, 40, 1, '2023-11-07 09:00:00', '2023-11-07 10:00:00', 20.00, 6.00, 60.00, 80.00, 'Fast', 23.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (84, 40, 1, '2023-11-08 09:00:00', '2023-11-08 10:00:00', 20.00, 6.00, 80.00, 100.00, 'Fast', 24.00, 'Rainy');
INSERT INTO `charging_records` VALUES (85, 40, 1, '2023-11-09 09:00:00', '2023-11-09 10:00:00', 20.00, 6.00, 20.00, 40.00, 'Fast', 25.00, 'Foggy');
INSERT INTO `charging_records` VALUES (86, 40, 1, '2023-11-10 09:00:00', '2023-11-10 10:00:00', 20.00, 6.00, 40.00, 60.00, 'Fast', 26.00, 'Overcast');
INSERT INTO `charging_records` VALUES (87, 40, 1, '2023-11-11 10:00:00', '2023-11-11 11:00:00', 40.00, 12.00, 60.00, 80.00, 'Fast', 20.00, 'Sunny');
INSERT INTO `charging_records` VALUES (88, 40, 1, '2023-11-12 11:00:00', '2023-11-12 12:00:00', 40.00, 12.00, 80.00, 100.00, 'Fast', 21.00, 'Clear');
INSERT INTO `charging_records` VALUES (89, 41, 14, '2023-10-10 08:00:00', '2023-10-10 09:00:00', 50.00, 22.50, 20.00, 60.00, 'Fast', 15.00, 'Clear');
INSERT INTO `charging_records` VALUES (90, 42, 1, '2023-12-20 08:00:00', '2023-12-20 09:00:00', 61.00, 18.30, 10.00, 100.00, 'Ultra-Fast', 25.00, 'Clear');
INSERT INTO `charging_records` VALUES (91, 43, 1, '2023-12-25 08:00:00', '2023-12-25 09:00:00', 91.00, 27.30, 10.00, 100.00, 'Ultra-Fast', 22.00, 'Clear');
INSERT INTO `charging_records` VALUES (92, 44, 12, '2023-12-24 20:00:00', '2023-12-24 21:00:00', 70.00, 21.00, 20.00, 90.00, 'Ultra-Fast', 25.00, 'Clear');
INSERT INTO `charging_records` VALUES (93, 45, 16, '2023-11-20 14:00:00', '2023-11-20 15:00:00', 60.00, 21.00, 20.00, 80.00, 'Ultra-Fast', 25.00, 'Rainy');
INSERT INTO `charging_records` VALUES (94, 46, 16, '2023-07-15 10:00:00', '2023-07-15 11:00:00', 51.00, 25.50, 15.00, 100.00, 'Fast', 45.00, 'Clear');
INSERT INTO `charging_records` VALUES (95, 47, 17, '2023-12-01 07:30:00', '2023-12-01 08:00:00', 40.00, 12.00, 30.00, 70.00, 'Fast', 25.00, 'Sunny');
INSERT INTO `charging_records` VALUES (96, 51, 18, '2023-12-01 00:00:00', '2023-12-02 00:00:00', 150.00, 52.50, 0.00, 100.00, 'Ultra-Fast', 28.00, 'Clear');
INSERT INTO `charging_records` VALUES (97, 52, 18, '2023-12-02 00:00:00', '2023-12-03 00:00:00', 150.00, 52.50, 0.00, 100.00, 'Ultra-Fast', 29.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (98, 53, 18, '2023-12-03 00:00:00', '2023-12-04 00:00:00', 150.00, 52.50, 0.00, 100.00, 'Ultra-Fast', 30.00, 'Rainy');
INSERT INTO `charging_records` VALUES (99, 30, 18, '2023-12-04 00:00:00', '2023-12-05 00:00:00', 150.00, 52.50, 0.00, 100.00, 'Ultra-Fast', 31.00, 'Storm');
INSERT INTO `charging_records` VALUES (101, 54, 20, '2023-11-17 14:00:00', '2023-11-17 15:00:00', 30.00, 9.00, 60.00, 80.00, 'Ultra-Fast', 25.00, 'Clear');
INSERT INTO `charging_records` VALUES (102, 55, 20, '2023-08-01 08:00:00', '2023-08-01 09:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 36.00, 'Sunny');
INSERT INTO `charging_records` VALUES (103, 55, 20, '2023-08-02 09:00:00', '2023-08-02 10:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 37.00, 'Clear');
INSERT INTO `charging_records` VALUES (104, 55, 20, '2023-08-03 10:00:00', '2023-08-03 11:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 38.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (105, 55, 20, '2023-08-04 11:00:00', '2023-08-04 12:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 39.00, 'Rainy');
INSERT INTO `charging_records` VALUES (106, 55, 20, '2023-08-05 12:00:00', '2023-08-05 13:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 40.00, 'Thunderstorm');
INSERT INTO `charging_records` VALUES (107, 55, 20, '2023-08-06 13:00:00', '2023-08-06 14:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 41.00, 'Stormy');
INSERT INTO `charging_records` VALUES (108, 55, 20, '2023-08-07 14:00:00', '2023-08-07 15:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 42.00, 'Clear');
INSERT INTO `charging_records` VALUES (109, 55, 20, '2023-08-08 15:00:00', '2023-08-08 16:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 43.00, 'Hazy');
INSERT INTO `charging_records` VALUES (110, 55, 20, '2023-08-09 16:00:00', '2023-08-09 17:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 44.00, 'Overcast');
INSERT INTO `charging_records` VALUES (111, 55, 20, '2023-08-10 17:00:00', '2023-08-10 18:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 45.00, 'Hot');
INSERT INTO `charging_records` VALUES (112, 55, 20, '2023-08-11 08:00:00', '2023-08-11 09:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 36.00, 'Sunny');
INSERT INTO `charging_records` VALUES (113, 55, 20, '2023-08-12 09:00:00', '2023-08-12 10:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 37.00, 'Clear');
INSERT INTO `charging_records` VALUES (114, 55, 20, '2023-08-13 10:00:00', '2023-08-13 11:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 38.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (115, 55, 20, '2023-08-14 11:00:00', '2023-08-14 12:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 39.00, 'Rainy');
INSERT INTO `charging_records` VALUES (116, 55, 20, '2023-08-15 12:00:00', '2023-08-15 13:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 40.00, 'Foggy');
INSERT INTO `charging_records` VALUES (117, 55, 20, '2023-08-16 13:00:00', '2023-08-16 14:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 41.00, 'Snow');
INSERT INTO `charging_records` VALUES (118, 55, 20, '2023-08-17 14:00:00', '2023-08-17 15:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 42.00, 'Blizzard');
INSERT INTO `charging_records` VALUES (119, 55, 20, '2023-08-18 15:00:00', '2023-08-18 16:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 43.00, 'Windy');
INSERT INTO `charging_records` VALUES (120, 55, 20, '2023-08-19 16:00:00', '2023-08-19 17:00:00', 80.00, 24.00, 20.00, 70.00, 'Ultra-Fast', 44.00, 'Mist');
INSERT INTO `charging_records` VALUES (121, 55, 20, '2023-08-20 17:00:00', '2023-08-20 18:00:00', 80.00, 24.00, 70.00, 20.00, 'Ultra-Fast', 45.00, 'Hail');
INSERT INTO `charging_records` VALUES (122, 55, 20, '2023-08-21 18:00:00', '2023-08-21 19:00:00', 80.00, 24.00, 20.00, 70.00, 'Standard', 46.00, 'Clear');
INSERT INTO `charging_records` VALUES (123, 56, 20, '2023-08-20 08:00:00', '2023-08-20 09:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 25.00, 'Sunny');
INSERT INTO `charging_records` VALUES (124, 56, 20, '2023-08-23 09:00:00', '2023-08-23 10:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 26.00, 'Clear');
INSERT INTO `charging_records` VALUES (125, 56, 20, '2023-08-26 10:00:00', '2023-08-26 11:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 27.00, 'Cloudy');
INSERT INTO `charging_records` VALUES (126, 56, 20, '2023-08-29 11:00:00', '2023-08-29 12:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 28.00, 'Rainy');
INSERT INTO `charging_records` VALUES (127, 56, 20, '2023-09-01 12:00:00', '2023-09-01 13:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 29.00, 'Foggy');
INSERT INTO `charging_records` VALUES (128, 56, 20, '2023-09-04 13:00:00', '2023-09-04 14:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 30.00, 'Snowy');
INSERT INTO `charging_records` VALUES (129, 56, 20, '2023-09-07 14:00:00', '2023-09-07 15:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 31.00, 'Stormy');
INSERT INTO `charging_records` VALUES (130, 56, 20, '2023-09-10 15:00:00', '2023-09-10 16:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 32.00, 'Hail');
INSERT INTO `charging_records` VALUES (131, 56, 20, '2023-09-13 16:00:00', '2023-09-13 17:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 33.00, 'Mist');
INSERT INTO `charging_records` VALUES (132, 56, 20, '2023-09-16 17:00:00', '2023-09-16 18:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 34.00, 'Hot');
INSERT INTO `charging_records` VALUES (133, 56, 20, '2023-09-19 18:00:00', '2023-09-19 19:00:00', 70.00, 21.00, 10.00, 95.00, 'Ultra-Fast', 35.00, 'Sunny');
INSERT INTO `charging_records` VALUES (134, 1, 1, '2023-07-15 12:00:00', '2023-07-15 13:00:00', 85.00, 25.50, 80.00, 95.00, 'Ultra-Fast', 42.00, 'Clear');
INSERT INTO `charging_records` VALUES (135, 1, 1, '2023-07-15 13:30:00', '2023-07-15 14:30:00', 85.00, 25.50, 95.00, 100.00, 'Ultra-Fast', 41.00, 'Clear');
INSERT INTO `charging_records` VALUES (136, 57, 1, '2023-12-01 08:00:00', '2023-12-01 09:00:00', 60.00, 18.00, 20.00, 80.00, 'Standard', 3.00, 'Snow');
INSERT INTO `charging_records` VALUES (137, 57, 1, '2023-12-02 09:00:00', '2023-12-02 10:00:00', 60.00, 18.00, 80.00, 100.00, 'Standard', 4.00, 'Frost');
INSERT INTO `charging_records` VALUES (138, 57, 1, '2023-12-03 10:00:00', '2023-12-03 11:00:00', 60.00, 18.00, 10.00, 70.00, 'Standard', 3.50, 'Blizzard');
INSERT INTO `charging_records` VALUES (139, 57, 1, '2023-12-04 11:00:00', '2023-12-04 12:00:00', 60.00, 18.00, 70.00, 90.00, 'Standard', 4.50, 'Clear');
INSERT INTO `charging_records` VALUES (140, 58, 1, '2023-12-05 14:00:00', '2023-12-05 15:00:00', 60.00, 18.00, 60.00, 80.00, 'Standard', 30.00, 'Sunny');
INSERT INTO `charging_records` VALUES (141, 59, 21, '2023-10-05 08:00:00', '2023-10-05 09:00:00', 90.00, 36.00, 20.00, 80.00, 'Standard', 3.00, 'Snow');
INSERT INTO `charging_records` VALUES (142, 59, 21, '2023-10-15 10:00:00', '2023-10-15 11:00:00', 60.00, 24.00, 50.00, 90.00, 'Standard', 2.00, 'Blizzard');
INSERT INTO `charging_records` VALUES (143, 60, 21, '2023-10-25 12:00:00', '2023-10-25 14:00:00', 170.00, 68.00, 30.00, 70.00, 'Standard', 1.00, 'Stormy');
INSERT INTO `charging_records` VALUES (144, 64, 22, '2023-11-06 14:00:00', '2023-11-06 15:00:00', 50.00, 17.50, 60.00, 80.00, 'Fast', 25.00, 'Sunny');
INSERT INTO `charging_records` VALUES (145, 64, 23, '2023-11-07 15:00:00', '2023-11-07 16:00:00', 50.00, 15.00, 80.00, 100.00, 'Ultra-Fast', 26.00, 'Clear');
INSERT INTO `charging_records` VALUES (146, 65, 24, '2023-11-22 12:00:00', '2023-11-22 13:00:00', 100.00, 100.00, 50.00, 100.00, 'Ultra-Fast', 25.00, 'Magnetic_Storm');
COMMIT;

-- ----------------------------
-- Table structure for charging_stations
-- ----------------------------
DROP TABLE IF EXISTS `charging_stations`;
CREATE TABLE `charging_stations` (
  `Station_Id` int NOT NULL AUTO_INCREMENT COMMENT '充电站唯一标识',
  `Station_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '充电站名称',
  `Location` point NOT NULL COMMENT '充电站地理位置（经纬度）',
  `Charging_Speed_Kw` decimal(10,2) DEFAULT NULL COMMENT '充电速度（千瓦）',
  `Number_Of_Chargers` int DEFAULT NULL COMMENT '充电桩数量',
  `Operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '运营商',
  `Opening_Hours` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '开放时间',
  `Cost_Per_Kwh` decimal(10,2) DEFAULT NULL COMMENT '每千瓦时费用',
  `Is_24_Hours` tinyint(1) DEFAULT NULL COMMENT '是否24小时开放',
  `Parking_Fee_Usd` decimal(10,2) DEFAULT NULL COMMENT '停车费用（美元）',
  `Has_Restroom` tinyint(1) DEFAULT NULL COMMENT '是否有洗手间',
  `Has_Cafe` tinyint(1) DEFAULT NULL COMMENT '是否有咖啡馆',
  `Is_Covered` tinyint(1) DEFAULT NULL COMMENT '是否有顶棚',
  `Is_Solar_Powered` tinyint(1) DEFAULT NULL COMMENT '是否使用太阳能供电',
  PRIMARY KEY (`Station_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of charging_stations
-- ----------------------------
BEGIN;
INSERT INTO `charging_stations` VALUES (1, 'SuperCharge Station 1', ST_GeomFromText('POINT(34.0522 -118.244)'), 120.00, 10, 'Tesla', '24/7', 0.30, 1, 5.00, 1, 1, 1, 0);
INSERT INTO `charging_stations` VALUES (2, 'NIO Power Station 1', ST_GeomFromText('POINT(31.2304 121.474)'), 150.00, 8, 'NIO', '06:00-22:00', 0.25, 0, 3.00, 1, 0, 1, 1);
INSERT INTO `charging_stations` VALUES (3, 'BYD Charging Hub', ST_GeomFromText('POINT(22.3964 114.109)'), 100.00, 12, 'BYD', '07:00-23:00', 0.20, 0, 2.50, 0, 0, 0, 0);
INSERT INTO `charging_stations` VALUES (4, 'Xpeng Charging Point', ST_GeomFromText('POINT(23.1291 113.264)'), 90.00, 6, 'Xpeng', '08:00-20:00', 0.28, 0, 4.00, 1, 1, 1, 1);
INSERT INTO `charging_stations` VALUES (5, 'Li Auto Charging Station', ST_GeomFromText('POINT(39.9042 116.407)'), 80.00, 4, 'Li Auto', '09:00-21:00', 0.22, 0, 3.50, 0, 0, 0, 0);
INSERT INTO `charging_stations` VALUES (6, 'HyperCharge Hub', ST_GeomFromText('POINT(40.7128 -74.006)'), 250.00, 15, 'GreenEnergy Co', '00:00-24:00', 0.50, 1, 10.00, 1, 1, 1, 1);
INSERT INTO `charging_stations` VALUES (7, 'LowEfficiency Hub', ST_GeomFromText('POINT(37.751 -97.821)'), 100.00, 8, 'GreenEnergy Co', '06:00-22:00', 0.25, 0, 3.00, 0, 1, 1, 0);
INSERT INTO `charging_stations` VALUES (8, 'PeakPower Hub', ST_GeomFromText('POINT(39.9042 116.407)'), 120.00, 5, 'FastCharge Inc', '00:00-24:00', 0.35, 1, 5.00, 1, 1, 1, 0);
INSERT INTO `charging_stations` VALUES (9, 'PeakPower Hub', ST_GeomFromText('POINT(39.9042 116.407)'), 120.00, 5, 'FastCharge Inc', '00:00-24:00', 0.35, 1, 5.00, 1, 1, 1, 0);
INSERT INTO `charging_stations` VALUES (10, 'HeatWave Charge', ST_GeomFromText('POINT(34.0522 -118.244)'), 250.00, 8, 'FastCharge Co', '00:00-24:00', 0.40, 1, 6.00, 1, 1, 1, 0);
INSERT INTO `charging_stations` VALUES (11, 'GrowthCharge Hub', ST_GeomFromText('POINT(40.7128 -74.006)'), 150.00, 10, 'GreenCharge Inc', '00:00-24:00', 0.30, 1, 4.00, 1, 1, 1, 1);
INSERT INTO `charging_stations` VALUES (12, 'SunnyPeak Charge', ST_GeomFromText('POINT(34.0522 -118.244)'), 180.00, 12, 'SolarCharge Co', '00:00-24:00', 0.40, 1, 5.00, 1, 1, 0, 1);
INSERT INTO `charging_stations` VALUES (13, 'HeatLoss Hub', ST_GeomFromText('POINT(31.2304 121.474)'), 100.00, 8, 'GreenCharge Co', '00:00-24:00', 0.30, 1, 5.00, 1, 1, 0, 0);
INSERT INTO `charging_stations` VALUES (14, 'HighAltitude Peak', ST_GeomFromText('POINT(0 0)'), 150.00, 6, 'MountainCharge Co', '06:00-22:00', 0.45, 0, 8.00, 1, 1, 1, 1);
INSERT INTO `charging_stations` VALUES (15, 'SnowCover Charge', ST_GeomFromText('POINT(40.7128 -74.006)'), 180.00, 10, 'Tesla', '24/7', 0.30, 1, 5.00, 1, 1, 1, 0);
INSERT INTO `charging_stations` VALUES (16, 'RainyPeak Charge', ST_GeomFromText('POINT(31.2304 121.474)'), 150.00, 8, 'FastCharge Inc', '06:00-22:00', 0.35, 0, 3.00, 0, 0, 0, 0);
INSERT INTO `charging_stations` VALUES (17, 'EarlyCharge Hub', ST_GeomFromText('POINT(34.0522 -118.244)'), 120.00, 5, 'FastCharge Co', '08:00-20:00', 0.30, 0, 2.00, 0, 0, 0, 1);
INSERT INTO `charging_stations` VALUES (18, 'NonStop Charge', ST_GeomFromText('POINT(39.9042 116.407)'), 150.00, 1, 'GreenCharge Co', '00:00-12:00', 0.35, 0, 0.00, 0, 0, 0, 1);
INSERT INTO `charging_stations` VALUES (20, 'CoveredPeak Hub 2', ST_GeomFromText('POINT(34.0522 -118.244)'), 250.00, 10, 'Tesla', '00:00-24:00', 0.30, 1, 5.00, 1, 1, 1, 1);
INSERT INTO `charging_stations` VALUES (21, 'PolarCharge Hub', ST_GeomFromText('POINT(85.0522 -170.244)'), 150.00, 8, 'SnowCharge Co', '00:00-24:00', 0.40, 1, 6.00, 1, 1, 1, 1);
INSERT INTO `charging_stations` VALUES (22, 'PowerRange Hub', ST_GeomFromText('POINT(34.0522 -118.244)'), 120.00, 6, 'FastCharge Co', '00:00-24:00', 0.35, 1, 4.00, 0, 0, 1, 0);
INSERT INTO `charging_stations` VALUES (23, 'PowerPeak Station', ST_GeomFromText('POINT(40.7128 -74.006)'), 200.00, 8, 'Tesla', '00:00-23:59', 0.30, 1, 5.00, 1, 1, 1, 1);
INSERT INTO `charging_stations` VALUES (24, 'QuantumStorm Hub', ST_GeomFromText('POINT(0 0)'), 1000.00, 3, 'QuantumCharge Co', '00:00-24:00', 1.00, 1, 0.00, 0, 0, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for driving_records
-- ----------------------------
DROP TABLE IF EXISTS `driving_records`;
CREATE TABLE `driving_records` (
  `Record_Id` int NOT NULL AUTO_INCREMENT COMMENT '驾驶记录唯一标识',
  `Vehicle_Id` int DEFAULT NULL COMMENT '车辆ID（外键）',
  `Start_Time` datetime DEFAULT NULL COMMENT '驾驶开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '驾驶结束时间',
  `Distance_Km` decimal(10,2) DEFAULT NULL COMMENT '行驶距离（公里）',
  `Energy_Consumed_Kwh` decimal(10,2) DEFAULT NULL COMMENT '消耗的电量（千瓦时）',
  `Average_Speed_Kmh` decimal(10,2) DEFAULT NULL COMMENT '平均速度（公里/小时）',
  `Max_Speed_Kmh` decimal(10,2) DEFAULT NULL COMMENT '最高速度（公里/小时）',
  `Start_Battery_Percentage` decimal(5,2) DEFAULT NULL COMMENT '驾驶开始时的电池百分比',
  `End_Battery_Percentage` decimal(5,2) DEFAULT NULL COMMENT '驾驶结束时的电池百分比',
  `Elevation_Gain_M` decimal(10,2) DEFAULT NULL COMMENT '海拔上升高度（米）',
  `Elevation_Loss_M` decimal(10,2) DEFAULT NULL COMMENT '海拔下降高度（米）',
  `Weather_Conditions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '天气情况',
  `Road_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '道路类型（如：高速、城市道路）',
  PRIMARY KEY (`Record_Id`),
  KEY `vehicle_id` (`Vehicle_Id`),
  CONSTRAINT `driving_records_ibfk_1` FOREIGN KEY (`Vehicle_Id`) REFERENCES `vehicles` (`Vehicle_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of driving_records
-- ----------------------------
BEGIN;
INSERT INTO `driving_records` VALUES (1, 1, '2023-10-01 08:00:00', '2023-10-01 10:00:00', 150.00, 30.00, 75.00, 120.00, 90.00, 60.00, 200.00, 100.00, 'Sunny', 'Highway');
INSERT INTO `driving_records` VALUES (2, 2, '2023-10-02 12:00:00', '2023-10-02 14:00:00', 120.00, 25.00, 60.00, 100.00, 85.00, 65.00, 150.00, 80.00, 'Cloudy', 'City');
INSERT INTO `driving_records` VALUES (3, 3, '2023-10-03 07:00:00', '2023-10-03 09:00:00', 100.00, 20.00, 50.00, 90.00, 70.00, 50.00, 100.00, 50.00, 'Rainy', 'Rural');
INSERT INTO `driving_records` VALUES (4, 4, '2023-10-04 16:00:00', '2023-10-04 18:00:00', 80.00, 15.00, 40.00, 80.00, 75.00, 60.00, 50.00, 30.00, 'Clear', 'City');
INSERT INTO `driving_records` VALUES (5, 5, '2023-10-05 10:00:00', '2023-10-05 12:00:00', 60.00, 10.00, 30.00, 60.00, 80.00, 70.00, 20.00, 10.00, 'Sunny', 'Rural');
INSERT INTO `driving_records` VALUES (6, 11, '2023-11-01 08:00:00', '2023-11-01 09:45:00', 100.00, 30.00, 70.00, 120.00, 50.00, 20.00, 100.00, 50.00, 'Sunny', 'Highway');
INSERT INTO `driving_records` VALUES (30, 15, '2023-11-01 08:00:00', '2023-11-01 12:00:00', 160.00, 40.00, 40.00, 100.00, 90.00, 70.00, 200.00, 1.50, 'Sunny', 'Highway');
INSERT INTO `driving_records` VALUES (31, 15, '2023-11-02 09:00:00', '2023-11-02 13:00:00', 160.00, 40.00, 40.00, 100.00, 70.00, 50.00, 150.00, 1.20, 'Cloudy', 'Highway');
INSERT INTO `driving_records` VALUES (32, 15, '2023-11-03 10:00:00', '2023-11-03 14:00:00', 160.00, 40.00, 40.00, 100.00, 50.00, 30.00, 100.00, 0.80, 'Rainy', 'Highway');
INSERT INTO `driving_records` VALUES (33, 16, '2023-11-01 07:00:00', '2023-11-01 11:00:00', 160.00, 38.00, 40.00, 95.00, 85.00, 65.00, 180.00, 1.00, 'Clear', 'Highway');
INSERT INTO `driving_records` VALUES (34, 16, '2023-11-02 08:00:00', '2023-11-02 12:00:00', 160.00, 38.00, 40.00, 95.00, 65.00, 45.00, 150.00, 0.90, 'Sunny', 'Highway');
INSERT INTO `driving_records` VALUES (35, 16, '2023-11-03 09:00:00', '2023-11-03 13:00:00', 160.00, 38.00, 40.00, 95.00, 45.00, 25.00, 120.00, 0.70, 'Foggy', 'Highway');
INSERT INTO `driving_records` VALUES (36, 17, '2023-11-01 06:00:00', '2023-11-01 10:00:00', 160.00, 35.00, 40.00, 90.00, 80.00, 60.00, 100.00, 0.50, 'Windy', 'Highway');
INSERT INTO `driving_records` VALUES (37, 17, '2023-11-02 07:00:00', '2023-11-02 11:00:00', 160.00, 35.00, 40.00, 90.00, 60.00, 40.00, 80.00, 0.40, 'Snowy', 'Highway');
INSERT INTO `driving_records` VALUES (38, 17, '2023-11-03 08:00:00', '2023-11-03 12:00:00', 160.00, 35.00, 40.00, 90.00, 40.00, 20.00, 50.00, 0.30, 'Stormy', 'Highway');
INSERT INTO `driving_records` VALUES (39, 19, '2023-10-01 08:00:00', '2023-10-01 10:00:00', 100.00, 10.00, 50.00, 120.00, 80.00, 70.00, 100.00, 50.00, 'Sunny', 'Highway');
INSERT INTO `driving_records` VALUES (40, 19, '2023-10-02 12:00:00', '2023-10-02 14:00:00', 100.00, 12.50, 50.00, 120.00, 75.00, 60.00, 120.00, 60.00, 'Heatwave', 'Highway');
INSERT INTO `driving_records` VALUES (41, 19, '2023-10-03 09:00:00', '2023-10-03 11:00:00', 100.00, 13.50, 50.00, 120.00, 70.00, 55.00, 150.00, 80.00, 'Snow', 'Highway');
INSERT INTO `driving_records` VALUES (42, 20, '2023-11-20 08:00:00', '2023-11-20 12:00:00', 150.00, 80.00, 37.50, 100.00, 20.00, 100.00, 300.00, 300.00, 'Snow', 'Mountain');
INSERT INTO `driving_records` VALUES (43, 21, '2023-11-25 08:00:00', '2023-11-25 10:00:00', 80.00, 0.82, 40.00, 90.00, 90.00, 95.00, 100.00, 250.00, 'Snowy', 'Mountain');
INSERT INTO `driving_records` VALUES (44, 35, '2023-12-25 09:00:00', '2023-12-25 10:00:00', 20.00, -1.00, 20.00, 60.00, 95.00, 96.00, 100.00, 350.00, 'Snowy', 'Mountain');
INSERT INTO `driving_records` VALUES (45, 42, '2023-12-19 09:00:00', '2023-12-19 10:00:00', 50.00, 15.00, 50.00, 100.00, 80.00, 70.00, 100.00, 50.00, 'Sunny', 'Highway');
INSERT INTO `driving_records` VALUES (46, 43, '2023-12-24 09:00:00', '2023-12-24 10:00:00', 30.00, 10.00, 30.00, 80.00, 90.00, 80.00, 50.00, 30.00, 'Sunny', 'City');
INSERT INTO `driving_records` VALUES (47, 44, '2023-12-25 08:00:00', '2023-12-25 10:00:00', 240.00, 60.00, 120.00, 200.00, 85.00, 65.00, 100.00, 50.00, 'Blizzard', 'Highway');
INSERT INTO `driving_records` VALUES (48, 48, '2023-12-01 09:00:00', '2023-12-01 11:00:00', 120.00, 30.00, 60.00, 120.00, 80.00, 50.00, 100.00, 50.00, 'Rainy', 'Highway');
INSERT INTO `driving_records` VALUES (49, 49, '2023-12-02 10:00:00', '2023-12-02 12:00:00', 160.00, 40.00, 80.00, 140.00, 70.00, 50.00, 150.00, 75.00, 'Snow', 'Mountain');
INSERT INTO `driving_records` VALUES (50, 50, '2023-12-03 11:00:00', '2023-12-03 13:00:00', 200.00, 50.00, 100.00, 160.00, 60.00, 30.00, 200.00, 100.00, 'Rainy', 'Highway');
INSERT INTO `driving_records` VALUES (53, 54, '2023-11-15 08:00:00', '2023-11-15 10:00:00', 165.00, 45.00, 82.50, 130.00, 80.00, 70.00, 100.00, 60.00, 'Rainy', 'Highway');
INSERT INTO `driving_records` VALUES (54, 54, '2023-11-16 09:00:00', '2023-11-16 11:00:00', 170.00, 46.00, 85.00, 135.00, 70.00, 60.00, 110.00, 70.00, 'Cloudy', 'Highway');
INSERT INTO `driving_records` VALUES (55, 2, '2023-10-02 14:00:00', '2023-10-02 16:00:00', 120.00, 38.00, 60.00, 100.00, 85.00, 65.00, 150.00, 80.00, 'Heavy Rain', 'Highway');
INSERT INTO `driving_records` VALUES (56, 61, '2023-10-15 09:00:00', '2023-10-15 10:00:00', 30.00, 5.00, 30.00, 80.00, 50.00, 60.00, 50.00, 600.00, 'Snowy', 'Mountain');
INSERT INTO `driving_records` VALUES (57, 62, '2023-10-20 10:00:00', '2023-10-20 11:00:00', 25.00, 3.00, 25.00, 70.00, 40.00, 90.00, 100.00, 640.00, 'Clear', 'Mountain');
INSERT INTO `driving_records` VALUES (58, 64, '2023-11-01 08:00:00', '2023-11-01 09:00:00', 100.00, 100.00, 100.00, 120.00, 80.00, 70.00, 100.00, 50.00, 'Sunny', 'Highway');
INSERT INTO `driving_records` VALUES (59, 64, '2023-11-02 09:00:00', '2023-11-02 10:00:00', 100.00, 120.00, 100.00, 120.00, 70.00, 60.00, 150.00, 60.00, 'Clear', 'Highway');
INSERT INTO `driving_records` VALUES (60, 64, '2023-11-03 10:00:00', '2023-11-03 11:00:00', 100.00, 140.00, 100.00, 120.00, 60.00, 50.00, 200.00, 70.00, 'Cloudy', 'Highway');
INSERT INTO `driving_records` VALUES (61, 64, '2023-11-04 11:00:00', '2023-11-04 12:00:00', 100.00, 160.00, 100.00, 120.00, 50.00, 40.00, 250.00, 80.00, 'Rainy', 'Highway');
INSERT INTO `driving_records` VALUES (62, 64, '2023-11-05 12:00:00', '2023-11-05 13:00:00', 100.00, 180.00, 100.00, 120.00, 40.00, 30.00, 300.00, 90.00, 'Snowy', 'Highway');
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
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `Vehicle_Id` int NOT NULL AUTO_INCREMENT COMMENT '车辆唯一标识',
  `Manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车型',
  `Production_Year` year DEFAULT NULL COMMENT '生产年份',
  `Battery_Capacity_Kwh` decimal(10,2) DEFAULT NULL COMMENT '电池容量（千瓦时）',
  `Range_Km` int DEFAULT NULL COMMENT '续航里程（公里）',
  `Weight_Kg` decimal(10,2) DEFAULT NULL COMMENT '车辆重量（千克）',
  `Motor_Power_Kw` decimal(10,2) DEFAULT NULL COMMENT '电机功率（千瓦）',
  `Charging_Time_Hours` decimal(5,2) DEFAULT NULL COMMENT '充电时间（小时）',
  `Price_Usd` decimal(15,2) DEFAULT NULL COMMENT '价格（美元）',
  `Release_Date` date DEFAULT NULL COMMENT '发布日期',
  `Top_Speed_Kmh` decimal(10,2) DEFAULT NULL COMMENT '最高时速（公里/小时）',
  `Acceleration_0_To_100_Sec` decimal(5,2) DEFAULT NULL COMMENT '0-100公里/小时加速时间（秒）',
  `Seating_Capacity` int DEFAULT NULL COMMENT '座位数',
  `Drivetrain` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '驱动类型（如：前驱、后驱、四驱）',
  `Warranty_Years` int DEFAULT NULL COMMENT '保修年限',
  `Is_Autonomous` tinyint(1) DEFAULT NULL COMMENT '是否支持自动驾驶',
  `Battery_Health` decimal(5,2) DEFAULT '100.00',
  PRIMARY KEY (`Vehicle_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
BEGIN;
INSERT INTO `vehicles` VALUES (1, 'Tesla', 'Model S', 2022, 100.00, 600, 2100.00, 500.00, 8.50, 79990.00, '2022-01-15', 250.00, 2.30, 5, 'AWD', 4, 1, 100.00);
INSERT INTO `vehicles` VALUES (2, 'NIO', 'ET7', 2023, 150.00, 700, 2200.00, 480.00, 10.00, 69900.00, '2023-03-20', 240.00, 3.80, 5, 'AWD', 5, 1, 88.00);
INSERT INTO `vehicles` VALUES (3, 'BYD', 'Han EV', 2022, 85.00, 550, 2000.00, 360.00, 9.00, 45900.00, '2022-05-10', 230.00, 3.90, 5, 'RWD', 6, 0, 100.00);
INSERT INTO `vehicles` VALUES (4, 'Xpeng', 'P7', 2023, 80.00, 500, 1900.00, 300.00, 8.00, 39900.00, '2023-02-01', 220.00, 4.30, 5, 'RWD', 5, 1, 85.00);
INSERT INTO `vehicles` VALUES (5, 'Li Auto', 'Li ONE', 2022, 40.50, 180, 2300.00, 240.00, 6.00, 46900.00, '2022-07-25', 180.00, 6.50, 6, 'AWD', 5, 0, 100.00);
INSERT INTO `vehicles` VALUES (6, 'Tesla', 'Model S', 2022, 100.00, 600, 2100.00, 500.00, 8.50, 79990.00, '2022-01-15', 250.00, 2.30, 5, 'AWD', 4, 1, 100.00);
INSERT INTO `vehicles` VALUES (7, 'NIO', 'ET7', 2023, 150.00, 700, 2200.00, 480.00, 10.00, 69900.00, '2023-03-20', 240.00, 3.80, 5, 'AWD', 5, 1, 100.00);
INSERT INTO `vehicles` VALUES (8, 'BYD', 'Han EV', 2022, 85.00, 550, 2000.00, 360.00, 9.00, 45900.00, '2022-05-10', 230.00, 3.90, 5, 'RWD', 6, 0, 100.00);
INSERT INTO `vehicles` VALUES (9, 'Xpeng', 'P7', 2023, 80.00, 500, 1900.00, 300.00, 8.00, 39900.00, '2023-02-01', 220.00, 4.30, 5, 'RWD', 5, 1, 100.00);
INSERT INTO `vehicles` VALUES (10, 'Li Auto', 'Li ONE', 2022, 40.50, 180, 2300.00, 240.00, 6.00, 46900.00, '2022-07-25', 180.00, 6.50, 6, 'AWD', 5, 0, 100.00);
INSERT INTO `vehicles` VALUES (11, 'GreenPower Motors', 'HyperDrive X', 2023, 70.00, 400, 1800.00, 200.00, 7.00, 35000.00, '2023-01-01', 200.00, 5.00, 5, 'AWD', 5, 1, 90.00);
INSERT INTO `vehicles` VALUES (12, 'FutureDrive Inc', 'TurboBlade X', 2023, 100.00, 600, 1800.00, 400.00, 6.00, 80000.00, '2023-01-01', 260.00, 2.50, 4, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (13, 'EcoDrive Motors', 'EcoBlade X', 2023, 120.00, 500, 2000.00, 150.00, 10.00, 60000.00, '2023-05-15', 200.00, 4.50, 5, 'AWD', 6, 1, 95.00);
INSERT INTO `vehicles` VALUES (14, 'EcoDrive Motors', 'EcoBlade Z', 2023, 120.00, 500, 2000.00, 150.00, 10.00, 60000.00, '2023-05-15', 200.00, 4.50, 5, 'AWD', 6, 1, 95.00);
INSERT INTO `vehicles` VALUES (15, 'GreenDrive Inc.', 'EcoBlade X', 2023, 80.00, 400, 1800.00, 200.00, 8.00, 45000.00, '2023-01-10', 220.00, 5.00, 5, 'RWD', 5, 0, 90.00);
INSERT INTO `vehicles` VALUES (16, 'GreenDrive Inc.', 'EcoBlade Y', 2023, 85.00, 420, 1700.00, 180.00, 7.00, 42000.00, '2023-01-10', 210.00, 5.50, 5, 'FWD', 5, 0, 88.00);
INSERT INTO `vehicles` VALUES (17, 'GreenDrive Inc.', 'EcoBlade Z', 2023, 90.00, 450, 1750.00, 220.00, 7.50, 48000.00, '2023-01-10', 230.00, 4.80, 5, 'AWD', 6, 0, 92.00);
INSERT INTO `vehicles` VALUES (18, 'HeatBattery Tech', 'HeatBlade X', 2023, 95.00, 500, 2100.00, 250.00, 6.00, 75000.00, '2023-04-10', 250.00, 3.50, 5, 'AWD', 4, 1, 85.00);
INSERT INTO `vehicles` VALUES (19, 'GreenDrive Motors', 'ExtremeBlade X', 2023, 85.00, 450, 2000.00, 200.00, 7.00, 50000.00, '2023-03-10', 220.00, 4.00, 5, 'AWD', 5, 1, 90.00);
INSERT INTO `vehicles` VALUES (20, 'MountainDrive Co', 'PeakBlade X', 2023, 80.00, 380, 2200.00, 250.00, 8.00, 58000.00, '2023-06-01', 180.00, 5.50, 5, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (21, 'AlpineTech Motors', 'EcoSummit X', 2023, 75.00, 350, 2200.00, 180.00, 6.50, 48000.00, '2023-07-15', 180.00, 5.20, 5, 'AWD', 5, 1, 92.00);
INSERT INTO `vehicles` VALUES (22, 'UrbanDrive Motors', 'CityBlade Z', 2023, 60.00, 300, 1800.00, 150.00, 5.00, 38000.00, '2023-02-15', 180.00, 6.00, 5, 'FWD', 4, 1, 98.00);
INSERT INTO `vehicles` VALUES (23, 'UrbanDrive Motors', 'CityBlade Z', 2023, 60.00, 300, 1800.00, 150.00, 5.00, 38000.00, '2023-02-15', 180.00, 6.00, 5, 'FWD', 4, 1, 98.00);
INSERT INTO `vehicles` VALUES (24, 'UrbanDrive Motors', 'CityBlade Z', 2023, 60.00, 300, 1800.00, 150.00, 5.00, 38000.00, '2023-02-15', 180.00, 6.00, 5, 'FWD', 4, 1, 98.00);
INSERT INTO `vehicles` VALUES (30, 'UrbanDrive Motors', 'CityBlade Z', 2023, 60.00, 300, 1800.00, 150.00, 5.00, 38000.00, '2023-02-15', 180.00, 6.00, 5, 'FWD', 4, 1, 98.00);
INSERT INTO `vehicles` VALUES (31, 'UrbanDrive Motors', 'CityBlade Z', 2023, 60.00, 300, 1800.00, 150.00, 5.00, 38000.00, '2023-02-15', 180.00, 6.00, 5, 'FWD', 4, 1, 98.00);
INSERT INTO `vehicles` VALUES (32, 'UrbanDrive Motors', 'CityBlade Z', 2023, 60.00, 300, 1800.00, 150.00, 5.00, 38000.00, '2023-02-15', 180.00, 6.00, 5, 'FWD', 4, 1, 98.00);
INSERT INTO `vehicles` VALUES (33, 'ArcticDrive Co', 'FrostBlade Y', 2023, 75.00, 320, 2100.00, 200.00, 7.00, 52000.00, '2023-02-10', 210.00, 4.20, 5, 'AWD', 5, 1, 92.00);
INSERT INTO `vehicles` VALUES (34, 'EfficiencyTech Inc', 'EfficiencyDrain X', 2023, 75.00, 300, 2100.00, 180.00, 6.00, 48000.00, '2023-05-20', 190.00, 5.00, 5, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (35, 'MountainDrive Ltd', 'MountainBlade Z', 2023, 80.00, 380, 2200.00, 200.00, 7.00, 55000.00, '2023-09-01', 180.00, 5.00, 5, 'AWD', 5, 1, 90.00);
INSERT INTO `vehicles` VALUES (36, 'HeatBattery Inc', 'Overheat X', 2023, 70.00, 300, 2300.00, 220.00, 5.00, 62000.00, '2023-08-15', 240.00, 3.80, 4, 'AWD', 4, 1, 88.00);
INSERT INTO `vehicles` VALUES (37, 'SlopeTech Motors', 'GrowthBlade X', 2023, 80.00, 350, 2000.00, 180.00, 6.00, 50000.00, '2023-04-01', 200.00, 4.50, 5, 'AWD', 5, 1, 90.00);
INSERT INTO `vehicles` VALUES (38, 'HeatDrive Tech', 'HeatBlade Z', 2023, 75.00, 320, 2100.00, 190.00, 6.50, 53000.00, '2023-06-10', 210.00, 4.00, 5, 'RWD', 4, 1, 89.00);
INSERT INTO `vehicles` VALUES (39, 'WeekendDrive Co', 'WeekendBlade X', 2023, 80.00, 400, 1900.00, 180.00, 7.00, 47000.00, '2023-03-01', 200.00, 4.50, 5, 'FWD', 5, 1, 92.00);
INSERT INTO `vehicles` VALUES (40, 'WeekendDrive Inc', 'WeekendBlade Z', 2023, 75.00, 350, 1800.00, 170.00, 6.00, 42000.00, '2023-05-01', 190.00, 5.00, 5, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (41, 'AltitudeDrive Inc', 'PeakBlade Z', 2023, 80.00, 300, 2000.00, 180.00, 7.00, 50000.00, '2023-07-10', 180.00, 5.00, 5, 'AWD', 5, 1, 90.00);
INSERT INTO `vehicles` VALUES (42, 'GhostDrive Inc', 'PhantomBlade X', 2023, 20.00, 150, 1800.00, 150.00, 5.00, 35000.00, '2023-01-01', 180.00, 6.00, 5, 'FWD', 4, 0, 95.00);
INSERT INTO `vehicles` VALUES (43, 'GhostRider Motors', 'SpectreBlade X', 2023, 30.00, 200, 1900.00, 160.00, 5.50, 40000.00, '2023-03-15', 200.00, 5.50, 5, 'AWD', 5, 1, 98.00);
INSERT INTO `vehicles` VALUES (44, 'SnowPilot Motors', 'BlizzardBlade X', 2023, 90.00, 400, 2200.00, 250.00, 6.00, 75000.00, '2023-02-10', 250.00, 3.80, 5, 'AWD', 5, 1, 93.00);
INSERT INTO `vehicles` VALUES (45, 'StormDrive Co', 'RainBlade X', 2023, 80.00, 350, 2000.00, 200.00, 6.00, 50000.00, '2023-01-15', 210.00, 4.00, 5, 'AWD', 5, 1, 90.00);
INSERT INTO `vehicles` VALUES (46, 'OverheatDrive Inc', 'ThermoBlade X', 2023, 60.00, 300, 1900.00, 180.00, 5.00, 45000.00, '2023-04-01', 180.00, 5.00, 5, 'FWD', 4, 1, 88.00);
INSERT INTO `vehicles` VALUES (47, 'TimeViolation Motors', 'TimeBlade X', 2023, 75.00, 350, 1800.00, 170.00, 6.00, 48000.00, '2023-05-01', 200.00, 4.50, 5, 'AWD', 5, 1, 90.00);
INSERT INTO `vehicles` VALUES (48, 'WeatherDrive Inc', 'WeatherBlade X', 2023, 80.00, 400, 2000.00, 200.00, 6.00, 50000.00, '2023-06-01', 220.00, 4.50, 5, 'AWD', 5, 1, 92.00);
INSERT INTO `vehicles` VALUES (49, 'WeatherDrive Inc', 'WeatherBlade Y', 2023, 80.00, 400, 2000.00, 200.00, 6.00, 50000.00, '2023-06-01', 220.00, 4.50, 5, 'AWD', 5, 1, 92.00);
INSERT INTO `vehicles` VALUES (50, 'WeatherDrive Inc', 'WeatherBlade Z', 2023, 80.00, 400, 2000.00, 200.00, 6.00, 50000.00, '2023-06-01', 220.00, 4.50, 5, 'AWD', 5, 1, 92.00);
INSERT INTO `vehicles` VALUES (51, 'Workhorse Motors', 'WorkBlade X', 2023, 100.00, 500, 2000.00, 200.00, 8.00, 60000.00, '2023-01-01', 200.00, 5.00, 5, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (52, 'Workhorse Motors', 'WorkBlade Y', 2023, 100.00, 500, 2000.00, 200.00, 8.00, 60000.00, '2023-01-01', 200.00, 5.00, 5, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (53, 'Workhorse Motors', 'WorkBlade Z', 2023, 100.00, 500, 2000.00, 200.00, 8.00, 60000.00, '2023-01-01', 200.00, 5.00, 5, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (54, 'AllWeather Drive', 'StormMaster Z', 2023, 120.00, 650, 2300.00, 260.00, 6.50, 85000.00, '2023-09-01', 250.00, 3.20, 5, 'AWD', 6, 1, 92.00);
INSERT INTO `vehicles` VALUES (55, 'ExtremeDrive Tech', 'CycleBlade X', 2023, 80.00, 600, 1900.00, 200.00, 6.00, 70000.00, '2023-07-01', 220.00, 4.00, 5, 'AWD', 5, 1, 85.00);
INSERT INTO `vehicles` VALUES (56, 'HybridDrive Co', 'HybridBlade X', 2023, 45.00, 120, 1700.00, 150.00, 4.50, 42000.00, '2023-05-10', 180.00, 6.50, 5, 'PHEV', 5, 0, 95.00);
INSERT INTO `vehicles` VALUES (57, 'Tesla', 'Model S', 2019, 100.00, 600, 2100.00, 200.00, 8.00, 79990.00, '2019-01-15', 250.00, 2.30, 5, 'AWD', 4, 1, 90.00);
INSERT INTO `vehicles` VALUES (58, 'SunDrive Inc', 'HeatBlade X', 2022, 85.00, 450, 2000.00, 180.00, 7.00, 65000.00, '2022-05-20', 220.00, 4.00, 5, 'FWD', 5, 0, 95.00);
INSERT INTO `vehicles` VALUES (59, 'SnowDrive Inc', 'ArcticBlade X', 2022, 85.00, 380, 2000.00, 180.00, 7.00, 50000.00, '2022-04-10', 200.00, 4.80, 5, 'AWD', 5, 1, 92.00);
INSERT INTO `vehicles` VALUES (60, 'SnowDrive Inc', 'ArcticBlade Y', 2021, 85.00, 380, 2000.00, 180.00, 7.00, 50000.00, '2021-05-15', 200.00, 4.80, 5, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (61, 'MountainDrive Ltd', 'SummitBlade Z', 2022, 75.00, 300, 2200.00, 210.00, 6.50, 58000.00, '2022-06-15', 190.00, 4.20, 5, 'AWD', 5, 1, 89.00);
INSERT INTO `vehicles` VALUES (62, 'AlpineTech Inc', 'PeakBlade Y', 2021, 80.00, 350, 2000.00, 190.00, 7.00, 62000.00, '2021-08-01', 200.00, 4.50, 5, 'RWD', 6, 0, 93.00);
INSERT INTO `vehicles` VALUES (63, 'ValleyDrive Co', 'ValleyBlade X', 2020, 60.00, 250, 1800.00, 160.00, 5.00, 40000.00, '2020-03-10', 180.00, 5.00, 5, 'FWD', 4, 1, 85.00);
INSERT INTO `vehicles` VALUES (64, 'HighwayDrive Inc', 'HighwayMaster X', 2023, 85.00, 450, 2100.00, 200.00, 6.00, 65000.00, '2023-01-01', 220.00, 4.00, 5, 'AWD', 5, 1, 95.00);
INSERT INTO `vehicles` VALUES (65, 'QuantumDrive Inc', 'QBlade X', 2023, 200.00, 1000, 2500.00, 501.00, 2.00, 150000.00, '2023-08-01', 300.00, 2.00, 4, 'AWD', 7, 1, 98.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
