/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : roller_coaster

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 23:24:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Maintenance_Record
-- ----------------------------
DROP TABLE IF EXISTS `Maintenance_Record`;
CREATE TABLE `Maintenance_Record` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT COMMENT '维护记录唯一标识',
  `Coaster_ID` int NOT NULL COMMENT '过山车ID（外键）',
  `Maintenance_Type` enum('Routine','Emergency','Upgrade') NOT NULL COMMENT '维护类型',
  `Maintenance_Date` date NOT NULL COMMENT '维护日期',
  `Maintenance_Description` text NOT NULL COMMENT '维护描述',
  `Track_Condition` enum('Excellent','Good','Fair','Poor') NOT NULL COMMENT '轨道状况',
  `Safety_Check_Result` enum('Pass','Fail') NOT NULL COMMENT '安全检查结果',
  `Maintenance_Cost` decimal(10,2) NOT NULL COMMENT '维护成本',
  `Notes` text COMMENT '备注',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Coaster_ID` (`Coaster_ID`),
  CONSTRAINT `Maintenance_Record_ibfk_1` FOREIGN KEY (`Coaster_ID`) REFERENCES `Roller_Coaster` (`Coaster_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='维护记录表';

-- ----------------------------
-- Table structure for Passenger_Feedback
-- ----------------------------
DROP TABLE IF EXISTS `Passenger_Feedback`;
CREATE TABLE `Passenger_Feedback` (
  `Feedback_ID` int NOT NULL AUTO_INCREMENT COMMENT '反馈唯一标识',
  `Coaster_ID` int NOT NULL COMMENT '过山车ID（外键）',
  `Passenger_Name` varchar(100) NOT NULL COMMENT '乘客姓名',
  `Ride_Date` date NOT NULL COMMENT '乘坐日期',
  `Rating` int NOT NULL COMMENT '评分（1-5）',
  `Comments` text COMMENT '评论',
  `Ride_Experience` enum('Thrilling','Scary','Smooth','Bumpy') NOT NULL COMMENT '乘坐体验',
  `Safety_Perception` enum('Very Safe','Safe','Neutral','Unsafe') NOT NULL COMMENT '安全感知',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Feedback_ID`),
  KEY `Coaster_ID` (`Coaster_ID`),
  CONSTRAINT `Passenger_Feedback_ibfk_1` FOREIGN KEY (`Coaster_ID`) REFERENCES `Roller_Coaster` (`Coaster_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='乘客反馈表';

-- ----------------------------
-- Table structure for Roller_Coaster
-- ----------------------------
DROP TABLE IF EXISTS `Roller_Coaster`;
CREATE TABLE `Roller_Coaster` (
  `Coaster_ID` int NOT NULL AUTO_INCREMENT COMMENT '过山车唯一标识',
  `Coaster_Name` varchar(100) NOT NULL COMMENT '过山车名称',
  `Park_Name` varchar(100) NOT NULL COMMENT '所属游乐园名称',
  `Manufacturer` varchar(100) NOT NULL COMMENT '制造商',
  `Coaster_Type` enum('Wooden','Steel','Hybrid','Inverted') NOT NULL COMMENT '过山车类型',
  `Max_Speed` decimal(10,2) NOT NULL COMMENT '最大速度（公里/小时）',
  `Track_Length` decimal(10,2) NOT NULL COMMENT '轨道长度（米）',
  `Height` decimal(10,2) NOT NULL COMMENT '最大高度（米）',
  `Drop_Height` decimal(10,2) NOT NULL COMMENT '最大落差（米）',
  `Inversions` int NOT NULL COMMENT '翻转次数',
  `Duration` time NOT NULL COMMENT '运行时长（时:分:秒）',
  `Max_G_Force` decimal(10,2) NOT NULL COMMENT '最大重力加速度（G）',
  `Capacity_Per_Hour` int NOT NULL COMMENT '每小时载客量',
  `Status` enum('Operational','Under Maintenance','Closed') NOT NULL COMMENT '过山车状态',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Coaster_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='过山车信息表';

-- ----------------------------
-- Table structure for Track_Segment
-- ----------------------------
DROP TABLE IF EXISTS `Track_Segment`;
CREATE TABLE `Track_Segment` (
  `Segment_ID` int NOT NULL AUTO_INCREMENT COMMENT '轨道段唯一标识',
  `Coaster_ID` int NOT NULL COMMENT '过山车ID（外键）',
  `Segment_Type` enum('Straight','Curve','Loop','Corkscrew','Drop') NOT NULL COMMENT '轨道段类型',
  `Length` decimal(10,2) NOT NULL COMMENT '长度（米）',
  `Height` decimal(10,2) NOT NULL COMMENT '高度（米）',
  `Angle` decimal(10,2) DEFAULT NULL COMMENT '角度（度）',
  `Radius` decimal(10,2) DEFAULT NULL COMMENT '半径（米）',
  `G_Force` decimal(10,2) NOT NULL COMMENT '重力加速度（G）',
  `Speed` decimal(10,2) NOT NULL COMMENT '速度（公里/小时）',
  `Notes` text COMMENT '备注',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Segment_ID`),
  KEY `Coaster_ID` (`Coaster_ID`),
  CONSTRAINT `Track_Segment_ibfk_1` FOREIGN KEY (`Coaster_ID`) REFERENCES `Roller_Coaster` (`Coaster_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='轨道段信息表';

SET FOREIGN_KEY_CHECKS = 1;
