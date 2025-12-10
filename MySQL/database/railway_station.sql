/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : railway_station

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:27:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for passenger
-- ----------------------------
DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger`  (
  `Passenger_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '乘客唯一标识',
  `First_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名字',
  `Last_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓氏',
  `Gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `Date_Of_Birth` date NOT NULL COMMENT '出生日期',
  `Nationality` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '国籍',
  `Passport_Number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '护照号码',
  `ID_Card_Number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `Contact_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Passenger_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of passenger
-- ----------------------------
INSERT INTO `passenger` VALUES (1, '张', '伟', 'Male', '1990-05-15', '中国', 'E12345678', '110105199005150123', '13800138000', 'zhangwei@example.com', '北京市朝阳区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `passenger` VALUES (2, '李', '娜', 'Female', '1985-08-20', '中国', 'E87654321', '310115198508200456', '13900139000', 'lina@example.com', '上海市浦东新区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `passenger` VALUES (3, '王', '强', 'Male', '1992-03-10', '中国', NULL, '440305199203101234', '13700137000', 'wangqiang@example.com', '深圳市南山区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `passenger` VALUES (4, '赵', '敏', 'Female', '1988-11-25', '中国', 'E98765432', '510106198811250789', '13600136000', 'zhaomin@example.com', '成都市武侯区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `passenger` VALUES (5, '刘', '洋', 'Male', '1995-07-05', '中国', NULL, '610103199507051234', '13500135000', 'liuyang@example.com', '西安市雁塔区', '2025-01-23 22:18:24', '2025-01-23 22:18:24');
INSERT INTO `passenger` VALUES (6, 'Emma', 'Wilson', 'Female', '1990-04-12', 'USA', 'P800001', NULL, '15511110001', 'emma.wilson@example.com', 'New York, USA', '2025-11-26 12:16:12', '2025-11-26 12:16:12');
INSERT INTO `passenger` VALUES (7, 'Liam', 'Taylor', 'Male', '1988-07-22', 'Canada', 'P800002', NULL, '15511110002', 'liam.taylor@example.com', 'Toronto, Canada', '2025-11-26 12:16:12', '2025-11-26 12:16:12');
INSERT INTO `passenger` VALUES (8, 'Sophia', 'Anderson', 'Female', '1992-09-18', 'UK', 'P800003', NULL, '15511110003', 'sophia.anderson@example.com', 'London, UK', '2025-11-26 12:16:12', '2025-11-26 12:16:12');
INSERT INTO `passenger` VALUES (13, 'John', 'Smith', 'Male', '1990-01-01', 'USA', 'P10000001', NULL, '15500000001', 'john.smith@example.com', 'New York', '2025-11-26 11:58:23', '2025-11-26 11:58:23');
INSERT INTO `passenger` VALUES (14, 'Emma', 'Johnson', 'Female', '1992-02-02', 'USA', 'P10000002', NULL, '15500000002', 'emma.johnson@example.com', 'Los Angeles', '2025-11-26 11:58:23', '2025-11-26 11:58:23');
INSERT INTO `passenger` VALUES (15, 'Michael', 'Brown', 'Male', '1988-03-03', 'USA', 'P10000003', NULL, '15500000003', 'michael.brown@example.com', 'Chicago', '2025-11-26 11:58:23', '2025-11-26 11:58:23');
INSERT INTO `passenger` VALUES (16, 'Sophia', 'Davis', 'Female', '1995-04-04', 'USA', 'P10000004', NULL, '15500000004', 'sophia.davis@example.com', 'Houston', '2025-11-26 11:58:23', '2025-11-26 11:58:23');
INSERT INTO `passenger` VALUES (17, 'David', 'Miller', 'Male', '1985-05-05', 'USA', 'P10000005', NULL, '15500000005', 'david.miller@example.com', 'Phoenix', '2025-11-26 11:58:23', '2025-11-26 11:58:23');
INSERT INTO `passenger` VALUES (18, 'John', 'Smith', 'Male', '1990-01-01', 'USA', 'P10000001', NULL, '15500000001', 'john.smith@example.com', 'New York', '2025-11-26 11:58:30', '2025-11-26 11:58:30');
INSERT INTO `passenger` VALUES (19, 'Emma', 'Johnson', 'Female', '1992-02-02', 'USA', 'P10000002', NULL, '15500000002', 'emma.johnson@example.com', 'Los Angeles', '2025-11-26 11:58:30', '2025-11-26 11:58:30');
INSERT INTO `passenger` VALUES (20, 'Michael', 'Brown', 'Male', '1988-03-03', 'USA', 'P10000003', NULL, '15500000003', 'michael.brown@example.com', 'Chicago', '2025-11-26 11:58:30', '2025-11-26 11:58:30');
INSERT INTO `passenger` VALUES (21, 'Sophia', 'Davis', 'Female', '1995-04-04', 'USA', 'P10000004', NULL, '15500000004', 'sophia.davis@example.com', 'Houston', '2025-11-26 11:58:30', '2025-11-26 11:58:30');
INSERT INTO `passenger` VALUES (22, 'David', 'Miller', 'Male', '1985-05-05', 'USA', 'P10000005', NULL, '15500000005', 'david.miller@example.com', 'Phoenix', '2025-11-26 11:58:30', '2025-11-26 11:58:30');
INSERT INTO `passenger` VALUES (23, 'Alan', 'Cooper', 'Male', '1990-01-01', 'USA', 'P900001', '123456199001010011', '12300000001', 'alan.cooper@example.com', 'New York', '2025-11-26 12:06:53', '2025-11-26 12:06:53');
INSERT INTO `passenger` VALUES (24, 'Bella', 'Adams', 'Female', '1992-02-02', 'USA', 'P900002', '987654199202020022', '98700000002', 'bella.adams@example.com', 'Los Angeles', '2025-11-26 12:06:53', '2025-11-26 12:06:53');
INSERT INTO `passenger` VALUES (25, 'Chris', 'Baker', 'Male', '1985-03-03', 'USA', 'P900003', '555666198503030033', '55500000003', 'chris.baker@example.com', 'Chicago', '2025-11-26 12:06:53', '2025-11-26 12:06:53');
INSERT INTO `passenger` VALUES (26, 'Emma', 'Wilson', 'Female', '1990-04-12', 'USA', 'P800001', NULL, '15511110001', 'emma.wilson@example.com', 'New York', '2025-11-26 12:09:08', '2025-11-26 12:09:08');
INSERT INTO `passenger` VALUES (27, 'Liam', 'Taylor', 'Male', '1988-07-22', 'Canada', 'P800002', NULL, '15511110002', 'liam.taylor@example.com', 'Toronto', '2025-11-26 12:09:08', '2025-11-26 12:09:08');
INSERT INTO `passenger` VALUES (28, 'Sophia', 'Anderson', 'Female', '1992-09-18', 'UK', 'P800003', NULL, '15511110003', 'sophia.anderson@example.com', 'London', '2025-11-26 12:09:08', '2025-11-26 12:09:08');
INSERT INTO `passenger` VALUES (29, 'Emma', 'Wilson', 'Female', '1990-04-12', 'USA', 'P800001', NULL, '15511110001', 'emma.wilson@example.com', 'New York', '2025-11-26 12:11:37', '2025-11-26 12:11:37');
INSERT INTO `passenger` VALUES (30, 'Liam', 'Taylor', 'Male', '1988-07-22', 'Canada', 'P800002', NULL, '15511110002', 'liam.taylor@example.com', 'Toronto', '2025-11-26 12:11:37', '2025-11-26 12:11:37');
INSERT INTO `passenger` VALUES (31, 'Sophia', 'Anderson', 'Female', '1992-09-18', 'UK', 'P800003', NULL, '15511110003', 'sophia.anderson@example.com', 'London', '2025-11-26 12:11:37', '2025-11-26 12:11:37');
INSERT INTO `passenger` VALUES (32, 'Emma', 'Wilson', 'Female', '1990-04-12', 'USA', 'P800001', NULL, '15511110001', 'emma.wilson@example.com', 'New York', '2025-11-26 12:13:16', '2025-11-26 12:13:16');
INSERT INTO `passenger` VALUES (33, 'Liam', 'Taylor', 'Male', '1988-07-22', 'Canada', 'P800002', NULL, '15511110002', 'liam.taylor@example.com', 'Toronto', '2025-11-26 12:13:16', '2025-11-26 12:13:16');
INSERT INTO `passenger` VALUES (34, 'Sophia', 'Anderson', 'Female', '1992-09-18', 'UK', 'P800003', NULL, '15511110003', 'sophia.anderson@example.com', 'London', '2025-11-26 12:13:16', '2025-11-26 12:13:16');
INSERT INTO `passenger` VALUES (35, 'John', 'Smith', 'Male', '1950-03-15', 'USA', 'P1234567', '500000195003150011', '13855550001', 'john.smith@example.com', 'New York, USA', '2025-11-26 12:31:15', '2025-11-26 12:31:15');
INSERT INTO `passenger` VALUES (36, 'Mary', 'Johnson', 'Female', '1958-07-22', 'UK', 'P9876543', '500000195807220022', '13855550002', 'mary.johnson@example.com', 'London, UK', '2025-11-26 12:31:15', '2025-11-26 12:31:15');
INSERT INTO `passenger` VALUES (37, 'Robert', 'Brown', 'Male', '1945-11-10', 'Canada', 'P1122334', '500000194511100033', '13855550003', 'robert.brown@example.com', 'Toronto, Canada', '2025-11-26 12:31:15', '2025-11-26 12:31:15');
INSERT INTO `passenger` VALUES (38, 'Alice', 'Green', 'Female', '1990-01-10', 'USA', 'US1000001', NULL, '15500000020', 'alice.green@example.com', 'New York, USA', '2025-11-26 12:35:02', '2025-11-26 12:35:02');
INSERT INTO `passenger` VALUES (39, 'Brian', 'White', 'Male', '1985-05-20', 'USA', 'US1000002', NULL, '15500000021', 'brian.white@example.com', 'Los Angeles, USA', '2025-11-26 12:35:02', '2025-11-26 12:35:02');
INSERT INTO `passenger` VALUES (40, 'Chen', 'Wang', 'Male', '1992-03-15', 'China', 'CN1000003', NULL, '15500000022', 'chen.wang@example.com', 'Beijing, China', '2025-11-26 12:35:02', '2025-11-26 12:35:02');
INSERT INTO `passenger` VALUES (41, 'Diana', 'Brown', 'Female', '1988-07-08', 'UK', 'UK1000004', NULL, '15500000023', 'diana.brown@example.com', 'London, UK', '2025-11-26 12:35:02', '2025-11-26 12:35:02');
INSERT INTO `passenger` VALUES (42, 'Ethan', 'Taylor', 'Male', '1995-09-30', 'China', 'CN1000005', NULL, '15500000024', 'ethan.taylor@example.com', 'Shanghai, China', '2025-11-26 12:35:02', '2025-11-26 12:35:02');

-- ----------------------------
-- Table structure for station
-- ----------------------------
DROP TABLE IF EXISTS `station`;
CREATE TABLE `station`  (
  `Station_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '车站唯一标识',
  `Station_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车站名称',
  `Station_Code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车站代码',
  `City` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所在城市',
  `Province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所在省份',
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所在国家',
  `Latitude` decimal(9, 6) NOT NULL COMMENT '纬度',
  `Longitude` decimal(9, 6) NOT NULL COMMENT '经度',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车站地址',
  `Contact_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `Platform_Count` int(0) NOT NULL COMMENT '站台数量',
  `Station_Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车站状态（运营中、建设中等）',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Station_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station
-- ----------------------------
INSERT INTO `station` VALUES (1, '北京南站', 'BJN', '北京', '北京', '中国', 39.865042, 116.378837, '北京市丰台区', '010-12345678', 10, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `station` VALUES (2, '上海虹桥站', 'SHQ', '上海', '上海', '中国', 31.194355, 121.319809, '上海市闵行区', '021-87654321', 15, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `station` VALUES (3, '广州站', 'GZ', '广州', '广东', '中国', 23.148536, 113.259294, '广州市越秀区', '020-12345678', 8, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `station` VALUES (4, '成都东站', 'CDD', '成都', '四川', '中国', 30.631478, 104.140205, '成都市成华区', '028-87654321', 12, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `station` VALUES (5, '西安站', 'XA', '西安', '陕西', '中国', 34.278739, 108.956856, '西安市新城区', '029-12345678', 9, '运营中', '2025-01-23 22:18:17', '2025-01-23 22:18:17');
INSERT INTO `station` VALUES (9, 'Central City Station', 'CCS', 'New York', 'New York', 'USA', 40.712776, -74.005974, 'New York Central District', '13800000001', 8, 'Operating', '2025-11-26 12:08:42', '2025-11-26 12:08:42');
INSERT INTO `station` VALUES (10, 'Central East Station', 'CES', 'Boston', 'Massachusetts', 'USA', 42.360082, -71.058880, 'Boston Central Area', '13800000002', 6, 'Operating', '2025-11-26 12:08:42', '2025-11-26 12:08:42');
INSERT INTO `station` VALUES (11, 'Central West Station', 'CWS', 'Chicago', 'Illinois', 'USA', 41.878113, -87.629799, 'Chicago Central Zone', '13800000003', 7, 'Operating', '2025-11-26 12:08:42', '2025-11-26 12:08:42');

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `Ticket_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '车票唯一标识',
  `Train_ID` int(0) NOT NULL COMMENT '列车ID（外键）',
  `Passenger_ID` int(0) NOT NULL COMMENT '乘客ID（外键）',
  `Departure_Station_ID` int(0) NOT NULL COMMENT '出发车站ID（外键）',
  `Arrival_Station_ID` int(0) NOT NULL COMMENT '到达车站ID（外键）',
  `Seat_Number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '座位号',
  `Ticket_Price` decimal(10, 2) NOT NULL COMMENT '票价',
  `Ticket_Status` enum('Booked','Cancelled','Used') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车票状态',
  `Booking_Time` datetime(0) NOT NULL COMMENT '预订时间',
  `Departure_Time` datetime(0) NOT NULL COMMENT '出发时间',
  `Arrival_Time` datetime(0) NOT NULL COMMENT '到达时间',
  `Payment_Method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '支付方式',
  `Payment_Status` enum('Paid','Pending','Failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '支付状态',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Ticket_ID`) USING BTREE,
  INDEX `Train_ID`(`Train_ID`) USING BTREE,
  INDEX `Passenger_ID`(`Passenger_ID`) USING BTREE,
  INDEX `Departure_Station_ID`(`Departure_Station_ID`) USING BTREE,
  INDEX `Arrival_Station_ID`(`Arrival_Station_ID`) USING BTREE,
  CONSTRAINT `Ticket_ibfk_1` FOREIGN KEY (`Train_ID`) REFERENCES `train` (`Train_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Ticket_ibfk_2` FOREIGN KEY (`Passenger_ID`) REFERENCES `passenger` (`Passenger_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Ticket_ibfk_3` FOREIGN KEY (`Departure_Station_ID`) REFERENCES `station` (`Station_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Ticket_ibfk_4` FOREIGN KEY (`Arrival_Station_ID`) REFERENCES `station` (`Station_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES (1, 1, 1, 1, 2, 'A01', 553.50, 'Booked', '2023-09-25 10:00:00', '2023-10-01 08:00:00', '2023-10-01 12:30:00', '支付宝', 'Paid', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `ticket` VALUES (2, 2, 2, 3, 4, 'B12', 120.00, 'Booked', '2023-09-26 11:00:00', '2023-10-02 09:00:00', '2023-10-02 11:30:00', '微信支付', 'Paid', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `ticket` VALUES (3, 3, 3, 5, 1, 'C05', 200.00, 'Cancelled', '2023-09-27 12:00:00', '2023-10-03 10:00:00', '2023-10-03 12:00:00', '信用卡', 'Failed', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `ticket` VALUES (4, 4, 4, 2, 5, 'D08', 300.00, 'Used', '2023-09-28 13:00:00', '2023-10-04 14:00:00', '2023-10-04 20:00:00', '支付宝', 'Paid', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `ticket` VALUES (5, 5, 5, 4, 3, 'E10', 80.00, 'Booked', '2023-09-29 14:00:00', '2023-10-05 16:00:00', '2023-10-05 17:30:00', '微信支付', 'Pending', '2025-01-23 22:18:30', '2025-01-23 22:18:30');
INSERT INTO `ticket` VALUES (14, 1, 1, 1, 2, 'A01', 500.00, 'Booked', '2025-11-26 00:12:28', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 00:12:28', '2025-11-26 00:12:28');
INSERT INTO `ticket` VALUES (15, 1, 2, 1, 2, 'A02', 500.00, 'Booked', '2025-11-26 00:12:28', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 00:12:28', '2025-11-26 00:12:28');
INSERT INTO `ticket` VALUES (16, 1, 3, 1, 2, 'A03', 500.00, 'Booked', '2025-11-26 00:12:28', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 00:12:28', '2025-11-26 00:12:28');
INSERT INTO `ticket` VALUES (17, 1, 4, 1, 2, 'A04', 500.00, 'Booked', '2025-11-26 00:12:28', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 00:12:28', '2025-11-26 00:12:28');
INSERT INTO `ticket` VALUES (18, 1, 5, 1, 2, 'A05', 500.00, 'Booked', '2025-11-26 00:12:28', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 00:12:28', '2025-11-26 00:12:28');
INSERT INTO `ticket` VALUES (19, 1, 1, 1, 2, 'A01', 500.00, 'Booked', '2023-10-01 10:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', '支付宝', 'Paid', '2025-11-26 11:51:39', '2025-11-26 11:51:39');
INSERT INTO `ticket` VALUES (20, 1, 2, 1, 2, 'A02', 500.00, 'Booked', '2023-10-01 11:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', '微信支付', 'Paid', '2025-11-26 11:51:39', '2025-11-26 11:51:39');
INSERT INTO `ticket` VALUES (21, 1, 3, 1, 2, 'A03', 500.00, 'Booked', '2023-10-01 12:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', '信用卡', 'Paid', '2025-11-26 11:51:39', '2025-11-26 11:51:39');
INSERT INTO `ticket` VALUES (22, 1, 1, 1, 2, 'A01', 500.00, 'Booked', '2023-10-01 10:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'ailpay', 'Paid', '2025-11-26 11:52:04', '2025-11-26 11:52:04');
INSERT INTO `ticket` VALUES (23, 1, 2, 1, 2, 'A02', 500.00, 'Booked', '2023-10-01 11:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'wechat', 'Paid', '2025-11-26 11:52:04', '2025-11-26 11:52:04');
INSERT INTO `ticket` VALUES (24, 1, 3, 1, 2, 'A03', 500.00, 'Booked', '2023-10-01 12:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'visa', 'Paid', '2025-11-26 11:52:04', '2025-11-26 11:52:04');
INSERT INTO `ticket` VALUES (35, 1, 1, 1, 2, 'A01', 500.00, 'Booked', '2025-11-26 11:59:56', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online Payment', 'Paid', '2025-11-26 11:59:56', '2025-11-26 11:59:56');
INSERT INTO `ticket` VALUES (36, 1, 2, 1, 2, 'A02', 500.00, 'Booked', '2025-11-26 11:59:56', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online Payment', 'Paid', '2025-11-26 11:59:56', '2025-11-26 11:59:56');
INSERT INTO `ticket` VALUES (37, 1, 3, 1, 2, 'A03', 500.00, 'Booked', '2025-11-26 11:59:56', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online Payment', 'Paid', '2025-11-26 11:59:56', '2025-11-26 11:59:56');
INSERT INTO `ticket` VALUES (38, 1, 4, 1, 2, 'A04', 500.00, 'Booked', '2025-11-26 11:59:56', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 11:59:56', '2025-11-26 11:59:56');
INSERT INTO `ticket` VALUES (39, 1, 5, 1, 2, 'A05', 500.00, 'Booked', '2025-11-26 11:59:56', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 11:59:56', '2025-11-26 11:59:56');
INSERT INTO `ticket` VALUES (40, 1, 1, 1, 2, 'A11', 500.00, 'Booked', '2023-10-01 10:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Online Payment', 'Paid', '2025-11-26 12:01:54', '2025-11-26 12:01:54');
INSERT INTO `ticket` VALUES (41, 1, 2, 1, 2, 'A12', 500.00, 'Booked', '2023-10-01 10:05:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Online Payment', 'Paid', '2025-11-26 12:01:54', '2025-11-26 12:01:54');
INSERT INTO `ticket` VALUES (42, 1, 3, 1, 2, 'A13', 500.00, 'Booked', '2023-10-01 10:10:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Cash', 'Paid', '2025-11-26 12:01:54', '2025-11-26 12:01:54');
INSERT INTO `ticket` VALUES (43, 1, 4, 1, 2, 'A14', 500.00, 'Booked', '2023-10-01 10:15:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Cash', 'Paid', '2025-11-26 12:01:54', '2025-11-26 12:01:54');
INSERT INTO `ticket` VALUES (44, 1, 5, 1, 2, 'A15', 500.00, 'Booked', '2023-10-01 10:20:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Online Payment', 'Paid', '2025-11-26 12:01:54', '2025-11-26 12:01:54');
INSERT INTO `ticket` VALUES (45, 1, 1, 1, 2, 'B01', 500.00, 'Booked', '2025-11-26 12:04:16', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online Payment', 'Paid', '2025-11-26 12:04:16', '2025-11-26 12:04:16');
INSERT INTO `ticket` VALUES (46, 1, 2, 1, 2, 'B02', 500.00, 'Booked', '2025-11-26 12:04:16', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online Payment', 'Paid', '2025-11-26 12:04:16', '2025-11-26 12:04:16');
INSERT INTO `ticket` VALUES (47, 1, 3, 1, 2, 'B03', 500.00, 'Booked', '2025-11-26 12:04:16', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online Payment', 'Paid', '2025-11-26 12:04:16', '2025-11-26 12:04:16');
INSERT INTO `ticket` VALUES (48, 1, 4, 1, 2, 'B04', 500.00, 'Booked', '2025-11-26 12:04:16', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 12:04:16', '2025-11-26 12:04:16');
INSERT INTO `ticket` VALUES (49, 1, 5, 1, 2, 'B05', 500.00, 'Booked', '2025-11-26 12:04:16', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 12:04:16', '2025-11-26 12:04:16');
INSERT INTO `ticket` VALUES (50, 1, 1, 1, 2, 'C01', 500.00, 'Booked', '2023-10-01 10:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Online Payment', 'Paid', '2025-11-26 12:04:53', '2025-11-26 12:04:53');
INSERT INTO `ticket` VALUES (51, 1, 2, 1, 2, 'C02', 500.00, 'Booked', '2023-10-01 10:05:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Online Payment', 'Paid', '2025-11-26 12:04:53', '2025-11-26 12:04:53');
INSERT INTO `ticket` VALUES (52, 1, 3, 1, 2, 'C03', 500.00, 'Booked', '2023-10-01 10:10:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Credit Card', 'Paid', '2025-11-26 12:04:53', '2025-11-26 12:04:53');
INSERT INTO `ticket` VALUES (53, 1, 1, 1, 2, 'D01', 500.00, 'Booked', '2025-11-26 12:05:37', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 12:05:37', '2025-11-26 12:05:37');
INSERT INTO `ticket` VALUES (54, 1, 2, 1, 2, 'D02', 500.00, 'Booked', '2025-11-26 12:05:37', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 12:05:37', '2025-11-26 12:05:37');
INSERT INTO `ticket` VALUES (55, 1, 3, 1, 2, 'D03', 500.00, 'Booked', '2025-11-26 12:05:37', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 12:05:37', '2025-11-26 12:05:37');
INSERT INTO `ticket` VALUES (56, 1, 4, 1, 2, 'D04', 500.00, 'Booked', '2025-11-26 12:05:37', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 12:05:37', '2025-11-26 12:05:37');
INSERT INTO `ticket` VALUES (57, 1, 5, 1, 2, 'D05', 500.00, 'Booked', '2025-11-26 12:05:37', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 12:05:37', '2025-11-26 12:05:37');
INSERT INTO `ticket` VALUES (58, 1, 1, 1, 2, 'E01', 500.00, 'Booked', '2023-10-01 10:00:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Online Payment', 'Paid', '2025-11-26 12:06:26', '2025-11-26 12:06:26');
INSERT INTO `ticket` VALUES (59, 1, 2, 1, 2, 'E02', 500.00, 'Booked', '2023-10-01 10:05:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Online Payment', 'Paid', '2025-11-26 12:06:26', '2025-11-26 12:06:26');
INSERT INTO `ticket` VALUES (60, 1, 3, 1, 2, 'E03', 500.00, 'Booked', '2023-10-01 10:10:00', '2023-10-10 10:00:00', '2023-10-10 14:30:00', 'Cash', 'Paid', '2025-11-26 12:06:26', '2025-11-26 12:06:26');
INSERT INTO `ticket` VALUES (70, 1, 6, 1, 2, 'F01', 200.00, 'Booked', '2025-11-26 12:16:16', '2025-11-26 08:00:00', '2025-11-26 10:00:00', 'Online Payment', 'Paid', '2025-11-26 12:16:16', '2025-11-26 12:16:16');
INSERT INTO `ticket` VALUES (71, 1, 7, 2, 3, 'F02', 150.00, 'Booked', '2025-11-26 12:16:16', '2025-11-26 09:00:00', '2025-11-26 11:30:00', 'Online Payment', 'Paid', '2025-11-26 12:16:16', '2025-11-26 12:16:16');
INSERT INTO `ticket` VALUES (72, 1, 8, 3, 4, 'F03', 180.00, 'Booked', '2025-11-26 12:16:16', '2025-11-26 07:30:00', '2025-11-26 10:30:00', 'Cash', 'Paid', '2025-11-26 12:16:16', '2025-11-26 12:16:16');
INSERT INTO `ticket` VALUES (73, 1, 1, 3, 3, 'G01', 50.00, 'Booked', '2025-11-26 12:17:38', '2025-11-26 08:00:00', '2025-11-26 09:30:00', 'Online Payment', 'Paid', '2025-11-26 12:17:38', '2025-11-26 12:17:38');
INSERT INTO `ticket` VALUES (74, 1, 2, 3, 3, 'G02', 75.00, 'Booked', '2025-11-26 12:17:38', '2025-11-26 10:00:00', '2025-11-26 11:30:00', 'Cash', 'Paid', '2025-11-26 12:17:38', '2025-11-26 12:17:38');
INSERT INTO `ticket` VALUES (75, 1, 3, 3, 3, 'G03', 150.00, 'Booked', '2025-11-26 12:17:38', '2025-11-26 12:00:00', '2025-11-26 13:30:00', 'Online Payment', 'Paid', '2025-11-26 12:17:38', '2025-11-26 12:17:38');
INSERT INTO `ticket` VALUES (76, 1, 1, 1, 1, 'H01', 60.00, 'Booked', '2025-11-26 12:19:55', '2025-11-26 08:00:00', '2025-11-26 09:00:00', 'Online Payment', 'Paid', '2025-11-26 12:19:55', '2025-11-26 12:19:55');
INSERT INTO `ticket` VALUES (77, 1, 2, 2, 2, 'H02', 80.00, 'Booked', '2025-11-26 12:19:55', '2025-11-26 10:00:00', '2025-11-26 11:00:00', 'Cash', 'Paid', '2025-11-26 12:19:55', '2025-11-26 12:19:55');
INSERT INTO `ticket` VALUES (78, 1, 3, 3, 3, 'H03', 120.00, 'Booked', '2025-11-26 12:19:55', '2025-11-26 12:00:00', '2025-11-26 13:30:00', 'Online Payment', 'Paid', '2025-11-26 12:19:55', '2025-11-26 12:19:55');
INSERT INTO `ticket` VALUES (79, 1, 1, 1, 2, 'N01', 300.00, 'Booked', '2025-11-26 12:21:12', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Online Payment', 'Paid', '2025-11-26 12:21:12', '2025-11-26 12:21:12');
INSERT INTO `ticket` VALUES (80, 1, 2, 1, 2, 'N02', 300.00, 'Booked', '2025-11-26 12:21:12', '2025-11-26 09:00:00', '2025-11-26 13:00:00', 'Online Payment', 'Paid', '2025-11-26 12:21:12', '2025-11-26 12:21:12');
INSERT INTO `ticket` VALUES (81, 1, 3, 1, 2, 'N03', 300.00, 'Booked', '2025-11-26 12:21:12', '2025-11-26 10:00:00', '2025-11-26 14:00:00', 'Cash', 'Paid', '2025-11-26 12:21:12', '2025-11-26 12:21:12');
INSERT INTO `ticket` VALUES (82, 1, 4, 1, 2, 'N04', 300.00, 'Booked', '2025-11-26 12:21:12', '2025-11-26 11:00:00', '2025-11-26 15:00:00', 'Cash', 'Paid', '2025-11-26 12:21:12', '2025-11-26 12:21:12');
INSERT INTO `ticket` VALUES (83, 1, 5, 1, 2, 'N05', 300.00, 'Booked', '2025-11-26 12:21:12', '2025-11-26 12:00:00', '2025-11-26 16:00:00', 'Online Payment', 'Paid', '2025-11-26 12:21:12', '2025-11-26 12:21:12');
INSERT INTO `ticket` VALUES (84, 1, 1, 1, 2, '000001', 500.00, 'Booked', '2025-11-26 12:23:39', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Online', 'Paid', '2025-11-26 12:23:39', '2025-11-26 12:23:39');
INSERT INTO `ticket` VALUES (85, 1, 2, 1, 2, '000002', 500.00, 'Booked', '2025-11-26 12:23:39', '2025-11-26 08:05:00', '2025-11-26 12:05:00', 'Online', 'Paid', '2025-11-26 12:23:39', '2025-11-26 12:23:39');
INSERT INTO `ticket` VALUES (86, 1, 3, 1, 2, '000003', 500.00, 'Booked', '2025-11-26 12:23:39', '2025-11-26 08:10:00', '2025-11-26 12:10:00', 'Cash', 'Paid', '2025-11-26 12:23:39', '2025-11-26 12:23:39');
INSERT INTO `ticket` VALUES (87, 1, 1, 1, 2, 'X30', 260.00, 'Cancelled', '2025-11-26 12:26:05', '2025-11-26 08:00:00', '2025-11-26 10:00:00', 'Online', 'Failed', '2025-11-26 12:26:05', '2025-11-26 12:26:05');
INSERT INTO `ticket` VALUES (88, 1, 2, 1, 2, 'X25', 240.00, 'Cancelled', '2025-11-26 12:26:05', '2025-11-26 09:00:00', '2025-11-26 11:00:00', 'Cash', 'Failed', '2025-11-26 12:26:05', '2025-11-26 12:26:05');
INSERT INTO `ticket` VALUES (89, 1, 3, 1, 2, 'X10', 180.00, 'Cancelled', '2025-11-26 12:26:05', '2025-11-26 07:30:00', '2025-11-26 09:30:00', 'Online', 'Failed', '2025-11-26 12:26:05', '2025-11-26 12:26:05');
INSERT INTO `ticket` VALUES (90, 1, 1, 1, 2, 'U01', 500.00, 'Used', '2025-11-26 12:26:52', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Online', 'Paid', '2025-11-26 12:26:52', '2025-11-26 12:26:52');
INSERT INTO `ticket` VALUES (91, 1, 2, 1, 2, 'U02', 500.00, 'Used', '2025-11-26 12:26:52', '2025-11-26 08:10:00', '2025-11-26 12:10:00', 'Cash', 'Paid', '2025-11-26 12:26:52', '2025-11-26 12:26:52');
INSERT INTO `ticket` VALUES (92, 1, 3, 1, 2, 'U03', 500.00, 'Used', '2025-11-26 12:26:52', '2025-11-26 08:20:00', '2025-11-26 12:20:00', 'Online', 'Paid', '2025-11-26 12:26:52', '2025-11-26 12:26:52');
INSERT INTO `ticket` VALUES (93, 1, 1, 1, 2, 'C01', 200.00, 'Cancelled', '2025-11-20 08:00:00', '2025-11-26 08:00:00', '2025-11-26 10:00:00', 'Online', 'Failed', '2025-11-26 12:27:28', '2025-11-26 12:27:28');
INSERT INTO `ticket` VALUES (94, 1, 2, 1, 2, 'C02', 220.00, 'Cancelled', '2025-11-21 09:15:00', '2025-11-26 09:00:00', '2025-11-26 11:30:00', 'Cash', 'Failed', '2025-11-26 12:27:28', '2025-11-26 12:27:28');
INSERT INTO `ticket` VALUES (95, 1, 3, 1, 2, 'C03', 180.00, 'Cancelled', '2025-11-22 07:45:00', '2025-11-26 07:30:00', '2025-11-26 10:30:00', 'Online', 'Failed', '2025-11-26 12:27:28', '2025-11-26 12:27:28');
INSERT INTO `ticket` VALUES (96, 1, 1, 1, 2, 'B001', 300.00, 'Booked', '2025-11-20 08:00:00', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 12:28:01', '2025-11-26 12:28:01');
INSERT INTO `ticket` VALUES (97, 1, 2, 1, 2, 'B001', 300.00, 'Booked', '2025-11-20 08:05:00', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 12:28:01', '2025-11-26 12:28:01');
INSERT INTO `ticket` VALUES (98, 1, 3, 1, 2, 'B002', 300.00, 'Booked', '2025-11-20 09:10:00', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 12:28:01', '2025-11-26 12:28:01');
INSERT INTO `ticket` VALUES (99, 1, 4, 1, 2, 'B002', 300.00, 'Booked', '2025-11-20 09:25:00', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Online', 'Paid', '2025-11-26 12:28:01', '2025-11-26 12:28:01');
INSERT INTO `ticket` VALUES (100, 1, 5, 1, 2, 'B003', 300.00, 'Booked', '2025-11-20 10:00:00', '2025-11-26 08:00:00', '2025-11-26 12:30:00', 'Cash', 'Paid', '2025-11-26 12:28:01', '2025-11-26 12:28:01');
INSERT INTO `ticket` VALUES (101, 1, 1, 1, 2, 'CX01', 220.00, 'Cancelled', '2025-11-18 09:00:00', '2025-11-26 06:00:00', '2025-11-26 10:00:00', 'Online', 'Failed', '2025-11-26 12:28:33', '2025-11-26 12:28:33');
INSERT INTO `ticket` VALUES (102, 1, 2, 1, 2, 'CX02', 250.00, 'Cancelled', '2025-11-18 10:00:00', '2025-11-26 07:00:00', '2025-11-26 11:00:00', 'Cash', 'Failed', '2025-11-26 12:28:33', '2025-11-26 12:28:33');
INSERT INTO `ticket` VALUES (103, 1, 3, 1, 2, 'CX03', 200.00, 'Cancelled', '2025-11-18 11:00:00', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Online', 'Failed', '2025-11-26 12:28:33', '2025-11-26 12:28:33');
INSERT INTO `ticket` VALUES (104, 1, 1, 1, 2, 'U10', 300.00, 'Used', '2025-11-15 08:00:00', '2025-11-26 06:00:00', '2025-11-26 08:00:00', 'Online', 'Paid', '2025-11-26 12:29:24', '2025-11-26 12:29:24');
INSERT INTO `ticket` VALUES (105, 1, 2, 1, 2, 'U11', 320.00, 'Used', '2025-11-15 09:00:00', '2025-11-26 06:30:00', '2025-11-26 08:30:00', 'Cash', 'Paid', '2025-11-26 12:29:24', '2025-11-26 12:29:24');
INSERT INTO `ticket` VALUES (106, 1, 3, 1, 2, 'U12', 310.00, 'Used', '2025-11-15 10:00:00', '2025-11-26 07:00:00', '2025-11-26 09:30:00', 'Online', 'Paid', '2025-11-26 12:29:24', '2025-11-26 12:29:24');
INSERT INTO `ticket` VALUES (107, 1, 4, 1, 2, 'U13', 330.00, 'Used', '2025-11-15 11:00:00', '2025-11-26 07:30:00', '2025-11-26 10:00:00', 'Online', 'Paid', '2025-11-26 12:29:24', '2025-11-26 12:29:24');
INSERT INTO `ticket` VALUES (108, 1, 5, 1, 2, 'U14', 295.00, 'Used', '2025-11-15 12:00:00', '2025-11-26 08:00:00', '2025-11-26 11:00:00', 'Cash', 'Paid', '2025-11-26 12:29:24', '2025-11-26 12:29:24');
INSERT INTO `ticket` VALUES (109, 1, 1, 1, 2, 'CC01', 350.00, 'Booked', '2025-11-10 08:00:00', '2025-11-26 06:00:00', '2025-11-26 10:00:00', 'Credit Card', 'Paid', '2025-11-26 12:29:54', '2025-11-26 12:29:54');
INSERT INTO `ticket` VALUES (110, 1, 2, 1, 2, 'CC02', 360.00, 'Booked', '2025-11-11 09:00:00', '2025-11-26 07:00:00', '2025-11-26 11:00:00', 'Credit Card', 'Paid', '2025-11-26 12:29:54', '2025-11-26 12:29:54');
INSERT INTO `ticket` VALUES (111, 1, 3, 1, 2, 'CC03', 340.00, 'Booked', '2025-11-12 10:00:00', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Credit Card', 'Paid', '2025-11-26 12:29:54', '2025-11-26 12:29:54');
INSERT INTO `ticket` VALUES (112, 1, 4, 1, 2, 'F100', 480.00, 'Booked', '2025-11-14 08:00:00', '2025-11-26 06:00:00', '2025-11-26 10:00:00', 'Online', 'Failed', '2025-11-26 12:30:38', '2025-11-26 12:30:38');
INSERT INTO `ticket` VALUES (113, 1, 5, 1, 2, 'F101', 450.00, 'Booked', '2025-11-14 09:00:00', '2025-11-26 07:00:00', '2025-11-26 11:00:00', 'Cash', 'Failed', '2025-11-26 12:30:38', '2025-11-26 12:30:38');
INSERT INTO `ticket` VALUES (114, 1, 3, 1, 2, 'F102', 420.00, 'Booked', '2025-11-14 10:00:00', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Credit Card', 'Failed', '2025-11-26 12:30:38', '2025-11-26 12:30:38');
INSERT INTO `ticket` VALUES (115, 1, 20, 1, 2, 'S001', 500.00, 'Booked', '2025-11-20 08:00:00', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Online', 'Paid', '2025-11-26 12:34:32', '2025-11-26 12:34:32');
INSERT INTO `ticket` VALUES (116, 1, 21, 1, 2, 'S002', 520.00, 'Booked', '2025-11-20 08:10:00', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Credit Card', 'Paid', '2025-11-26 12:34:32', '2025-11-26 12:34:32');
INSERT INTO `ticket` VALUES (117, 1, 22, 1, 2, 'S003', 480.00, 'Booked', '2025-11-20 08:20:00', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Cash', 'Paid', '2025-11-26 12:34:32', '2025-11-26 12:34:32');
INSERT INTO `ticket` VALUES (118, 1, 23, 1, 2, 'S004', 550.00, 'Booked', '2025-11-20 08:30:00', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Online', 'Paid', '2025-11-26 12:34:32', '2025-11-26 12:34:32');
INSERT INTO `ticket` VALUES (119, 1, 24, 1, 2, 'S005', 510.00, 'Booked', '2025-11-20 08:40:00', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 'Online', 'Paid', '2025-11-26 12:34:32', '2025-11-26 12:34:32');
INSERT INTO `ticket` VALUES (120, 1, 1, 1, 2, 'FST01', 850.00, 'Used', '2023-09-20 10:00:00', '2023-10-01 08:00:00', '2023-10-01 12:28:00', 'Credit Card', 'Paid', '2025-11-26 13:23:38', '2025-11-26 13:23:38');
INSERT INTO `ticket` VALUES (121, 1, 2, 1, 2, 'SEC15', 553.50, 'Used', '2023-09-21 11:00:00', '2023-10-01 08:00:00', '2023-10-01 12:35:00', 'Cash', 'Paid', '2025-11-26 13:23:38', '2025-11-26 13:23:38');
INSERT INTO `ticket` VALUES (122, 1, 3, 1, 2, 'FST08', 850.00, 'Used', '2023-09-22 12:20:00', '2023-10-01 08:00:00', '2023-10-01 12:40:00', 'Credit Card', 'Paid', '2025-11-26 13:23:38', '2025-11-26 13:23:38');
INSERT INTO `ticket` VALUES (123, 1, 4, 1, 2, 'SEC22', 553.50, 'Used', '2023-09-23 14:10:00', '2023-10-01 08:00:00', '2023-10-01 12:33:00', 'Alipay', 'Paid', '2025-11-26 13:23:38', '2025-11-26 13:23:38');
INSERT INTO `ticket` VALUES (124, 1, 5, 1, 2, 'BUS01', 1200.00, 'Used', '2023-09-24 16:00:00', '2023-10-01 08:00:00', '2023-10-01 12:31:00', 'WeChat Pay', 'Paid', '2025-11-26 13:23:38', '2025-11-26 13:23:38');

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train`  (
  `Train_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '列车唯一标识',
  `Train_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列车编号',
  `Train_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列车名称',
  `Train_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列车类型（高铁、普快等）',
  `Departure_Station` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出发车站',
  `Arrival_Station` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '到达车站',
  `Departure_Time` datetime(0) NOT NULL COMMENT '出发时间',
  `Arrival_Time` datetime(0) NOT NULL COMMENT '到达时间',
  `Total_Seats` int(0) NOT NULL COMMENT '总座位数',
  `Available_Seats` int(0) NOT NULL COMMENT '可用座位数',
  `Train_Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '列车状态（运行、停运等）',
  `Operator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '运营商',
  `Created_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `Updated_At` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`Train_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES (1, 'G101', '复兴号', 'High-speed', 'Beijing South Station', 'Shanghai Hongqiao Station', '2023-10-01 08:00:00', '2023-10-01 12:30:00', 1000, 0, 'Running', 'China Railway', '2025-01-23 22:18:11', '2025-11-26 13:20:00');
INSERT INTO `train` VALUES (2, 'K123', '和谐号', '普快', '广州站', '深圳站', '2023-10-02 09:00:00', '2023-10-02 11:30:00', 1200, 1000, '运行中', '广铁集团', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
INSERT INTO `train` VALUES (3, 'D456', '动车组', '动车', '成都东站', '重庆北站', '2023-10-03 10:00:00', '2023-10-03 12:00:00', 600, 550, '运行中', '成都铁路局', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
INSERT INTO `train` VALUES (4, 'Z789', '直达特快', '特快', '西安站', '兰州站', '2023-10-04 14:00:00', '2023-10-04 20:00:00', 800, 700, '运行中', '西安铁路局', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
INSERT INTO `train` VALUES (5, 'C202', '城际列车', '城际', '杭州东站', '宁波站', '2023-10-05 16:00:00', '2023-10-05 17:30:00', 400, 350, '运行中', '上海铁路局', '2025-01-23 22:18:11', '2025-01-23 22:18:11');
INSERT INTO `train` VALUES (9, 'T6001', 'Average Speed Test', 'High-speed', '1', '2', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 500, 480, 'Operating', 'China Railway', '2025-11-26 12:20:34', '2025-11-26 12:20:34');
INSERT INTO `train` VALUES (10, 'HS101', 'High Speed 101', '高铁', '1', '2', '2023-10-01 08:00:00', '2023-10-01 12:30:00', 500, 450, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (11, 'HS102', 'High Speed 102', '高铁', '1', '2', '2023-10-01 08:30:00', '2023-10-01 13:00:00', 500, 460, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (12, 'HS103', 'High Speed 103', '高铁', '1', '2', '2023-10-01 09:00:00', '2023-10-01 13:30:00', 500, 470, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (13, 'HS104', 'High Speed 104', '高铁', '1', '2', '2023-10-01 09:30:00', '2023-10-01 14:00:00', 500, 480, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (14, 'HS105', 'High Speed 105', '高铁', '1', '2', '2023-10-01 10:00:00', '2023-10-01 14:30:00', 500, 490, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (15, 'HS106', 'High Speed 106', '高铁', '1', '2', '2023-10-01 10:30:00', '2023-10-01 15:00:00', 500, 495, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (16, 'HS107', 'High Speed 107', '高铁', '1', '2', '2023-10-01 11:00:00', '2023-10-01 15:30:00', 500, 498, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (17, 'HS108', 'High Speed 108', '高铁', '1', '2', '2023-10-01 11:30:00', '2023-10-01 16:00:00', 500, 499, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (18, 'HS109', 'High Speed 109', '高铁', '1', '2', '2023-10-01 12:00:00', '2023-10-01 16:30:00', 500, 480, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (19, 'HS110', 'High Speed 110', '高铁', '1', '2', '2023-10-01 12:30:00', '2023-10-01 17:00:00', 500, 470, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (20, 'HS111', 'High Speed 111', '高铁', '1', '2', '2023-10-01 13:00:00', '2023-10-01 17:30:00', 500, 460, 'Running', 'China Railway', '2025-11-26 12:37:21', '2025-11-26 12:37:21');
INSERT INTO `train` VALUES (21, 'HSLOAD001', 'High Speed Load Test', 'High-speed', 'Beijing South Station', 'Shanghai Hongqiao Station', '2023-10-01 08:00:00', '2023-10-01 12:30:00', 1000, 0, 'Running', 'China Railway', '2025-11-26 12:38:29', '2025-11-26 12:38:29');
INSERT INTO `train` VALUES (22, 'HS9001', 'HighSpeed Alpha', 'High-speed', '1', '2', '2025-11-26 08:00:00', '2025-11-26 12:00:00', 1000, 50, 'Running', 'China Railway', '2025-11-26 13:18:32', '2025-11-26 13:18:32');
INSERT INTO `train` VALUES (23, 'HS9002', 'HighSpeed Beta', 'High-speed', '2', '3', '2025-11-26 09:00:00', '2025-11-26 13:00:00', 800, 30, 'Running', 'China Railway', '2025-11-26 13:18:32', '2025-11-26 13:18:32');
INSERT INTO `train` VALUES (24, 'HS9003', 'HighSpeed Gamma', 'High-speed', '3', '4', '2025-11-26 10:00:00', '2025-11-26 14:00:00', 600, 20, 'Running', 'China Railway', '2025-11-26 13:18:32', '2025-11-26 13:18:32');
INSERT INTO `train` VALUES (25, 'HS9004', 'HighSpeed Delta', 'High-speed', '4', '5', '2025-11-26 11:00:00', '2025-11-26 15:00:00', 500, 40, 'Running', 'China Railway', '2025-11-26 13:18:32', '2025-11-26 13:18:32');
INSERT INTO `train` VALUES (26, 'CR001', 'China High Speed A', 'High-speed', '1', '2', '2025-12-01 08:00:00', '2025-12-01 12:00:00', 800, 200, '运行', 'China Railway', '2025-11-26 13:21:55', '2025-11-26 13:21:55');
INSERT INTO `train` VALUES (27, 'CR002', 'China High Speed B', 'High-speed', '2', '3', '2025-12-01 09:00:00', '2025-12-01 13:00:00', 600, 150, '运行', 'China Railway', '2025-11-26 13:21:55', '2025-11-26 13:21:55');
INSERT INTO `train` VALUES (28, 'CR003', 'China High Speed C', 'High-speed', '3', '4', '2025-12-01 10:00:00', '2025-12-01 14:00:00', 700, 100, '运行', 'China Railway', '2025-11-26 13:21:55', '2025-11-26 13:21:55');

SET FOREIGN_KEY_CHECKS = 1;
