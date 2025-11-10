/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : railway_station

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:29:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Passenger
-- ----------------------------
DROP TABLE IF EXISTS `Passenger`;
CREATE TABLE `Passenger` (
  `Passenger_ID` int NOT NULL AUTO_INCREMENT COMMENT '乘客唯一标识',
  `First_Name` varchar(50) NOT NULL COMMENT '名字',
  `Last_Name` varchar(50) NOT NULL COMMENT '姓氏',
  `Gender` enum('Male','Female','Other') NOT NULL COMMENT '性别',
  `Date_Of_Birth` date NOT NULL COMMENT '出生日期',
  `Nationality` varchar(50) NOT NULL COMMENT '国籍',
  `Passport_Number` varchar(50) DEFAULT NULL COMMENT '护照号码',
  `ID_Card_Number` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `Contact_Number` varchar(20) NOT NULL COMMENT '联系电话',
  `Email` varchar(100) DEFAULT NULL COMMENT '电子邮件',
  `Address` varchar(255) DEFAULT NULL COMMENT '地址',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Passenger_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Passenger
-- ----------------------------
BEGIN;
INSERT INTO `Passenger` VALUES (1, '张', '伟', 'Male', '1990-05-15', '中国', 'E12345678', '110105199005150123', '13800138000', 'zhangwei@example.com', '北京市朝阳区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `Passenger` VALUES (2, '李', '娜', 'Female', '1985-08-20', '中国', 'E87654321', '310115198508200456', '13900139000', 'lina@example.com', '上海市浦东新区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `Passenger` VALUES (3, '王', '强', 'Male', '1992-03-10', '中国', NULL, '440305199203101234', '13700137000', 'wangqiang@example.com', '深圳市南山区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `Passenger` VALUES (4, '赵', '敏', 'Female', '1988-11-25', '中国', 'E98765432', '510106198811250789', '13600136000', 'zhaomin@example.com', '成都市武侯区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `Passenger` VALUES (5, '刘', '洋', 'Male', '1995-07-05', '中国', NULL, '610103199507051234', '13500135000', 'liuyang@example.com', '西安市雁塔区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
COMMIT;

-- ----------------------------
-- Table structure for Station
-- ----------------------------
DROP TABLE IF EXISTS `Station`;
CREATE TABLE `Station` (
  `Station_ID` int NOT NULL AUTO_INCREMENT COMMENT '车站唯一标识',
  `Station_Name` varchar(100) NOT NULL COMMENT '车站名称',
  `Station_Code` varchar(20) NOT NULL COMMENT '车站代码',
  `City` varchar(100) NOT NULL COMMENT '所在城市',
  `Province` varchar(100) NOT NULL COMMENT '所在省份',
  `Country` varchar(100) NOT NULL COMMENT '所在国家',
  `Latitude` decimal(9,6) NOT NULL COMMENT '纬度',
  `Longitude` decimal(9,6) NOT NULL COMMENT '经度',
  `Address` varchar(255) NOT NULL COMMENT '车站地址',
  `Contact_Number` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `Platform_Count` int NOT NULL COMMENT '站台数量',
  `Station_Status` varchar(50) NOT NULL COMMENT '车站状态（运营中、建设中等）',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Station_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Station
-- ----------------------------
BEGIN;
INSERT INTO `Station` VALUES (1, '北京南站', 'BJN', '北京', '北京', '中国', 39.865042, 116.378837, '北京市丰台区', '010-12345678', 10, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `Station` VALUES (2, '上海虹桥站', 'SHQ', '上海', '上海', '中国', 31.194355, 121.319809, '上海市闵行区', '021-87654321', 15, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `Station` VALUES (3, '广州站', 'GZ', '广州', '广东', '中国', 23.148536, 113.259294, '广州市越秀区', '020-12345678', 8, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `Station` VALUES (4, '成都东站', 'CDD', '成都', '四川', '中国', 30.631478, 104.140205, '成都市成华区', '028-87654321', 12, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `Station` VALUES (5, '西安站', 'XA', '西安', '陕西', '中国', 34.278739, 108.956856, '西安市新城区', '029-12345678', 9, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
COMMIT;

-- ----------------------------
-- Table structure for Ticket
-- ----------------------------
DROP TABLE IF EXISTS `Ticket`;
CREATE TABLE `Ticket` (
  `Ticket_ID` int NOT NULL AUTO_INCREMENT COMMENT '车票唯一标识',
  `Train_ID` int NOT NULL COMMENT '列车ID（外键）',
  `Passenger_ID` int NOT NULL COMMENT '乘客ID（外键）',
  `Departure_Station_ID` int NOT NULL COMMENT '出发车站ID（外键）',
  `Arrival_Station_ID` int NOT NULL COMMENT '到达车站ID（外键）',
  `Seat_Number` varchar(10) NOT NULL COMMENT '座位号',
  `Ticket_Price` decimal(10,2) NOT NULL COMMENT '票价',
  `Ticket_Status` enum('Booked','Cancelled','Used') NOT NULL COMMENT '车票状态',
  `Booking_Time` datetime NOT NULL COMMENT '预订时间',
  `Departure_Time` datetime NOT NULL COMMENT '出发时间',
  `Arrival_Time` datetime NOT NULL COMMENT '到达时间',
  `Payment_Method` varchar(50) NOT NULL COMMENT '支付方式',
  `Payment_Status` enum('Paid','Pending','Failed') NOT NULL COMMENT '支付状态',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Ticket_ID`),
  KEY `Train_ID` (`Train_ID`),
  KEY `Passenger_ID` (`Passenger_ID`),
  KEY `Departure_Station_ID` (`Departure_Station_ID`),
  KEY `Arrival_Station_ID` (`Arrival_Station_ID`),
  CONSTRAINT `Ticket_ibfk_1` FOREIGN KEY (`Train_ID`) REFERENCES `Train` (`Train_ID`),
  CONSTRAINT `Ticket_ibfk_2` FOREIGN KEY (`Passenger_ID`) REFERENCES `Passenger` (`Passenger_ID`),
  CONSTRAINT `Ticket_ibfk_3` FOREIGN KEY (`Departure_Station_ID`) REFERENCES `Station` (`Station_ID`),
  CONSTRAINT `Ticket_ibfk_4` FOREIGN KEY (`Arrival_Station_ID`) REFERENCES `Station` (`Station_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Ticket
-- ----------------------------
BEGIN;
INSERT INTO `Ticket` VALUES (1, 1, 1, 1, 2, 'A01', 553.50, 'Booked', '2023-09-25 10:00:00', '2023-10-01 08:00:00', '2023-10-01 12:30:00', '支付宝', 'Paid', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `Ticket` VALUES (2, 2, 2, 3, 4, 'B12', 120.00, 'Booked', '2023-09-26 11:00:00', '2023-10-02 09:00:00', '2023-10-02 11:30:00', '微信支付', 'Paid', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `Ticket` VALUES (3, 3, 3, 5, 1, 'C05', 200.00, 'Cancelled', '2023-09-27 12:00:00', '2023-10-03 10:00:00', '2023-10-03 12:00:00', '信用卡', 'Failed', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `Ticket` VALUES (4, 4, 4, 2, 5, 'D08', 300.00, 'Used', '2023-09-28 13:00:00', '2023-10-04 14:00:00', '2023-10-04 20:00:00', '支付宝', 'Paid', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `Ticket` VALUES (5, 5, 5, 4, 3, 'E10', 80.00, 'Booked', '2023-09-29 14:00:00', '2023-10-05 16:00:00', '2023-10-05 17:30:00', '微信支付', 'Pending', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
COMMIT;

-- ----------------------------
-- Table structure for Train
-- ----------------------------
DROP TABLE IF EXISTS `Train`;
CREATE TABLE `Train` (
  `Train_ID` int NOT NULL AUTO_INCREMENT COMMENT '列车唯一标识',
  `Train_Number` varchar(20) NOT NULL COMMENT '列车编号',
  `Train_Name` varchar(100) NOT NULL COMMENT '列车名称',
  `Train_Type` varchar(50) NOT NULL COMMENT '列车类型（高铁、普快等）',
  `Departure_Station` varchar(100) NOT NULL COMMENT '出发车站',
  `Arrival_Station` varchar(100) NOT NULL COMMENT '到达车站',
  `Departure_Time` datetime NOT NULL COMMENT '出发时间',
  `Arrival_Time` datetime NOT NULL COMMENT '到达时间',
  `Total_Seats` int NOT NULL COMMENT '总座位数',
  `Available_Seats` int NOT NULL COMMENT '可用座位数',
  `Train_Status` varchar(50) NOT NULL COMMENT '列车状态（运行、停运等）',
  `Operator` varchar(100) NOT NULL COMMENT '运营商',
  `Created_At` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Updated_At` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`Train_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Train
-- ----------------------------
BEGIN;
INSERT INTO `Train` VALUES (1, 'G101', '复兴号', '高铁', '北京南站', '上海虹桥站', '2023-10-01 08:00:00', '2023-10-01 12:30:00', 500, 450, '运行中', '中国铁路', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
INSERT INTO `Train` VALUES (2, 'K123', '和谐号', '普快', '广州站', '深圳站', '2023-10-02 09:00:00', '2023-10-02 11:30:00', 1200, 1000, '运行中', '广铁集团', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
INSERT INTO `Train` VALUES (3, 'D456', '动车组', '动车', '成都东站', '重庆北站', '2023-10-03 10:00:00', '2023-10-03 12:00:00', 600, 550, '运行中', '成都铁路局', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
INSERT INTO `Train` VALUES (4, 'Z789', '直达特快', '特快', '西安站', '兰州站', '2023-10-04 14:00:00', '2023-10-04 20:00:00', 800, 700, '运行中', '西安铁路局', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
INSERT INTO `Train` VALUES (5, 'C202', '城际列车', '城际', '杭州东站', '宁波站', '2023-10-05 16:00:00', '2023-10-05 17:30:00', 400, 350, '运行中', '上海铁路局', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
