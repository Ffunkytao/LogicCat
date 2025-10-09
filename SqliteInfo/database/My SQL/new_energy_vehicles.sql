/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : new_energy_vehicles

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 22:11:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charging_records
-- ----------------------------
DROP TABLE IF EXISTS `charging_records`;
CREATE TABLE `charging_records` (
  `Record_Id` int NOT NULL AUTO_INCREMENT COMMENT '充电记录唯一标识',
  `Vehicle_Id` int DEFAULT NULL COMMENT '车辆ID（外键）',
  `Station_Id` int DEFAULT NULL COMMENT '充电站ID（外键）',
  `Start_Time` datetime DEFAULT NULL COMMENT '充电开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '充电结束时间',
  `Energy_Consumed_Kwh` decimal(10,2) DEFAULT NULL COMMENT '消耗的电量（千瓦时）',
  `Cost_Usd` decimal(10,2) DEFAULT NULL COMMENT '充电费用（美元）',
  `Initial_Battery_Percentage` decimal(5,2) DEFAULT NULL COMMENT '充电开始时的电池百分比',
  `Final_Battery_Percentage` decimal(5,2) DEFAULT NULL COMMENT '充电结束时的电池百分比',
  `Charging_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '充电类型（如：快充、慢充）',
  `Temperature_Celsius` decimal(5,2) DEFAULT NULL COMMENT '充电时环境温度（摄氏度）',
  `Weather_Conditions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '天气情况',
  PRIMARY KEY (`Record_Id`),
  KEY `vehicle_id` (`Vehicle_Id`),
  KEY `station_id` (`Station_Id`),
  CONSTRAINT `charging_records_ibfk_1` FOREIGN KEY (`Vehicle_Id`) REFERENCES `vehicles` (`Vehicle_Id`),
  CONSTRAINT `charging_records_ibfk_2` FOREIGN KEY (`Station_Id`) REFERENCES `charging_stations` (`Station_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for charging_stations
-- ----------------------------
DROP TABLE IF EXISTS `charging_stations`;
CREATE TABLE `charging_stations` (
  `Station_Id` int NOT NULL AUTO_INCREMENT COMMENT '充电站唯一标识',
  `Station_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '充电站名称',
  `Location` point NOT NULL COMMENT '充电站地理位置（经纬度）',
  `Charging_Speed_Kw` decimal(10,2) DEFAULT NULL COMMENT '充电速度（千瓦）',
  `Number_Of_Chargers` int DEFAULT NULL COMMENT '充电桩数量',
  `Operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '运营商',
  `Opening_Hours` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '开放时间',
  `Cost_Per_Kwh` decimal(10,2) DEFAULT NULL COMMENT '每千瓦时费用',
  `Is_24_Hours` tinyint(1) DEFAULT NULL COMMENT '是否24小时开放',
  `Parking_Fee_Usd` decimal(10,2) DEFAULT NULL COMMENT '停车费用（美元）',
  `Has_Restroom` tinyint(1) DEFAULT NULL COMMENT '是否有洗手间',
  `Has_Cafe` tinyint(1) DEFAULT NULL COMMENT '是否有咖啡馆',
  `Is_Covered` tinyint(1) DEFAULT NULL COMMENT '是否有顶棚',
  `Is_Solar_Powered` tinyint(1) DEFAULT NULL COMMENT '是否使用太阳能供电',
  PRIMARY KEY (`Station_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for driving_records
-- ----------------------------
DROP TABLE IF EXISTS `driving_records`;
CREATE TABLE `driving_records` (
  `Record_Id` int NOT NULL AUTO_INCREMENT COMMENT '驾驶记录唯一标识',
  `Vehicle_Id` int DEFAULT NULL COMMENT '车辆ID（外键）',
  `Start_Time` datetime DEFAULT NULL COMMENT '驾驶开始时间',
  `End_Time` datetime DEFAULT NULL COMMENT '驾驶结束时间',
  `Distance_Km` decimal(10,2) DEFAULT NULL COMMENT '行驶距离（公里）',
  `Energy_Consumed_Kwh` decimal(10,2) DEFAULT NULL COMMENT '消耗的电量（千瓦时）',
  `Average_Speed_Kmh` decimal(10,2) DEFAULT NULL COMMENT '平均速度（公里/小时）',
  `Max_Speed_Kmh` decimal(10,2) DEFAULT NULL COMMENT '最高速度（公里/小时）',
  `Start_Battery_Percentage` decimal(5,2) DEFAULT NULL COMMENT '驾驶开始时的电池百分比',
  `End_Battery_Percentage` decimal(5,2) DEFAULT NULL COMMENT '驾驶结束时的电池百分比',
  `Elevation_Gain_M` decimal(10,2) DEFAULT NULL COMMENT '海拔上升高度（米）',
  `Elevation_Loss_M` decimal(10,2) DEFAULT NULL COMMENT '海拔下降高度（米）',
  `Weather_Conditions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '天气情况',
  `Road_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '道路类型（如：高速、城市道路）',
  PRIMARY KEY (`Record_Id`),
  KEY `vehicle_id` (`Vehicle_Id`),
  CONSTRAINT `driving_records_ibfk_1` FOREIGN KEY (`Vehicle_Id`) REFERENCES `vehicles` (`Vehicle_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `Vehicle_Id` int NOT NULL AUTO_INCREMENT COMMENT '车辆唯一标识',
  `Manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车型',
  `Production_Year` year DEFAULT NULL COMMENT '生产年份',
  `Battery_Capacity_Kwh` decimal(10,2) DEFAULT NULL COMMENT '电池容量（千瓦时）',
  `Range_Km` int DEFAULT NULL COMMENT '续航里程（公里）',
  `Weight_Kg` decimal(10,2) DEFAULT NULL COMMENT '车辆重量（千克）',
  `Motor_Power_Kw` decimal(10,2) DEFAULT NULL COMMENT '电机功率（千瓦）',
  `Charging_Time_Hours` decimal(5,2) DEFAULT NULL COMMENT '充电时间（小时）',
  `Price_Usd` decimal(15,2) DEFAULT NULL COMMENT '价格（美元）',
  `Release_Date` date DEFAULT NULL COMMENT '发布日期',
  `Top_Speed_Kmh` decimal(10,2) DEFAULT NULL COMMENT '最高时速（公里/小时）',
  `Acceleration_0_To_100_Sec` decimal(5,2) DEFAULT NULL COMMENT '0-100公里/小时加速时间（秒）',
  `Seating_Capacity` int DEFAULT NULL COMMENT '座位数',
  `Drivetrain` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '驱动类型（如：前驱、后驱、四驱）',
  `Warranty_Years` int DEFAULT NULL COMMENT '保修年限',
  `Is_Autonomous` tinyint(1) DEFAULT NULL COMMENT '是否支持自动驾驶',
  `Battery_Health` decimal(5,2) DEFAULT '100.00',
  PRIMARY KEY (`Vehicle_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
