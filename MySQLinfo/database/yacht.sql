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

 Date: 11/08/2025 12:31:49
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=5002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of charters
-- ----------------------------
BEGIN;
INSERT INTO `charters` VALUES (1, 1, 1, '2023-10-01', '2023-10-07', 15000.00, 3000.00, 'Paid', 'Weekly', 8, '{\"Catering\": \"Yes\", \"Water Sports\": \"Yes\"}', 'Premium', 'Moderate', 'No special requests', 'Standard agreement', 'Completed', 'Pending', 'Credit Card', 500.00, NULL);
INSERT INTO `charters` VALUES (2, 2, 2, '2023-11-15', '2023-11-20', 12000.00, 2500.00, 'Pending', 'Daily', 6, '{\"Catering\": \"No\", \"Water Sports\": \"Yes\"}', 'Basic', 'Flexible', 'Vegetarian meals', 'Standard agreement', 'Pending', 'Pending', 'Bank Transfer', 0.00, 'Change of plans');
INSERT INTO `charters` VALUES (3, 3, 3, '2023-12-01', '2023-12-10', 20000.00, 5000.00, 'Paid', 'Monthly', 10, '{\"Catering\": \"Yes\", \"Water Sports\": \"No\"}', 'Full', 'Strict', 'No special requests', 'Standard agreement', 'Completed', 'Completed', 'Credit Card', 200.00, NULL);
INSERT INTO `charters` VALUES (4, 4, 4, '2024-01-05', '2024-01-12', 18000.00, 4000.00, 'Paid', 'Weekly', 12, '{\"Catering\": \"Yes\", \"Water Sports\": \"Yes\"}', 'Premium', 'Moderate', 'No special requests', 'Standard agreement', 'Pending', 'Pending', 'Cash', 0.00, 'Weather conditions');
INSERT INTO `charters` VALUES (5, 5, 5, '2024-02-14', '2024-02-18', 9000.00, 2000.00, 'Pending', 'Daily', 4, '{\"Catering\": \"No\", \"Water Sports\": \"No\"}', 'Basic', 'Flexible', 'No special requests', 'Standard agreement', 'Pending', 'Pending', 'Bank Transfer', 300.00, NULL);
INSERT INTO `charters` VALUES (6, 6, 6, '2024-03-01', '2024-03-08', 16000.00, 3500.00, 'Paid', 'Weekly', 8, '{\"Catering\": \"Yes\", \"Water Sports\": \"Yes\"}', 'Premium', 'Moderate', 'No special requests', 'Standard agreement', 'Completed', 'Pending', 'Credit Card', 0.00, 'Personal reasons');
INSERT INTO `charters` VALUES (7, 7, 7, '2024-04-10', '2024-04-15', 11000.00, 2200.00, 'Pending', 'Daily', 6, '{\"Catering\": \"No\", \"Water Sports\": \"Yes\"}', 'Basic', 'Flexible', 'No special requests', 'Standard agreement', 'Pending', 'Pending', 'Cash', 100.00, NULL);
INSERT INTO `charters` VALUES (8, 8, 8, '2024-05-20', '2024-05-27', 17000.00, 3800.00, 'Paid', 'Weekly', 10, '{\"Catering\": \"Yes\", \"Water Sports\": \"Yes\"}', 'Premium', 'Moderate', 'No special requests', 'Standard agreement', 'Completed', 'Pending', 'Bank Transfer', 0.00, 'Health issues');
INSERT INTO `charters` VALUES (9, 9, 9, '2024-06-01', '2024-06-30', 25000.00, 6000.00, 'Paid', 'Monthly', 12, '{\"Catering\": \"Yes\", \"Water Sports\": \"Yes\"}', 'Full', 'Strict', 'No special requests', 'Standard agreement', 'Pending', 'Pending', 'Credit Card', 400.00, NULL);
INSERT INTO `charters` VALUES (10, 10, 10, '2024-07-05', '2024-07-12', 19000.00, 4200.00, 'Pending', 'Weekly', 8, '{\"Catering\": \"Yes\", \"Water Sports\": \"No\"}', 'Premium', 'Moderate', 'No special requests', 'Standard agreement', 'Pending', 'Pending', 'Cash', 0.00, 'Unforeseen circumstances');
INSERT INTO `charters` VALUES (11, 1, 1, '2023-06-15', '2023-06-22', 20000.00, 5000.00, 'Paid', 'Weekly', 8, NULL, 'Basic', 'Flexible', NULL, NULL, 'Pending', 'Pending', NULL, NULL, NULL);
INSERT INTO `charters` VALUES (12, 1, 1, '2023-08-10', '2023-08-17', 25000.00, 6000.00, 'Paid', 'Weekly', 10, NULL, 'Basic', 'Flexible', NULL, NULL, 'Pending', 'Pending', NULL, NULL, NULL);
INSERT INTO `charters` VALUES (13, 1, 1, '2022-12-20', '2022-12-27', 18000.00, 4500.00, 'Paid', 'Weekly', 6, NULL, 'Basic', 'Flexible', NULL, NULL, 'Pending', 'Pending', NULL, NULL, NULL);
INSERT INTO `charters` VALUES (5001, 9, 5, '2024-07-10', '2024-07-17', 12000.00, 3000.00, 'Paid', 'Weekly', 15, '{\"crew\": true, \"food\": true}', 'Premium', 'Flexible', '请准备儿童座椅', 'standard agreement text', 'Pending', 'Pending', NULL, NULL, NULL);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=1201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of crew
-- ----------------------------
BEGIN;
INSERT INTO `crew` VALUES (1, 1, 'John Doe', 'Captain', 'American', '1980-05-15', 20, 'Master Mariner', 8000.00, '2023-01-01', '2025-01-01', 'Jane Doe', '+1234567890', 'None', 'Safety, Navigation', 'A12345678', 'English, Spanish', '2023-08-01');
INSERT INTO `crew` VALUES (2, 2, 'Alice Smith', 'Chef', 'British', '1990-08-22', 10, 'Culinary Arts', 5000.00, '2023-02-01', '2024-02-01', 'Bob Smith', '+447700900123', 'None', 'Food Safety', 'B87654321', 'French, German', '2023-07-15');
INSERT INTO `crew` VALUES (3, 3, 'Carlos Gomez', 'First Mate', 'Spanish', '1985-03-10', 15, 'Advanced Navigation', 7000.00, '2023-03-01', '2025-03-01', 'Maria Gomez', '+34911234567', 'None', 'Safety, Navigation', 'C112233445', 'Italian, Portuguese', '2023-06-10');
INSERT INTO `crew` VALUES (4, 4, 'Emma Johnson', 'Engineer', 'Canadian', '1988-11-05', 12, 'Marine Engineering', 7500.00, '2023-04-01', '2024-04-01', 'Michael Johnson', '+16135551234', 'None', 'Mechanical Systems', 'D556677889', 'Russian, Chinese', '2023-05-05');
INSERT INTO `crew` VALUES (5, 5, 'Liam Brown', 'Deckhand', 'Australian', '1995-07-20', 5, 'Deck Operations', 4000.00, '2023-05-01', '2024-05-01', 'Olivia Brown', '+61400123456', 'None', 'Safety, Deck Maintenance', 'E998877665', 'Japanese, Korean', '2023-04-01');
INSERT INTO `crew` VALUES (6, 6, 'Sophia Lee', 'Steward', 'Korean', '1992-09-12', 8, 'Hospitality Management', 4500.00, '2023-06-01', '2024-06-01', 'James Lee', '+821012345678', 'None', 'Customer Service', 'F334455667', 'Arabic, Hindi', '2023-03-15');
INSERT INTO `crew` VALUES (7, 7, 'Mohammed Ali', 'Medical Officer', 'Egyptian', '1983-12-30', 18, 'Medical Doctor', 9000.00, '2023-07-01', '2025-07-01', 'Fatima Ali', '+201002345678', 'None', 'Emergency Medicine', 'G778899001', 'Dutch, Swedish', '2023-02-10');
INSERT INTO `crew` VALUES (8, 8, 'Anna Müller', 'Chef', 'German', '1991-04-25', 9, 'Culinary Arts', 5200.00, '2023-08-01', '2024-08-01', 'Hans Müller', '+4915123456789', 'None', 'Food Safety', 'H223344556', 'Greek, Turkish', '2023-01-05');
INSERT INTO `crew` VALUES (9, 9, 'Yuki Tanaka', 'First Mate', 'Japanese', '1987-06-18', 14, 'Advanced Navigation', 7200.00, '2023-09-01', '2025-09-01', 'Akira Tanaka', '+81312345678', 'None', 'Safety, Navigation', 'I667788990', 'Polish, Czech', '2022-12-01');
INSERT INTO `crew` VALUES (10, 10, 'Maria Silva', 'Engineer', 'Brazilian', '1986-02-14', 13, 'Marine Engineering', 7600.00, '2023-10-01', '2024-10-01', 'Pedro Silva', '+5511987654321', 'None', 'Mechanical Systems', 'J445566778', 'Finnish, Norwegian', '2022-11-15');
INSERT INTO `crew` VALUES (1200, 12, 'David Wilson', 'Captain', 'British', '1980-06-15', 15, 'MCA Master 3000GT', 120000.00, '2020-01-01', '2025-12-31', NULL, '+447712345678', NULL, NULL, NULL, NULL, NULL);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------
BEGIN;
INSERT INTO `customers` VALUES (1, 'Michael Scott', 'michael.scott@example.com', '+1234567890', '123 Main St', 'Scranton', 'PA', 'USA', '18503', '2023-01-01', 'Individual', 'Ocean Adventures', 'Email', 100);
INSERT INTO `customers` VALUES (2, 'Pam Beesly', 'pam.beesly@example.com', '+1987654321', '456 Elm St', 'Scranton', 'PA', 'USA', '18503', '2023-02-01', 'Individual', 'Blue Horizon', 'Phone', 50);
INSERT INTO `customers` VALUES (3, 'Jim Halpert', 'jim.halpert@example.com', '+1654321890', '789 Oak St', 'Scranton', 'PA', 'USA', '18503', '2023-03-01', 'Individual', 'Sea Explorers', 'Email', 75);
INSERT INTO `customers` VALUES (4, 'Dwight Schrute', 'dwight.schrute@example.com', '+1122334455', '101 Beet Farm Rd', 'Scranton', 'PA', 'USA', '18503', '2023-04-01', 'Individual', 'Marine Ventures', 'Phone', 120);
INSERT INTO `customers` VALUES (5, 'Angela Martin', 'angela.martin@example.com', '+1555666777', '202 Cat Ln', 'Scranton', 'PA', 'USA', '18503', '2023-05-01', 'Individual', 'Wave Riders', 'Email', 90);
INSERT INTO `customers` VALUES (6, 'Kevin Malone', 'kevin.malone@example.com', '+1444333222', '303 Chili St', 'Scranton', 'PA', 'USA', '18503', '2023-06-01', 'Individual', 'Coastal Cruises', 'Phone', 60);
INSERT INTO `customers` VALUES (7, 'Andy Bernard', 'andy.bernard@example.com', '+1777888999', '404 Cornell Ave', 'Scranton', 'PA', 'USA', '18503', '2023-07-01', 'Individual', 'Deep Blue', 'Email', 110);
INSERT INTO `customers` VALUES (8, 'Stanley Hudson', 'stanley.hudson@example.com', '+1666777888', '505 Crossword Blvd', 'Scranton', 'PA', 'USA', '18503', '2023-08-01', 'Individual', 'Aqua Tours', 'Phone', 80);
INSERT INTO `customers` VALUES (9, 'Phyllis Vance', 'phyllis.vance@example.com', '+1888999000', '606 Knit St', 'Scranton', 'PA', 'USA', '18503', '2023-09-01', 'Individual', 'Oceanic Journeys', 'Email', 95);
INSERT INTO `customers` VALUES (10, 'Ryan Howard', 'ryan.howard@example.com', '+1999888777', '707 Temp St', 'Scranton', 'PA', 'USA', '18503', '2023-10-01', 'Individual', 'Sail Away', 'Phone', 70);
INSERT INTO `customers` VALUES (11, 'Michael Johnson', 'm.johnson@example.com', '+447712345678', NULL, NULL, NULL, NULL, NULL, NULL, 'Individual', NULL, 'Email', 0);
INSERT INTO `customers` VALUES (12, 'John Smith', 'john.smith@example.com', '1234567890', '123 Main St', 'New York', NULL, 'USA', '10001', '2020-01-15', 'Individual', NULL, 'Email', 0);
COMMIT;

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data` (
  `device_id` int DEFAULT NULL,
  `energy_saved` decimal(10,2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of performance_metrics
-- ----------------------------
BEGIN;
INSERT INTO `performance_metrics` VALUES (1, 1, 12.50, 500.00, 2.50, 2.00, 30.00, 8.50, 65.00, 4.50, 2.20, 150000.00, 200000.00, 5000.00, '2023-09-01', 'John Doe', 'Test completed successfully.');
INSERT INTO `performance_metrics` VALUES (2, 2, 11.00, 450.00, 2.30, 1.80, 28.00, 8.00, 68.00, 4.00, 2.00, 140000.00, 190000.00, 4800.00, '2023-09-05', 'Jane Smith', 'Minor issues detected.');
INSERT INTO `performance_metrics` VALUES (3, 3, 13.00, 550.00, 2.70, 2.20, 32.00, 9.00, 62.00, 5.00, 2.50, 160000.00, 210000.00, 5200.00, '2023-09-10', 'Alice Brown', 'Performance within expected range.');
INSERT INTO `performance_metrics` VALUES (4, 4, 12.00, 480.00, 2.40, 1.90, 29.00, 8.20, 66.00, 4.20, 2.10, 145000.00, 195000.00, 4900.00, '2023-09-15', 'Bob Johnson', 'Improved fuel efficiency.');
INSERT INTO `performance_metrics` VALUES (5, 5, 11.50, 470.00, 2.20, 1.70, 27.00, 7.80, 70.00, 3.80, 1.90, 135000.00, 180000.00, 4600.00, '2023-09-20', 'Charlie Davis', 'Noise levels higher than expected.');
INSERT INTO `performance_metrics` VALUES (6, 6, 12.80, 520.00, 2.60, 2.10, 31.00, 8.80, 63.00, 4.80, 2.30, 155000.00, 205000.00, 5100.00, '2023-09-25', 'Diana Evans', 'Stability index excellent.');
INSERT INTO `performance_metrics` VALUES (7, 7, 11.20, 460.00, 2.10, 1.60, 26.00, 7.50, 72.00, 3.50, 1.80, 130000.00, 170000.00, 4400.00, '2023-09-30', 'Ethan Green', 'Acceleration needs improvement.');
INSERT INTO `performance_metrics` VALUES (8, 8, 12.20, 490.00, 2.30, 1.85, 28.50, 8.10, 67.00, 4.10, 2.05, 142000.00, 192000.00, 4850.00, '2023-10-05', 'Fiona Harris', 'Wave handling exceptional.');
INSERT INTO `performance_metrics` VALUES (9, 9, 13.50, 580.00, 2.80, 2.30, 33.00, 9.20, 60.00, 5.20, 2.60, 165000.00, 220000.00, 5400.00, '2023-10-10', 'George Lee', 'Draft depth optimal.');
INSERT INTO `performance_metrics` VALUES (10, 10, 11.80, 465.00, 2.15, 1.75, 27.50, 7.90, 71.00, 3.90, 1.95, 138000.00, 185000.00, 4700.00, '2023-10-15', 'Hannah White', 'Kinetic energy within limits.');
INSERT INTO `performance_metrics` VALUES (100, 1001, 200.00, 500.00, 5.00, 4.00, 20.00, 95.00, 80.00, 4.00, 1.20, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=12002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of voyages
-- ----------------------------
BEGIN;
INSERT INTO `voyages` VALUES (1, 1, 'Miami', 'Nassau', '2023-10-01 08:00:00', '2023-10-01 14:00:00', 180.00, 150.00, 'Clear', 'Smooth sailing', 30.00, 120000.00, 1.50, 10.00, 1, 8, 2.50, 'Leisure');
INSERT INTO `voyages` VALUES (2, 2, 'Fort Lauderdale', 'Key West', '2023-11-15 09:00:00', '2023-11-15 16:00:00', 200.00, 180.00, 'Partly Cloudy', 'Minor waves', 25.00, 140000.00, 2.00, 12.00, 2, 12, 3.00, 'Business');
INSERT INTO `voyages` VALUES (3, 3, 'San Diego', 'Catalina Island', '2023-12-01 10:00:00', '2023-12-01 18:00:00', 220.00, 200.00, 'Sunny', 'Calm seas', 27.50, 160000.00, 1.80, 11.00, 3, 10, 2.80, 'Leisure');
INSERT INTO `voyages` VALUES (4, 4, 'New York', 'Martha\'s Vineyard', '2024-01-05 07:00:00', '2024-01-05 15:00:00', 250.00, 220.00, 'Overcast', 'Moderate waves', 28.00, 170000.00, 2.50, 15.00, 4, 15, 3.20, 'Research');
INSERT INTO `voyages` VALUES (5, 5, 'Seattle', 'Victoria', '2024-02-14 08:30:00', '2024-02-14 17:00:00', 230.00, 210.00, 'Rainy', 'Rough seas', 26.00, 150000.00, 3.00, 18.00, 5, 6, 2.00, 'Leisure');
INSERT INTO `voyages` VALUES (6, 6, 'Los Angeles', 'Santa Barbara', '2024-03-01 09:00:00', '2024-03-01 14:00:00', 150.00, 120.00, 'Clear', 'Smooth sailing', 30.00, 110000.00, 1.20, 8.00, 6, 20, 3.50, 'Business');
INSERT INTO `voyages` VALUES (7, 7, 'Boston', 'Portland', '2024-04-10 07:30:00', '2024-04-10 16:00:00', 240.00, 230.00, 'Foggy', 'Low visibility', 24.00, 180000.00, 2.80, 14.00, 7, 9, 2.70, 'Leisure');
INSERT INTO `voyages` VALUES (8, 8, 'San Francisco', 'Monterey', '2024-05-20 08:00:00', '2024-05-20 15:00:00', 210.00, 190.00, 'Sunny', 'Calm seas', 28.00, 160000.00, 1.50, 10.00, 8, 14, 3.10, 'Research');
INSERT INTO `voyages` VALUES (9, 9, 'Charleston', 'Savannah', '2024-06-01 09:00:00', '2024-06-01 17:00:00', 260.00, 240.00, 'Partly Cloudy', 'Moderate waves', 27.00, 190000.00, 2.20, 13.00, 9, 7, 2.30, 'Leisure');
INSERT INTO `voyages` VALUES (10, 10, 'Houston', 'Galveston', '2024-07-05 08:30:00', '2024-07-05 16:30:00', 200.00, 180.00, 'Clear', 'Smooth sailing', 25.00, 140000.00, 1.80, 11.00, 10, 18, 3.40, 'Business');
INSERT INTO `voyages` VALUES (100, 1001, 'Port A', 'Port B', '2024-06-01 00:00:00', '2024-06-05 00:00:00', 1000.00, 2000.00, 'Clear', NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Leisure');
INSERT INTO `voyages` VALUES (12000, 12, 'Monaco', 'Saint-Tropez', '2023-07-15 09:00:00', '2023-07-15 12:30:00', 85.00, 420.50, 'Moderate Breeze', NULL, NULL, NULL, 2.50, 32.50, 1200, 8, NULL, 'Leisure');
INSERT INTO `voyages` VALUES (12001, 12, 'Saint-Tropez', 'Cannes', '2023-07-20 14:00:00', '2023-07-20 16:45:00', 55.00, 380.75, '大风', NULL, NULL, NULL, 3.10, 35.20, 1200, 6, NULL, 'Leisure');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of yachts
-- ----------------------------
BEGIN;
INSERT INTO `yachts` VALUES (1, 1, 'Sunseeker 75', 2020, 22.86, 5.80, 45.00, 'Fiberglass', 'Inboard', 1500.00, 5000.00, 1000.00, 35.00, 12, 2500000.00, 50.00, 0.45, 30.00, 500000.00, '12,5,3', '2024-02-01', 'Available', 'INS20250123001', '2025-01-23');
INSERT INTO `yachts` VALUES (2, 2, 'Azimut 70', 2019, 21.50, 5.50, 42.00, 'Fiberglass', 'Inboard', 1400.00, 4800.00, 950.00, 34.00, 10, 2300000.00, 48.00, 0.47, 29.00, 480000.00, '11,4.8,2.8', '2024-02-23', 'Available', 'INS20250123002', '2025-01-23');
INSERT INTO `yachts` VALUES (3, 3, 'Princess 68', 2021, 20.80, 5.30, 40.00, 'Fiberglass', 'Inboard', 1450.00, 4900.00, 980.00, 33.00, 12, 2400000.00, 47.00, 0.46, 28.00, 470000.00, '11.5,4.5,2.7', '2024-03-23', 'Available', 'INS20250123003', '2025-01-23');
INSERT INTO `yachts` VALUES (4, 4, 'Ferretti 720', 2022, 22.00, 5.60, 44.00, 'Fiberglass', 'Inboard', 1550.00, 5100.00, 1020.00, 36.00, 14, 2600000.00, 52.00, 0.44, 31.00, 520000.00, '12.2,5.2,3.1', '2024-07-23', 'Available', 'INS20250123004', '2025-01-23');
INSERT INTO `yachts` VALUES (5, 5, 'Benetti Classic 121', 2018, 37.00, 8.00, 120.00, 'Steel', 'Inboard', 3000.00, 12000.00, 2500.00, 25.00, 20, 8000000.00, 150.00, 0.50, 20.00, 1500000.00, '18,7,5', '2025-01-23', 'Available', 'INS20250123005', '2025-01-23');
INSERT INTO `yachts` VALUES (6, 6, 'Sanlorenzo SD112', 2020, 34.20, 7.50, 110.00, 'Aluminum', 'Inboard', 2800.00, 11000.00, 2300.00, 24.00, 18, 7500000.00, 140.00, 0.51, 19.00, 1400000.00, '17,6.8,4.8', '2024-12-01', 'Available', 'INS20250123006', '2025-01-23');
INSERT INTO `yachts` VALUES (7, 7, 'Heesen 5000', 2021, 50.00, 9.00, 200.00, 'Aluminum', 'Inboard', 5000.00, 20000.00, 4000.00, 30.00, 30, 15000000.00, 250.00, 0.40, 25.00, 2500000.00, '25,10,7', '2024-11-01', 'Available', 'INS20250123007', '2025-01-23');
INSERT INTO `yachts` VALUES (8, 8, 'Lürssen 85', 2019, 26.00, 6.50, 60.00, 'Fiberglass', 'Inboard', 1800.00, 6000.00, 1200.00, 32.00, 16, 3000000.00, 65.00, 0.43, 27.00, 600000.00, '13,5.5,3.5', '2024-12-10', 'Available', 'INS20250123008', '2025-01-23');
INSERT INTO `yachts` VALUES (9, 9, 'Feadship 101', 2022, 30.80, 7.20, 80.00, 'Steel', 'Inboard', 2500.00, 9000.00, 1800.00, 28.00, 12, 6000000.00, 100.00, 0.48, 23.00, 1000000.00, '15,6.5,4.5', '2024-09-17', 'Available', 'INS20250123009', '2025-01-23');
INSERT INTO `yachts` VALUES (10, 10, 'Amels 242', 2020, 74.00, 12.50, 300.00, 'Steel', 'Inboard', 7000.00, 25000.00, 5000.00, 22.00, 40, 20000000.00, 350.00, 0.55, 18.00, 3500000.00, '37,15,10', '2024-10-22', 'Available', 'INS20250123010', '2025-01-23');
INSERT INTO `yachts` VALUES (11, 1, 'Sunseeker 75', 2020, 22.86, 5.80, 45.00, 'Fiberglass', 'Inboard', 1500.00, 5000.00, 1000.00, 35.00, 12, 2500000.00, 50.00, 0.45, 30.00, 500000.00, '12,5,3', '2024-02-01', 'Available', 'INS20250123001', '2025-01-23');
INSERT INTO `yachts` VALUES (12, 1, 'Sunseeker 75', 2020, 22.86, 5.80, 45.00, 'Fiberglass', 'Outboard', 1500.00, 5000.00, 1000.00, 35.00, 12, 2500000.00, 50.00, 0.45, 30.00, 500000.00, '12,5,3', '2024-02-01', 'Available', 'INS20250616012', '2026-06-16');
INSERT INTO `yachts` VALUES (13, 12, 'CarbonX-200', 2015, 25.50, 6.80, 50.00, '碳纤维', 'Inboard', 1200.00, 5000.00, 800.00, 35.00, 12, 850000.00, 150.00, 0.85, 20.00, 408000.00, '10,4,2', NULL, 'Available', NULL, NULL);
INSERT INTO `yachts` VALUES (14, 13, 'CarbonX-300', 2018, 28.00, 7.20, 55.00, '碳纤维', 'Outboard', 1500.00, 6000.00, 900.00, 38.00, 15, 900000.00, 160.00, 0.82, 22.00, 420000.00, '12,5,3', NULL, 'Available', NULL, NULL);
INSERT INTO `yachts` VALUES (15, 1, 'Luxury 500', 2020, 50.20, 8.50, 30.50, 'Fiberglass', 'Inboard', 3800.00, 12000.00, 3000.00, 25.00, 12, 2500000.00, 45.20, 0.45, 18.50, 98000.00, '3,4,2', '2023-05-10', 'Available', 'POL-2023-5001', '2025-12-31');
INSERT INTO `yachts` VALUES (16, 1, 'TitanX 500', 2022, 60.00, 10.00, 800.00, '碳纤维', 'Inboard', 150000.00, 15000.00, 3000.00, 40.00, 80, 15000000.00, 2500.00, 0.70, 35.00, 500000.00, '15,6,4', NULL, 'Available', NULL, NULL);
INSERT INTO `yachts` VALUES (101, 1, 'EcoYacht 100', 2022, 20.10, 5.50, 35.00, 'Carbon', 'Inboard', 1200.00, 450.00, 800.00, 25.00, 8, 3500000.00, 40.00, 0.35, 28.00, 400000.00, '10,4,2', '2024-01-15', 'Available', 'INS20241001', '2026-01-15');
INSERT INTO `yachts` VALUES (102, 1, 'Classic 68', 2008, 20.80, 5.20, 38.00, '玻璃钢', 'Inboard', 1200.00, 3000.00, 800.00, 28.00, 10, 1200000.00, 42.00, 0.45, 26.00, 380000.00, '10,4,2', '2023-12-15', 'Available', 'INS20236801', '2025-12-15');
INSERT INTO `yachts` VALUES (1001, 1, 'TitanX 300', 2020, 50.00, 8.50, 200.00, '碳纤维', 'Inboard', 100000.00, 10000.00, 2000.00, 32.00, 50, 10000000.00, 2000.00, 0.75, 30.00, 410000.00, '12,5,3', NULL, 'Available', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
