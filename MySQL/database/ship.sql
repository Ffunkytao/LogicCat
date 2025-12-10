/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : ship

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:28:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crew
-- ----------------------------
DROP TABLE IF EXISTS `crew`;
CREATE TABLE `crew`  (
  `Crew_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '船员唯一标识',
  `First_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名字',
  `Last_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓氏',
  `Gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `Date_Of_Birth` date NOT NULL COMMENT '出生日期',
  `Nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '国籍',
  `Passport_Number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '护照号码',
  `Ranks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船员职位（船长、大副等）',
  `License_Number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船员执照号码',
  `Experience_Years` int(0) NOT NULL COMMENT '工作经验（年）',
  `Contact_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `Ship_ID` int(0) NULL DEFAULT NULL COMMENT '所属船舶ID（外键）',
  `Status` enum('Active','Inactive','On Leave') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船员状态',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Crew_ID`) USING BTREE,
  INDEX `Ship_ID`(`Ship_ID`) USING BTREE,
  CONSTRAINT `Crew_ibfk_1` FOREIGN KEY (`Ship_ID`) REFERENCES `ship` (`Ship_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '船员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crew
-- ----------------------------
INSERT INTO `crew` VALUES (1, 'John', 'Smith', 'Male', '1980-05-15', 'United States', 'US12345678', 'Captain', 'CAP123456', 20, '+1-555-1234567', 'john.smith@example.com', '123 Main St, New York, USA', 1, 'Active', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `crew` VALUES (2, 'Maria', 'Garcia', 'Female', '1985-08-20', 'Spain', 'ES87654321', 'First Officer', 'FO123456', 15, '+34-555-987654', 'maria.garcia@example.com', '456 Calle Mayor, Madrid, Spain', 2, 'Active', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `crew` VALUES (3, 'Li', 'Wei', 'Male', '1990-03-10', 'China', 'CN12345678', 'Chief Engineer', 'CE123456', 10, '+86-13800138000', 'li.wei@example.com', '789 Beijing Road, Shanghai, China', 3, 'Active', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `crew` VALUES (4, 'Anna', 'Müller', 'Female', '1988-11-25', 'Germany', 'DE98765432', 'Second Officer', 'SO123456', 8, '+49-555-123456', 'anna.muller@example.com', '101 Berliner Str, Berlin, Germany', 4, 'Active', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `crew` VALUES (5, 'James', 'Brown', 'Male', '1995-07-05', 'United Kingdom', 'GB12345678', 'Deck Cadet', 'DC123456', 3, '+44-555-123456', 'james.brown@example.com', '202 Oxford St, London, UK', 5, 'On Leave', '2025-01-23 22:33:13', '2025-01-23 22:33:13');
INSERT INTO `crew` VALUES (10, 'David', 'Walker', 'Male', '1985-04-15', 'Canada', 'CA12345678', 'Able Seaman', 'AS123456', 10, '+1-555-7778888', 'david.walker@example.com', '500 Ocean Ave, Vancouver, Canada', 9999, 'Active', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `crew` VALUES (200, 'Alice', 'Morgan', 'Female', '1987-03-15', 'United Kingdom', 'UK20000001', 'Captain', 'CAP200001', 15, '+44-20-7000001', 'alice.morgan@example.com\r\n', '1 Harbor St, London, UK', 99901, 'Active', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `crew` VALUES (201, 'Brian', 'Lopez', 'Male', '1990-07-21', 'Spain', 'ES20000002', 'First Mate', 'FM200002', 10, '+34-91-7000002', 'brian.lopez@example.com\r\n', '2 Dock Rd, Madrid, Spain', 99902, 'Active', '2025-02-01 12:05:00', '2025-02-01 12:05:00');
INSERT INTO `crew` VALUES (202, 'Chen', 'Hao', 'Male', '1985-11-30', 'China', 'CN20000003', 'Engineer', 'ENG200003', 12, '+86-21-7000003', 'chen.hao@example.com\r\n', '3 Port Ave, Shanghai, China', 99903, 'Active', '2025-02-01 12:10:00', '2025-02-01 12:10:00');

-- ----------------------------
-- Table structure for port
-- ----------------------------
DROP TABLE IF EXISTS `port`;
CREATE TABLE `port`  (
  `Port_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '港口唯一标识',
  `Port_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '港口名称',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所在国家',
  `City` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所在城市',
  `Latitude` decimal(9, 6) NOT NULL COMMENT '纬度',
  `Longitude` decimal(9, 6) NOT NULL COMMENT '经度',
  `Port_Type` enum('Commercial','Fishing','Military','Recreational') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '港口类型',
  `Berth_Capacity` int(0) NOT NULL COMMENT '泊位容量',
  `Max_Draft` decimal(10, 2) NOT NULL COMMENT '最大吃水深度（米）',
  `Contact_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '官方网站',
  `Status` enum('Operational','Under Construction','Closed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '港口状态',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Port_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 601 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '港口信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of port
-- ----------------------------
INSERT INTO `port` VALUES (1, 'Port of Shanghai', 'China', 'Shanghai', 31.230416, 121.473701, 'Commercial', 200, 15.00, '+86-21-12345678', 'info@shanghaiport.com', 'https://www.shanghaiport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `port` VALUES (2, 'Port of Rotterdam', 'Netherlands', 'Rotterdam', 51.922500, 4.479167, 'Commercial', 150, 24.00, '+31-10-1234567', 'info@rotterdamport.com', 'https://www.rotterdamport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `port` VALUES (3, 'Port of Singapore', 'Singapore', 'Singapore', 1.290270, 103.851959, 'Commercial', 250, 18.00, '+65-12345678', 'info@singaporeport.com', 'https://www.singaporeport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `port` VALUES (4, 'Port of Los Angeles', 'United States', 'Los Angeles', 33.716677, -118.272369, 'Commercial', 100, 16.00, '+1-555-1234567', 'info@laport.com', 'https://www.laport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `port` VALUES (5, 'Port of Sydney', 'Australia', 'Sydney', -33.858667, 151.214000, 'Recreational', 50, 12.00, '+61-2-12345678', 'info@sydneyport.com', 'https://www.sydneyport.com', 'Operational', '2025-01-23 22:33:28', '2025-01-23 22:33:28');
INSERT INTO `port` VALUES (11, 'Port of Global Hub', 'United Arab Emirates', 'Dubai', 25.255000, 55.308000, 'Commercial', 120, 18.00, '+971-4-0000001', 'info@globalhubport.ae\r\n', 'https://www.globalhubport.ae\r\n', 'Operational', '2025-02-01 15:00:00', '2025-02-01 15:00:00');
INSERT INTO `port` VALUES (12, 'Port of Global Hub', 'United Arab Emirates', 'Dubai', 25.255000, 55.308000, 'Commercial', 120, 18.00, '+971-4-0000001', 'info@globalhubport.ae\r\n', 'https://www.globalhubport.ae\r\n', 'Operational', '2025-02-01 15:00:00', '2025-02-01 15:00:00');
INSERT INTO `port` VALUES (200, 'Port of Valencia', 'Spain', 'Valencia', 39.469750, -0.377390, 'Commercial', 80, 16.00, '+34-96-7000001', 'info@valenciaport.com\r\n', 'https://www.valenciaport.com\r\n', 'Operational', '2025-02-01 12:15:00', '2025-02-01 12:15:00');
INSERT INTO `port` VALUES (201, 'Port of Honolulu', 'United States', 'Honolulu', 21.306944, -157.858333, 'Recreational', 40, 10.50, '+1-808-7000002', 'info@honoluluport.com\r\n', 'https://www.honoluluport.com\r\n', 'Operational', '2025-02-01 12:20:00', '2025-02-01 12:20:00');
INSERT INTO `port` VALUES (300, 'Port of Reykjavik', 'Iceland', 'Reykjavik', 64.146600, -21.942600, 'Commercial', 20, 11.00, '+354-555-3000', 'info@reykjavikport.is\r\n', 'https://www.reykjavikport.is\r\n', 'Operational', '2025-02-01 13:00:00', '2025-02-01 13:00:00');
INSERT INTO `port` VALUES (301, 'Port of Bergen', 'Norway', 'Bergen', 60.391300, 5.322100, 'Recreational', 30, 12.50, '+47-55-300001', 'info@bergenport.no\r\n', 'https://www.bergenport.no\r\n', 'Operational', '2025-02-01 13:05:00', '2025-02-01 13:05:00');
INSERT INTO `port` VALUES (400, 'Port of Test Harbor', 'Testland', 'Test City', 10.000000, 20.000000, 'Commercial', 50, 15.00, '+1-000-0000000', 'info@testharbor.com', 'https://www.testharbor.com', 'Operational', '2025-02-01 14:10:00', '2025-02-01 14:10:00');
INSERT INTO `port` VALUES (500, 'Port of Deep Harbor', 'International Waters', 'Deep Harbor City', 0.000000, 0.000000, 'Commercial', 100, 1000.00, '+1-000-0000001', 'info@deepharborport.com\r\n', 'https://www.deepharborport.com\r\n', 'Operational', '2025-02-01 15:05:00', '2025-02-01 15:05:00');
INSERT INTO `port` VALUES (501, 'Port of Deep Harbor', 'International Waters', 'Deep Harbor City', 0.000000, 0.000000, 'Commercial', 100, 1000.00, '+1-000-0000001', 'info@deepharborport.com\r\n', 'https://www.deepharborport.com\r\n', 'Operational', '2025-02-01 15:05:00', '2025-02-01 15:05:00');
INSERT INTO `port` VALUES (600, 'Port of Ultra Deep', 'International Waters', 'Deep Ocean City', 0.000000, 0.000000, 'Commercial', 200, 1000.00, '+1-000-6000000', 'info@ultradeepport.com', 'https://www.ultradeepport.com', 'Operational', '2025-02-02 12:00:00', '2025-02-02 12:00:00');

-- ----------------------------
-- Table structure for ship
-- ----------------------------
DROP TABLE IF EXISTS `ship`;
CREATE TABLE `ship`  (
  `Ship_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '船舶唯一标识',
  `Ship_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船舶名称',
  `Ship_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船舶类型（货船、客船等）',
  `IMO_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'IMO编号',
  `Flag_Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船旗国',
  `Build_Date` date NOT NULL COMMENT '建造日期',
  `Gross_Tonnage` decimal(10, 2) NOT NULL COMMENT '总吨位',
  `Net_Tonnage` decimal(10, 2) NOT NULL COMMENT '净吨位',
  `Length` decimal(10, 2) NOT NULL COMMENT '船长（米）',
  `Width` decimal(10, 2) NOT NULL COMMENT '船宽（米）',
  `Draft` decimal(10, 2) NOT NULL COMMENT '吃水深度（米）',
  `Engine_Power` decimal(10, 2) NOT NULL COMMENT '发动机功率（千瓦）',
  `Max_Speed` decimal(10, 2) NOT NULL COMMENT '最大航速（节）',
  `Crew_Capacity` int(0) NOT NULL COMMENT '船员容量',
  `Passenger_Capacity` int(0) NULL DEFAULT NULL COMMENT '乘客容量（如果是客船）',
  `Status` enum('Active','Inactive','Under Maintenance') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船舶状态',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Ship_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '船舶信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ship
-- ----------------------------
INSERT INTO `ship` VALUES (1, 'Ever Given', 'Container Ship', '9811000', 'Panama', '2018-05-25', 220940.00, 99999.00, 399.94, 58.80, 16.02, 59500.00, 22.80, 25, NULL, 'Active', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `ship` VALUES (2, 'Queen Mary 2', 'Passenger Ship', '9241061', 'Bermuda', '2003-12-26', 148528.00, 76000.00, 345.03, 41.00, 10.00, 86400.00, 30.00, 1253, 2620, 'Active', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `ship` VALUES (3, 'Polar Star', 'Icebreaker', '7382902', 'United States', '1976-01-01', 13000.00, 3900.00, 122.00, 25.00, 9.10, 60000.00, 18.00, 150, NULL, 'Active', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `ship` VALUES (4, 'Blue Marlin', 'Semi-Submersible', '9229825', 'Norway', '2000-01-01', 76403.00, 22832.00, 217.00, 42.00, 13.30, 12640.00, 14.50, 60, NULL, 'Active', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `ship` VALUES (5, 'Costa Concordia', 'Cruise Ship', '9320544', 'Italy', '2005-07-02', 114147.00, 85666.00, 290.20, 35.50, 8.20, 75600.00, 23.00, 1100, 3780, 'Inactive', '2025-01-23 22:31:58', '2025-01-23 22:31:58');
INSERT INTO `ship` VALUES (6, 'Atlantic Voyager', 'Bulk Carrier', '9900001', 'Liberia', '2012-01-01', 50000.00, 30000.00, 250.00, 40.00, 10.50, 20000.00, 14.00, 30, NULL, 'Active', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `ship` VALUES (7, 'Global Titan', 'Mega Carrier', '9900002', 'Malta', '2018-08-08', 1000000.00, 600000.00, 1000.00, 200.00, 25.00, 50000.00, 16.00, 80, NULL, 'Active', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `ship` VALUES (10, 'Atlantic Voyager', 'Bulk Carrier', '9901001', 'Liberia', '2012-01-01', 50000.00, 30000.00, 250.00, 40.00, 10.50, 20000.00, 14.00, 30, NULL, 'Active', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `ship` VALUES (11, 'Global Titan', 'Mega Carrier', '9901002', 'Malta', '2018-08-08', 1000000.00, 600000.00, 1000.00, 200.00, 25.00, 50000.00, 16.00, 80, NULL, 'Active', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `ship` VALUES (12, 'Global Titan', 'Mega Carrier', '9901002', 'Malta', '2018-08-08', 1000000.00, 600000.00, 1000.00, 200.00, 25.00, 50000.00, 16.00, 80, NULL, 'Active', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `ship` VALUES (300, 'Ocean Cargo One', 'Cargo', '9903001', 'Panama', '2015-06-01', 50000.00, 30000.00, 260.00, 40.00, 11.00, 22000.00, 15.00, 25, NULL, 'Active', '2025-02-01 13:10:00', '2025-02-01 13:10:00');
INSERT INTO `ship` VALUES (301, 'Sea Passenger One', 'Passenger', '9903002', 'Bahamas', '2012-04-10', 40000.00, 20000.00, 220.00, 32.00, 8.50, 25000.00, 21.00, 900, 2500, 'Active', '2025-02-01 13:15:00', '2025-02-01 13:15:00');
INSERT INTO `ship` VALUES (302, 'North Fishing One', 'Fishing', '9903003', 'Iceland', '2018-09-09', 15000.00, 7000.00, 110.00, 20.00, 7.00, 8000.00, 13.00, 40, NULL, 'Active', '2025-02-01 13:20:00', '2025-02-01 13:20:00');
INSERT INTO `ship` VALUES (303, 'Guardian Military One', 'Military', '9903004', 'United States', '2020-01-01', 60000.00, 35000.00, 180.00, 28.00, 9.50, 30000.00, 24.00, 150, NULL, 'Active', '2025-02-01 13:25:00', '2025-02-01 13:25:00');
INSERT INTO `ship` VALUES (400, 'Test Buoyancy', 'Cargo', '9990400', 'Testland', '2015-01-01', 50000.00, 30000.00, 250.00, 40.00, 10.00, 20000.00, 15.00, 30, NULL, 'Active', '2025-02-01 14:15:00', '2025-02-01 14:15:00');
INSERT INTO `ship` VALUES (501, 'High Load Express', 'Cargo', '9990500', 'Panama', '2016-05-01', 50000.00, 30000.00, 260.00, 40.00, 11.00, 20000.00, 10.00, 30, NULL, 'Active', '2025-02-01 15:10:00', '2025-02-01 15:10:00');
INSERT INTO `ship` VALUES (900, 'Speed Test Vessel', 'Cargo', '9990900', 'Panama', '2020-01-01', 30000.00, 15000.00, 200.00, 32.00, 9.00, 30000.00, 20.00, 25, NULL, 'Active', '2025-02-01 16:00:00', '2025-02-01 16:00:00');
INSERT INTO `ship` VALUES (7000, 'Million Cargo Vessel', 'Cargo', '9997000', 'Panama', '2018-06-01', 250000.00, 120000.00, 300.00, 45.00, 12.00, 40000.00, 16.00, 35, NULL, 'Active', '2025-02-02 12:30:00', '2025-02-02 12:30:00');
INSERT INTO `ship` VALUES (9100, 'Heavy Load Carrier', 'Cargo', '9999100', 'Liberia', '2019-01-01', 100000.00, 60000.00, 250.00, 40.00, 12.00, 20000.00, 14.00, 30, NULL, 'Active', '2025-02-02 10:00:00', '2025-02-02 10:00:00');
INSERT INTO `ship` VALUES (9200, 'Speed Limit Test', 'Cargo', '9999200', 'Panama', '2020-01-01', 30000.00, 15000.00, 200.00, 32.00, 9.00, 25000.00, 1.00, 25, NULL, 'Active', '2025-02-02 11:00:00', '2025-02-02 11:00:00');

-- ----------------------------
-- Table structure for voyage_plan
-- ----------------------------
DROP TABLE IF EXISTS `voyage_plan`;
CREATE TABLE `voyage_plan`  (
  `Voyage_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '航行计划唯一标识',
  `Ship_ID` int(0) NOT NULL COMMENT '船舶ID（外键）',
  `Departure_Port_ID` int(0) NOT NULL COMMENT '出发港口ID（外键）',
  `Arrival_Port_ID` int(0) NOT NULL COMMENT '到达港口ID（外键）',
  `Departure_Time` datetime(0) NOT NULL COMMENT '出发时间',
  `Arrival_Time` datetime(0) NOT NULL COMMENT '到达时间',
  `Cargo_Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '货物类型（如果是货船）',
  `Cargo_Weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '货物重量（吨）',
  `Passenger_Count` int(0) NULL DEFAULT NULL COMMENT '乘客数量（如果是客船）',
  `Voyage_Status` enum('Scheduled','In Progress','Completed','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '航行状态',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Voyage_ID`) USING BTREE,
  INDEX `Ship_ID`(`Ship_ID`) USING BTREE,
  INDEX `Departure_Port_ID`(`Departure_Port_ID`) USING BTREE,
  INDEX `Arrival_Port_ID`(`Arrival_Port_ID`) USING BTREE,
  CONSTRAINT `Voyage_Plan_ibfk_1` FOREIGN KEY (`Ship_ID`) REFERENCES `ship` (`Ship_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Voyage_Plan_ibfk_2` FOREIGN KEY (`Departure_Port_ID`) REFERENCES `port` (`Port_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Voyage_Plan_ibfk_3` FOREIGN KEY (`Arrival_Port_ID`) REFERENCES `port` (`Port_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '航行计划表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of voyage_plan
-- ----------------------------
INSERT INTO `voyage_plan` VALUES (1, 1, 1, 2, '2023-10-01 08:00:00', '2023-10-15 18:00:00', 'Containers', 50000.00, NULL, 'Scheduled', 'Regular cargo voyage', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `voyage_plan` VALUES (2, 2, 3, 4, '2023-10-02 10:00:00', '2023-10-10 12:00:00', NULL, NULL, 2000, 'Scheduled', 'Passenger cruise', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `voyage_plan` VALUES (3, 3, 2, 5, '2023-10-03 12:00:00', '2023-10-20 14:00:00', 'Oil', 100000.00, NULL, 'Scheduled', 'Oil transport', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `voyage_plan` VALUES (4, 4, 4, 1, '2023-10-04 14:00:00', '2023-10-12 16:00:00', 'Heavy Machinery', 30000.00, NULL, 'Scheduled', 'Special cargo', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `voyage_plan` VALUES (5, 5, 5, 3, '2023-10-05 16:00:00', '2023-10-18 20:00:00', NULL, NULL, 1500, 'Scheduled', 'Passenger cruise', '2025-01-23 22:33:41', '2025-01-23 22:33:41');
INSERT INTO `voyage_plan` VALUES (6, 6, 1, 2, '2025-03-01 08:00:00', '2025-03-20 10:00:00', 'Metal Ore', 1000000.00, NULL, 'Scheduled', 'Heavy cargo transport', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `voyage_plan` VALUES (10, 11, 1, 2, '2025-03-01 08:00:00', '2025-03-20 10:00:00', 'Bulk Cargo', 1000000.00, NULL, 'Scheduled', 'Long haul heavy cargo voyage', '2025-02-01 12:00:00', '2025-02-01 12:00:00');
INSERT INTO `voyage_plan` VALUES (1000, 9000, 1, 2, '2025-04-01 08:00:00', '2025-04-10 18:00:00', 'Heavy', 500000.00, NULL, 'Scheduled', 'Orphan ship for query tests', '2025-02-01 14:00:00', '2025-02-01 14:00:00');
INSERT INTO `voyage_plan` VALUES (2000, 900, 1, 2, '2025-01-01 00:00:00', '2025-01-01 00:00:01', 'Containers', 500000.00, NULL, 'Scheduled', 'High average speed test voyage', '2025-02-01 16:05:00', '2025-02-01 16:05:00');
INSERT INTO `voyage_plan` VALUES (7000, 7000, 1, 2, '2025-04-01 08:00:00', '2025-04-20 10:00:00', 'Bulk Cargo', 1000000.00, NULL, 'Scheduled', 'Large-scale heavy cargo test', '2025-02-02 12:35:00', '2025-02-02 12:35:00');
INSERT INTO `voyage_plan` VALUES (9100, 9100, 1, 2, '2025-03-01 08:00:00', '2025-03-10 18:00:00', 'Bulk Cargo', 90000.00, 0, 'Scheduled', 'Over 80 percent tonnage test', '2025-02-02 10:05:00', '2025-02-02 10:05:00');
INSERT INTO `voyage_plan` VALUES (9200, 9200, 1, 2, '2025-01-01 00:00:00', '2025-01-01 00:00:01', 'Containers', 50000.00, 100, 'Scheduled', 'High average speed test for > 90 percent of max speed', '2025-02-02 11:05:00', '2025-02-02 11:05:00');

SET FOREIGN_KEY_CHECKS = 1;
