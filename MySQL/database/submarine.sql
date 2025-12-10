/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : submarine

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:28:14
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
  `Ranks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船员职位（艇长、大副等）',
  `Specialty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '专业领域（声纳操作、武器系统等）',
  `License_Number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船员执照号码',
  `Experience_Years` int(0) NOT NULL COMMENT '工作经验（年）',
  `Contact_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `Submarine_ID` int(0) NULL DEFAULT NULL COMMENT '所属潜艇ID（外键）',
  `Status` enum('Active','Inactive','On Leave') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '船员状态',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Crew_ID`) USING BTREE,
  INDEX `Submarine_ID`(`Submarine_ID`) USING BTREE,
  CONSTRAINT `Crew_ibfk_1` FOREIGN KEY (`Submarine_ID`) REFERENCES `submarine` (`Submarine_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '船员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crew
-- ----------------------------
INSERT INTO `crew` VALUES (1, 'John', 'Smith', 'Male', '1980-05-15', 'United States', 'Captain', 'Command', 'CAP123456', 20, '+1-555-1234567', 'john.smith@example.com', '123 Main St, New York, USA', 1, 'Active', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `crew` VALUES (2, 'Maria', 'Garcia', 'Female', '1985-08-20', 'Spain', 'First Officer', 'Navigation', 'FO123456', 15, '+34-555-987654', 'maria.garcia@example.com', '456 Calle Mayor, Madrid, Spain', 2, 'Active', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `crew` VALUES (3, 'Li', 'Wei', 'Male', '1990-03-10', 'China', 'Chief Engineer', 'Propulsion', 'CE123456', 10, '+86-13800138000', 'li.wei@example.com', '789 Beijing Road, Shanghai, China', 3, 'Active', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `crew` VALUES (4, 'Anna', 'Müller', 'Female', '1988-11-25', 'Germany', 'Sonar Operator', 'Sonar Systems', 'SO123456', 8, '+49-555-123456', 'anna.muller@example.com', '101 Berliner Str, Berlin, Germany', 4, 'Active', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `crew` VALUES (5, 'James', 'Brown', 'Male', '1995-07-05', 'United Kingdom', 'Weapons Officer', 'Torpedo Systems', 'WO123456', 5, '+44-555-123456', 'james.brown@example.com', '202 Oxford St, London, UK', 5, 'On Leave', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `crew` VALUES (6, 'Robert', 'Johnson', 'Male', '1960-04-12', 'USA', 'Engineer', 'Mechanical', 'LIC600001', 30, '+1-555-600001', 'robert.johnson@example.com', '12 Ocean Ave, Seattle, USA', NULL, 'Active', '2025-01-01 10:00:00', '2025-01-01 10:00:00');
INSERT INTO `crew` VALUES (7, 'Alice', 'King', 'Female', '2010-05-20', 'Canada', 'Technician', 'Electrical', 'LIC700001', 20, '+1-555-700001', 'alice.king@example.com', '45 Maple St, Toronto, Canada', NULL, 'Active', '2025-01-01 10:05:00', '2025-01-01 10:05:00');
INSERT INTO `crew` VALUES (8, 'Michael', 'Davis', 'Male', '1980-02-18', 'USA', 'Navigator', 'Navigation', 'LIC800001', 10, '+1-555-800001', 'michael.davis@example.com', '789 Lake Rd, Chicago, USA', NULL, 'Inactive', '2025-01-01 10:10:00', '2025-01-01 10:10:00');
INSERT INTO `crew` VALUES (9, 'Tom', 'Young', 'Male', '2018-01-15', 'USA', 'Engineer', 'Mechanical Systems', 'LIC900001', 5, '+1-555-900001', 'tom.young@example.com', '100 Marine Dr, San Diego, USA', 1, 'Active', '2025-01-01 12:00:00', '2025-01-01 12:00:00');

-- ----------------------------
-- Table structure for maintenance_record
-- ----------------------------
DROP TABLE IF EXISTS `maintenance_record`;
CREATE TABLE `maintenance_record`  (
  `Maintenance_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '维护记录唯一标识',
  `Submarine_ID` int(0) NOT NULL COMMENT '潜艇ID（外键）',
  `Maintenance_Type` enum('Routine','Emergency','Upgrade') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维护类型',
  `Maintenance_Date` date NOT NULL COMMENT '维护日期',
  `Maintenance_Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维护描述',
  `Pressure_Test_Result` enum('Pass','Fail') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '压力测试结果',
  `Hull_Integrity_Check` enum('Pass','Fail') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '船体完整性检查',
  `Propulsion_System_Check` enum('Pass','Fail') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '推进系统检查',
  `Sonar_System_Check` enum('Pass','Fail') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '声纳系统检查',
  `Maintenance_Cost` decimal(10, 2) NOT NULL COMMENT '维护成本',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Maintenance_ID`) USING BTREE,
  INDEX `Submarine_ID`(`Submarine_ID`) USING BTREE,
  CONSTRAINT `Maintenance_Record_ibfk_1` FOREIGN KEY (`Submarine_ID`) REFERENCES `submarine` (`Submarine_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '维护记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maintenance_record
-- ----------------------------
INSERT INTO `maintenance_record` VALUES (1, 1, 'Routine', '2023-09-01', 'Regular maintenance and inspection', 'Pass', 'Pass', 'Pass', 'Pass', 50000.00, 'Routine check completed', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `maintenance_record` VALUES (2, 2, 'Emergency', '2023-09-15', 'Repair of propulsion system', 'Pass', 'Pass', 'Pass', 'Fail', 150000.00, 'Emergency repair needed', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `maintenance_record` VALUES (3, 3, 'Upgrade', '2023-09-20', 'Installation of new sonar system', 'Pass', 'Pass', 'Pass', 'Pass', 200000.00, 'Upgrade completed', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `maintenance_record` VALUES (4, 4, 'Routine', '2023-09-25', 'Hull cleaning and inspection', 'Pass', 'Pass', 'Pass', 'Pass', 30000.00, 'Routine maintenance', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `maintenance_record` VALUES (5, 5, 'Emergency', '2023-09-30', 'Replacement of damaged torpedo tubes', 'Pass', 'Pass', 'Pass', 'Pass', 100000.00, 'Emergency repair completed', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `maintenance_record` VALUES (6, 1, 'Upgrade', '2024-01-01', 'Major reactor overhaul and system upgrades', 'Pass', 'Pass', 'Pass', 'Pass', 3000000.00, 'High-cost upgrade for reactor and control systems', '2025-01-01 13:00:00', '2025-01-01 13:00:00');

-- ----------------------------
-- Table structure for mission
-- ----------------------------
DROP TABLE IF EXISTS `mission`;
CREATE TABLE `mission`  (
  `Mission_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '任务唯一标识',
  `Submarine_ID` int(0) NOT NULL COMMENT '潜艇ID（外键）',
  `Mission_Type` enum('Combat','Surveillance','Research','Training') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务类型',
  `Start_Time` datetime(0) NOT NULL COMMENT '任务开始时间',
  `End_Time` datetime(0) NOT NULL COMMENT '任务结束时间',
  `Mission_Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务地点',
  `Mission_Objective` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务目标',
  `Max_Depth_Reached` decimal(10, 2) NULL DEFAULT NULL COMMENT '最大下潜深度（米）',
  `Pressure_Endured` decimal(10, 2) NULL DEFAULT NULL COMMENT '承受压力（大气压）',
  `Sonar_Usage` enum('Active','Passive','None') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '声纳使用情况',
  `Mission_Status` enum('Planned','In Progress','Completed','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务状态',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Mission_ID`) USING BTREE,
  INDEX `Submarine_ID`(`Submarine_ID`) USING BTREE,
  CONSTRAINT `Mission_ibfk_1` FOREIGN KEY (`Submarine_ID`) REFERENCES `submarine` (`Submarine_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mission
-- ----------------------------
INSERT INTO `mission` VALUES (1, 1, 'Combat', '2023-10-01 08:00:00', '2023-10-05 18:00:00', 'Pacific Ocean', 'Patrol and deterrence', 300.00, 30.00, 'Passive', 'Completed', 'Successful patrol', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `mission` VALUES (2, 2, 'Surveillance', '2023-10-02 10:00:00', '2023-10-10 12:00:00', 'North Atlantic', 'Monitor enemy activity', 200.00, 20.00, 'Active', 'In Progress', 'Ongoing surveillance', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `mission` VALUES (3, 3, 'Research', '2023-10-03 12:00:00', '2023-10-20 14:00:00', 'Arctic Ocean', 'Study marine life', 1000.00, 100.00, 'None', 'Planned', 'Research mission', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `mission` VALUES (4, 4, 'Training', '2023-10-04 14:00:00', '2023-10-12 16:00:00', 'Mediterranean Sea', 'Crew training exercises', 150.00, 15.00, 'Passive', 'Completed', 'Training completed', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `mission` VALUES (5, 5, 'Combat', '2023-10-05 16:00:00', '2023-10-18 20:00:00', 'Indian Ocean', 'Search and destroy', 400.00, 40.00, 'Active', 'Planned', 'High-risk mission', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `mission` VALUES (6, 1, 'Combat', '2024-02-01 08:00:00', '2024-02-10 18:00:00', 'South China Sea', 'Deep pressure endurance test', 10.00, 200.00, 'Active', 'Planned', 'High-pressure scenario', '2025-01-02 10:00:00', '2025-01-02 10:00:00');
INSERT INTO `mission` VALUES (7, 2, 'Training', '2024-03-05 09:00:00', '2024-03-12 20:00:00', 'Baltic Sea', 'Extreme depth training', 5.00, 120.00, 'Passive', 'In Progress', 'Pressure endurance training', '2025-01-02 10:10:00', '2025-01-02 10:10:00');
INSERT INTO `mission` VALUES (8, 3, 'Surveillance', '2024-04-01 06:00:00', '2024-04-10 18:00:00', 'Norwegian Sea', 'Active sonar trials with inactive submarine', 300.00, 20.00, 'Active', 'Completed', 'Active sonar tests on inactive-status submarine', '2025-01-03 09:00:00', '2025-01-03 09:00:00');

-- ----------------------------
-- Table structure for submarine
-- ----------------------------
DROP TABLE IF EXISTS `submarine`;
CREATE TABLE `submarine`  (
  `Submarine_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '潜艇唯一标识',
  `Submarine_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '潜艇名称',
  `Submarine_Type` enum('Attack','Ballistic','Cruise','Research') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '潜艇类型',
  `Commission_Date` date NOT NULL COMMENT '服役日期',
  `Displacement` decimal(10, 2) NOT NULL COMMENT '排水量（吨）',
  `Length` decimal(10, 2) NOT NULL COMMENT '长度（米）',
  `Beam` decimal(10, 2) NOT NULL COMMENT '宽度（米）',
  `Draft` decimal(10, 2) NOT NULL COMMENT '吃水深度（米）',
  `Max_Depth` decimal(10, 2) NOT NULL COMMENT '最大下潜深度（米）',
  `Max_Speed` decimal(10, 2) NOT NULL COMMENT '最大航速（节）',
  `Propulsion_Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '推进类型（核动力、柴油电力等）',
  `Crew_Capacity` int(0) NOT NULL COMMENT '船员容量',
  `Torpedo_Count` int(0) NULL DEFAULT NULL COMMENT '鱼雷数量',
  `Missile_Count` int(0) NULL DEFAULT NULL COMMENT '导弹数量',
  `Sonar_System` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '声纳系统类型',
  `Status` enum('Active','Inactive','Under Maintenance') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '潜艇状态',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Submarine_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '潜艇信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submarine
-- ----------------------------
INSERT INTO `submarine` VALUES (1, 'USS Virginia', 'Attack', '2004-10-23', 7800.00, 115.00, 10.00, 9.80, 500.00, 25.00, 'Nuclear', 135, 12, NULL, 'AN/BQQ-10', 'Active', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `submarine` VALUES (2, 'HMS Vanguard', 'Ballistic', '1993-08-14', 15900.00, 149.90, 12.80, 12.00, 400.00, 25.00, 'Nuclear', 135, NULL, 16, 'Sonar 2076', 'Active', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `submarine` VALUES (3, 'Kursk', 'Cruise', '1994-12-30', 14700.00, 154.00, 18.20, 9.00, 500.00, 28.00, 'Nuclear', 107, 24, NULL, 'MGK-500', 'Inactive', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `submarine` VALUES (4, 'Alvin', 'Research', '1964-06-05', 17.00, 7.10, 2.60, 2.30, 4500.00, 2.00, 'Electric', 3, NULL, NULL, 'Sonar Imaging', 'Active', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `submarine` VALUES (5, 'Type 212A', 'Attack', '2005-10-19', 1830.00, 56.00, 7.00, 6.00, 700.00, 20.00, 'Fuel Cell', 27, 6, NULL, 'DBQS-40', 'Active', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `submarine` VALUES (6, 'Leviathan X', 'Attack', '2020-05-20', 950000.00, 200.00, 25.00, 20.00, 900.00, 35.00, 'Nuclear', 160, 20, 12, 'Advanced Sonar X', 'Active', '2025-01-02 11:00:00', '2025-01-02 11:00:00');

SET FOREIGN_KEY_CHECKS = 1;
