/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : AirCraft

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 10:57:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aircraft
-- ----------------------------
DROP TABLE IF EXISTS `aircraft`;
CREATE TABLE `aircraft` (
  `Aircraft_ID` int NOT NULL COMMENT '飞机的唯一标识符（主键）',
  `Aircraft` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '飞机的名称或型号（例如：Robinson R-22）',
  `Description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '飞机的简要描述（例如：Light utility helicopter）',
  `Max_Gross_Weight` float NOT NULL COMMENT '飞机的最大总重量（例如：1,370 lb (635 kg)）',
  `Total_Disk_Area` float NOT NULL COMMENT '飞机的总旋翼盘面积（例如：497 ft² (46.2 m²)）',
  `Max_Disk_Loading` float NOT NULL COMMENT '飞机的最大旋翼盘载荷（例如：2.6 lb/ft² (14 kg/m²)）',
  PRIMARY KEY (`Aircraft_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of aircraft
-- ----------------------------
BEGIN;
INSERT INTO `aircraft` VALUES (1, 'Robinson R-22', 'Light utility helicopter', 635, 46.2, 14);
INSERT INTO `aircraft` VALUES (2, 'Bell 206B3 JetRanger', 'Turboshaft utility helicopter', 1451, 81.1, 18);
INSERT INTO `aircraft` VALUES (3, 'CH-47D Chinook', 'Tandem rotor helicopter', 22680, 526, 43);
INSERT INTO `aircraft` VALUES (4, 'Mil Mi-26', 'Heavy-lift helicopter', 56000, 789, 71);
INSERT INTO `aircraft` VALUES (5, 'CH-53E Super Stallion', 'Heavy-lift helicopter', 33300, 460, 72);
INSERT INTO `aircraft` VALUES (6, 'Robinson R-22', '轻型双座直升机', 1370, 497, 2.6);
INSERT INTO `aircraft` VALUES (7, 'Bell 206 JetRanger', '经典单发多用途直升机', 3200, 800, 4);
INSERT INTO `aircraft` VALUES (8, 'Custom Helicopter', '实验型号', 1000000, 1000000, 1);
INSERT INTO `aircraft` VALUES (1001, 'Robinson R-22', 'Light utility helicopter', 635, 46.2, 14);
COMMIT;

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `Airport_ID` int NOT NULL COMMENT '机场的唯一标识符（主键）',
  `Airport_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机场的名称（例如：London Heathrow）',
  `Total_Passengers` float DEFAULT NULL COMMENT '机场的总乘客量（例如：67054745）',
  `Change_2019` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '与2019年相比的乘客量变化百分比（例如：1.5%）',
  `International_Passengers` float DEFAULT NULL COMMENT '国际乘客量（例如：61344438）',
  `Domestic_Passengers` float DEFAULT NULL COMMENT '国内乘客量（例如：5562516）',
  `Transit_Passengers` float DEFAULT NULL COMMENT '中转乘客量（例如：147791）',
  `Aircraft_Movements` float DEFAULT NULL COMMENT '飞机起降次数（例如：478693）',
  `Freight_Tonnes` float DEFAULT NULL COMMENT '货运量（以公吨为单位，例如：1397054）',
  PRIMARY KEY (`Airport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of airport
-- ----------------------------
BEGIN;
INSERT INTO `airport` VALUES (1, 'London Heathrow', 67054700, '1.5%', 61344400, 5562520, 147791, 478693, 1397050);
INSERT INTO `airport` VALUES (2, 'London Gatwick', 34205900, '2.9%', 30431100, 3730960, 43873, 263653, 107702);
INSERT INTO `airport` VALUES (3, 'London Stansted', 22360400, '6.0%', 19996900, 2343430, 19989, 193282, 197738);
INSERT INTO `airport` VALUES (4, 'Manchester', 21219200, '4.0%', 18119200, 2943720, 156246, 204610, 141781);
INSERT INTO `airport` VALUES (5, 'London Luton', 10180700, '2.6%', 8853220, 1320680, 6832, 117859, 40518);
INSERT INTO `airport` VALUES (6, 'Birmingham Airport', 9627590, '4.3%', 8105160, 1471540, 50889, 112227, 12192);
INSERT INTO `airport` VALUES (7, 'Edinburgh', 9006700, '0.5%', 3711140, 5281040, 14524, 125550, 12418);
INSERT INTO `airport` VALUES (8, 'Glasgow International', 8178890, '7.0%', 3943140, 4192120, 43631, 100087, 3546);
INSERT INTO `airport` VALUES (9, 'Bristol', 6267110, '5.7%', 5057050, 1171600, 38458, 76517, 3);
INSERT INTO `airport` VALUES (10, 'East Midlands', 5620670, '3.8%', 4870180, 746094, 4395, 93038, 261507);
COMMIT;

-- ----------------------------
-- Table structure for airport_aircraft
-- ----------------------------
DROP TABLE IF EXISTS `airport_aircraft`;
CREATE TABLE `airport_aircraft` (
  `ID` int DEFAULT NULL COMMENT '关联记录的唯一标识符',
  `Airport_ID` int NOT NULL COMMENT '机场的唯一标识符（外键，引用 airport 表的 Airport_ID）',
  `Aircraft_ID` int NOT NULL COMMENT '飞机的唯一标识符（外键，引用 aircraft 表的 Aircraft_ID）',
  PRIMARY KEY (`Airport_ID`,`Aircraft_ID`),
  KEY `Aircraft_ID` (`Aircraft_ID`),
  CONSTRAINT `airport_aircraft_ibfk_1` FOREIGN KEY (`Airport_ID`) REFERENCES `airport` (`Airport_ID`),
  CONSTRAINT `airport_aircraft_ibfk_2` FOREIGN KEY (`Aircraft_ID`) REFERENCES `aircraft` (`Aircraft_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of airport_aircraft
-- ----------------------------
BEGIN;
INSERT INTO `airport_aircraft` VALUES (1, 1, 1);
INSERT INTO `airport_aircraft` VALUES (3, 1, 2);
INSERT INTO `airport_aircraft` VALUES (2, 2, 1);
INSERT INTO `airport_aircraft` VALUES (1, 6, 5);
INSERT INTO `airport_aircraft` VALUES (4, 9, 3);
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
-- Table structure for match
-- ----------------------------
DROP TABLE IF EXISTS `match`;
CREATE TABLE `match` (
  `Round` int NOT NULL COMMENT '比赛的轮次（主键）',
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '比赛的地点（例如：Mina'' Zayid, Abu Dhabi）',
  `Country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '比赛所在的国家（例如：United Arab Emirates）',
  `Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '比赛的日期（例如：2023-03-26）',
  `Fastest_Qualifying` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '最快排位赛的飞行员姓名（例如：Hannes Arch）',
  `Winning_Pilot` int DEFAULT NULL COMMENT '获胜飞行员的唯一标识符（外键，引用 pilot 表的 Pilot_Id）',
  `Winning_Aircraft` int DEFAULT NULL COMMENT '获胜飞机的唯一标识符（外键，引用 aircraft 表的 Aircraft_ID）',
  PRIMARY KEY (`Round`),
  KEY `Winning_Pilot` (`Winning_Pilot`),
  KEY `Winning_Aircraft` (`Winning_Aircraft`),
  CONSTRAINT `match_ibfk_1` FOREIGN KEY (`Winning_Pilot`) REFERENCES `pilot` (`Pilot_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of match
-- ----------------------------
BEGIN;
INSERT INTO `match` VALUES (1, 'Mina\' Zayid , Abu Dhabi', 'United Arab Emirates', 'March 26–27', 'Hannes Arch', 1, 1);
INSERT INTO `match` VALUES (2, 'Swan River , Perth', 'Australia', 'April 17–18', 'Paul Bonhomme', 4, 6);
INSERT INTO `match` VALUES (3, 'Flamengo Beach , Rio de Janeiro', 'Brazil', 'May 8–9', 'Hannes Arch', 6, 2);
INSERT INTO `match` VALUES (4, 'Windsor , Ontario', 'Canada', 'June 5–6', 'Nigel Lamb', 4, 4);
INSERT INTO `match` VALUES (5, 'New York City', 'United States', 'June 19–20', 'Hannes Arch', 9, 3);
INSERT INTO `match` VALUES (6, 'EuroSpeedway Lausitz', 'Germany', 'August 7–8', 'Paul Bonhomme', 2, 4);
INSERT INTO `match` VALUES (7, 'River Danube , Budapest', 'Hungary', 'Cancelled', 'Cancelled', 6, 5);
COMMIT;

-- ----------------------------
-- Table structure for pilot
-- ----------------------------
DROP TABLE IF EXISTS `pilot`;
CREATE TABLE `pilot` (
  `Pilot_ID` int NOT NULL COMMENT '飞行员的唯一标识符（主键）',
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '飞行员的全名（例如：Prof. Zackery Collins）',
  `Age` int NOT NULL COMMENT '飞行员的年龄（例如：23）',
  PRIMARY KEY (`Pilot_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pilot
-- ----------------------------
BEGIN;
INSERT INTO `pilot` VALUES (1, 'Prof. Zackery Collins', 23);
INSERT INTO `pilot` VALUES (2, 'Katheryn Gorczany IV', 20);
INSERT INTO `pilot` VALUES (3, 'Mr. Cristian Halvorson II', 23);
INSERT INTO `pilot` VALUES (4, 'Ayana Spencer', 25);
INSERT INTO `pilot` VALUES (5, 'Ellen Ledner III', 31);
INSERT INTO `pilot` VALUES (6, 'Elisha Hickle V', 37);
INSERT INTO `pilot` VALUES (7, 'Dr. Jade Bradtke V', 26);
INSERT INTO `pilot` VALUES (8, 'Winnifred Boyle', 30);
INSERT INTO `pilot` VALUES (9, 'Della Lindgren', 29);
INSERT INTO `pilot` VALUES (10, 'Maxwell Graham', 26);
INSERT INTO `pilot` VALUES (11, 'Blaise Muller', 33);
INSERT INTO `pilot` VALUES (12, 'Baylee Steuber', 30);
INSERT INTO `pilot` VALUES (1001, 'Prof. Zackery Collina', 23);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
