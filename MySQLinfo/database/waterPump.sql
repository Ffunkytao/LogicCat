/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : waterPump

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:31:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carbon_emissions
-- ----------------------------
DROP TABLE IF EXISTS `carbon_emissions`;
CREATE TABLE `carbon_emissions` (
  `id` int NOT NULL,
  `emission_factor` decimal(10,2) DEFAULT NULL,
  `annual_emissions_tonnes` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data` (
  `device_id` int DEFAULT NULL,
  `energy_saved` decimal(10,2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for fuzzy_membership
-- ----------------------------
DROP TABLE IF EXISTS `fuzzy_membership`;
CREATE TABLE `fuzzy_membership` (
  `id` int NOT NULL,
  `variable_name` varchar(50) DEFAULT NULL,
  `membership_level` varchar(50) DEFAULT NULL,
  `threshold_value` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  KEY `pump_id2` (`Pump_ID`) USING BTREE,
  CONSTRAINT `pump_id2` FOREIGN KEY (`Pump_ID`) REFERENCES `pump_specifications` (`Pump_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of maintenance_records
-- ----------------------------
BEGIN;
INSERT INTO `maintenance_records` VALUES (1, 34, '2023-12-15', 'Emergency', 'High current issue', 'Tech A', 500);
INSERT INTO `maintenance_records` VALUES (2, 35, '2023-12-10', 'Routine', 'Regular check', 'Tech B', 200);
INSERT INTO `maintenance_records` VALUES (3, 37, '2024-01-15', '紧急维修', '处理高电流问题', '张工', 800);
INSERT INTO `maintenance_records` VALUES (4, 39, '2024-05-05', '紧急检修', '异常电流处理', '测试工程师', 500);
INSERT INTO `maintenance_records` VALUES (5, 40, '2024-06-05', '紧急检修', '高电流问题', '张工', 600);
INSERT INTO `maintenance_records` VALUES (6, 41, '2024-06-18', '紧急检修', '高电流异常处理', '张工程师', 750);
INSERT INTO `maintenance_records` VALUES (7, 46, '2023-01-05', '预防性维护', '例行检查和清洁', '张三', 500);
INSERT INTO `maintenance_records` VALUES (8, 46, '2023-03-12', '零件更换', '更换密封件', '李四', 1200);
INSERT INTO `maintenance_records` VALUES (9, 46, '2023-06-01', '重大维修', '更换整个泵体', '高级技师', 9);
INSERT INTO `maintenance_records` VALUES (10, 11, '2023-02-01', '常规检查', '普通维护', '技师A', 10000);
INSERT INTO `maintenance_records` VALUES (11, 11, '2023-03-01', '重大维修', '完全更换系统', '专家团队', 1);
INSERT INTO `maintenance_records` VALUES (12, 11, '2023-02-10', '零件更换', '更换密封圈', '李技术员', 800);
INSERT INTO `maintenance_records` VALUES (13, 11, '2023-03-05', '清洁保养', '系统清洁', '王技术员', 300);
INSERT INTO `maintenance_records` VALUES (14, 11, '2023-04-20', '检查调试', '性能调试', '张技术员', 600);
INSERT INTO `maintenance_records` VALUES (15, 11, '2023-05-15', '零件更换', '更换轴承', '李技术员', 1200);
INSERT INTO `maintenance_records` VALUES (16, 11, '2023-06-10', '例行检查', '季度检查', '王技术员', 500);
INSERT INTO `maintenance_records` VALUES (17, 11, '2023-07-05', '紧急维修', '电机维修', '张技术员', 1500);
INSERT INTO `maintenance_records` VALUES (100, 54, '2023-01-01', '更换零件', NULL, NULL, 5000);
INSERT INTO `maintenance_records` VALUES (101, 54, '2023-03-15', '例行检查', NULL, NULL, 1200);
INSERT INTO `maintenance_records` VALUES (102, 54, '2023-02-10', '紧急维修', NULL, NULL, 3500);
INSERT INTO `maintenance_records` VALUES (103, 54, '2023-01-15', '更换零件', NULL, NULL, 4500);
INSERT INTO `maintenance_records` VALUES (10001, 100, '2023-02-02', '常规检查', '日常维护1', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10002, 100, '2023-02-03', '常规检查', '日常维护2', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10003, 100, '2023-02-04', '常规检查', '日常维护3', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10004, 100, '2023-02-05', '常规检查', '日常维护4', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10005, 100, '2023-02-06', '常规检查', '日常维护5', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10006, 100, '2023-02-07', '常规检查', '日常维护6', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10007, 100, '2023-02-08', '常规检查', '日常维护7', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10008, 100, '2023-02-09', '常规检查', '日常维护8', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10009, 100, '2023-02-10', '常规检查', '日常维护9', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10010, 100, '2023-02-11', '常规检查', '日常维护10', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10011, 100, '2023-02-12', '常规检查', '日常维护11', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10012, 100, '2023-02-13', '常规检查', '日常维护12', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10013, 100, '2023-02-14', '常规检查', '日常维护13', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10014, 100, '2023-02-15', '常规检查', '日常维护14', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10015, 100, '2023-02-16', '常规检查', '日常维护15', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10016, 100, '2023-02-17', '常规检查', '日常维护16', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10017, 100, '2023-02-18', '常规检查', '日常维护17', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10018, 100, '2023-02-19', '常规检查', '日常维护18', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10019, 100, '2023-02-20', '常规检查', '日常维护19', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10020, 100, '2023-02-21', '常规检查', '日常维护20', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10021, 100, '2023-02-22', '常规检查', '日常维护21', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10022, 100, '2023-02-23', '常规检查', '日常维护22', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10023, 100, '2023-02-24', '常规检查', '日常维护23', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10024, 100, '2023-02-25', '常规检查', '日常维护24', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10025, 100, '2023-02-26', '常规检查', '日常维护25', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10026, 100, '2023-02-27', '常规检查', '日常维护26', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10027, 100, '2023-02-28', '常规检查', '日常维护27', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10028, 100, '2023-03-01', '常规检查', '日常维护28', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10029, 100, '2023-03-02', '常规检查', '日常维护29', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10030, 100, '2023-03-03', '常规检查', '日常维护30', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10031, 100, '2023-03-04', '常规检查', '日常维护31', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10032, 100, '2023-03-05', '常规检查', '日常维护32', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10033, 100, '2023-03-06', '常规检查', '日常维护33', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10034, 100, '2023-03-07', '常规检查', '日常维护34', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10035, 100, '2023-03-08', '常规检查', '日常维护35', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10036, 100, '2023-03-09', '常规检查', '日常维护36', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10037, 100, '2023-03-10', '常规检查', '日常维护37', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10038, 100, '2023-03-11', '常规检查', '日常维护38', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10039, 100, '2023-03-12', '常规检查', '日常维护39', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10040, 100, '2023-03-13', '常规检查', '日常维护40', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10041, 100, '2023-03-14', '常规检查', '日常维护41', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10042, 100, '2023-03-15', '常规检查', '日常维护42', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10043, 100, '2023-03-16', '常规检查', '日常维护43', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10044, 100, '2023-03-17', '常规检查', '日常维护44', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10045, 100, '2023-03-18', '常规检查', '日常维护45', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10046, 100, '2023-03-19', '常规检查', '日常维护46', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10047, 100, '2023-03-20', '常规检查', '日常维护47', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10048, 100, '2023-03-21', '常规检查', '日常维护48', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10049, 100, '2023-03-22', '常规检查', '日常维护49', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10050, 100, '2023-03-23', '常规检查', '日常维护50', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10051, 100, '2023-03-24', '常规检查', '日常维护51', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10052, 100, '2023-03-25', '常规检查', '日常维护52', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10053, 100, '2023-03-26', '常规检查', '日常维护53', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10054, 100, '2023-03-27', '常规检查', '日常维护54', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10055, 100, '2023-03-28', '常规检查', '日常维护55', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10056, 100, '2023-03-29', '常规检查', '日常维护56', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10057, 100, '2023-03-30', '常规检查', '日常维护57', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10058, 100, '2023-03-31', '常规检查', '日常维护58', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10059, 100, '2023-04-01', '常规检查', '日常维护59', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10060, 100, '2023-04-02', '常规检查', '日常维护60', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10061, 100, '2023-04-03', '常规检查', '日常维护61', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10062, 100, '2023-04-04', '常规检查', '日常维护62', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10063, 100, '2023-04-05', '常规检查', '日常维护63', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10064, 100, '2023-04-06', '常规检查', '日常维护64', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10065, 100, '2023-04-07', '常规检查', '日常维护65', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10066, 100, '2023-04-08', '常规检查', '日常维护66', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10067, 100, '2023-04-09', '常规检查', '日常维护67', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10068, 100, '2023-04-10', '常规检查', '日常维护68', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10069, 100, '2023-04-11', '常规检查', '日常维护69', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10070, 100, '2023-04-12', '常规检查', '日常维护70', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10071, 100, '2023-04-13', '常规检查', '日常维护71', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10072, 100, '2023-04-14', '常规检查', '日常维护72', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10073, 100, '2023-04-15', '常规检查', '日常维护73', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10074, 100, '2023-04-16', '常规检查', '日常维护74', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10075, 100, '2023-04-17', '常规检查', '日常维护75', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10076, 100, '2023-04-18', '常规检查', '日常维护76', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10077, 100, '2023-04-19', '常规检查', '日常维护77', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10078, 100, '2023-04-20', '常规检查', '日常维护78', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10079, 100, '2023-04-21', '常规检查', '日常维护79', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10080, 100, '2023-04-22', '常规检查', '日常维护80', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10081, 100, '2023-04-23', '常规检查', '日常维护81', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10082, 100, '2023-04-24', '常规检查', '日常维护82', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10083, 100, '2023-04-25', '常规检查', '日常维护83', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10084, 100, '2023-04-26', '常规检查', '日常维护84', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10085, 100, '2023-04-27', '常规检查', '日常维护85', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10086, 100, '2023-04-28', '常规检查', '日常维护86', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10087, 100, '2023-04-29', '常规检查', '日常维护87', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10088, 100, '2023-04-30', '常规检查', '日常维护88', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10089, 100, '2023-05-01', '常规检查', '日常维护89', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10090, 100, '2023-05-02', '常规检查', '日常维护90', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10091, 100, '2023-05-03', '常规检查', '日常维护91', '技师A', 1);
INSERT INTO `maintenance_records` VALUES (10092, 100, '2023-05-04', '常规检查', '日常维护92', '技师B', 1);
INSERT INTO `maintenance_records` VALUES (10093, 100, '2023-05-05', '常规检查', '日常维护93', '技师C', 1);
INSERT INTO `maintenance_records` VALUES (10094, 100, '2023-05-06', '常规检查', '日常维护94', '技师D', 1);
INSERT INTO `maintenance_records` VALUES (10095, 100, '2023-05-07', '常规检查', '日常维护95', '技师E', 1);
INSERT INTO `maintenance_records` VALUES (10096, 100, '2023-05-08', '常规检查', '日常维护96', '技师F', 1);
INSERT INTO `maintenance_records` VALUES (10097, 100, '2023-05-09', '常规检查', '日常维护97', '技师G', 1);
INSERT INTO `maintenance_records` VALUES (10098, 100, '2023-05-10', '常规检查', '日常维护98', '技师H', 1);
INSERT INTO `maintenance_records` VALUES (10099, 100, '2023-05-11', '常规检查', '日常维护99', '技师I', 1);
INSERT INTO `maintenance_records` VALUES (10100, 100, '2023-05-12', '常规检查', '日常维护100', '技师@', 1);
INSERT INTO `maintenance_records` VALUES (10101, 100, '2023-05-15', '重大事故', '系统完全更换', '专家团队', 10003);
COMMIT;

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
  KEY `pump_id` (`Pump_ID`) USING BTREE,
  CONSTRAINT `pump_id` FOREIGN KEY (`Pump_ID`) REFERENCES `pumps` (`Pump_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pump_specifications
-- ----------------------------
BEGIN;
INSERT INTO `pump_specifications` VALUES (1, 1, 50, 30, 5, 220, 25, 85);
INSERT INTO `pump_specifications` VALUES (2, 1, 55, 32, 6, 220, 27, 86);
INSERT INTO `pump_specifications` VALUES (3, 2, 60, 35, 7, 380, 20, 88);
INSERT INTO `pump_specifications` VALUES (4, 2, 65, 38, 8, 380, 22, 89);
INSERT INTO `pump_specifications` VALUES (5, 3, 70, 40, 9, 220, 30, 90);
INSERT INTO `pump_specifications` VALUES (6, 3, 75, 42, 9, 220, 32, 91);
INSERT INTO `pump_specifications` VALUES (7, 4, 80, 45, 10, 380, 25, 92);
INSERT INTO `pump_specifications` VALUES (8, 4, 85, 48, 10, 380, 27, 93);
INSERT INTO `pump_specifications` VALUES (9, 5, 90, 50, 11, 220, 35, 94);
INSERT INTO `pump_specifications` VALUES (10, 5, 95, 52, 11, 220, 37, 95);
INSERT INTO `pump_specifications` VALUES (11, 6, 100, 55, 12, 380, 30, 96);
INSERT INTO `pump_specifications` VALUES (12, 6, 105, 58, 12, 380, 32, 97);
INSERT INTO `pump_specifications` VALUES (13, 7, 110, 60, 13, 220, 40, 98);
INSERT INTO `pump_specifications` VALUES (14, 7, 115, 62, 13, 220, 42, 99);
INSERT INTO `pump_specifications` VALUES (15, 8, 120, 65, 14, 380, 35, 95);
INSERT INTO `pump_specifications` VALUES (16, 1, 100, 50, 10, 380, 26, 88);
INSERT INTO `pump_specifications` VALUES (17, 2, 80, 40, 1, 220, 5, 78);
INSERT INTO `pump_specifications` VALUES (18, 16, 1000, 1000, 10000, 380, 15, 85);
INSERT INTO `pump_specifications` VALUES (19, 17, 1000, 1000, 5000, 380, 8, 86);
INSERT INTO `pump_specifications` VALUES (20, 18, 500, 1000, 10000, 380, 15, 88);
INSERT INTO `pump_specifications` VALUES (21, 19, 1000, 500, 10000, 380, 15, 75);
INSERT INTO `pump_specifications` VALUES (22, 20, 1000, 1000, 10000, 380, 15, 27);
INSERT INTO `pump_specifications` VALUES (23, 16, 500, 80, 500, 1000000, 10000, 78);
INSERT INTO `pump_specifications` VALUES (24, 17, 600, 90, 600, 1000000, 5000, 82);
INSERT INTO `pump_specifications` VALUES (25, 18, 700, 100, 700, 500000, 10000, 85);
INSERT INTO `pump_specifications` VALUES (26, 19, 800, 110, 800, 1000000, 10000, 89);
INSERT INTO `pump_specifications` VALUES (27, 20, 900, 120, 900, 1000000, 15000, 91);
INSERT INTO `pump_specifications` VALUES (28, 21, 150, 60, 15, 220, 30, 82);
INSERT INTO `pump_specifications` VALUES (29, 22, 1000000, 10000, 1000000, 10000, 100, NULL);
INSERT INTO `pump_specifications` VALUES (30, 23, 10000, 1000, NULL, 10000, 100, 200);
INSERT INTO `pump_specifications` VALUES (31, 24, 5000, 800, 500, 6000, 50, 85);
INSERT INTO `pump_specifications` VALUES (32, 25, 15000, 1200, 800, 11000, 120, 180);
INSERT INTO `pump_specifications` VALUES (33, 24, 200, 80, NULL, 380, 15, 85);
INSERT INTO `pump_specifications` VALUES (34, 27, 10000, 1000, 10000, 10000, 1000, NULL);
INSERT INTO `pump_specifications` VALUES (35, 28, 50, 30, 2, 220, 10, 75);
INSERT INTO `pump_specifications` VALUES (36, 29, 100, 50, 5, 380, 8, 85);
INSERT INTO `pump_specifications` VALUES (37, 30, 100, 50, NULL, 380, 10, 80);
INSERT INTO `pump_specifications` VALUES (38, 31, 100, 50, 15, 380, 30, 80);
INSERT INTO `pump_specifications` VALUES (39, 32, 100, 50, 15, 380, 10, 80);
INSERT INTO `pump_specifications` VALUES (40, 33, 100, 50, 15, 380, 30, 80);
INSERT INTO `pump_specifications` VALUES (41, 34, 100, 50, 15, 380, 30, 80);
INSERT INTO `pump_specifications` VALUES (42, 35, 100, 50, 15, 380, 10, 80);
INSERT INTO `pump_specifications` VALUES (43, 36, 100, 50, 15, 380, 30, 80);
INSERT INTO `pump_specifications` VALUES (44, 37, 100, 50, 15, 380, 10, 80);
INSERT INTO `pump_specifications` VALUES (45, 37, 100, 50, 15, 380, 50, 80);
INSERT INTO `pump_specifications` VALUES (46, 38, 100, 50, 15, 380, 10, 80);
INSERT INTO `pump_specifications` VALUES (47, 39, 100, 50, 15, 380, 10, 80);
INSERT INTO `pump_specifications` VALUES (48, 39, 100, 50, 15, 380, 30, 80);
INSERT INTO `pump_specifications` VALUES (49, 40, 100, 50, 16, 380, 10, 85);
INSERT INTO `pump_specifications` VALUES (50, 40, 100, 50, 16, 380, 30, 85);
INSERT INTO `pump_specifications` VALUES (51, 41, 80, 45, 12, 380, 8, 78);
INSERT INTO `pump_specifications` VALUES (52, 41, 85, 48, 13, 380, 9, 80);
INSERT INTO `pump_specifications` VALUES (53, 41, 100, 50, 15, 380, 35, 82);
INSERT INTO `pump_specifications` VALUES (54, 42, 80, 40, 10, 220, 50, 88);
INSERT INTO `pump_specifications` VALUES (55, 42, 90, 45, 15, 380, 30, 85);
INSERT INTO `pump_specifications` VALUES (56, 42, 1000, 1000, NULL, 10000, 100, 200);
INSERT INTO `pump_specifications` VALUES (57, 43, 10000, 1000, 1000, 10000, 100, 27);
INSERT INTO `pump_specifications` VALUES (58, 44, 5000, 800, 500, 6000, 50, 85);
INSERT INTO `pump_specifications` VALUES (60, 46, 80, 40, 4, 380, 8, 82);
INSERT INTO `pump_specifications` VALUES (61, 11, 100, 50, 5, 380, 10, 85);
INSERT INTO `pump_specifications` VALUES (62, 47, 150, 60, 7, 440, 12, 88);
INSERT INTO `pump_specifications` VALUES (63, 12, 200, 30, 15, 380, 40, 85);
INSERT INTO `pump_specifications` VALUES (64, 13, 1000, 1000, 1000, 10000, 100, 85);
INSERT INTO `pump_specifications` VALUES (66, 14, 10000, 1000, 1000, 10000, 1000, 200);
INSERT INTO `pump_specifications` VALUES (67, 42, 500, 80, 100, 380, 150, 85);
INSERT INTO `pump_specifications` VALUES (69, 49, 300, 50, 75, 400, 120, 90);
INSERT INTO `pump_specifications` VALUES (70, 50, 250, 35, 60, 220, 200, 85);
INSERT INTO `pump_specifications` VALUES (71, 51, 10000, 1000, 5000, 10000, 500, 95);
INSERT INTO `pump_specifications` VALUES (72, 52, 100, 50, 10, 220, 45, 85);
INSERT INTO `pump_specifications` VALUES (73, 54, 100, 50, 10, NULL, NULL, 85);
INSERT INTO `pump_specifications` VALUES (74, 55, 100, 50, 10, 220, 45, 85);
INSERT INTO `pump_specifications` VALUES (75, 56, 120, 60, 12, 220, 50, 90);
INSERT INTO `pump_specifications` VALUES (76, 57, 1000, 1000, 1000, 1000, 1000, 100);
INSERT INTO `pump_specifications` VALUES (77, 58, 100, 50, 10, NULL, NULL, 80);
INSERT INTO `pump_specifications` VALUES (78, 59, 150, 60, 15, NULL, NULL, 85);
INSERT INTO `pump_specifications` VALUES (1000, 100, 100, 50, 5, 380, 10, 85);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pumps
-- ----------------------------
BEGIN;
INSERT INTO `pumps` VALUES (1, 'P-1001', '上海水泵厂', '2023-01-15', 12, '工厂A', 'active');
INSERT INTO `pumps` VALUES (2, 'P-1002', '北京水泵厂', '2023-02-20', 24, '工厂B', 'inactive');
INSERT INTO `pumps` VALUES (3, 'P-1003', '广州水泵厂', '2023-03-10', 18, '工厂C', 'under_maintenance');
INSERT INTO `pumps` VALUES (4, 'P-1004', '深圳水泵厂', '2023-04-05', 12, '工厂D', 'active');
INSERT INTO `pumps` VALUES (5, 'P-1005', '杭州水泵厂', '2023-05-12', 24, '工厂E', 'active');
INSERT INTO `pumps` VALUES (6, 'P-1006', '南京水泵厂', '2023-06-18', 18, '工厂F', 'inactive');
INSERT INTO `pumps` VALUES (7, 'P-1007', '武汉水泵厂', '2023-07-22', 12, '工厂G', 'under_maintenance');
INSERT INTO `pumps` VALUES (8, 'P-1008', '成都水泵厂', '2023-08-30', 24, '工厂H', 'active');
INSERT INTO `pumps` VALUES (9, 'P-1009', '重庆水泵厂', '2023-09-05', 18, '工厂I', 'active');
INSERT INTO `pumps` VALUES (10, 'P-1010', '苏州水泵厂', '2023-10-10', 12, '工厂J', 'inactive');
INSERT INTO `pumps` VALUES (11, 'P-11-Test', 'Test Pumps', '2023-01-01', 12, 'Test Location', 'active');
INSERT INTO `pumps` VALUES (12, 'P-1012', '西安水泵厂', '2023-12-20', 18, '工厂L', 'active');
INSERT INTO `pumps` VALUES (13, 'P-1013', '青岛水泵厂', '2024-01-25', 12, '工厂M', 'active');
INSERT INTO `pumps` VALUES (14, 'P-1014', '大连水泵厂', '2024-02-28', 24, '工厂N', 'inactive');
INSERT INTO `pumps` VALUES (15, 'P-1015', '厦门水泵厂', '2024-03-05', 18, '工厂O', 'under_maintenance');
INSERT INTO `pumps` VALUES (16, 'P-1000', 'PumpCo', '2022-01-01', 24, 'Main Plant', 'active');
INSERT INTO `pumps` VALUES (17, 'P-2000', 'WaterTech', '2022-01-01', 24, 'Secondary Plant', 'active');
INSERT INTO `pumps` VALUES (18, 'P-3000', 'FlowMaster', '2022-01-01', 12, 'Warehouse', 'active');
INSERT INTO `pumps` VALUES (19, 'P-4000', 'PumpCo', '2021-12-15', 24, 'Main Plant', 'inactive');
INSERT INTO `pumps` VALUES (20, 'P-5000', 'AquaSystems', '2022-01-01', 24, 'Boiler Room', 'under_maintenance');
INSERT INTO `pumps` VALUES (21, 'P-2100', 'HydroTech', '2023-05-10', 24, 'Cooling System', 'active');
INSERT INTO `pumps` VALUES (22, 'P-2200', 'WarrantyMaster', '2023-01-15', 24, 'Maintenance Depot', 'active');
INSERT INTO `pumps` VALUES (23, 'P-2300', 'PumpMaster', '2022-01-01', 12, 'Plant A', 'active');
INSERT INTO `pumps` VALUES (24, 'P-2400', 'HydroTech', '2022-06-15', 24, 'Plant B', 'active');
INSERT INTO `pumps` VALUES (25, 'P-2500', 'FlowKing', '2023-01-01', 6, 'Plant C', 'inactive');
INSERT INTO `pumps` VALUES (27, 'P-10000', 'MegaPump', '2023-08-01', 36, 'Main Power Plant', 'active');
INSERT INTO `pumps` VALUES (28, 'P-220V', 'VoltMaster', '2023-09-01', 12, 'Electrical Room', 'active');
INSERT INTO `pumps` VALUES (29, 'P-100-50', 'EfficientFlow', '2023-10-01', 12, 'Cooling System', 'active');
INSERT INTO `pumps` VALUES (30, 'P-100-50-80', 'PrecisionPump', '2023-11-01', 12, 'Water Treatment', 'active');
INSERT INTO `pumps` VALUES (31, 'P-31-HighCurrent', 'CurrentTech', '2023-12-01', 12, 'Plant A', 'active');
INSERT INTO `pumps` VALUES (32, 'P-32-Normal', 'StandardPump', '2023-12-01', 12, 'Plant B', 'active');
INSERT INTO `pumps` VALUES (33, 'P-33-Inactive', 'OldTech', '2023-12-01', 12, 'Plant C', 'inactive');
INSERT INTO `pumps` VALUES (34, 'P-34-HighCurrent', 'CurrentTech', '2023-12-01', 12, 'Plant A', 'active');
INSERT INTO `pumps` VALUES (35, 'P-35-Normal', 'StandardPump', '2023-12-01', 12, 'Plant B', 'active');
INSERT INTO `pumps` VALUES (36, 'P-36-Inactive', 'OldTech', '2023-12-01', 12, 'Plant C', 'inactive');
INSERT INTO `pumps` VALUES (37, 'P-37-HighCurrent', 'CurrentTech', '2024-01-01', 12, 'Plant A', 'active');
INSERT INTO `pumps` VALUES (38, 'P-38-Normal', 'StandardPump', '2024-01-01', 12, 'Plant B', 'active');
INSERT INTO `pumps` VALUES (39, 'P-42-Test', 'TestTech', '2024-05-01', 12, 'Test Plant', 'active');
INSERT INTO `pumps` VALUES (40, 'P-40-Efficient', 'EcoPump', '2024-06-01', 24, 'Main Plant', 'active');
INSERT INTO `pumps` VALUES (41, 'P-41-CurrentAlert', 'VoltMaster', '2024-06-15', 12, 'North Plant', 'active');
INSERT INTO `pumps` VALUES (42, 'P-42-TestUnit', 'ElecTech', '2024-06-25', 12, 'Test Lab', 'active');
INSERT INTO `pumps` VALUES (43, 'P-43-WarrantyDemo', 'DuraPump', '2020-01-01', 24, 'Main Facility', 'active');
INSERT INTO `pumps` VALUES (44, 'P-44-Comparison', 'QuickFlow', '2020-01-15', 12, 'Auxiliary Site', 'active');
INSERT INTO `pumps` VALUES (45, 'P-45-HighMaintenance', 'ABC Pumps', '2023-01-01', 24, 'Building A', 'active');
INSERT INTO `pumps` VALUES (46, 'P-11-Standard', 'XYZ Pumps', '2022-06-15', 36, 'Building B', 'active');
INSERT INTO `pumps` VALUES (47, 'P-47-Test', 'Test Pumps', '2023-01-01', 12, 'Test Location', 'active');
INSERT INTO `pumps` VALUES (49, 'PMP-MONTHLY-1', 'EnergySave Inc.', '2025-06-03', 24, NULL, 'active');
INSERT INTO `pumps` VALUES (50, 'PMP-220V-50', 'PowerFlow Tech', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (51, 'PMP-HIGH-1', 'MegaFlow Systems', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (52, 'PMP-SM-100', 'EcoPump Solutions', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (53, 'PMP-WARR-36', 'WarrantyPlus Inc.', '2020-01-01', 36, NULL, 'active');
INSERT INTO `pumps` VALUES (54, 'PMP-MAINT-54', 'MaintainPro', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (55, 'PMP-ENERGY-1', 'EcoPower Systems', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (56, 'PMP-DAILY-8H', 'DayLong Pumps', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (57, 'PMP-MAX-1000', 'IndustrialPower', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (58, 'PMP-OUTPUT-100', 'HydroDynamic', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (59, 'PMP-ANNUAL-15KW', 'YearRound Pumps', NULL, NULL, NULL, 'active');
INSERT INTO `pumps` VALUES (65, 'PMP-2021-005', 'WarrantyMaster', '2021-01-01', 24, 'Building E', 'active');
INSERT INTO `pumps` VALUES (100, 'P-100-Test', 'Test Pumps', '2023-01-01', 12, 'Test Location', 'active');
COMMIT;

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
  KEY `pump_id3` (`pump_ID`) USING BTREE,
  KEY `user_id1` (`User_ID`) USING BTREE,
  CONSTRAINT `pump_id3` FOREIGN KEY (`pump_ID`) REFERENCES `pumps` (`Pump_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of usage_records
-- ----------------------------
BEGIN;
INSERT INTO `usage_records` VALUES (1, 1, 2, '2023-01-01 08:00:00', '2023-01-01 12:00:00', 4, '正常使用');
INSERT INTO `usage_records` VALUES (2, 1, 3, '2023-01-02 09:00:00', '2023-01-02 13:00:00', 4, '例行检查');
INSERT INTO `usage_records` VALUES (3, 2, 4, '2023-01-03 10:00:00', '2023-01-03 14:00:00', 4, '测试运行');
INSERT INTO `usage_records` VALUES (4, 2, 5, '2023-01-04 11:00:00', '2023-01-04 15:00:00', 4, '正常使用');
INSERT INTO `usage_records` VALUES (5, 3, 6, '2023-01-05 12:00:00', '2023-01-05 16:00:00', 4, '例行检查');
INSERT INTO `usage_records` VALUES (6, 3, 7, '2023-01-06 13:00:00', '2023-01-06 17:00:00', 4, '测试运行');
INSERT INTO `usage_records` VALUES (7, 4, 8, '2023-01-07 14:00:00', '2023-01-07 18:00:00', 4, '正常使用');
INSERT INTO `usage_records` VALUES (8, 4, 9, '2023-01-08 15:00:00', '2023-01-08 19:00:00', 4, '例行检查');
INSERT INTO `usage_records` VALUES (9, 5, 10, '2023-01-09 16:00:00', '2023-01-09 20:00:00', 4, '测试运行');
INSERT INTO `usage_records` VALUES (10, 5, 11, '2023-01-10 17:00:00', '2023-01-10 21:00:00', 4, '正常使用');
INSERT INTO `usage_records` VALUES (11, 6, 12, '2023-01-11 18:00:00', '2023-01-11 22:00:00', 4, '例行检查');
INSERT INTO `usage_records` VALUES (12, 6, 13, '2023-01-12 19:00:00', '2023-01-12 23:00:00', 4, '测试运行');
INSERT INTO `usage_records` VALUES (13, 7, 14, '2023-01-13 20:00:00', '2023-01-14 00:00:00', 4, '正常使用');
INSERT INTO `usage_records` VALUES (14, 7, 15, '2023-01-14 21:00:00', '2023-01-15 01:00:00', 4, '例行检查');
INSERT INTO `usage_records` VALUES (15, 8, 2, '2023-01-15 22:00:00', '2023-01-16 02:00:00', 4, '测试运行');
INSERT INTO `usage_records` VALUES (16, 21, 5, '2023-06-01 08:00:00', '2023-06-01 16:00:00', 8, 'Regular operation');
INSERT INTO `usage_records` VALUES (17, 23, 5, '2022-01-01 08:00:00', '2022-12-31 20:00:00', 8760, '1年使用');
INSERT INTO `usage_records` VALUES (18, 24, 5, '2022-06-15 08:00:00', '2023-06-15 20:00:00', 8760, '1年使用');
INSERT INTO `usage_records` VALUES (19, 24, 2, '2023-06-16 08:00:00', '2023-12-31 20:00:00', 2000, '额外使用');
INSERT INTO `usage_records` VALUES (20, 25, 1, '2023-01-01 08:00:00', '2023-06-30 20:00:00', 4000, '半年使用');
INSERT INTO `usage_records` VALUES (24, 34, 1, '2024-01-01 08:00:00', '2024-01-01 16:00:00', 8, 'High current operation');
INSERT INTO `usage_records` VALUES (25, 35, 1, '2024-01-01 08:00:00', '2024-01-01 16:00:00', 8, 'Normal operation');
INSERT INTO `usage_records` VALUES (26, 34, 1, '2024-01-02 08:00:00', '2024-01-02 16:00:00', 8, 'Follow-up check');
INSERT INTO `usage_records` VALUES (27, 37, 1, '2024-02-01 08:00:00', '2024-02-01 16:00:00', 8, '高电流运行记录');
INSERT INTO `usage_records` VALUES (28, 39, 1, '2024-05-10 08:00:00', '2024-05-10 16:00:00', 8, '异常电流运行');
INSERT INTO `usage_records` VALUES (29, 40, 1, '2024-06-10 08:00:00', '2024-06-10 16:00:00', 8, '高电流运行');
INSERT INTO `usage_records` VALUES (30, 41, 1, '2024-06-20 08:00:00', '2024-06-20 18:00:00', 10, '高电流报警运行');
INSERT INTO `usage_records` VALUES (31, 46, NULL, '2023-01-01 08:00:00', '2023-01-01 18:00:00', 10, '日常运行');
INSERT INTO `usage_records` VALUES (32, 46, NULL, '2023-01-02 08:00:00', '2023-01-02 17:30:00', 9.5, '日常运行');
INSERT INTO `usage_records` VALUES (33, 49, 1, '2023-10-01 08:00:00', '2023-10-01 18:00:00', 10, '月度能耗计算');
INSERT INTO `usage_records` VALUES (100, 11, NULL, '2023-01-01 08:00:00', '2023-01-01 18:00:00', 10, 'Test usage');
INSERT INTO `usage_records` VALUES (101, 47, NULL, '2023-01-01 08:00:00', '2023-01-01 18:00:00', 10, 'Test usage');
INSERT INTO `usage_records` VALUES (200, 55, 1, NULL, NULL, 1, NULL);
INSERT INTO `usage_records` VALUES (1000, 100, NULL, '2023-01-01 08:00:00', '2023-01-01 18:00:00', 10, 'Test usage');
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, '管理员1', 'admin123', 'admin1@example.com', '12345678901', 'admin');
INSERT INTO `users` VALUES (2, '操作员1', 'operator123', 'operator1@example.com', '12345678902', 'operator');
INSERT INTO `users` VALUES (3, '查看员1', 'viewer123', 'viewer1@example.com', '12345678903', 'viewer');
INSERT INTO `users` VALUES (4, '用户1', 'user123', 'user1@example.com', '12345678904', 'operator');
INSERT INTO `users` VALUES (5, '用户2', 'user123', 'user2@example.com', '12345678905', 'operator');
INSERT INTO `users` VALUES (6, '用户3', 'user123', 'user3@example.com', '12345678906', 'operator');
INSERT INTO `users` VALUES (7, '用户4', 'user123', 'user4@example.com', '12345678907', 'operator');
INSERT INTO `users` VALUES (8, '用户5', 'user123', 'user5@example.com', '12345678908', 'operator');
INSERT INTO `users` VALUES (9, '用户6', 'user123', 'user6@example.com', '12345678909', 'operator');
INSERT INTO `users` VALUES (10, '用户7', 'user123', 'user7@example.com', '12345678910', 'operator');
INSERT INTO `users` VALUES (11, '用户8', 'user123', 'user8@example.com', '12345678911', 'operator');
INSERT INTO `users` VALUES (12, '用户9', 'user123', 'user9@example.com', '12345678912', 'operator');
INSERT INTO `users` VALUES (13, '用户10', 'user123', 'user10@example.com', '12345678913', 'operator');
INSERT INTO `users` VALUES (14, '用户11', 'user123', 'user11@example.com', '12345678914', 'operator');
INSERT INTO `users` VALUES (15, '用户12', 'user123', 'user12@example.com', '12345678915', 'operator');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
