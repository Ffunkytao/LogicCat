/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : submarine

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:30:40
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
  `Ranks` varchar(50) NOT NULL COMMENT '船员职位（艇长、大副等）',
  `Specialty` varchar(100) NOT NULL COMMENT '专业领域（声纳操作、武器系统等）',
  `License_Number` varchar(50) NOT NULL COMMENT '船员执照号码',
  `Experience_Years` int NOT NULL COMMENT '工作经验（年）',
  `Contact_Number` varchar(20) NOT NULL COMMENT '联系电话',
  `Email` varchar(100) DEFAULT NULL COMMENT '电子邮件',
  `Address` varchar(255) NOT NULL COMMENT '地址',
  `Submarine_ID` int DEFAULT NULL COMMENT '所属潜艇ID（外键）',
  `Status` enum('Active','Inactive','On Leave') NOT NULL COMMENT '船员状态',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Crew_ID`),
  KEY `Submarine_ID` (`Submarine_ID`),
  CONSTRAINT `Crew_ibfk_1` FOREIGN KEY (`Submarine_ID`) REFERENCES `Submarine` (`Submarine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='船员信息表';

-- ----------------------------
-- Records of Crew
-- ----------------------------
BEGIN;
INSERT INTO `Crew` VALUES (1, 'John', 'Smith', 'Male', '1980-05-15', 'United States', 'Captain', 'Command', 'CAP123456', 20, '+1-555-1234567', 'john.smith@example.com', '123 Main St, New York, USA', 1, 'Active', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `Crew` VALUES (2, 'Maria', 'Garcia', 'Female', '1985-08-20', 'Spain', 'First Officer', 'Navigation', 'FO123456', 15, '+34-555-987654', 'maria.garcia@example.com', '456 Calle Mayor, Madrid, Spain', 2, 'Active', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `Crew` VALUES (3, 'Li', 'Wei', 'Male', '1990-03-10', 'China', 'Chief Engineer', 'Propulsion', 'CE123456', 10, '+86-13800138000', 'li.wei@example.com', '789 Beijing Road, Shanghai, China', 3, 'Active', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `Crew` VALUES (4, 'Anna', 'Müller', 'Female', '1988-11-25', 'Germany', 'Sonar Operator', 'Sonar Systems', 'SO123456', 8, '+49-555-123456', 'anna.muller@example.com', '101 Berliner Str, Berlin, Germany', 4, 'Active', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
INSERT INTO `Crew` VALUES (5, 'James', 'Brown', 'Male', '1995-07-05', 'United Kingdom', 'Weapons Officer', 'Torpedo Systems', 'WO123456', 5, '+44-555-123456', 'james.brown@example.com', '202 Oxford St, London, UK', 5, 'On Leave', '2025-01-23 22:38:22', '2025-01-23 22:38:22');
COMMIT;

-- ----------------------------
-- Table structure for Maintenance_Record
-- ----------------------------
DROP TABLE IF EXISTS `Maintenance_Record`;
CREATE TABLE `Maintenance_Record` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT COMMENT '维护记录唯一标识',
  `Submarine_ID` int NOT NULL COMMENT '潜艇ID（外键）',
  `Maintenance_Type` enum('Routine','Emergency','Upgrade') NOT NULL COMMENT '维护类型',
  `Maintenance_Date` date NOT NULL COMMENT '维护日期',
  `Maintenance_Description` text NOT NULL COMMENT '维护描述',
  `Pressure_Test_Result` enum('Pass','Fail') DEFAULT NULL COMMENT '压力测试结果',
  `Hull_Integrity_Check` enum('Pass','Fail') DEFAULT NULL COMMENT '船体完整性检查',
  `Propulsion_System_Check` enum('Pass','Fail') DEFAULT NULL COMMENT '推进系统检查',
  `Sonar_System_Check` enum('Pass','Fail') DEFAULT NULL COMMENT '声纳系统检查',
  `Maintenance_Cost` decimal(10,2) NOT NULL COMMENT '维护成本',
  `Notes` text COMMENT '备注',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Submarine_ID` (`Submarine_ID`),
  CONSTRAINT `Maintenance_Record_ibfk_1` FOREIGN KEY (`Submarine_ID`) REFERENCES `Submarine` (`Submarine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='维护记录表';

-- ----------------------------
-- Records of Maintenance_Record
-- ----------------------------
BEGIN;
INSERT INTO `Maintenance_Record` VALUES (1, 1, 'Routine', '2023-09-01', 'Regular maintenance and inspection', 'Pass', 'Pass', 'Pass', 'Pass', 50000.00, 'Routine check completed', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `Maintenance_Record` VALUES (2, 2, 'Emergency', '2023-09-15', 'Repair of propulsion system', 'Pass', 'Pass', 'Pass', 'Fail', 150000.00, 'Emergency repair needed', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `Maintenance_Record` VALUES (3, 3, 'Upgrade', '2023-09-20', 'Installation of new sonar system', 'Pass', 'Pass', 'Pass', 'Pass', 200000.00, 'Upgrade completed', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `Maintenance_Record` VALUES (4, 4, 'Routine', '2023-09-25', 'Hull cleaning and inspection', 'Pass', 'Pass', 'Pass', 'Pass', 30000.00, 'Routine maintenance', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
INSERT INTO `Maintenance_Record` VALUES (5, 5, 'Emergency', '2023-09-30', 'Replacement of damaged torpedo tubes', 'Pass', 'Pass', 'Pass', 'Pass', 100000.00, 'Emergency repair completed', '2025-01-23 22:38:45', '2025-01-23 22:38:45');
COMMIT;

-- ----------------------------
-- Table structure for Mission
-- ----------------------------
DROP TABLE IF EXISTS `Mission`;
CREATE TABLE `Mission` (
  `Mission_ID` int NOT NULL AUTO_INCREMENT COMMENT '任务唯一标识',
  `Submarine_ID` int NOT NULL COMMENT '潜艇ID（外键）',
  `Mission_Type` enum('Combat','Surveillance','Research','Training') NOT NULL COMMENT '任务类型',
  `Start_Time` datetime NOT NULL COMMENT '任务开始时间',
  `End_Time` datetime NOT NULL COMMENT '任务结束时间',
  `Mission_Location` varchar(255) NOT NULL COMMENT '任务地点',
  `Mission_Objective` text NOT NULL COMMENT '任务目标',
  `Max_Depth_Reached` decimal(10,2) DEFAULT NULL COMMENT '最大下潜深度（米）',
  `Pressure_Endured` decimal(10,2) DEFAULT NULL COMMENT '承受压力（大气压）',
  `Sonar_Usage` enum('Active','Passive','None') NOT NULL COMMENT '声纳使用情况',
  `Mission_Status` enum('Planned','In Progress','Completed','Cancelled') NOT NULL COMMENT '任务状态',
  `Notes` text COMMENT '备注',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Mission_ID`),
  KEY `Submarine_ID` (`Submarine_ID`),
  CONSTRAINT `Mission_ibfk_1` FOREIGN KEY (`Submarine_ID`) REFERENCES `Submarine` (`Submarine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务信息表';

-- ----------------------------
-- Records of Mission
-- ----------------------------
BEGIN;
INSERT INTO `Mission` VALUES (1, 1, 'Combat', '2023-10-01 08:00:00', '2023-10-05 18:00:00', 'Pacific Ocean', 'Patrol and deterrence', 300.00, 30.00, 'Passive', 'Completed', 'Successful patrol', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `Mission` VALUES (2, 2, 'Surveillance', '2023-10-02 10:00:00', '2023-10-10 12:00:00', 'North Atlantic', 'Monitor enemy activity', 200.00, 20.00, 'Active', 'In Progress', 'Ongoing surveillance', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `Mission` VALUES (3, 3, 'Research', '2023-10-03 12:00:00', '2023-10-20 14:00:00', 'Arctic Ocean', 'Study marine life', 1000.00, 100.00, 'None', 'Planned', 'Research mission', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `Mission` VALUES (4, 4, 'Training', '2023-10-04 14:00:00', '2023-10-12 16:00:00', 'Mediterranean Sea', 'Crew training exercises', 150.00, 15.00, 'Passive', 'Completed', 'Training completed', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
INSERT INTO `Mission` VALUES (5, 5, 'Combat', '2023-10-05 16:00:00', '2023-10-18 20:00:00', 'Indian Ocean', 'Search and destroy', 400.00, 40.00, 'Active', 'Planned', 'High-risk mission', '2025-01-23 22:38:35', '2025-01-23 22:38:35');
COMMIT;

-- ----------------------------
-- Table structure for Submarine
-- ----------------------------
DROP TABLE IF EXISTS `Submarine`;
CREATE TABLE `Submarine` (
  `Submarine_ID` int NOT NULL AUTO_INCREMENT COMMENT '潜艇唯一标识',
  `Submarine_Name` varchar(100) NOT NULL COMMENT '潜艇名称',
  `Submarine_Type` enum('Attack','Ballistic','Cruise','Research') NOT NULL COMMENT '潜艇类型',
  `Commission_Date` date NOT NULL COMMENT '服役日期',
  `Displacement` decimal(10,2) NOT NULL COMMENT '排水量（吨）',
  `Length` decimal(10,2) NOT NULL COMMENT '长度（米）',
  `Beam` decimal(10,2) NOT NULL COMMENT '宽度（米）',
  `Draft` decimal(10,2) NOT NULL COMMENT '吃水深度（米）',
  `Max_Depth` decimal(10,2) NOT NULL COMMENT '最大下潜深度（米）',
  `Max_Speed` decimal(10,2) NOT NULL COMMENT '最大航速（节）',
  `Propulsion_Type` varchar(100) NOT NULL COMMENT '推进类型（核动力、柴油电力等）',
  `Crew_Capacity` int NOT NULL COMMENT '船员容量',
  `Torpedo_Count` int DEFAULT NULL COMMENT '鱼雷数量',
  `Missile_Count` int DEFAULT NULL COMMENT '导弹数量',
  `Sonar_System` varchar(100) NOT NULL COMMENT '声纳系统类型',
  `Status` enum('Active','Inactive','Under Maintenance') NOT NULL COMMENT '潜艇状态',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Submarine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='潜艇信息表';

-- ----------------------------
-- Records of Submarine
-- ----------------------------
BEGIN;
INSERT INTO `Submarine` VALUES (1, 'USS Virginia', 'Attack', '2004-10-23', 7800.00, 115.00, 10.00, 9.80, 500.00, 25.00, 'Nuclear', 135, 12, NULL, 'AN/BQQ-10', 'Active', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `Submarine` VALUES (2, 'HMS Vanguard', 'Ballistic', '1993-08-14', 15900.00, 149.90, 12.80, 12.00, 400.00, 25.00, 'Nuclear', 135, NULL, 16, 'Sonar 2076', 'Active', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `Submarine` VALUES (3, 'Kursk', 'Cruise', '1994-12-30', 14700.00, 154.00, 18.20, 9.00, 500.00, 28.00, 'Nuclear', 107, 24, NULL, 'MGK-500', 'Inactive', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `Submarine` VALUES (4, 'Alvin', 'Research', '1964-06-05', 17.00, 7.10, 2.60, 2.30, 4500.00, 2.00, 'Electric', 3, NULL, NULL, 'Sonar Imaging', 'Active', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
INSERT INTO `Submarine` VALUES (5, 'Type 212A', 'Attack', '2005-10-19', 1830.00, 56.00, 7.00, 6.00, 700.00, 20.00, 'Fuel Cell', 27, 6, NULL, 'DBQS-40', 'Active', '2025-01-23 22:37:54', '2025-01-23 22:37:54');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
