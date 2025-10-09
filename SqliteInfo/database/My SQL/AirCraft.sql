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

 Date: 27/01/2025 17:18:47
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
  CONSTRAINT `match_ibfk_1` FOREIGN KEY (`Winning_Pilot`) REFERENCES `pilot` (`Pilot_ID`),
  CONSTRAINT `match_ibfk_2` FOREIGN KEY (`Winning_Aircraft`) REFERENCES `pilot` (`Pilot_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

SET FOREIGN_KEY_CHECKS = 1;
