/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : roller_coaster

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:27:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for maintenance_record
-- ----------------------------
DROP TABLE IF EXISTS `maintenance_record`;
CREATE TABLE `maintenance_record`  (
  `Maintenance_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '维护记录唯一标识',
  `Coaster_ID` int(0) NOT NULL COMMENT '过山车ID（外键）',
  `Maintenance_Type` enum('Routine','Emergency','Upgrade') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维护类型',
  `Maintenance_Date` date NOT NULL COMMENT '维护日期',
  `Maintenance_Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维护描述',
  `Track_Condition` enum('Excellent','Good','Fair','Poor') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '轨道状况',
  `Safety_Check_Result` enum('Pass','Fail') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '安全检查结果',
  `Maintenance_Cost` decimal(10, 2) NOT NULL COMMENT '维护成本',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Maintenance_ID`) USING BTREE,
  INDEX `Coaster_ID`(`Coaster_ID`) USING BTREE,
  CONSTRAINT `Maintenance_Record_ibfk_1` FOREIGN KEY (`Coaster_ID`) REFERENCES `roller_coaster` (`Coaster_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '维护记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maintenance_record
-- ----------------------------
INSERT INTO `maintenance_record` VALUES (1, 1, 'Routine', '2023-09-01', 'Regular inspection and lubrication', 'Excellent', 'Pass', 5000.00, 'Routine maintenance completed', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `maintenance_record` VALUES (2, 2, 'Emergency', '2023-09-15', 'Repair of broken track segment', 'Good', 'Pass', 15000.00, 'Emergency repair needed', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `maintenance_record` VALUES (3, 3, 'Upgrade', '2023-09-20', 'Installation of new safety harnesses', 'Fair', 'Pass', 20000.00, 'Safety upgrade completed', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `maintenance_record` VALUES (4, 4, 'Routine', '2023-09-25', 'Track alignment and bolt tightening', 'Excellent', 'Pass', 10000.00, 'Routine maintenance', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `maintenance_record` VALUES (5, 5, 'Emergency', '2023-09-30', 'Replacement of worn-out wheels', 'Poor', 'Pass', 12000.00, 'Emergency repair completed', '2025-01-23 22:41:54', '2025-01-23 22:41:54');
INSERT INTO `maintenance_record` VALUES (6, 1, 'Emergency', '2023-10-10', 'Emergency repair due to severe track wear and structural issues detected during inspection.', 'Poor', 'Fail', 30000.00, 'Immediate shutdown required until critical track sections are repaired.', '2025-11-26 13:57:35', '2025-11-26 13:57:35');
INSERT INTO `maintenance_record` VALUES (7, 2, 'Upgrade', '2023-10-12', 'Upgrade of track components and support structures to improve safety on degraded sections.', 'Poor', 'Fail', 45000.00, 'Track modernization project initiated after failed safety check.', '2025-11-26 13:57:35', '2025-11-26 13:57:35');
INSERT INTO `maintenance_record` VALUES (8, 3, 'Routine', '2023-10-15', 'Intensive routine maintenance focusing on rail alignment, bolt tightening, and replacement of damaged fasteners.', 'Poor', 'Fail', 18000.00, 'Routine maintenance escalated due to poor overall track condition.', '2025-11-26 13:57:35', '2025-11-26 13:57:35');
INSERT INTO `maintenance_record` VALUES (9, 2, 'Emergency', '2025-11-26', 'Severe structural fatigue and track deformation detected, requiring full reconstruction.', 'Poor', 'Fail', 1000000.00, 'Extremely high maintenance cost scenario for strategy analysis', '2025-11-26 14:36:39', '2025-11-26 14:36:39');
INSERT INTO `maintenance_record` VALUES (10, 3, 'Upgrade', '2025-11-26', 'Major system upgrade due to aging wooden track and rising instability risks.', 'Fair', 'Pass', 1500000.00, 'High-cost upgrade to analyze cost–condition correlation', '2025-11-26 14:36:39', '2025-11-26 14:36:39');
INSERT INTO `maintenance_record` VALUES (11, 4, 'Routine', '2025-11-26', 'Extensive preventive maintenance conducted due to early signs of wear.', 'Good', 'Pass', 1200000.00, 'High maintenance investment for long-term stability', '2025-11-26 14:36:39', '2025-11-26 14:36:39');
INSERT INTO `maintenance_record` VALUES (12, 1, 'Emergency', '2025-11-06', 'Critical repair due to sudden structural damage.', 'Poor', 'Fail', 30000.00, 'Emergency repair within last 3 months', '2025-11-26 14:50:39', '2025-11-26 14:50:39');
INSERT INTO `maintenance_record` VALUES (13, 2, 'Emergency', '2025-10-12', 'Track deformation required urgent reinforcement.', 'Fair', 'Pass', 50000.00, 'Emergency maintenance within last 3 months', '2025-11-26 14:50:39', '2025-11-26 14:50:39');
INSERT INTO `maintenance_record` VALUES (14, 1, 'Emergency', '2025-11-26', 'Comprehensive structural failure detected during inspection, requiring full reconstruction.', 'Poor', 'Fail', 99999999.99, 'Extremely high-cost maintenance with all passenger ratings recorded as 5 stars.', '2025-11-26 14:51:55', '2025-11-26 14:51:55');
INSERT INTO `maintenance_record` VALUES (15, 10, 'Emergency', '2025-11-26', 'Track reinforcement required due to extreme stress.', 'Fair', 'Pass', 500000.00, NULL, '2025-11-26 15:28:47', '2025-11-26 15:28:47');
INSERT INTO `maintenance_record` VALUES (17, 26, 'Emergency', '2025-11-16', 'High stress detected', 'Fair', 'Fail', 80000.00, NULL, '2025-11-26 15:51:52', '2025-11-26 15:51:52');

-- ----------------------------
-- Table structure for passenger_feedback
-- ----------------------------
DROP TABLE IF EXISTS `passenger_feedback`;
CREATE TABLE `passenger_feedback`  (
  `Feedback_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '反馈唯一标识',
  `Coaster_ID` int(0) NOT NULL COMMENT '过山车ID（外键）',
  `Passenger_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '乘客姓名',
  `Ride_Date` date NOT NULL COMMENT '乘坐日期',
  `Rating` int(0) NOT NULL COMMENT '评分（1-5）',
  `Comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '评论',
  `Ride_Experience` enum('Thrilling','Scary','Smooth','Bumpy') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '乘坐体验',
  `Safety_Perception` enum('Very Safe','Safe','Neutral','Unsafe') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '安全感知',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Feedback_ID`) USING BTREE,
  INDEX `Coaster_ID`(`Coaster_ID`) USING BTREE,
  CONSTRAINT `Passenger_Feedback_ibfk_1` FOREIGN KEY (`Coaster_ID`) REFERENCES `roller_coaster` (`Coaster_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '乘客反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of passenger_feedback
-- ----------------------------
INSERT INTO `passenger_feedback` VALUES (1, 1, 'John Doe', '2023-10-01', 5, 'Amazing ride!', 'Thrilling', 'Very Safe', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `passenger_feedback` VALUES (2, 2, 'Jane Smith', '2023-10-02', 4, 'Very fast and exciting!', 'Scary', 'Safe', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `passenger_feedback` VALUES (3, 3, 'Mike Johnson', '2023-10-03', 3, 'A bit bumpy but fun.', 'Bumpy', 'Neutral', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `passenger_feedback` VALUES (4, 4, 'Emily Brown', '2023-10-04', 5, 'Smooth and thrilling!', 'Smooth', 'Very Safe', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `passenger_feedback` VALUES (5, 5, 'David Wilson', '2023-10-05', 2, 'Too intense for me.', 'Scary', 'Unsafe', '2025-01-23 22:42:05', '2025-01-23 22:42:05');
INSERT INTO `passenger_feedback` VALUES (6, 1, 'Test Passenger A', '2025-11-16', 2, 'Felt unsafe during the ride.', 'Scary', 'Unsafe', '2025-11-26 14:50:44', '2025-11-26 14:50:44');
INSERT INTO `passenger_feedback` VALUES (7, 2, 'Test Passenger B', '2025-11-21', 1, 'Very uncomfortable and felt dangerous.', 'Bumpy', 'Unsafe', '2025-11-26 14:50:44', '2025-11-26 14:50:44');

-- ----------------------------
-- Table structure for roller_coaster
-- ----------------------------
DROP TABLE IF EXISTS `roller_coaster`;
CREATE TABLE `roller_coaster`  (
  `Coaster_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '过山车唯一标识',
  `Coaster_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '过山车名称',
  `Park_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属游乐园名称',
  `Manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商',
  `Coaster_Type` enum('Wooden','Steel','Hybrid','Inverted') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '过山车类型',
  `Max_Speed` decimal(10, 2) NOT NULL COMMENT '最大速度（公里/小时）',
  `Track_Length` decimal(10, 2) NOT NULL COMMENT '轨道长度（米）',
  `Height` decimal(10, 2) NOT NULL COMMENT '最大高度（米）',
  `Drop_Height` decimal(10, 2) NOT NULL COMMENT '最大落差（米）',
  `Inversions` int(0) NOT NULL COMMENT '翻转次数',
  `Duration` time(0) NOT NULL COMMENT '运行时长（时:分:秒）',
  `Max_G_Force` decimal(10, 2) NOT NULL COMMENT '最大重力加速度（G）',
  `Capacity_Per_Hour` int(0) NOT NULL COMMENT '每小时载客量',
  `Status` enum('Operational','Under Maintenance','Closed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '过山车状态',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Coaster_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '过山车信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roller_coaster
-- ----------------------------
INSERT INTO `roller_coaster` VALUES (1, 'Steel Dragon', 'Nagashima Spa Land', 'Morgan', 'Steel', 153.00, 2479.00, 97.00, 93.50, 0, '00:04:00', 4.50, 1500, 'Operational', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `roller_coaster` VALUES (2, 'Kingda Ka', 'Six Flags Great Adventure', 'Intamin', 'Steel', 206.00, 950.00, 139.00, 127.00, 0, '00:00:28', 5.00, 1200, 'Operational', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `roller_coaster` VALUES (3, 'The Beast', 'Kings Island', 'Philadelphia Toboggan Coasters', 'Wooden', 104.60, 2243.00, 35.00, 41.10, 0, '00:04:10', 3.80, 1000, 'Operational', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `roller_coaster` VALUES (4, 'Fury 325', 'Carowinds', 'Bolliger & Mabillard', 'Steel', 153.00, 2000.00, 99.00, 81.00, 0, '00:03:25', 4.50, 1600, 'Operational', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `roller_coaster` VALUES (5, 'Nemesis', 'Alton Towers', 'Bolliger & Mabillard', 'Inverted', 129.00, 716.00, 13.50, 10.00, 4, '00:01:30', 3.50, 1400, 'Under Maintenance', '2025-01-23 22:41:28', '2025-01-23 22:41:28');
INSERT INTO `roller_coaster` VALUES (6, 'Safety Test Coaster', 'Test Park', 'Test Manufacturer', 'Steel', 120.00, 1000.00, 40.00, 35.00, 0, '00:01:30', 4.50, 800, 'Operational', '2025-11-26 13:58:53', '2025-11-26 13:58:53');
INSERT INTO `roller_coaster` VALUES (7, 'Hyper Mega Coaster', 'Future Theme Park', 'NextGen Coasters', 'Steel', 1000.00, 100000.00, 120.00, 110.00, 0, '02:00:00', 4.00, 500, 'Operational', '2025-11-26 14:12:55', '2025-11-26 14:12:55');
INSERT INTO `roller_coaster` VALUES (8, 'Ultra Capacity Coaster', 'Mega Theme Park', 'Extreme Coasters Inc.', 'Steel', 180.00, 2500.00, 120.00, 110.00, 2, '00:03:00', 4.80, 1000000, 'Operational', '2025-11-26 14:36:01', '2025-11-26 14:36:01');
INSERT INTO `roller_coaster` VALUES (9, 'Hyper Capacity Coaster', 'Mega Park', 'Extreme Rides Inc.', 'Steel', 180.00, 3000.00, 80.00, 70.00, 2, '20:00:00', 4.50, 6000, 'Operational', '2025-11-26 15:11:04', '2025-11-26 15:11:04');
INSERT INTO `roller_coaster` VALUES (10, 'Quantum Loop', 'Gravity Park', 'HyperSteel Co.', 'Steel', 300.00, 900.00, 40.00, 35.00, 1, '00:01:10', 6.00, 1200, 'Operational', '2025-11-26 15:28:40', '2025-11-26 15:28:40');
INSERT INTO `roller_coaster` VALUES (11, 'Mini Brake Test Coaster', 'Test Park', 'SafeRide Corp', 'Steel', 50.00, 20.00, 5.00, 4.00, 0, '00:00:30', 1.50, 300, 'Operational', '2025-11-26 15:29:26', '2025-11-26 15:29:26');
INSERT INTO `roller_coaster` VALUES (12, 'Ultra Long Runner', 'Endurance Park', 'GigaRide Works', 'Steel', 120.00, 1500.00, 60.00, 55.00, 1, '21:00:00', 3.20, 1800, 'Operational', '2025-11-26 15:29:57', '2025-11-26 15:29:57');
INSERT INTO `roller_coaster` VALUES (15, 'Impossible Dive Coaster', 'Physics Challenge Park', 'Concept Rides Inc.', 'Steel', 120.00, 800.00, 50.00, 45.00, 0, '00:01:30', 4.20, 900, 'Operational', '2025-11-26 15:31:56', '2025-11-26 15:31:56');
INSERT INTO `roller_coaster` VALUES (16, 'Tight Curve Coaster', 'Extreme Physics Park', 'Precision Rides Ltd.', 'Steel', 100.00, 800.00, 40.00, 35.00, 1, '00:02:00', 6.50, 1200, 'Operational', '2025-11-26 15:33:43', '2025-11-26 15:33:43');
INSERT INTO `roller_coaster` VALUES (17, 'Energy Extreme Coaster', 'Extreme Physics Park', 'HighEnergy Rides Inc.', 'Steel', 150.00, 5000.00, 60.00, 55.00, 1, '00:02:30', 6.00, 1800, 'Operational', '2025-11-26 15:35:17', '2025-11-26 15:35:17');
INSERT INTO `roller_coaster` VALUES (18, 'Hyper Curve Coaster', 'Velocity Park', 'Precision Rides Ltd.', 'Steel', 160.00, 1200.00, 45.00, 40.00, 0, '00:01:20', 4.80, 1500, 'Operational', '2025-11-26 15:35:45', '2025-11-26 15:35:45');
INSERT INTO `roller_coaster` VALUES (19, 'Vertical Dive Test Coaster', 'Physics Lab Park', 'Concept Dynamics', 'Steel', 80.00, 500.00, 20.00, 18.00, 0, '00:01:00', 8.00, 800, 'Operational', '2025-11-26 15:39:24', '2025-11-26 15:39:24');
INSERT INTO `roller_coaster` VALUES (25, 'Inverted Phantom', 'SkyPark', 'B&M', 'Inverted', 120.00, 800.00, 30.00, 28.00, 4, '00:01:45', 4.20, 1300, 'Operational', '2025-11-26 15:50:42', '2025-11-26 15:50:42');
INSERT INTO `roller_coaster` VALUES (26, 'Inverted Phantom', 'SkyPark', 'B&M', 'Inverted', 120.00, 800.00, 30.00, 28.00, 4, '00:01:45', 4.20, 1300, 'Operational', '2025-11-26 15:51:36', '2025-11-26 15:51:36');
INSERT INTO `roller_coaster` VALUES (100, 'Centrifugal Safety Coaster', 'Advanced Dynamics Park', 'Precision Rides Ltd.', 'Steel', 200.00, 1500.00, 60.00, 55.00, 3, '00:02:00', 6.00, 1800, 'Operational', '2025-11-26 15:46:27', '2025-11-26 15:46:27');
INSERT INTO `roller_coaster` VALUES (101, 'Energy Transition Coaster', 'Research Test Park', 'Energy Dynamics Corp.', 'Steel', 300.00, 3000.00, 100.00, 90.00, 1, '00:10:00', 7.00, 1200, 'Operational', '2025-11-26 15:46:27', '2025-11-26 15:46:27');

-- ----------------------------
-- Table structure for track_segment
-- ----------------------------
DROP TABLE IF EXISTS `track_segment`;
CREATE TABLE `track_segment`  (
  `Segment_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '轨道段唯一标识',
  `Coaster_ID` int(0) NOT NULL COMMENT '过山车ID（外键）',
  `Segment_Type` enum('Straight','Curve','Loop','Corkscrew','Drop') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '轨道段类型',
  `Length` decimal(10, 2) NOT NULL COMMENT '长度（米）',
  `Height` decimal(10, 2) NOT NULL COMMENT '高度（米）',
  `Angle` decimal(10, 2) NULL DEFAULT NULL COMMENT '角度（度）',
  `Radius` decimal(10, 2) NULL DEFAULT NULL COMMENT '半径（米）',
  `G_Force` decimal(10, 2) NOT NULL COMMENT '重力加速度（G）',
  `Speed` decimal(10, 2) NOT NULL COMMENT '速度（公里/小时）',
  `Notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Segment_ID`) USING BTREE,
  INDEX `Coaster_ID`(`Coaster_ID`) USING BTREE,
  CONSTRAINT `Track_Segment_ibfk_1` FOREIGN KEY (`Coaster_ID`) REFERENCES `roller_coaster` (`Coaster_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1008 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '轨道段信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of track_segment
-- ----------------------------
INSERT INTO `track_segment` VALUES (1, 1, 'Straight', 200.00, 10.00, NULL, NULL, 1.00, 80.00, 'Initial straight section', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `track_segment` VALUES (2, 1, 'Drop', 100.00, 93.50, 90.00, NULL, 4.50, 153.00, 'Main drop section', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `track_segment` VALUES (3, 2, 'Curve', 150.00, 50.00, 45.00, 100.00, 3.00, 120.00, 'High-speed curve', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `track_segment` VALUES (4, 3, 'Loop', 50.00, 30.00, 360.00, 20.00, 3.80, 90.00, 'Vertical loop', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `track_segment` VALUES (5, 4, 'Corkscrew', 80.00, 20.00, 360.00, 15.00, 3.50, 100.00, 'Double corkscrew', '2025-01-23 22:41:42', '2025-01-23 22:41:42');
INSERT INTO `track_segment` VALUES (6, 1, 'Loop', 50.00, 20.00, 360.00, 10.00, 5.00, 90.00, 'Test loop segment for safety calculation', '2025-11-26 14:13:55', '2025-11-26 14:13:55');
INSERT INTO `track_segment` VALUES (7, 2, 'Drop', 120.00, 50.00, 90.00, NULL, 3.00, 110.00, 'Safety test drop segment with 50m height and 3G force', '2025-11-26 14:14:14', '2025-11-26 14:14:14');
INSERT INTO `track_segment` VALUES (8, 3, 'Straight', 1000000.00, 10000.00, NULL, NULL, 10.00, 150.00, 'Extreme test segment: 1000 km length, 10 km height, 10G force', '2025-11-26 14:14:35', '2025-11-26 14:14:35');
INSERT INTO `track_segment` VALUES (9, 15, 'Drop', 100.00, 45.00, 127.00, NULL, 4.20, 100.00, 'Hypothetical over-vertical dive segment at 127 degrees for analysis', '2025-11-26 15:31:56', '2025-11-26 15:31:56');
INSERT INTO `track_segment` VALUES (10, 16, 'Curve', 60.00, 15.00, 45.00, 10.00, 6.20, 100.00, 'High-G tight curve with radius below theoretical minimum for given speed', '2025-11-26 15:33:43', '2025-11-26 15:33:43');
INSERT INTO `track_segment` VALUES (11, 17, 'Drop', 2000.00, 60000.00, 75.00, 50.00, 6.50, 150.00, 'Extreme high-energy drop segment for energy-change test (>1e9 J).', '2025-11-26 15:35:17', '2025-11-26 15:35:17');
INSERT INTO `track_segment` VALUES (12, 18, 'Curve', 80.00, 12.00, 50.00, 8.00, 4.90, 120.00, 'High-speed tight-radius curve segment (<10 m radius, >100 km/h speed).', '2025-11-26 15:35:45', '2025-11-26 15:35:45');
INSERT INTO `track_segment` VALUES (13, 19, 'Drop', 10.00, -0.10, 180.00, NULL, 8.00, 5.10, 'Hypothetical vertical dive segment at 180 degrees for terminal velocity anomaly test', '2025-11-26 15:39:24', '2025-11-26 15:39:24');
INSERT INTO `track_segment` VALUES (1000, 100, 'Corkscrew', 80.00, 20.00, 60.00, 10.00, 5.50, 2000.00, 'Corkscrew segment with very high speed and small radius for centrifugal safety factor test', '2025-11-26 15:46:28', '2025-11-26 15:46:28');
INSERT INTO `track_segment` VALUES (1001, 101, 'Straight', 100.00, 0.00, 0.00, NULL, 1.00, 0.00, 'Start segment with low height and zero speed for energy change rate test', '2025-11-26 15:46:28', '2025-11-26 15:46:28');
INSERT INTO `track_segment` VALUES (1002, 101, 'Straight', 100.00, 1000000.00, 10.00, NULL, 8.00, 300.00, 'Next segment with very high height and high speed for large energy change rate', '2025-11-26 15:46:28', '2025-11-26 15:46:28');
INSERT INTO `track_segment` VALUES (1003, 100, 'Straight', 40.00, 15.00, 0.00, NULL, 4.50, 220.00, 'High-speed straight segment with short length for critical straight-segment detection', '2025-11-26 15:46:28', '2025-11-26 15:46:28');
INSERT INTO `track_segment` VALUES (1004, 100, 'Drop', 120.00, 60.00, 70.00, NULL, 3.80, 40.00, 'Drop segment with high height and relatively low speed for energy efficiency evaluation', '2025-11-26 15:46:28', '2025-11-26 15:46:28');
INSERT INTO `track_segment` VALUES (1005, 100, 'Loop', 60.00, 25.00, 360.00, 10.00, 6.20, 150.00, 'Loop segment with high speed and small radius for centripetal power consumption analysis', '2025-11-26 15:46:28', '2025-11-26 15:46:28');
INSERT INTO `track_segment` VALUES (1006, 5, 'Curve', 70.00, 18.00, 60.00, 15.00, 3.80, 110.00, 'High-angle high-G curve segment for safety analysis', '2025-11-26 15:55:24', '2025-11-26 15:55:24');
INSERT INTO `track_segment` VALUES (1007, 2, 'Straight', 50.00, 60.00, 90.00, 30.00, 4.50, 1300.00, 'Vertical ascent segment exceeding sound speed', '2025-11-26 15:56:59', '2025-11-26 15:56:59');

SET FOREIGN_KEY_CHECKS = 1;
