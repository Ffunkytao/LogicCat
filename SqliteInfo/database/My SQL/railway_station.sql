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

 Date: 27/01/2025 23:05:10
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

SET FOREIGN_KEY_CHECKS = 1;
