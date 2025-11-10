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

 Date: 11/08/2025 12:30:19
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
-- Records of Crew
-- ----------------------------
BEGIN;
INSERT INTO `Crew` VALUES (1, 'John', 'Smith', 'Male', '1980-05-15', 'United States', 'US12345678', 'Captain', 'CAP123456', 20, '+1-555-1234567', 'john.smith@example.com', '123 Main St, New York, USA', 1, 'Active', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `Crew` VALUES (2, 'Maria', 'Garcia', 'Female', '1985-08-20', 'Spain', 'ES87654321', 'First Officer', 'FO123456', 15, '+34-555-987654', 'maria.garcia@example.com', '456 Calle Mayor, Madrid, Spain', 2, 'Active', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `Crew` VALUES (3, 'Li', 'Wei', 'Male', '1990-03-10', 'China', 'CN12345678', 'Chief Engineer', 'CE123456', 10, '+86-13800138000', 'li.wei@example.com', '789 Beijing Road, Shanghai, China', 3, 'Active', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `Crew` VALUES (4, 'Anna', 'Müller', 'Female', '1988-11-25', 'Germany', 'DE98765432', 'Second Officer', 'SO123456', 8, '+49-555-123456', 'anna.muller@example.com', '101 Berliner Str, Berlin, Germany', 4, 'Active', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `Crew` VALUES (5, 'James', 'Brown', 'Male', '1995-07-05', 'United Kingdom', 'GB12345678', 'Deck Cadet', 'DC123456', 3, '+44-555-123456', 'james.brown@example.com', '202 Oxford St, London, UK', 5, 'On Leave', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
COMMIT;

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
-- Records of Port
-- ----------------------------
BEGIN;
INSERT INTO `Port` VALUES (1, 'Port of Shanghai', 'China', 'Shanghai', 31.230416, 121.473701, 'Commercial', 200, 15.00, '+86-21-12345678', 'info@shanghaiport.com', 'https://www.shanghaiport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `Port` VALUES (2, 'Port of Rotterdam', 'Netherlands', 'Rotterdam', 51.922500, 4.479167, 'Commercial', 150, 24.00, '+31-10-1234567', 'info@rotterdamport.com', 'https://www.rotterdamport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `Port` VALUES (3, 'Port of Singapore', 'Singapore', 'Singapore', 1.290270, 103.851959, 'Commercial', 250, 18.00, '+65-12345678', 'info@singaporeport.com', 'https://www.singaporeport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `Port` VALUES (4, 'Port of Los Angeles', 'United States', 'Los Angeles', 33.716677, -118.272369, 'Commercial', 100, 16.00, '+1-555-1234567', 'info@laport.com', 'https://www.laport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `Port` VALUES (5, 'Port of Sydney', 'Australia', 'Sydney', -33.858667, 151.214000, 'Recreational', 50, 12.00, '+61-2-12345678', 'info@sydneyport.com', 'https://www.sydneyport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
COMMIT;

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
-- Records of Ship
-- ----------------------------
BEGIN;
INSERT INTO `Ship` VALUES (1, 'Ever Given', 'Container Ship', '9811000', 'Panama', '2018-05-25', 220940.00, 99999.00, 399.94, 58.80, 16.02, 59500.00, 22.80, 25, NULL, 'Active', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `Ship` VALUES (2, 'Queen Mary 2', 'Passenger Ship', '9241061', 'Bermuda', '2003-12-26', 148528.00, 76000.00, 345.03, 41.00, 10.00, 86400.00, 30.00, 1253, 2620, 'Active', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `Ship` VALUES (3, 'Polar Star', 'Icebreaker', '7382902', 'United States', '1976-01-01', 13000.00, 3900.00, 122.00, 25.00, 9.10, 60000.00, 18.00, 150, NULL, 'Active', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `Ship` VALUES (4, 'Blue Marlin', 'Semi-Submersible', '9229825', 'Norway', '2000-01-01', 76403.00, 22832.00, 217.00, 42.00, 13.30, 12640.00, 14.50, 60, NULL, 'Active', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `Ship` VALUES (5, 'Costa Concordia', 'Cruise Ship', '9320544', 'Italy', '2005-07-02', 114147.00, 85666.00, 290.20, 35.50, 8.20, 75600.00, 23.00, 1100, 3780, 'Inactive', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
COMMIT;

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

-- ----------------------------
-- Records of Voyage_Plan
-- ----------------------------
BEGIN;
INSERT INTO `Voyage_Plan` VALUES (1, 1, 1, 2, '2023-10-01 08:00:00', '2023-10-15 18:00:00', 'Containers', 50000.00, NULL, 'Scheduled', 'Regular cargo voyage', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `Voyage_Plan` VALUES (2, 2, 3, 4, '2023-10-02 10:00:00', '2023-10-10 12:00:00', NULL, NULL, 2000, 'Scheduled', 'Passenger cruise', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `Voyage_Plan` VALUES (3, 3, 2, 5, '2023-10-03 12:00:00', '2023-10-20 14:00:00', 'Oil', 100000.00, NULL, 'Scheduled', 'Oil transport', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `Voyage_Plan` VALUES (4, 4, 4, 1, '2023-10-04 14:00:00', '2023-10-12 16:00:00', 'Heavy Machinery', 30000.00, NULL, 'Scheduled', 'Special cargo', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `Voyage_Plan` VALUES (5, 5, 5, 3, '2023-10-05 16:00:00', '2023-10-18 20:00:00', NULL, NULL, 1500, 'Scheduled', 'Passenger cruise', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
