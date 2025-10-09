/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : ship

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 23:25:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Crew
-- ----------------------------
DROP TABLE IF EXISTS `Crew`;
CREATE TABLE `Crew` (
  `Crew_ID` int NOT NULL AUTO_INCREMENT COMMENT '船员唯一标识',
  `First_Name` varchar(50) NOT NULL COMMENT '名字',
  `Last_Name` varchar(50) NOT NULL COMMENT '姓氏',
  `Gender` enum('Male','Female','Other') NOT NULL COMMENT '性别',
  `Date_Of_Birth` date NOT NULL COMMENT '出生日期',
  `Nationality` varchar(100) NOT NULL COMMENT '国籍',
  `Passport_Number` varchar(50) NOT NULL COMMENT '护照号码',
  `Ranks` varchar(50) NOT NULL COMMENT '船员职位（船长、大副等）',
  `License_Number` varchar(50) NOT NULL COMMENT '船员执照号码',
  `Experience_Years` int NOT NULL COMMENT '工作经验（年）',
  `Contact_Number` varchar(20) NOT NULL COMMENT '联系电话',
  `Email` varchar(100) DEFAULT NULL COMMENT '电子邮件',
  `Address` varchar(255) NOT NULL COMMENT '地址',
  `Ship_ID` int DEFAULT NULL COMMENT '所属船舶ID（外键）',
  `Status` enum('Active','Inactive','On Leave') NOT NULL COMMENT '船员状态',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Crew_ID`),
  KEY `Ship_ID` (`Ship_ID`),
  CONSTRAINT `Crew_ibfk_1` FOREIGN KEY (`Ship_ID`) REFERENCES `Ship` (`Ship_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='船员信息表';

-- ----------------------------
-- Table structure for Port
-- ----------------------------
DROP TABLE IF EXISTS `Port`;
CREATE TABLE `Port` (
  `Port_ID` int NOT NULL AUTO_INCREMENT COMMENT '港口唯一标识',
  `Port_Name` varchar(100) NOT NULL COMMENT '港口名称',
  `Country` varchar(100) NOT NULL COMMENT '所在国家',
  `City` varchar(100) NOT NULL COMMENT '所在城市',
  `Latitude` decimal(9,6) NOT NULL COMMENT '纬度',
  `Longitude` decimal(9,6) NOT NULL COMMENT '经度',
  `Port_Type` enum('Commercial','Fishing','Military','Recreational') NOT NULL COMMENT '港口类型',
  `Berth_Capacity` int NOT NULL COMMENT '泊位容量',
  `Max_Draft` decimal(10,2) NOT NULL COMMENT '最大吃水深度（米）',
  `Contact_Number` varchar(20) NOT NULL COMMENT '联系电话',
  `Email` varchar(100) DEFAULT NULL COMMENT '电子邮件',
  `Website` varchar(255) DEFAULT NULL COMMENT '官方网站',
  `Status` enum('Operational','Under Construction','Closed') NOT NULL COMMENT '港口状态',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Port_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='港口信息表';

-- ----------------------------
-- Table structure for Ship
-- ----------------------------
DROP TABLE IF EXISTS `Ship`;
CREATE TABLE `Ship` (
  `Ship_ID` int NOT NULL AUTO_INCREMENT COMMENT '船舶唯一标识',
  `Ship_Name` varchar(100) NOT NULL COMMENT '船舶名称',
  `Ship_Type` varchar(50) NOT NULL COMMENT '船舶类型（货船、客船等）',
  `IMO_Number` varchar(20) NOT NULL COMMENT 'IMO编号',
  `Flag_Country` varchar(100) NOT NULL COMMENT '船旗国',
  `Build_Date` date NOT NULL COMMENT '建造日期',
  `Gross_Tonnage` decimal(10,2) NOT NULL COMMENT '总吨位',
  `Net_Tonnage` decimal(10,2) NOT NULL COMMENT '净吨位',
  `Length` decimal(10,2) NOT NULL COMMENT '船长（米）',
  `Width` decimal(10,2) NOT NULL COMMENT '船宽（米）',
  `Draft` decimal(10,2) NOT NULL COMMENT '吃水深度（米）',
  `Engine_Power` decimal(10,2) NOT NULL COMMENT '发动机功率（千瓦）',
  `Max_Speed` decimal(10,2) NOT NULL COMMENT '最大航速（节）',
  `Crew_Capacity` int NOT NULL COMMENT '船员容量',
  `Passenger_Capacity` int DEFAULT NULL COMMENT '乘客容量（如果是客船）',
  `Status` enum('Active','Inactive','Under Maintenance') NOT NULL COMMENT '船舶状态',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Ship_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='船舶信息表';

-- ----------------------------
-- Table structure for Voyage_Plan
-- ----------------------------
DROP TABLE IF EXISTS `Voyage_Plan`;
CREATE TABLE `Voyage_Plan` (
  `Voyage_ID` int NOT NULL AUTO_INCREMENT COMMENT '航行计划唯一标识',
  `Ship_ID` int NOT NULL COMMENT '船舶ID（外键）',
  `Departure_Port_ID` int NOT NULL COMMENT '出发港口ID（外键）',
  `Arrival_Port_ID` int NOT NULL COMMENT '到达港口ID（外键）',
  `Departure_Time` datetime NOT NULL COMMENT '出发时间',
  `Arrival_Time` datetime NOT NULL COMMENT '到达时间',
  `Cargo_Type` varchar(100) DEFAULT NULL COMMENT '货物类型（如果是货船）',
  `Cargo_Weight` decimal(10,2) DEFAULT NULL COMMENT '货物重量（吨）',
  `Passenger_Count` int DEFAULT NULL COMMENT '乘客数量（如果是客船）',
  `Voyage_Status` enum('Scheduled','In Progress','Completed','Cancelled') NOT NULL COMMENT '航行状态',
  `Notes` text COMMENT '备注',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Voyage_ID`),
  KEY `Ship_ID` (`Ship_ID`),
  KEY `Departure_Port_ID` (`Departure_Port_ID`),
  KEY `Arrival_Port_ID` (`Arrival_Port_ID`),
  CONSTRAINT `Voyage_Plan_ibfk_1` FOREIGN KEY (`Ship_ID`) REFERENCES `Ship` (`Ship_ID`),
  CONSTRAINT `Voyage_Plan_ibfk_2` FOREIGN KEY (`Departure_Port_ID`) REFERENCES `Port` (`Port_ID`),
  CONSTRAINT `Voyage_Plan_ibfk_3` FOREIGN KEY (`Arrival_Port_ID`) REFERENCES `Port` (`Port_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='航行计划表';

SET FOREIGN_KEY_CHECKS = 1;
