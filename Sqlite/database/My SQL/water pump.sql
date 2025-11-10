/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : water pump

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/01/2025 00:42:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for maintenance_records
-- ----------------------------
DROP TABLE IF EXISTS `maintenance_records`;
CREATE TABLE `maintenance_records` (
  `Record_ID` int NOT NULL COMMENT '维护记录的唯一标识',
  `Pump_ID` int DEFAULT NULL COMMENT '关联的水泵ID',
  `Maintenance_Date` date DEFAULT NULL COMMENT '维护日期',
  `Maintenance_Type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '维护类型（如：清洁、更换零件等）',
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '维护描述',
  `Technician` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '维护技术人员',
  `Cost` double DEFAULT NULL COMMENT '维护成本',
  PRIMARY KEY (`Record_ID`) USING BTREE,
  KEY `pump_id2` (`Pump_ID`),
  CONSTRAINT `pump_id2` FOREIGN KEY (`Pump_ID`) REFERENCES `pump_specifications` (`Pump_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for pump_specifications
-- ----------------------------
DROP TABLE IF EXISTS `pump_specifications`;
CREATE TABLE `pump_specifications` (
  `Spec_ID` int NOT NULL COMMENT '技术参数的唯一标识',
  `Pump_ID` int DEFAULT NULL COMMENT '关联的水泵ID',
  `Flow_Rate` double(10,0) DEFAULT NULL COMMENT '流量（立方米/小时）',
  `Head` double(10,0) DEFAULT NULL COMMENT '扬程（米）',
  `Power` double(10,0) DEFAULT NULL COMMENT '功率（千瓦）',
  `Voltage` double(10,0) DEFAULT NULL COMMENT '电压（伏特）',
  `Current` double(10,0) DEFAULT NULL COMMENT '电流（安培）',
  `Efficiency` double(10,0) DEFAULT NULL COMMENT '效率（百分比）',
  PRIMARY KEY (`Spec_ID`) USING BTREE,
  KEY `pump_id` (`Pump_ID`),
  CONSTRAINT `pump_id` FOREIGN KEY (`Pump_ID`) REFERENCES `pumps` (`Pump_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for pumps
-- ----------------------------
DROP TABLE IF EXISTS `pumps`;
CREATE TABLE `pumps` (
  `Pump_ID` int NOT NULL COMMENT '主键，水泵的唯一标识',
  `Model_Number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '水泵型号',
  `Manufacturer` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '制造商',
  `Purchase_Date` date DEFAULT NULL COMMENT '购买日期',
  `Warranty_Period` int DEFAULT NULL COMMENT '保修期（月）',
  `Location` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '安装位置',
  `Status` enum('active','inactive','under_maintenance') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '水泵状态',
  PRIMARY KEY (`Pump_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `Ssage_ID` int NOT NULL COMMENT '使用记录的唯一标识',
  `pump_ID` int DEFAULT NULL COMMENT '关联的水泵ID',
  `User_ID` int DEFAULT NULL COMMENT '操作用户ID',
  `Start_Time` datetime DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '使用结束时间',
  `Usage_Hours` double DEFAULT NULL COMMENT '使用时长（小时）',
  `Notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '使用备注',
  PRIMARY KEY (`Ssage_ID`) USING BTREE,
  KEY `pump_id3` (`pump_ID`),
  KEY `user_id1` (`User_ID`),
  CONSTRAINT `pump_id3` FOREIGN KEY (`pump_ID`) REFERENCES `pumps` (`Pump_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `User_ID` int NOT NULL COMMENT '用户的唯一标识',
  `Username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `Password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '密码（加密存储）',
  `Email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '电子邮件',
  `Phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '电话号码',
  `Role` enum('admin','operator','viewer') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户角色',
  PRIMARY KEY (`User_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SET FOREIGN_KEY_CHECKS = 1;
