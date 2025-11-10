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

 Date: 11/08/2025 12:30:07
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
-- Records of Maintenance_Record
-- ----------------------------
BEGIN;
INSERT INTO `Maintenance_Record` VALUES (1, 1, 'Routine', '2023-09-01', 'Regular inspection and lubrication', 'Excellent', 'Pass', 5000.00, 'Routine maintenance completed', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `Maintenance_Record` VALUES (2, 2, 'Emergency', '2023-09-15', 'Repair of broken track segment', 'Good', 'Pass', 15000.00, 'Emergency repair needed', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `Maintenance_Record` VALUES (3, 3, 'Upgrade', '2023-09-20', 'Installation of new safety harnesses', 'Fair', 'Pass', 20000.00, 'Safety upgrade completed', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `Maintenance_Record` VALUES (4, 4, 'Routine', '2023-09-25', 'Track alignment and bolt tightening', 'Excellent', 'Pass', 10000.00, 'Routine maintenance', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `Maintenance_Record` VALUES (5, 5, 'Emergency', '2023-09-30', 'Replacement of worn-out wheels', 'Poor', 'Pass', 12000.00, 'Emergency repair completed', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
COMMIT;

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
-- Records of Passenger_Feedback
-- ----------------------------
BEGIN;
INSERT INTO `Passenger_Feedback` VALUES (1, 1, 'John Doe', '2023-10-01', 5, 'Amazing ride!', 'Thrilling', 'Very Safe', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `Passenger_Feedback` VALUES (2, 2, 'Jane Smith', '2023-10-02', 4, 'Very fast and exciting!', 'Scary', 'Safe', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `Passenger_Feedback` VALUES (3, 3, 'Mike Johnson', '2023-10-03', 3, 'A bit bumpy but fun.', 'Bumpy', 'Neutral', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `Passenger_Feedback` VALUES (4, 4, 'Emily Brown', '2023-10-04', 5, 'Smooth and thrilling!', 'Smooth', 'Very Safe', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `Passenger_Feedback` VALUES (5, 5, 'David Wilson', '2023-10-05', 2, 'Too intense for me.', 'Scary', 'Unsafe', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
COMMIT;

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
-- Records of Roller_Coaster
-- ----------------------------
BEGIN;
INSERT INTO `Roller_Coaster` VALUES (1, 'Steel Dragon', 'Nagashima Spa Land', 'Morgan', 'Steel', 153.00, 2479.00, 97.00, 93.50, 0, '00:04:00', 4.50, 1500, 'Operational', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `Roller_Coaster` VALUES (2, 'Kingda Ka', 'Six Flags Great Adventure', 'Intamin', 'Steel', 206.00, 950.00, 139.00, 127.00, 0, '00:00:28', 5.00, 1200, 'Operational', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `Roller_Coaster` VALUES (3, 'The Beast', 'Kings Island', 'Philadelphia Toboggan Coasters', 'Wooden', 104.60, 2243.00, 35.00, 41.10, 0, '00:04:10', 3.80, 1000, 'Operational', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `Roller_Coaster` VALUES (4, 'Fury 325', 'Carowinds', 'Bolliger & Mabillard', 'Steel', 153.00, 2000.00, 99.00, 81.00, 0, '00:03:25', 4.50, 1600, 'Operational', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `Roller_Coaster` VALUES (5, 'Nemesis', 'Alton Towers', 'Bolliger & Mabillard', 'Inverted', 129.00, 716.00, 13.50, 10.00, 4, '00:01:30', 3.50, 1400, 'Under Maintenance', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
COMMIT;

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

-- ----------------------------
-- Records of Track_Segment
-- ----------------------------
BEGIN;
INSERT INTO `Track_Segment` VALUES (1, 1, 'Straight', 200.00, 10.00, NULL, NULL, 1.00, 80.00, 'Initial straight section', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `Track_Segment` VALUES (2, 1, 'Drop', 100.00, 93.50, 90.00, NULL, 4.50, 153.00, 'Main drop section', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `Track_Segment` VALUES (3, 2, 'Curve', 150.00, 50.00, 45.00, 100.00, 3.00, 120.00, 'High-speed curve', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `Track_Segment` VALUES (4, 3, 'Loop', 50.00, 30.00, 360.00, 20.00, 3.80, 90.00, 'Vertical loop', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `Track_Segment` VALUES (5, 4, 'Corkscrew', 80.00, 20.00, 360.00, 15.00, 3.50, 100.00, 'Double corkscrew', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
