/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : yacht

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/01/2025 00:42:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charters
-- ----------------------------
DROP TABLE IF EXISTS `charters`;
CREATE TABLE `charters` (
  `Charter_ID` int NOT NULL AUTO_INCREMENT COMMENT '租赁记录唯一标识',
  `Yacht_ID` int NOT NULL COMMENT '游艇ID',
  `Customer_ID` int NOT NULL COMMENT '客户ID',
  `Start_Date` date NOT NULL COMMENT '租赁开始日期',
  `End_Date` date NOT NULL COMMENT '租赁结束日期',
  `Total_Cost` decimal(15,2) NOT NULL COMMENT '总费用（美元）',
  `Deposit` decimal(15,2) NOT NULL COMMENT '押金（美元）',
  `Payment_Status` enum('Paid','Pending','Cancelled') NOT NULL COMMENT '支付状态',
  `Charter_Type` enum('Daily','Weekly','Monthly') NOT NULL COMMENT '租赁类型',
  `Passenger_Count` int NOT NULL COMMENT '乘客数量',
  `Additional_Services` text COMMENT '附加服务（JSON格式）',
  `Insurance_Coverage` enum('Basic','Premium','Full') NOT NULL COMMENT '保险覆盖范围',
  `Cancellation_Policy` enum('Flexible','Moderate','Strict') NOT NULL COMMENT '取消政策',
  `Special_Requests` text COMMENT '特殊要求',
  `Charter_Agreement` text COMMENT '租赁协议内容',
  `Check_In_Status` enum('Pending','Completed') NOT NULL COMMENT '入住状态',
  `Check_Out_Status` enum('Pending','Completed') NOT NULL COMMENT '退房状态',
  `Payment_Method` enum('Credit Card','Bank Transfer','Cash') DEFAULT NULL,
  `Discount_Applied` decimal(15,2) DEFAULT NULL,
  `Cancellation_Reason` text,
  PRIMARY KEY (`Charter_ID`),
  KEY `Yacht_ID` (`Yacht_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `charters_ibfk_1` FOREIGN KEY (`Yacht_ID`) REFERENCES `yachts` (`Yacht_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `charters_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for crew
-- ----------------------------
DROP TABLE IF EXISTS `crew`;
CREATE TABLE `crew` (
  `Crew_ID` int NOT NULL AUTO_INCREMENT COMMENT '船员唯一标识',
  `Yacht_ID` int NOT NULL COMMENT '游艇ID',
  `Name` varchar(100) NOT NULL COMMENT '船员姓名',
  `Role` enum('Captain','First Mate','Engineer','Deckhand','Chef','Steward','Medical Officer') NOT NULL COMMENT '船员角色',
  `Nationality` varchar(50) NOT NULL COMMENT '国籍',
  `Date_of_Birth` date NOT NULL COMMENT '出生日期',
  `Experience_Years` int NOT NULL COMMENT '工作经验（年）',
  `Certification` varchar(100) DEFAULT NULL COMMENT '船员证书',
  `Salary` decimal(10,2) NOT NULL COMMENT '薪资（美元/月）',
  `Contract_Start_Date` date NOT NULL COMMENT '合同开始日期',
  `Contract_End_Date` date DEFAULT NULL COMMENT '合同结束日期',
  `Emergency_Contact_Name` varchar(100) DEFAULT NULL COMMENT '紧急联系人姓名',
  `Emergency_Contact_Phone` varchar(20) DEFAULT NULL COMMENT '紧急联系人电话',
  `Medical_Conditions` text COMMENT '健康状况',
  `Training_Completed` text COMMENT '已完成培训',
  `Passport_Number` varchar(255) DEFAULT NULL,
  `Languages_Spoken` text,
  `Last_Training_Date` date DEFAULT NULL,
  PRIMARY KEY (`Crew_ID`),
  KEY `Yacht_ID` (`Yacht_ID`),
  CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`Yacht_ID`) REFERENCES `yachts` (`Yacht_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT COMMENT '客户唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '客户姓名',
  `Email` varchar(100) DEFAULT NULL COMMENT '客户邮箱',
  `Phone` varchar(20) DEFAULT NULL COMMENT '客户电话',
  `Address` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `City` varchar(100) DEFAULT NULL COMMENT '客户所在城市',
  `State` varchar(100) DEFAULT NULL COMMENT '客户所在州',
  `Country` varchar(100) DEFAULT NULL COMMENT '客户所在国家',
  `Postal_Code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `Registration_Date` date DEFAULT NULL COMMENT '注册日期',
  `Customer_Type` enum('Individual','Business') NOT NULL COMMENT '客户类型',
  `Company_Name` varchar(255) DEFAULT NULL,
  `Preferred_Contact_Method` enum('Phone','Email') DEFAULT 'Email',
  `Loyalty_Points` int DEFAULT '0',
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for performance_metrics
-- ----------------------------
DROP TABLE IF EXISTS `performance_metrics`;
CREATE TABLE `performance_metrics` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT COMMENT '性能指标唯一标识',
  `Yacht_ID` int NOT NULL COMMENT '游艇ID',
  `Fuel_Efficiency` decimal(6,2) NOT NULL COMMENT '燃油效率（升/小时）',
  `Range` decimal(8,2) NOT NULL COMMENT '续航里程（海里）',
  `Acceleration` decimal(5,2) NOT NULL COMMENT '加速度（节/秒）',
  `Deceleration` decimal(5,2) NOT NULL COMMENT '减速度（节/秒）',
  `Turning_Radius` decimal(6,2) NOT NULL COMMENT '转弯半径（米）',
  `Stability_Index` decimal(5,2) NOT NULL COMMENT '稳定性指数',
  `Noise_Level` decimal(5,2) NOT NULL COMMENT '噪音水平（分贝）',
  `Wave_Handling` decimal(5,2) NOT NULL COMMENT '波浪处理能力（级）',
  `Draft` decimal(5,2) NOT NULL COMMENT '吃水深度（米）',
  `Kinetic_Energy` decimal(10,2) DEFAULT NULL COMMENT '动能（焦耳）',
  `Potential_Energy` decimal(10,2) DEFAULT NULL COMMENT '势能（焦耳）',
  `Moment_of_Inertia` decimal(10,2) DEFAULT NULL COMMENT '转动惯量（kg·m²）',
  `Test_Date` date DEFAULT NULL,
  `Tested_By` varchar(255) DEFAULT NULL,
  `Comments` text,
  PRIMARY KEY (`Performance_ID`),
  KEY `Yacht_ID` (`Yacht_ID`),
  CONSTRAINT `performance_metrics_ibfk_1` FOREIGN KEY (`Yacht_ID`) REFERENCES `yachts` (`Yacht_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for voyages
-- ----------------------------
DROP TABLE IF EXISTS `voyages`;
CREATE TABLE `voyages` (
  `Voyage_ID` int NOT NULL AUTO_INCREMENT COMMENT '航行记录唯一标识',
  `Yacht_ID` int NOT NULL COMMENT '游艇ID',
  `Departure_Port` varchar(100) NOT NULL COMMENT '出发港口',
  `Destination_Port` varchar(100) NOT NULL COMMENT '目的港口',
  `Departure_Date` datetime NOT NULL COMMENT '出发时间',
  `Arrival_Date` datetime DEFAULT NULL COMMENT '到达时间',
  `Distance` decimal(8,2) NOT NULL COMMENT '航行距离（海里）',
  `Fuel_Consumed` decimal(8,2) NOT NULL COMMENT '燃油消耗（升）',
  `Weather_Conditions` varchar(255) DEFAULT NULL COMMENT '天气状况',
  `Notes` text COMMENT '备注',
  `Average_Speed` decimal(6,2) DEFAULT NULL COMMENT '平均速度（节）',
  `Total_Energy_Consumed` decimal(10,2) DEFAULT NULL COMMENT '总能量消耗（焦耳）',
  `Wave_Height` decimal(5,2) DEFAULT NULL COMMENT '波浪高度（米）',
  `Wind_Speed` decimal(5,2) DEFAULT NULL COMMENT '风速（节）',
  `Captain_ID` int DEFAULT NULL,
  `Total_Passengers` int DEFAULT NULL,
  `Fuel_Efficiency` decimal(10,2) DEFAULT NULL,
  `Trip_Type` enum('Leisure','Business','Research') DEFAULT 'Leisure',
  PRIMARY KEY (`Voyage_ID`),
  KEY `Yacht_ID` (`Yacht_ID`),
  KEY `fk_captain` (`Captain_ID`),
  CONSTRAINT `fk_captain` FOREIGN KEY (`Captain_ID`) REFERENCES `crew` (`Crew_ID`),
  CONSTRAINT `voyages_ibfk_1` FOREIGN KEY (`Yacht_ID`) REFERENCES `yachts` (`Yacht_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for yachts
-- ----------------------------
DROP TABLE IF EXISTS `yachts`;
CREATE TABLE `yachts` (
  `Yacht_ID` int NOT NULL AUTO_INCREMENT COMMENT '游艇唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '型号',
  `Year` year NOT NULL COMMENT '生产年份',
  `Length` decimal(8,2) NOT NULL COMMENT '长度（米）',
  `Width` decimal(8,2) NOT NULL COMMENT '宽度（米）',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量（吨）',
  `Hull_Material` varchar(50) NOT NULL COMMENT '船体材质',
  `Engine_Type` enum('Inboard','Outboard','Sterndrive') NOT NULL COMMENT '发动机类型',
  `Engine_Power` decimal(8,2) NOT NULL COMMENT '发动机功率（HP）',
  `Fuel_Capacity` decimal(8,2) NOT NULL COMMENT '燃料容量（升）',
  `Water_Capacity` decimal(8,2) NOT NULL COMMENT '淡水容量（升）',
  `Max_Speed` decimal(6,2) NOT NULL COMMENT '最大速度（节）',
  `Passenger_Capacity` int NOT NULL COMMENT '乘客容量',
  `Price` decimal(15,2) NOT NULL COMMENT '价格（美元）',
  `Displacement` decimal(10,2) NOT NULL COMMENT '排水量（吨）',
  `Drag_Coefficient` decimal(5,2) NOT NULL COMMENT '阻力系数',
  `Hull_Speed` decimal(6,2) NOT NULL COMMENT '船体速度（节）',
  `Buoyancy_Force` decimal(10,2) NOT NULL COMMENT '浮力（牛顿）',
  `Center_of_Gravity` varchar(50) NOT NULL COMMENT '重心位置（x,y,z）',
  `Last_Maintenance_Date` date DEFAULT NULL,
  `Status` enum('Available','Under Maintenance','Chartered') DEFAULT 'Available',
  `Insurance_Policy_Number` varchar(255) DEFAULT NULL,
  `Warranty_Expiry_Date` date DEFAULT NULL,
  PRIMARY KEY (`Yacht_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
