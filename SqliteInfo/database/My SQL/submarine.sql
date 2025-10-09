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

 Date: 27/01/2025 23:25:35
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

SET FOREIGN_KEY_CHECKS = 1;
