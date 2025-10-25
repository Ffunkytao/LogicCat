/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : lawnmower

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:28:23
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
  `Registration_Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '注册日期',
  `Customer_Type` enum('Individual','Business') NOT NULL COMMENT '客户类型',
  `Annual_Purchase_Volume` decimal(15,2) DEFAULT NULL COMMENT '年采购额（美元）',
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------
BEGIN;
INSERT INTO `customers` VALUES (1, 'Alice Johnson', 'alice@email.com', '555-1234', '123 Main St', 'Los Angeles', 'California', 'USA', '90001', '2020-01-15', 'Business', 100000.00);
INSERT INTO `customers` VALUES (2, 'Dummy User1', 'dummy1@email.com', '555-0001', '456 Dummy St', 'San Francisco', 'California', 'USA', '94105', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (3, 'Dummy User2', 'dummy2@email.com', '555-0002', '789 Fake Ave', 'San Diego', 'California', 'USA', '92101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (4, 'Dummy User3', 'dummy3@email.com', '555-0003', '101 Fictional Rd', 'San Jose', 'California', 'USA', '95101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (5, 'Dummy User4', 'dummy4@email.com', '555-0004', '202 Imaginary Blvd', 'San Francisco', 'California', 'USA', '94105', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (6, 'Dummy User5', 'dummy5@email.com', '555-0005', '303 Unreal Dr', 'Los Angeles', 'California', 'USA', '90001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (7, 'Dummy User6', 'dummy6@email.com', '555-0006', '404 Notexist Ln', 'San Diego', 'California', 'USA', '92101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (8, 'Dummy User7', 'dummy7@email.com', '555-0007', '505 Test St', 'San Jose', 'California', 'USA', '95101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (9, 'Dummy User8', 'dummy8@email.com', '555-0008', '606 Trial Ave', 'Los Angeles', 'California', 'USA', '90001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (10, 'Dummy User9', 'dummy9@email.com', '555-0009', '707 Error Rd', 'San Francisco', 'California', 'USA', '94105', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (11, 'Dummy User10', 'dummy10@email.com', '555-0010', '808 Bug Dr', 'San Diego', 'California', 'USA', '92101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (12, 'Dummy User11', 'dummy11@email.com', '555-0011', '909 Crash Blvd', 'San Jose', 'California', 'USA', '95101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (13, 'Dummy User12', 'dummy12@email.com', '555-0012', '1010 Loop St', 'Los Angeles', 'California', 'USA', '90001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (14, 'Dummy User13', 'dummy13@email.com', '555-0013', '1111 Crash Ln', 'San Francisco', 'California', 'USA', '94105', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (15, 'Dummy User14', 'dummy14@email.com', '555-0014', '1212 Dev Ave', 'San Diego', 'California', 'USA', '92101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (16, 'Dummy User15', 'dummy15@email.com', '555-0015', '1313 QA Rd', 'San Jose', 'California', 'USA', '95101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (17, 'Dummy User16', 'dummy16@email.com', '555-0016', '1414 Code Dr', 'Los Angeles', 'California', 'USA', '90001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (18, 'Dummy User17', 'dummy17@email.com', '555-0017', '1515 Test Blvd', 'San Francisco', 'California', 'USA', '94105', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (19, 'Dummy User18', 'dummy18@email.com', '555-0018', '1616 Dev St', 'San Diego', 'California', 'USA', '92101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (20, 'Dummy User19', 'dummy19@email.com', '555-0019', '1717 QA Ave', 'San Jose', 'California', 'USA', '95101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (21, 'Dummy User20', 'dummy20@email.com', '555-0020', '1818 Error Dr', 'Los Angeles', 'California', 'USA', '90001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (22, 'Dummy User21', 'dummy21@email.com', '555-0021', '1919 Bug Ln', 'San Francisco', 'California', 'USA', '94105', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (23, 'Dummy User22', 'dummy22@email.com', '555-0022', '2020 Crash Rd', 'San Diego', 'California', 'USA', '92101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (24, 'Dummy User23', 'dummy23@email.com', '555-0023', '2121 Loop Blvd', 'San Jose', 'California', 'USA', '95101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (25, 'Dummy User24', 'dummy24@email.com', '555-0024', '2222 Dev St', 'Los Angeles', 'California', 'USA', '90001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (26, 'Dummy User25', 'dummy25@email.com', '555-0025', '2323 QA Ave', 'San Francisco', 'California', 'USA', '94105', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (27, 'Dummy User26', 'dummy26@email.com', '555-0026', '2424 Test Dr', 'San Diego', 'California', 'USA', '92101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (28, 'Dummy User27', 'dummy27@email.com', '555-0027', '2525 Error Ln', 'San Jose', 'California', 'USA', '95101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (29, 'Dummy User28', 'dummy28@email.com', '555-0028', '2626 Crash Rd', 'Los Angeles', 'California', 'USA', '90001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (30, 'Dummy User29', 'dummy29@email.com', '555-0029', '2727 Dev Blvd', 'San Francisco', 'California', 'USA', '94105', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (31, 'Dummy User30', 'dummy30@email.com', '555-0030', '2828 QA St', 'San Diego', 'California', 'USA', '92101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (32, 'Dummy User31', 'dummy31@email.com', '555-0031', '2929 Test Ave', 'San Jose', 'California', 'USA', '95101', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (33, 'Bob Williams', 'bob@email.com', '555-9876', '456 Oak Rd', 'Houston', 'Texas', 'USA', '77001', '2019-11-10', 'Business', 200000.00);
INSERT INTO `customers` VALUES (34, 'Dummy User32', 'dummy32@email.com', '555-0032', '3030 Error Dr', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (35, 'Dummy User33', 'dummy33@email.com', '555-0033', '3131 Bug Ln', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (36, 'Dummy User34', 'dummy34@email.com', '555-0034', '3232 Crash Rd', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (37, 'Dummy User35', 'dummy35@email.com', '555-0035', '3333 Loop Blvd', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (38, 'Dummy User36', 'dummy36@email.com', '555-0036', '3434 Dev St', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (39, 'Dummy User37', 'dummy37@email.com', '555-0037', '3535 QA Ave', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (40, 'Dummy User38', 'dummy38@email.com', '555-0038', '3636 Test Dr', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (41, 'Dummy User39', 'dummy39@email.com', '555-0039', '3737 Error Ln', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (42, 'Dummy User40', 'dummy40@email.com', '555-0040', '3838 Crash Rd', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (43, 'Dummy User41', 'dummy41@email.com', '555-0041', '3939 Dev Blvd', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (44, 'Dummy User42', 'dummy42@email.com', '555-0042', '4040 QA St', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (45, 'Dummy User43', 'dummy43@email.com', '555-0043', '4141 Test Ave', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (46, 'Dummy User44', 'dummy44@email.com', '555-0044', '4242 Error Dr', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (47, 'Dummy User45', 'dummy45@email.com', '555-0045', '4343 Bug Ln', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (48, 'Dummy User46', 'dummy46@email.com', '555-0046', '4444 Crash Rd', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (49, 'Dummy User47', 'dummy47@email.com', '555-0047', '4545 Loop Blvd', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (50, 'Dummy User48', 'dummy48@email.com', '555-0048', '4646 Dev St', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (51, 'Dummy User49', 'dummy49@email.com', '555-0049', '4747 QA Ave', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (52, 'Dummy User50', 'dummy50@email.com', '555-0050', '4848 Test Dr', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (53, 'Dummy User51', 'dummy51@email.com', '555-0051', '4949 Error Ln', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (54, 'Dummy User52', 'dummy52@email.com', '555-0052', '5050 Crash Rd', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (55, 'Dummy User53', 'dummy53@email.com', '555-0053', '5151 Dev Blvd', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (56, 'Dummy User54', 'dummy54@email.com', '555-0054', '5252 QA St', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (57, 'Dummy User55', 'dummy55@email.com', '555-0055', '5353 Test Ave', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (58, 'Dummy User56', 'dummy56@email.com', '555-0056', '5454 Error Dr', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (59, 'Dummy User57', 'dummy57@email.com', '555-0057', '5555 Bug Ln', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (60, 'Dummy User58', 'dummy58@email.com', '555-0058', '5656 Crash Rd', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (61, 'Dummy User59', 'dummy59@email.com', '555-0059', '5757 Loop Blvd', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (62, 'Dummy User60', 'dummy60@email.com', '555-0060', '5858 Dev St', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (63, 'Dummy User61', 'dummy61@email.com', '555-0061', '5959 QA Ave', 'Houston', 'Texas', 'USA', '77001', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (64, 'Dummy User62', 'dummy62@email.com', '555-0062', '6060 Test Dr', 'Dallas', 'Texas', 'USA', '75201', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (65, 'Dummy User63', 'dummy63@email.com', '555-0063', '6161 Error Ln', 'Austin', 'Texas', 'USA', '78701', '2021-03-22', 'Individual', 0.00);
INSERT INTO `customers` VALUES (100, 'Charlie Brown', 'charlie@example.com', '555-8888', '789 Executive Ave', 'New York', 'New York', 'USA', '10001', '2018-05-01', 'Business', 600000.00);
INSERT INTO `customers` VALUES (200, 'Ultra Corp', 'ultra@corporate.com', '555-7777', '1000 CEO Blvd', 'New York', 'New York', 'USA', '10005', '2015-08-20', 'Business', 999000000.00);
INSERT INTO `customers` VALUES (300, 'Small Biz LLC', 'smallbiz@example.com', '555-1111', '100 Main St', 'Boston', 'Massachusetts', 'USA', '02108', '2020-03-15', 'Business', 100000.00);
INSERT INTO `customers` VALUES (301, 'Local Co', 'localco@example.com', '555-2222', '200 Market St', 'Philadelphia', 'Pennsylvania', 'USA', '19106', '2021-07-22', 'Business', 100000.00);
INSERT INTO `customers` VALUES (302, 'Metro Corp', 'metrocorp@example.com', '555-3333', '300 Wall St', 'New York', 'New York', 'USA', '10005', '2019-11-10', 'Business', 100000.00);
INSERT INTO `customers` VALUES (400, 'Elena Martinez', 'elena@email.com', '555-4444', '500 Maple Rd', 'Burlington', 'Vermont', 'USA', '05401', '2017-09-05', 'Individual', 999000000.00);
INSERT INTO `customers` VALUES (500, 'Hyper Buyer', 'hyper@buyer.com', '555-5555', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1850-01-01', 'Business', 99999999999.00);
INSERT INTO `customers` VALUES (600, 'MegaCorp Industries', 'megacorp@biz.com', '555-6666', '5000 Executive Park', 'Chicago', 'Illinois', 'USA', '60601', '2010-04-15', 'Business', 1000000.00);
INSERT INTO `customers` VALUES (700, 'Alaska Tundra Services', 'tundra@alaska.gov', '907-555-0199', '101 Snowstorm Ave', 'Anchorage', 'AK', 'USA', '99501', '2022-12-25', 'Business', 750000.00);
INSERT INTO `customers` VALUES (800, 'Interstellar Empire', 'empire@universe.gov', '123-456-7890', '1 Galactic Center', 'Coruscant', 'Outer Rim', 'Galactic Republic', '00000', '2023-01-01', 'Business', 9999999999999.00);
INSERT INTO `customers` VALUES (900, 'GreenField Co.', 'greenfield@biz.com', '555-0000', '789 Garden St', 'Denver', 'Colorado', 'USA', '80202', '2019-02-14', 'Business', 200000.00);
INSERT INTO `customers` VALUES (1000, 'City Park Management', 'parks@city.gov', '555-7777', '100 Greenway', 'London', 'England', 'UK', 'SW1A 1AA', '2021-05-12', 'Business', 150000.00);
INSERT INTO `customers` VALUES (1100, 'HighMaintenance LLC', 'high@service.com', '555-8888', '789 Breakdown Ave', 'Chicago', 'Illinois', 'USA', '60601', '2022-01-10', 'Business', 500000.00);
INSERT INTO `customers` VALUES (1200, 'BulkBuy Inc', 'bulk@buy.com', '555-9999', '1000 Volume Ave', 'Vancouver', 'BC', 'Canada', 'V5K 0A1', '2022-01-01', 'Business', 5000000.00);
INSERT INTO `customers` VALUES (1201, 'BulkBuyer LLC', 'bulk@buy.com', '555-9999', '1000 Volume Ave', 'Vancouver', 'BC', 'Canada', 'V5K 0A1', '2022-01-01', 'Business', 5000000.00);
INSERT INTO `customers` VALUES (1202, 'LawnService Co', 'service@lawn.com', '555-8888', '789 Greenway', 'Chicago', 'Illinois', 'USA', '60601', '2020-05-15', 'Business', 200000.00);
INSERT INTO `customers` VALUES (1203, 'Seattle Lawn Care', 'seattle@lawn.com', '555-7777', '1 Rainy St', 'Seattle', 'Washington', 'USA', '98101', '2021-03-15', 'Business', 150000.00);
INSERT INTO `customers` VALUES (1204, 'Seattle Lawn Service', 'seattle@service.com', '555-6666', '500 Rain St', 'Seattle', 'Washington', 'USA', '98105', '2022-01-10', 'Business', 500000.00);
INSERT INTO `customers` VALUES (999999, 'Mars Corp', 'mars@corporate.com', '1234567890', '1 Mars Road', 'Mars City', 'Mars State', 'Mars Country', '100000', '2020-01-01', 'Business', 1000000000000.00);
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
-- Table structure for lawn_mowers
-- ----------------------------
DROP TABLE IF EXISTS `lawn_mowers`;
CREATE TABLE `lawn_mowers` (
  `Mower_ID` int NOT NULL AUTO_INCREMENT COMMENT '除草机唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '型号',
  `Year` int NOT NULL COMMENT '生产年份',
  `Weight` decimal(15,2) DEFAULT NULL,
  `Cutting_Width` decimal(5,2) NOT NULL COMMENT '割草宽度（cm）',
  `Cutting_Height_Adjustment` varchar(50) NOT NULL COMMENT '割草高度调节方式',
  `Power_Source` enum('Gasoline','Electric','Battery','Manual') NOT NULL COMMENT '动力来源',
  `Engine_Power` decimal(6,2) DEFAULT NULL COMMENT '发动机功率（HP，适用于汽油机）',
  `Battery_Capacity` decimal(6,2) DEFAULT NULL COMMENT '电池容量（Ah，适用于电动或电池驱动）',
  `Run_Time` int DEFAULT NULL COMMENT '运行时间（分钟，适用于电动或电池驱动）',
  `Wheel_Size` decimal(5,2) NOT NULL COMMENT '轮子尺寸（英寸）',
  `Price` decimal(10,2) NOT NULL COMMENT '价格（美元）',
  `Blade_Material` varchar(50) NOT NULL COMMENT '刀片材质',
  `Blade_Length` decimal(5,2) NOT NULL COMMENT '刀片长度（cm）',
  `Blade_Weight` decimal(5,2) NOT NULL COMMENT '刀片重量（kg）',
  `Blade_Angle` decimal(5,2) NOT NULL COMMENT '刀片角度（度）',
  `Ground_Clearance` decimal(5,2) NOT NULL COMMENT '离地间隙（cm）',
  `Turning_Radius` decimal(5,2) NOT NULL COMMENT '转弯半径（m）',
  PRIMARY KEY (`Mower_ID`),
  KEY `fk_lawn_mowers_manufacturers` (`Manufacturer_ID`),
  CONSTRAINT `fk_lawn_mowers_manufacturers` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of lawn_mowers
-- ----------------------------
BEGIN;
INSERT INTO `lawn_mowers` VALUES (1, 1, 'GT-X1000', 2022, 35.50, 50.00, 'Manual', 'Gasoline', 7.50, NULL, NULL, 10.00, 1200.00, 'Steel', 55.00, 2.50, 30.00, 4.50, 0.80);
INSERT INTO `lawn_mowers` VALUES (2, 2, 'ManualPro', 2023, 20.00, 45.00, 'Fixed', 'Manual', NULL, NULL, NULL, 8.00, 300.00, 'Steel', 40.00, 1.50, 30.00, 5.00, 0.50);
INSERT INTO `lawn_mowers` VALUES (3, 3, 'GlobalManualX', 2023, 22.00, 48.00, 'Adjustable', 'Manual', NULL, NULL, NULL, 8.50, 350.00, 'Aluminum', 42.00, 1.80, 35.00, 6.00, 0.60);
INSERT INTO `lawn_mowers` VALUES (4, 4, 'EcoManualPro', 2023, 24.00, 50.00, 'Fixed', 'Manual', NULL, NULL, NULL, 9.00, 400.00, 'Carbon Fiber', 45.00, 2.00, 40.00, 5.50, 0.70);
INSERT INTO `lawn_mowers` VALUES (5, 5, 'PrecisionManual', 2023, 26.00, 52.00, 'Adjustable', 'Manual', NULL, NULL, NULL, 9.50, 450.00, 'Titanium', 48.00, 2.20, 45.00, 5.00, 0.80);
INSERT INTO `lawn_mowers` VALUES (6, 6, 'UltraLift 2000', 2023, 50.00, 60.00, 'Hydraulic', 'Gasoline', 10.00, NULL, NULL, 12.00, 2000.00, 'Carbon Steel', 60.00, 3.00, 35.00, 8.00, 1.20);
INSERT INTO `lawn_mowers` VALUES (7, 7, 'PolarGas 3000', 2023, 45.00, 55.00, 'Hydraulic', 'Gasoline', 12.00, NULL, NULL, 10.00, 2500.00, 'Tungsten Steel', 65.00, 3.20, 38.00, 10.00, 1.00);
INSERT INTO `lawn_mowers` VALUES (9, 9, 'ManualPro-2000', 2022, 18.50, 40.00, 'Fixed', 'Manual', NULL, NULL, NULL, 7.00, 250.00, 'Stainless Steel', 35.00, 1.20, 25.00, 3.80, 0.40);
INSERT INTO `lawn_mowers` VALUES (10, 10, 'EcoBlade X-9', 2023, 12.00, 50.00, 'Stepless', 'Battery', NULL, 1.00, 430, 8.00, 899.99, 'Graphene', 45.00, 0.80, 30.00, 4.00, 0.50);
INSERT INTO `lawn_mowers` VALUES (11, 11, 'Gasser 2000', 2023, 50.00, 45.00, 'Manual', 'Gasoline', 5.00, NULL, NULL, 10.00, 500.00, 'Steel', 50.00, 2.00, 30.00, 5.00, 0.80);
INSERT INTO `lawn_mowers` VALUES (12, 12, 'TitanBlade 5000', 2023, 2000.00, 300.00, 'Hydraulic', 'Gasoline', 500.00, NULL, NULL, 50.00, 50000.00, 'Tungsten Carbide', 200.00, 100.00, 45.00, 50.00, 5.00);
INSERT INTO `lawn_mowers` VALUES (13, 13, 'EcoBattery Pro-X', 2023, 35.00, 55.00, 'Digital', 'Battery', NULL, 50.00, 30, 12.00, 1200.00, 'Carbon Fiber', 60.00, 2.80, 35.00, 7.00, 0.90);
INSERT INTO `lawn_mowers` VALUES (14, 14, 'Contradict X-1', 2023, 1200.00, 80.00, 'Fixed', 'Manual', NULL, NULL, NULL, 20.00, 15000.00, 'Lead', 150.00, 50.00, 45.00, 30.00, 0.50);
INSERT INTO `lawn_mowers` VALUES (15, 15, 'BudgetBlade Mini', 2023, 40.00, 45.00, 'Manual', 'Gasoline', 5.00, NULL, NULL, 8.00, 10000.00, 'Aluminum', 40.00, 1.50, 25.00, 4.00, 0.60);
INSERT INTO `lawn_mowers` VALUES (16, 16, 'TurboBlade X', 2022, 32.00, 52.00, 'Hydraulic', 'Gasoline', 8.00, NULL, NULL, 10.50, 1300.00, 'Aluminum', 65.00, 3.00, 32.00, 4.80, 0.85);
INSERT INTO `lawn_mowers` VALUES (17, 17, 'UltraRepair Testbed', 2023, 40.00, 60.00, 'Adjustable', 'Gasoline', 10.00, NULL, NULL, 12.00, 2000.00, 'Steel', 70.00, 3.50, 40.00, 5.00, 1.00);
INSERT INTO `lawn_mowers` VALUES (18, 18, 'GasolineBlade X5', 2023, 40.00, 50.00, 'Manual', 'Gasoline', 5.00, NULL, NULL, 10.00, 1500.00, 'Steel', 60.00, 3.00, 35.00, 5.00, 0.80);
INSERT INTO `lawn_mowers` VALUES (19, 1, 'EcoBlade 5000', 2023, 30.00, 45.00, 'Adjustable', 'Battery', NULL, 5.00, 60, 8.00, 800.00, 'Carbon Fiber', 50.00, 2.00, 30.00, 4.50, 0.60);
INSERT INTO `lawn_mowers` VALUES (20, 1, 'UltraQuiet X1', 2023, 35.00, 50.00, 'Stepless', 'Battery', NULL, 4.50, 45, 10.00, 1200.00, 'Graphene', 60.00, 2.50, 35.00, 5.00, 0.70);
INSERT INTO `lawn_mowers` VALUES (21, 28, 'WallClimber X', 2023, 50.00, 40.00, 'Fixed', 'Battery', NULL, 10.00, 30, 12.00, 5000.00, 'Tungsten', 50.00, 5.00, 90.00, 20.00, 0.50);
INSERT INTO `lawn_mowers` VALUES (22, 29, 'ElectroBeast X', 2023, 40.00, 60.00, 'AI-Controlled', 'Battery', NULL, 100.00, 60, 12.00, 3000.00, 'Graphene', 70.00, 3.00, 45.00, 6.00, 1.00);
INSERT INTO `lawn_mowers` VALUES (23, 29, 'GasGuzzler Mini', 2023, 35.00, 55.00, 'Manual', 'Gasoline', 5.00, NULL, NULL, 10.00, 1500.00, 'Aluminum', 50.00, 2.00, 30.00, 4.50, 0.70);
INSERT INTO `lawn_mowers` VALUES (24, 30, 'ElectroMax X', 2023, 40.00, 60.00, 'AI-Controlled', 'Battery', NULL, 120.00, 90, 12.00, 3000.00, 'Graphene', 70.00, 3.00, 45.00, 6.00, 1.00);
INSERT INTO `lawn_mowers` VALUES (25, 30, 'GasGuzzler Pro', 2023, 35.00, 55.00, 'Manual', 'Gasoline', 5.00, NULL, NULL, 10.00, 1500.00, 'Aluminum', 50.00, 2.00, 30.00, 4.50, 0.70);
INSERT INTO `lawn_mowers` VALUES (26, 31, 'SilentBlade Pro', 2023, 28.00, 50.00, 'Digital', 'Battery', NULL, 50.00, 90, 8.00, 1200.00, 'Carbon Fiber', 60.00, 1.80, 30.00, 4.00, 0.50);
INSERT INTO `lawn_mowers` VALUES (27, 32, 'OrbitBlade X1', 2023, 1000.00, 999.00, 'Quantum', 'Battery', NULL, 2500.00, 100000, 50.00, 9999999.99, 'Graphene', 999.00, 100.00, 90.00, 100.00, 10.00);
INSERT INTO `lawn_mowers` VALUES (28, 33, 'OrbitBlade X2', 2023, 999.99, 999.99, 'Quantum', 'Battery', NULL, 2500.00, 1000000, 99.99, 9999999.99, 'Graphene', 999.99, 99.99, 90.00, 99.99, 9.99);
INSERT INTO `lawn_mowers` VALUES (29, 34, 'BudgetBlade Mini', 2023, 20.00, 30.00, 'Fixed', 'Battery', NULL, 10.00, 60, 6.00, 100.00, 'Steel', 25.00, 1.00, 20.00, 3.00, 0.50);
INSERT INTO `lawn_mowers` VALUES (30, 35, 'MiniBlade Pro', 2023, 20.00, 30.00, 'Fixed', 'Battery', NULL, 10.00, 60, 6.00, 100.00, 'Steel', 25.00, 1.00, 20.00, 3.00, 0.50);
INSERT INTO `lawn_mowers` VALUES (31, 36, 'TurboGas 3000', 2023, 40.00, 50.00, 'Hydraulic', 'Gasoline', 2.00, NULL, 1, 10.00, 1500.00, 'Steel', 60.00, 3.00, 35.00, 5.00, 0.80);
INSERT INTO `lawn_mowers` VALUES (32, 37, 'ManualBlade Pro', 2023, 18.00, 40.00, 'Mechanical', 'Manual', NULL, NULL, NULL, 7.00, 200.00, 'Steel', 50.00, 1.20, 40.00, 3.50, 0.40);
INSERT INTO `lawn_mowers` VALUES (33, 38, 'MiniBlade X', 2023, 15.00, 30.00, 'Mechanical', 'Manual', NULL, NULL, NULL, 6.00, 1000.00, 'Steel', 40.00, 0.80, 40.00, 3.00, 0.30);
INSERT INTO `lawn_mowers` VALUES (34, 39, 'EcoBlade Turbo', 2023, 30.00, 45.00, 'Mechanical', 'Electric', NULL, 10.00, 60, 8.00, 800.00, 'Aluminum', 50.00, 2.00, 35.00, 4.00, 0.60);
INSERT INTO `lawn_mowers` VALUES (35, 40, 'TitanBlade X', 2023, 1000.00, 80.00, 'Fixed', 'Gasoline', 500.00, NULL, NULL, 2.00, 50000.00, 'Tungsten Carbide', 200.00, 100.00, 45.00, 50.00, 5.00);
INSERT INTO `lawn_mowers` VALUES (999999, 1, 'Mars_Exporter', 2023, 1000000.00, 100.00, 'Manual', 'Gasoline', 10.00, 0.00, NULL, 12.00, 1.00, 'Steel', 50.00, 5.00, 30.00, 10.00, 1.50);
COMMIT;

-- ----------------------------
-- Table structure for lawn_mowers_copy1
-- ----------------------------
DROP TABLE IF EXISTS `lawn_mowers_copy1`;
CREATE TABLE `lawn_mowers_copy1` (
  `Mower_ID` int NOT NULL AUTO_INCREMENT COMMENT '除草机唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '型号',
  `Year` int NOT NULL COMMENT '生产年份',
  `Weight` decimal(6,2) NOT NULL COMMENT '重量（kg）',
  `Cutting_Width` decimal(5,2) NOT NULL COMMENT '割草宽度（cm）',
  `Cutting_Height_Adjustment` varchar(50) NOT NULL COMMENT '割草高度调节方式',
  `Power_Source` enum('Gasoline','Electric','Battery','Manual') NOT NULL COMMENT '动力来源',
  `Engine_Power` decimal(6,2) DEFAULT NULL COMMENT '发动机功率（HP，适用于汽油机）',
  `Battery_Capacity` decimal(6,2) DEFAULT NULL COMMENT '电池容量（Ah，适用于电动或电池驱动）',
  `Run_Time` int DEFAULT NULL COMMENT '运行时间（分钟，适用于电动或电池驱动）',
  `Wheel_Size` decimal(5,2) NOT NULL COMMENT '轮子尺寸（英寸）',
  `Price` decimal(10,2) NOT NULL COMMENT '价格（美元）',
  `Blade_Material` varchar(50) NOT NULL COMMENT '刀片材质',
  `Blade_Length` decimal(5,2) NOT NULL COMMENT '刀片长度（cm）',
  `Blade_Weight` decimal(5,2) NOT NULL COMMENT '刀片重量（kg）',
  `Blade_Angle` decimal(5,2) NOT NULL COMMENT '刀片角度（度）',
  `Ground_Clearance` decimal(5,2) NOT NULL COMMENT '离地间隙（cm）',
  `Turning_Radius` decimal(5,2) NOT NULL COMMENT '转弯半径（m）',
  PRIMARY KEY (`Mower_ID`),
  KEY `fk_lawn_mowers_manufacturers` (`Manufacturer_ID`),
  CONSTRAINT `lawn_mowers_copy1_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for lawn_mowers_copy2
