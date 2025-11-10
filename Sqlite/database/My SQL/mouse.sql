/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : mouse

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 22:11:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `Manufacturer_Id` int NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Manufacturer_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商名称',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '制造商所在国家',
  `Revenue_Usd` decimal(15,2) DEFAULT NULL COMMENT '年度营业额（美元）',
  `Profit_Usd` decimal(15,2) DEFAULT NULL COMMENT '年度利润（美元）',
  `Market_Share_Percent` decimal(5,2) DEFAULT NULL COMMENT '市场份额（百分比）',
  `Employees` int DEFAULT NULL COMMENT '员工数量',
  `Founded_year` year DEFAULT NULL COMMENT '成立年份',
  `Headquarters` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '总部地址',
  `Website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '官方网站',
  `Contact_Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系邮箱',
  PRIMARY KEY (`Manufacturer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for mice
-- ----------------------------
DROP TABLE IF EXISTS `mice`;
CREATE TABLE `mice` (
  `Mouse_Id` int NOT NULL AUTO_INCREMENT COMMENT '鼠标唯一标识',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '鼠标型号',
  `Manufacturer_Id` int DEFAULT NULL COMMENT '制造商ID（外键）',
  `Sensor_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '传感器类型（如光学、激光）',
  `Dpi` int DEFAULT NULL COMMENT 'DPI（每英寸点数）',
  `Buttons` int DEFAULT NULL COMMENT '按键数量',
  `Weight_Grams` decimal(10,2) DEFAULT NULL COMMENT '重量（克）',
  `Is_Wireless` tinyint(1) DEFAULT NULL COMMENT '是否无线',
  `Battery_Life_Hours` int DEFAULT NULL COMMENT '电池续航时间（小时）',
  `Release_Date` date DEFAULT NULL COMMENT '发布日期',
  `Price_Usd` decimal(10,2) DEFAULT NULL COMMENT '价格（美元）',
  `Tracking_Speed_Ips` decimal(10,2) DEFAULT NULL COMMENT '追踪速度（英寸/秒）',
  `Acceleration_G` decimal(10,2) DEFAULT NULL COMMENT '加速度（重力加速度 g）',
  `Polling_Rate_Hz` int DEFAULT NULL COMMENT '轮询率（Hz）',
  `Cable_Length_Meters` decimal(5,2) DEFAULT NULL COMMENT '线缆长度（米）',
  PRIMARY KEY (`Mouse_Id`),
  KEY `manufacturer_id` (`Manufacturer_Id`),
  CONSTRAINT `mice_ibfk_1` FOREIGN KEY (`Manufacturer_Id`) REFERENCES `manufacturers` (`Manufacturer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for sensor_data
-- ----------------------------
DROP TABLE IF EXISTS `sensor_data`;
CREATE TABLE `sensor_data` (
  `Sensor_Id` int NOT NULL AUTO_INCREMENT COMMENT '传感器数据唯一标识',
  `Mouse_Id` int DEFAULT NULL COMMENT '鼠标ID（外键）',
  `Sensor_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '传感器类型（如光学、激光）',
  `Max_Dpi` int DEFAULT NULL COMMENT '最大DPI',
  `Tracking_Speed_Ips` decimal(10,2) DEFAULT NULL COMMENT '追踪速度（英寸/秒）',
  `Acceleration_G` decimal(10,2) DEFAULT NULL COMMENT '加速度（重力加速度 g）',
  `Polling_Rate_Hz` int DEFAULT NULL COMMENT '轮询率（Hz）',
  `Lift_Off_Distance_Mm` decimal(5,2) DEFAULT NULL COMMENT '抬升距离（毫米）',
  `Sensor_Life_Hours` int DEFAULT NULL COMMENT '传感器寿命（小时）',
  `Calibration_Count` int DEFAULT NULL COMMENT '校准次数',
  `Last_Calibration_Date` date DEFAULT NULL COMMENT '最后一次校准日期',
  PRIMARY KEY (`Sensor_Id`),
  KEY `mouse_id` (`Mouse_Id`),
  CONSTRAINT `sensor_data_ibfk_1` FOREIGN KEY (`Mouse_Id`) REFERENCES `mice` (`Mouse_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for usage_records
-- ----------------------------
DROP TABLE IF EXISTS `usage_records`;
CREATE TABLE `usage_records` (
  `Record_ID` int NOT NULL AUTO_INCREMENT COMMENT '使用记录唯一标识',
  `Mouse_ID` int DEFAULT NULL COMMENT '鼠标ID（外键）',
  `User_ID` int DEFAULT NULL COMMENT '用户ID',
  `Start_Time` datetime DEFAULT NULL COMMENT '使用开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '使用结束时间',
  `Distance_Moved_Meters` decimal(10,2) DEFAULT NULL COMMENT '移动总距离（米）',
  `Clicks` int DEFAULT NULL COMMENT '点击总次数',
  `Scrolls` int DEFAULT NULL COMMENT '滚动总次数',
  `Average_Dpi` int DEFAULT NULL COMMENT '平均DPI',
  `Max_Dpi` int DEFAULT NULL COMMENT '最大DPI',
  `Usage_Duration_Minutes` int DEFAULT NULL COMMENT '使用时长（分钟）',
  `Energy_Consumed_Joules` decimal(10,2) DEFAULT NULL COMMENT '消耗能量（焦耳）',
  PRIMARY KEY (`Record_ID`) USING BTREE,
  KEY `mouse_id` (`Mouse_ID`),
  CONSTRAINT `usage_records_ibfk_1` FOREIGN KEY (`Mouse_ID`) REFERENCES `mice` (`Mouse_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