-- ----------------------------
DROP TABLE IF EXISTS `lawn_mowers_copy2`;
CREATE TABLE `lawn_mowers_copy2` (
  `Mower_ID` int NOT NULL AUTO_INCREMENT COMMENT '除草机唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '型号',
  `Year` int NOT NULL COMMENT '生产年份',
  `Weight` decimal(6,2) NOT NULL COMMENT '重量（kg）',
  `Cutting_Width` decimal(5,2) NOT NULL COMMENT '割草宽度（cm）',
  `Cutting_Height_Adjustment` varchar(50) NOT NULL COMMENT '割草高度调节方式',
  `Power_Source` enum('Gasoline','Electric','Battery','Manual') NOT NULL COMMENT '动力来源',
  `Engine_Power` decimal(6,2) DEFAULT NULL COMMENT '发动机功率（HP，适用于汽油机）',
  `Battery_Capacity` decimal(6,2) DEFAULT NULL COMMENT '电池容量（Ah，适用于电动或电池驱动）',
  `Run_Time` int DEFAULT NULL COMMENT '运行时间（分钟，适用于电动或电池驱动）',
  `Wheel_Size` decimal(5,2) NOT NULL COMMENT '轮子尺寸（英寸）',
  `Price` decimal(10,2) NOT NULL COMMENT '价格（美元）',
  `Blade_Material` varchar(50) NOT NULL COMMENT '刀片材质',
  `Blade_Length` decimal(5,2) NOT NULL COMMENT '刀片长度（cm）',
  `Blade_Weight` decimal(5,2) NOT NULL COMMENT '刀片重量（kg）',
  `Blade_Angle` decimal(5,2) NOT NULL COMMENT '刀片角度（度）',
  `Ground_Clearance` decimal(5,2) NOT NULL COMMENT '离地间隙（cm）',
  `Turning_Radius` decimal(5,2) NOT NULL COMMENT '转弯半径（m）',
  PRIMARY KEY (`Mower_ID`),
  KEY `fk_lawn_mowers_manufacturers` (`Manufacturer_ID`),
  CONSTRAINT `lawn_mowers_copy2_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=890 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for maintenance
-- ----------------------------
DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE `maintenance` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT COMMENT '维护记录唯一标识',
  `Mower_ID` int NOT NULL COMMENT '除草机ID',
  `Maintenance_Date` varchar(255) NOT NULL COMMENT '维护日期',
  `Maintenance_Type` enum('Routine','Repair','Replacement') NOT NULL COMMENT '维护类型',
  `Cost` decimal(10,2) NOT NULL COMMENT '维护成本（美元）',
  `Description` text COMMENT '维护描述',
  `Service_Center` varchar(100) DEFAULT NULL COMMENT '服务中心名称',
  `Technician` varchar(100) DEFAULT NULL COMMENT '技术人员姓名',
  `Next_Maintenance_Date` varchar(255) DEFAULT NULL COMMENT '下次维护日期',
  `Labor_Cost` decimal(10,2) DEFAULT NULL COMMENT '人工成本（美元）',
  `Parts_Cost` decimal(10,2) DEFAULT NULL COMMENT '零件成本（美元）',
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Mower_ID` (`Mower_ID`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`Mower_ID`) REFERENCES `lawn_mowers` (`Mower_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of maintenance
-- ----------------------------
BEGIN;
INSERT INTO `maintenance` VALUES (1, 1, '2023-07-01', 'Routine', 150.00, 'Oil change and blade sharpening', 'Lawn Care Center', 'Mike Johnson', '2024-07-01', 100.00, 50.00);
INSERT INTO `maintenance` VALUES (2, 9, '2023-09-01', 'Routine', 50.00, 'Blade sharpening', 'LawnCare Hub', 'Tom Green', '2024-09-01', 30.00, 20.00);
INSERT INTO `maintenance` VALUES (3, 14, '2023-11-15', 'Replacement', 15000.00, 'Complete engine replacement', 'HeavyDuty Service Center', 'John Mechanic', '2024-11-15', 5000.00, 10000.00);
INSERT INTO `maintenance` VALUES (4, 14, '2023-12-25', 'Replacement', 1500000.00, 'Complete nuclear engine replacement with quantum parts', 'Quantum Repair Hub', 'Dr. High Cost', '2024-12-25', 500000.00, 1000000.00);
INSERT INTO `maintenance` VALUES (5, 14, '2024-01-20', 'Routine', 5000.00, 'Manual labor intensive adjustment', 'Premium Service Center', 'Expert Technician', '2025-01-20', 4000.00, 1000.00);
INSERT INTO `maintenance` VALUES (6, 15, '2024-02-01', 'Repair', 6000.00, 'Complete carburetor rebuild and blade replacement', 'Global Service Network', 'Senior Engineer Davis', '2025-02-01', 4000.00, 2000.00);
INSERT INTO `maintenance` VALUES (7, 16, '2023-03-10', 'Routine', 180.00, 'General servicing', 'Northern Service Hub', 'Technician Anne', '2024-03-10', 120.00, 60.00);
INSERT INTO `maintenance` VALUES (8, 16, '2023-04-15', 'Replacement', 750.00, 'High-performance blade upgrade', 'Northern Service Hub', 'Technician Anne', '2024-04-15', 450.00, 300.00);
INSERT INTO `maintenance` VALUES (9, 17, '2023-06-10', 'Repair', 500.00, 'Engine tune-up', 'ExtremeService Center', 'Tech A', '2024-06-10', 300.00, 200.00);
INSERT INTO `maintenance` VALUES (10, 17, '2023-07-20', 'Repair', 1000.00, 'Critical blade recalibration', 'ExtremeService Center', 'Tech B', '2024-07-20', 900.00, 100.00);
INSERT INTO `maintenance` VALUES (11, 17, '2023-08-01', 'Repair', 500.00, 'Standard engine repair', 'ExtremeService Center', 'Tech A', '2024-08-01', 200.00, 300.00);
INSERT INTO `maintenance` VALUES (12, 17, '2023-09-01', 'Repair', 600.00, 'Fuel system overhaul', 'ExtremeService Center', 'Tech A', '2024-09-01', 300.00, 300.00);
INSERT INTO `maintenance` VALUES (13, 17, '2023-10-01', 'Repair', 1000.00, 'Transmission replacement', 'ExtremeService Center', 'Tech A', '2024-10-01', 600.00, 400.00);
INSERT INTO `maintenance` VALUES (14, 17, '2023-11-01', 'Repair', 1000.00, 'Quantum blade recalibration', 'ExtremeService Center', 'Tech C', '2024-11-01', 900.00, 100.00);
INSERT INTO `maintenance` VALUES (200, 1, '2023-01-01', 'Repair', 500.00, NULL, 'Service A', 'Tech X', '2024-01-01', 200.00, 300.00);
INSERT INTO `maintenance` VALUES (201, 1, '2023-02-01', 'Repair', 600.00, NULL, 'Service A', 'Tech X', '2024-02-01', 240.00, 360.00);
INSERT INTO `maintenance` VALUES (202, 1, '2023-03-01', 'Repair', 700.00, NULL, 'Service A', 'Tech X', '2024-03-01', 280.00, 420.00);
INSERT INTO `maintenance` VALUES (203, 1, '2023-04-01', 'Repair', 800.00, NULL, 'Service A', 'Tech X', '2024-04-01', 320.00, 480.00);
INSERT INTO `maintenance` VALUES (204, 1, '2023-05-01', 'Repair', 900.00, NULL, 'Service A', 'Tech X', '2024-05-01', 360.00, 540.00);
INSERT INTO `maintenance` VALUES (205, 1, '2023-06-01', 'Repair', 1000.00, NULL, 'Service A', 'Tech X', '2024-06-01', 400.00, 600.00);
INSERT INTO `maintenance` VALUES (206, 1, '2023-07-01', 'Repair', 1100.00, NULL, 'Service A', 'Tech X', '2024-07-01', 440.00, 660.00);
INSERT INTO `maintenance` VALUES (207, 1, '2023-08-01', 'Repair', 1200.00, NULL, 'Service A', 'Tech X', '2024-08-01', 480.00, 720.00);
INSERT INTO `maintenance` VALUES (208, 1, '2023-09-01', 'Repair', 1300.00, NULL, 'Service A', 'Tech X', '2024-09-01', 520.00, 780.00);
INSERT INTO `maintenance` VALUES (209, 1, '2023-10-01', 'Repair', 1400.00, NULL, 'Service A', 'Tech X', '2024-10-01', 560.00, 840.00);
INSERT INTO `maintenance` VALUES (210, 1, '2023-11-01', 'Repair', 1000.00, NULL, 'Service A', 'Tech Y', '2024-11-01', 1000.00, 100.00);
INSERT INTO `maintenance` VALUES (600, 1, '2023-10-01', 'Replacement', 1200.00, NULL, 'QuickFix Service', 'Tech Z', '2024-03-15', 400.00, 800.00);
INSERT INTO `maintenance` VALUES (700, 1, '2023-01-01', 'Routine', 10.00, NULL, 'BudgetFix', 'Tech A', '2024-01-01', 5.00, 5.00);
INSERT INTO `maintenance` VALUES (701, 1, '2023-02-01', 'Routine', 10.00, NULL, 'BudgetFix', 'Tech A', '2024-02-01', 5.00, 5.00);
INSERT INTO `maintenance` VALUES (702, 1, '2023-03-01', 'Routine', 10.00, NULL, 'BudgetFix', 'Tech A', '2024-03-01', 5.00, 5.00);
INSERT INTO `maintenance` VALUES (703, 1, '2023-04-01', 'Routine', 10.00, NULL, 'BudgetFix', 'Tech A', '2024-04-01', 5.00, 5.00);
INSERT INTO `maintenance` VALUES (704, 1, '2023-05-01', 'Replacement', 400000.00, NULL, 'PremiumService', 'Senior Tech', '2024-05-01', 400001.00, 1.00);
INSERT INTO `maintenance` VALUES (800, 2, '2023-06-01', 'Replacement', 400001.00, NULL, 'HyperService', 'Dr. Overkill', '2024-06-01', 400000.00, 1.00);
INSERT INTO `maintenance` VALUES (900, 3, '2023-07-01', 'Replacement', 100.00, NULL, 'UniqueService', 'Expert Tech', '2024-07-01', 1000001.00, 1.00);
INSERT INTO `maintenance` VALUES (999999, 1, '2023-10-01', 'Repair', 100.00, 'Negative parts cost for testing', 'Test Service Center', 'John Doe', NULL, NULL, -50.00);
COMMIT;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `Manufacturer_ID` int NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '制造商名称',
  `Country` varchar(50) NOT NULL COMMENT '所属国家',
  `Founded_Year` int NOT NULL COMMENT '成立年份',
  `Revenue` decimal(15,2) DEFAULT NULL COMMENT '年收入（美元）',
  `Employee_Count` int DEFAULT NULL COMMENT '员工数量',
  `Market_Cap` decimal(15,2) DEFAULT NULL COMMENT '市值（美元）',
  `Production_Volume_Total` int DEFAULT NULL COMMENT '总生产数量',
  `R&D_Spending` decimal(15,2) DEFAULT NULL COMMENT '研发支出（美元）',
  `Profit_Margin` decimal(15,2) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL COMMENT '官方网站',
  `Headquarters` varchar(255) DEFAULT NULL COMMENT '总部地址',
  `CEO` varchar(100) DEFAULT NULL COMMENT '现任CEO',
  PRIMARY KEY (`Manufacturer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
BEGIN;
INSERT INTO `manufacturers` VALUES (1, 'GreenTech Mowers', 'USA', 2005, 500000000.00, 2000, 1000000000.00, 500000, 50000000.00, 15.50, 'www.greentech.com', '123 Innovation Drive, Chicago', 'John Smith');
INSERT INTO `manufacturers` VALUES (2, 'Manual Mowers Co.', 'USA', 2010, 200000000.00, 800, 500000000.00, 200000, 10000000.00, 12.00, 'www.manualmowers.com', '456 Green St, Portland', 'Sarah Lee');
INSERT INTO `manufacturers` VALUES (3, 'Global Mowers Inc', 'USA', 1998, 1500000000.00, 5000, 3000000000.00, 1500000, 200000000.00, 18.00, 'www.globalmowers.com', '789 Industrial Ave, Chicago', 'David Chen');
INSERT INTO `manufacturers` VALUES (4, 'EcoBlade Ltd', 'Canada', 2012, 800000000.00, 1200, 1500000000.00, 800000, 50000000.00, 14.50, 'www.ecoblade.ca', '321 Greenway, Toronto', 'Emily Wilson');
INSERT INTO `manufacturers` VALUES (5, 'Precision Tools Co', 'Germany', 1985, 2000000000.00, 3000, 4000000000.00, 300000, 300000000.00, 22.00, 'www.precisiontools.de', '678 Engineering St, Berlin', 'Lars Müller');
INSERT INTO `manufacturers` VALUES (6, 'Premium LawnTech', 'USA', 2000, 1000000000.00, 3000, 5000000000.00, 100000, 200000000.00, 20.00, 'www.premiumlawntech.com', '888 Innovation Blvd, San Jose', 'Robert Davis');
INSERT INTO `manufacturers` VALUES (7, 'Arctic Mowers Inc', 'USA', 1995, 300000000.00, 1200, 800000000.00, 50000, 30000000.00, 17.00, 'www.arcticmowers.com', '701 Permafrost Dr, Anchorage, AK', 'Michael Frost');
INSERT INTO `manufacturers` VALUES (8, 'HyperTech Motors', 'USA', 2100, 999999999999.99, 1000000, 9999999999999.99, 1, 99999999999.99, 99.90, 'www.hypertech.mars', '1 Mars Base, Valles Marineris', 'AI Overlord');
INSERT INTO `manufacturers` VALUES (9, 'ManualMaster', 'USA', 1990, 150000000.00, 450, 300000000.00, 80000, 12000000.00, 10.50, 'www.manualmaster.com', '456 Handcraft Ave, Denver', 'James Smith');
INSERT INTO `manufacturers` VALUES (10, 'NanoTech Power', 'Japan', 2008, 800000000.00, 1500, 2000000000.00, 120000, 150000000.00, 18.00, 'www.nanotechpower.jp', '555 Robotics St, Tokyo', 'Dr. Akira Sato');
INSERT INTO `manufacturers` VALUES (11, 'GasPower Inc', 'Germany', 1980, 400000000.00, 1800, 900000000.00, 300000, 40000000.00, 16.00, 'www.gaspower.de', '777 Engine St, Stuttgart', 'Hans Meier');
INSERT INTO `manufacturers` VALUES (12, 'HeavyDuty Motors', 'USA', 1975, 2000000000.00, 5000, 8000000000.00, 50000, 500000000.00, 19.00, 'www.heavydutymotors.com', '1 Titan Ave, Detroit', 'William Titan');
INSERT INTO `manufacturers` VALUES (13, 'EcoBattery GmbH', 'Germany', 2015, 750000000.00, 2500, 1800000000.00, 150000, 90000000.00, 13.50, 'www.ecobattery.de', '123 Voltage Str, Munich', 'Dr. Lena Weber');
INSERT INTO `manufacturers` VALUES (14, 'Contradiction Engineering', 'USA', 2020, 100000000.00, 50, 200000000.00, 100, 5000000.00, 5.00, 'www.contradict.com', '1 Paradox Way, New York', 'Dr. Logic Error');
INSERT INTO `manufacturers` VALUES (15, 'BudgetBlade Ltd', 'UK', 2003, 200000000.00, 800, 500000000.00, 200000, 15000000.00, 12.00, 'www.budgetblade.co.uk', '88 Cheap Rd, Manchester', 'Emma Costcut');
INSERT INTO `manufacturers` VALUES (16, 'Kinetic Dynamics', 'Canada', 2001, 300000000.00, 1200, 800000000.00, 150000, 40000000.00, 14.00, 'www.kineticdynamics.ca', '789 Torque Ave, Toronto', 'Dr. Motion');
INSERT INTO `manufacturers` VALUES (17, 'ExtremeService Corp', 'USA', 1998, 500000000.00, 3000, 2000000000.00, 80000, 60000000.00, 18.00, 'www.extremeservice.com', '456 Critical St, Chicago', 'Dr. Anomaly');
INSERT INTO `manufacturers` VALUES (18, 'GasolineTech', 'Germany', 1980, 1000000000.00, 2000, 3000000000.00, 100000, 200000000.00, 20.00, 'www.gasolinetech.de', '777 Engine St, Stuttgart', 'Dr. Engine');
INSERT INTO `manufacturers` VALUES (19, 'Precision Engineering Co', 'USA', 1995, 1000000000.00, 5000, 3000000000.00, 200000, 50000000.00, 5.00, 'www.precisioneng.com', '100 Innovation Park, Boston', 'Dr. John Profit');
INSERT INTO `manufacturers` VALUES (20, 'SmartTech Inc', 'Japan', 2000, 1000000000.00, 5000, 2500000000.00, 150000, 20000000.00, 5.00, 'www.smartech.jp', '500 Tech Blvd, Tokyo', 'Dr. Kim Profit');
INSERT INTO `manufacturers` VALUES (21, '超速制造公司', '中国', 2024, 2000000000.00, 10000, 5000000000.00, 1000000, 100000000.00, 8.00, 'www.rapidblade.cn', '1 速度工厂, 深圳', '刘快手');
INSERT INTO `manufacturers` VALUES (22, 'HyperProfit Corp', 'USA', 2020, 100000000.00, 500, 500000000.00, 100000, 100000000.00, 999.99, 'www.hyperprofit.com', '1 Financial Tower, Wall Street', 'Mr. Money Magic');
INSERT INTO `manufacturers` VALUES (23, 'Innovation Overdrive', 'USA', 2021, 1000000.00, 1000, 500000000.00, 5000, 101000000.00, 5.00, 'www.innovationod.com', '777 Quantum Lab, Silicon Valley', 'Dr. Future Tech');
INSERT INTO `manufacturers` VALUES (24, 'Quantum Research Lab', 'USA', 2022, 999999.99, 100, 1000000000.00, 5000, 999999990.01, 0.00, 'www.quantumlabs.com', '888 Innovation Hub, San Francisco', 'Dr. Black Hole');
INSERT INTO `manufacturers` VALUES (25, 'HyperTech Innovations', 'Germany', 2023, 888888.88, 80, 900000000.00, 4000, 888888880.00, 0.00, 'www.hypertech.de', '777 Quantum Str, Munich', 'Prof. Time Travel');
INSERT INTO `manufacturers` VALUES (26, 'InnovateTech Inc', 'USA', 2020, 10000000.00, 9, 500000000.00, 10000, 600000.00, 10.00, 'www.innovatetech.com', '123 Innovation Drive, Silicon Valley', 'Dr. Tech Leader');
INSERT INTO `manufacturers` VALUES (27, 'Extreme R&D Corp', 'USA', 2020, 50000000.00, 500, 95000000.00, 5000, 960000000.00, 5.00, 'www.extremerd.com', '456 Tech Street, Silicon Valley', 'Dr. Innovation');
INSERT INTO `manufacturers` VALUES (28, 'GravityDefy Co', 'USA', 2023, 1000000000.00, 100, 500000000.00, 1000, 50000000.00, 15.00, 'www.gravitydefy.com', '1 Vertical Wall, New York', 'Dr. Impossible');
INSERT INTO `manufacturers` VALUES (29, 'FutureEnergy Inc', 'USA', 2020, 2000000000.00, 1500, 6000000000.00, 50000, 300000000.00, 20.00, 'www.futureenergy.com', '1 Quantum Drive, San Jose', 'Dr. Battery');
INSERT INTO `manufacturers` VALUES (30, 'FutureEnergy Inc', 'USA', 2020, 2000000000.00, 1500, 6000000000.00, 50000, 300000000.00, 20.00, 'www.futureenergy.com', '1 Quantum Drive, San Jose', 'Dr. Battery');
INSERT INTO `manufacturers` VALUES (31, 'SilentBlade Co', 'Germany', 2018, 1500000000.00, 2000, 4000000000.00, 80000, 200000000.00, 18.00, 'www.silentblade.de', '10 Quiet Street, Munich', 'Dr. Acoustic');
INSERT INTO `manufacturers` VALUES (32, 'SpaceTech Mowers', 'USA', 2025, 9999999999.99, 100000, 99999999999.99, 1, 9999999999.99, 99.90, 'www.spacetechmowers.com', '1 Orbit Station, Low Earth Orbit', 'AI Overlord');
INSERT INTO `manufacturers` VALUES (33, 'SpaceTech Mowers', 'USA', 2025, 9999999999.99, 100000, 99999999999.99, 1, 9999999999.99, 99.90, 'www.spacetechmowers.com', '1 Orbit Station, Low Earth Orbit', 'AI Overlord');
INSERT INTO `manufacturers` VALUES (34, 'BudgetMower Co', 'Canada', 2020, 10000000.00, 50, 5000000.00, 1000, 100000.00, 5.00, 'www.budgetmower.ca', '1 Cheap St, Toronto', 'Mr. Cost Cutter');
INSERT INTO `manufacturers` VALUES (35, 'TinyMower Inc', 'Canada', 2020, 10000000.00, 50, 5000000.00, 1000, 100000.00, 5.00, 'www.tinymower.ca', '50 Budget Ave, Toronto', 'Mr. Penny Pincher');
INSERT INTO `manufacturers` VALUES (36, 'GasPower Dynamics', 'USA', 1990, 500000000.00, 2000, 1000000000.00, 100000, 50000000.00, 15.00, 'www.gaspowerdynamics.com', '500 Horsepower Dr, Detroit', 'Dr. Vibration');
INSERT INTO `manufacturers` VALUES (37, 'ManualMowers Inc', 'USA', 1985, 200000000.00, 800, 500000000.00, 200000, 15000000.00, 12.00, 'www.manualmowers.com', '100 Handcraft Ave, Portland', 'James Carpenter');
INSERT INTO `manufacturers` VALUES (38, 'TinyProduction Ltd', 'USA', 2000, 100000000.00, 100, 300000000.00, 100, 5000000.00, 8.00, 'www.tinyproduction.com', '1 Small Factory, Seattle', 'Mr. Low Output');
INSERT INTO `manufacturers` VALUES (39, 'EcoBlade Tech', 'Germany', 2015, 800000000.00, 1200, 2000000000.00, 50000, 100000000.00, 14.00, 'www.ecoblade.de', '777 GreenTech St, Berlin', 'Dr. Energy');
INSERT INTO `manufacturers` VALUES (40, 'HeavyMower Inc', 'USA', 2010, 1000000000.00, 2000, 3000000000.00, 5000, 200000000.00, 18.00, 'www.heavymower.com', '1 Heavy St, Detroit', 'Dr. Pressure');
INSERT INTO `manufacturers` VALUES (999999, 'Test Manufacturer', 'USA', 2020, 100000000.00, 100, 1000000000.00, 5000, 100000000.00, 10000.00, 'www.testmanufacturer.com', '123 Test Street, Test City', 'John Doe');
COMMIT;

-- ----------------------------
-- Table structure for performance_metrics
-- ----------------------------
DROP TABLE IF EXISTS `performance_metrics`;
CREATE TABLE `performance_metrics` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT COMMENT '性能指标唯一标识',
  `Mower_ID` int NOT NULL COMMENT '除草机ID',
  `Cutting_Efficiency` decimal(5,2) NOT NULL COMMENT '割草效率（平方米/小时）',
  `Noise_Level` decimal(5,2) NOT NULL COMMENT '噪音水平（分贝）',
  `Fuel_Consumption` decimal(5,2) DEFAULT NULL COMMENT '油耗（L/小时，适用于汽油机）',
  `Battery_Life` int DEFAULT NULL COMMENT '电池寿命（充电次数，适用于电动或电池驱动）',
  `Vibration_Level` decimal(5,2) NOT NULL COMMENT '振动水平（m/s²）',
  `Blade_Speed` int NOT NULL COMMENT '刀片转速（RPM）',
  `Mulching_Capability` tinyint(1) NOT NULL COMMENT '是否支持碎草功能（0-否，1-是）',
  `Self_Propelled` tinyint(1) NOT NULL COMMENT '是否自走式（0-否，1-是）',
  `Slope_Handling` decimal(5,2) DEFAULT NULL COMMENT '最大坡度处理能力（度）',
  `Energy_Efficiency` decimal(5,2) DEFAULT NULL COMMENT '能源效率（%，适用于电动或电池驱动）',
  `Torque` decimal(6,2) DEFAULT NULL COMMENT '扭矩（Nm，适用于汽油机）',
  `Acceleration` decimal(5,2) DEFAULT NULL COMMENT '加速度（m/s²）',
  `Deceleration` decimal(5,2) DEFAULT NULL COMMENT '减速度（m/s²）',
  PRIMARY KEY (`Performance_ID`),
  KEY `Mower_ID` (`Mower_ID`),
  CONSTRAINT `performance_metrics_ibfk_1` FOREIGN KEY (`Mower_ID`) REFERENCES `lawn_mowers` (`Mower_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of performance_metrics
-- ----------------------------
BEGIN;
INSERT INTO `performance_metrics` VALUES (1, 1, 999.99, 85.00, 0.50, NULL, 2.30, 3000, 1, 1, 15.00, NULL, 8.70, 1.20, 0.90);
INSERT INTO `performance_metrics` VALUES (2, 10, 999.99, 65.00, NULL, 1000, 0.80, 4500, 1, 1, 25.00, 92.00, NULL, 2.00, 1.50);
INSERT INTO `performance_metrics` VALUES (3, 12, 999.99, 120.00, 50.00, NULL, 10.00, 100000, 1, 1, 45.00, 30.00, 5000.00, 10.00, 8.00);
INSERT INTO `performance_metrics` VALUES (4, 13, 800.00, 85.00, NULL, 500, 3.00, 100000, 1, 1, 35.00, 75.00, 500.00, 5.00, 4.00);
INSERT INTO `performance_metrics` VALUES (6, 16, 999.99, 87.00, 0.55, NULL, 2.50, 3200, 1, 1, 16.00, NULL, 9.00, 1.30, 0.95);
INSERT INTO `performance_metrics` VALUES (18, 18, 800.00, 85.00, 0.50, NULL, 2.00, 2626, 1, 1, 15.00, 80.00, 10.00, 1.50, 0.70);
INSERT INTO `performance_metrics` VALUES (19, 19, 800.00, 60.00, NULL, 500, 0.50, 4000, 1, 1, 20.00, 85.00, NULL, 1.80, 1.20);
INSERT INTO `performance_metrics` VALUES (20, 20, 900.00, 95.00, NULL, 300, 3.00, 4500, 1, 1, 25.00, 88.00, NULL, 2.00, 1.50);
INSERT INTO `performance_metrics` VALUES (21, 21, 100.00, 80.00, NULL, 100, 1.00, 3000, 1, 1, 90.00, 85.00, 250.00, 10.00, 5.00);
INSERT INTO `performance_metrics` VALUES (22, 21, 50.00, 100.00, NULL, 50, 10.00, 5000, 1, 1, 90.00, 50.00, 1000.00, 98.00, 98.00);
INSERT INTO `performance_metrics` VALUES (23, 21, 40.00, 105.00, NULL, 40, 12.00, 6000, 1, 1, 90.00, 40.00, 1200.00, 100.00, 100.00);
INSERT INTO `performance_metrics` VALUES (24, 22, 999.99, 70.00, NULL, 500, 0.80, 5000, 1, 1, 30.00, 95.00, 150.00, 5.00, 4.00);
INSERT INTO `performance_metrics` VALUES (25, 23, 800.00, 90.00, 0.10, NULL, 2.50, 3000, 1, 1, 20.00, NULL, 80.00, 2.00, 1.50);
INSERT INTO `performance_metrics` VALUES (26, 24, 999.99, 70.00, NULL, 600, 0.80, 5000, 1, 1, 30.00, 95.00, 150.00, 5.00, 4.00);
INSERT INTO `performance_metrics` VALUES (27, 25, 999.99, 90.00, 0.20, NULL, 2.50, 3000, 1, 1, 20.00, NULL, 80.00, 2.00, 1.50);
INSERT INTO `performance_metrics` VALUES (28, 26, 850.00, 50.00, NULL, 300, 2.40, 3500, 1, 1, 15.00, 80.00, NULL, 1.20, 0.90);
INSERT INTO `performance_metrics` VALUES (29, 27, 999.99, 10.00, NULL, 109500, 0.10, 100000, 1, 1, 90.00, 101.00, NULL, 0.10, 0.05);
INSERT INTO `performance_metrics` VALUES (31, 28, 999.99, 10.00, NULL, 109500, 0.10, 100000, 1, 1, 90.00, 101.00, NULL, 0.10, 0.05);
INSERT INTO `performance_metrics` VALUES (32, 31, 999.99, 85.00, 0.60, NULL, 4.90, 3000, 1, 1, 15.00, 30.00, 100.00, 2.00, 1.50);
INSERT INTO `performance_metrics` VALUES (33, 34, 800.00, 65.00, NULL, 500, 0.80, 3000, 1, 1, 25.00, 85.00, 15.00, 1.50, 1.00);
INSERT INTO `performance_metrics` VALUES (34, 35, 999.99, 120.00, 50.00, NULL, 10.00, 1000, 1, 1, 35.00, 30.00, 5000.00, 10.00, 8.00);
COMMIT;

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `Sale_ID` int NOT NULL AUTO_INCREMENT COMMENT '销售记录唯一标识',
  `Mower_ID` int NOT NULL COMMENT '除草机ID',
  `Sale_Date` varchar(255) NOT NULL COMMENT '销售日期',
  `Sale_Price` decimal(10,2) NOT NULL COMMENT '销售价格（美元）',
  `Quantity` int NOT NULL COMMENT '销售数量',
  `Customer_ID` int NOT NULL COMMENT '客户ID',
  `Discount` decimal(5,2) DEFAULT NULL COMMENT '折扣（%）',
  `Tax_Rate` decimal(5,2) DEFAULT NULL COMMENT '税率（%）',
  `Total_Price` decimal(15,2) DEFAULT NULL,
  `Payment_Method` enum('Cash','Credit Card','Bank Transfer') NOT NULL COMMENT '支付方式',
  `Shipping_Cost` decimal(10,2) DEFAULT NULL COMMENT '运输成本（美元）',
  `Warranty_Period` int DEFAULT NULL COMMENT '保修期（月）',
  PRIMARY KEY (`Sale_ID`),
  KEY `Mower_ID` (`Mower_ID`),
  KEY `fk_sales_customers` (`Customer_ID`),
  CONSTRAINT `fk_sales_customers` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`Mower_ID`) REFERENCES `lawn_mowers` (`Mower_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sales
-- ----------------------------
BEGIN;
INSERT INTO `sales` VALUES (1, 1, '2023-06-15', 1200.00, 2, 1, 5.00, 7.50, 2457.00, 'Credit Card', 25.00, 24);
INSERT INTO `sales` VALUES (2, 2, '2023-10-01', 300.00, 1, 100, 0.00, 8.50, 325.50, 'Bank Transfer', 20.00, 12);
INSERT INTO `sales` VALUES (3, 3, '2023-05-10', 350.00, 10000, 200, 5.00, 9.00, 3500000.00, 'Bank Transfer', 5000.00, 24);
INSERT INTO `sales` VALUES (4, 4, '2023-06-15', 400.00, 15000, 200, 3.00, 8.00, 6000000.00, 'Credit Card', 7500.00, 18);
INSERT INTO `sales` VALUES (5, 5, '2023-07-20', 450.00, 25000, 200, 2.00, 7.50, 11250000.00, 'Bank Transfer', 10000.00, 36);
INSERT INTO `sales` VALUES (6, 6, '2023-09-01', 2000.00, 500, 600, 0.00, 8.00, 1080000.00, 'Bank Transfer', 10000.00, 36);
INSERT INTO `sales` VALUES (7, 7, '2023-01-15', 2500.00, 20, 700, 5.00, 0.00, 50000.00, 'Bank Transfer', 1500.00, 48);
INSERT INTO `sales` VALUES (8, 9, '2023-08-22', 250.00, 5, 900, 2.00, 7.00, 1312.50, 'Credit Card', 15.00, 18);
INSERT INTO `sales` VALUES (9, 15, '2023-03-15', 10000.00, 1, 1000, 0.00, 20.00, 12000.00, 'Bank Transfer', 500.00, 12);
INSERT INTO `sales` VALUES (10, 17, '2023-05-01', 2000.00, 1, 1100, 0.00, 8.00, 2160.00, 'Bank Transfer', 100.00, 24);
INSERT INTO `sales` VALUES (11, 29, '2023-05-15', 100.00, 10000, 1200, 0.00, 13.00, 1013000.00, 'Bank Transfer', 0.51, 12);
INSERT INTO `sales` VALUES (12, 30, '2023-06-20', 100.00, 1, 1201, 0.00, 13.00, 1013000.00, 'Bank Transfer', 500.01, 12);
INSERT INTO `sales` VALUES (13, 31, '2023-07-10', 1500.00, 2, 1202, 5.00, 8.00, 3240.00, 'Bank Transfer', 50.00, 24);
INSERT INTO `sales` VALUES (14, 32, '2023-06-01', 200.00, 5, 1203, 5.00, 10.00, 1050.00, 'Credit Card', 25.00, 18);
INSERT INTO `sales` VALUES (15, 33, '2023-08-01', 1000.00, 600, 1204, 0.00, 10.00, 600000.00, 'Bank Transfer', 0.50, 12);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
