/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : car

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 20:07:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `Car_ID` int NOT NULL AUTO_INCREMENT COMMENT '汽车唯一标识',
  `Manufacturer_ID` int NOT NULL COMMENT '制造商ID',
  `Model` varchar(100) NOT NULL COMMENT '车型',
  `Year` int NOT NULL COMMENT '生产年份',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量（kg）',
  `Fuel_Efficiency_City` decimal(5,2) NOT NULL COMMENT '城市燃油效率（km/L）',
  `Fuel_Efficiency_Highway` decimal(5,2) NOT NULL COMMENT '高速燃油效率（km/L）',
  `Fuel_Tank_Capacity` decimal(5,2) DEFAULT NULL COMMENT '油箱容量（L）',
  `Battery_Capacity` decimal(6,2) DEFAULT NULL COMMENT '电池容量（kWh，适用于电动车）',
  `Range` int DEFAULT NULL COMMENT '续航里程（km，适用于电动车）',
  `Seating_Capacity` int NOT NULL COMMENT '座位数',
  `Cargo_Capacity` decimal(5,2) NOT NULL COMMENT '载货容量（L）',
  `Production_Volume` int DEFAULT NULL COMMENT '生产数量',
  PRIMARY KEY (`Car_ID`),
  KEY `Manufacturer_ID` (`Manufacturer_ID`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturers` (`Manufacturer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for dimensions
-- ----------------------------
DROP TABLE IF EXISTS `dimensions`;
CREATE TABLE `dimensions` (
  `Dimension_ID` int NOT NULL AUTO_INCREMENT COMMENT '尺寸唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Length` decimal(5,2) NOT NULL COMMENT '长度（米）',
  `Width` decimal(5,2) NOT NULL COMMENT '宽度（米）',
  `Height` decimal(5,2) NOT NULL COMMENT '高度（米）',
  `Wheelbase` decimal(5,2) NOT NULL COMMENT '轴距（米）',
  `Ground_Clearance` decimal(4,2) DEFAULT NULL COMMENT '离地间隙（米）',
  `Curb_Weight` decimal(6,2) DEFAULT NULL COMMENT '整备质量（kg）',
  `Gross_Weight` decimal(6,2) DEFAULT NULL COMMENT '总质量（kg）',
  `Trunk_Capacity` decimal(5,2) DEFAULT NULL COMMENT '后备箱容量（L）',
  `Cargo_Capacity` decimal(5,2) DEFAULT NULL COMMENT '载货容量（L）',
  PRIMARY KEY (`Dimension_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `dimensions_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for engine_specs
-- ----------------------------
DROP TABLE IF EXISTS `engine_specs`;
CREATE TABLE `engine_specs` (
  `Engine_ID` int NOT NULL AUTO_INCREMENT COMMENT '发动机唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Displacement` decimal(6,2) NOT NULL COMMENT '排量（L）',
  `Horsepower` int NOT NULL COMMENT '马力（HP）',
  `Torque` int NOT NULL COMMENT '扭矩（Nm）',
  `Cylinder_Count` int NOT NULL COMMENT '气缸数量',
  `Compression_Ratio` decimal(4,2) DEFAULT NULL COMMENT '压缩比',
  `Max_RPM` int DEFAULT NULL COMMENT '最大转速（RPM）',
  `Fuel_Consumption_City` decimal(5,2) DEFAULT NULL COMMENT '城市油耗（L/100km）',
  `Fuel_Consumption_Highway` decimal(5,2) DEFAULT NULL COMMENT '高速油耗（L/100km）',
  `CO2_Emissions` decimal(6,2) DEFAULT NULL COMMENT '二氧化碳排放量（g/km）',
  PRIMARY KEY (`Engine_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `engine_specs_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `Manufacturer_ID` int NOT NULL AUTO_INCREMENT COMMENT '制造商唯一标识',
  `Name` varchar(100) NOT NULL COMMENT '制造商名称',
  `Revenue` decimal(15,2) DEFAULT NULL COMMENT '年收入（美元）',
  `Employee_Count` int DEFAULT NULL COMMENT '员工数量',
  `Market_Cap` decimal(15,2) DEFAULT NULL COMMENT '市值（美元）',
  `Production_Volume_Total` int DEFAULT NULL COMMENT '总生产数量',
  `R&D_Spending` decimal(15,2) DEFAULT NULL COMMENT '研发支出（美元）',
  `Profit_Margin` decimal(5,2) DEFAULT NULL COMMENT '利润率（%）',
  `Annual_Sales` int DEFAULT NULL COMMENT '年销量',
  `Average_Price` decimal(15,2) DEFAULT NULL COMMENT '平均售价（美元）',
  PRIMARY KEY (`Manufacturer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for performance_metrics
-- ----------------------------
DROP TABLE IF EXISTS `performance_metrics`;
CREATE TABLE `performance_metrics` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT COMMENT '性能指标唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Top_Speed` int NOT NULL COMMENT '最高时速（km/h）',
  `Acceleration_0_to_100` decimal(4,2) NOT NULL COMMENT '0-100加速时间（秒）',
  `Braking_Distance` decimal(5,2) NOT NULL COMMENT '制动距离（米）',
  `Drag_Coefficient` decimal(3,2) DEFAULT NULL COMMENT '风阻系数',
  `Power_to_Weight_Ratio` decimal(6,2) DEFAULT NULL COMMENT '功率重量比（HP/kg）',
  `Turning_Radius` decimal(4,2) DEFAULT NULL COMMENT '转弯半径（米）',
  `Range_Electric` int DEFAULT NULL COMMENT '电动车续航里程（km）',
  `Range_Hybrid` int DEFAULT NULL COMMENT '混合动力车续航里程（km）',
  `Range_Gasoline` int DEFAULT NULL COMMENT '燃油车续航里程（km）',
  PRIMARY KEY (`Performance_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `performance_metrics_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS `prices`;
CREATE TABLE `prices` (
  `Price_ID` int NOT NULL AUTO_INCREMENT COMMENT '价格唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Base_Price` decimal(15,2) NOT NULL COMMENT '基础价格（美元）',
  `Optional_Features_Price` decimal(15,2) DEFAULT NULL COMMENT '可选功能价格（美元）',
  `Total_Price` decimal(15,2) NOT NULL COMMENT '总价格（美元）',
  `Tax_Rate` decimal(5,2) DEFAULT NULL COMMENT '税率（%）',
  `Insurance_Cost` decimal(10,2) DEFAULT NULL COMMENT '保险费用（美元）',
  `Maintenance_Cost` decimal(10,2) DEFAULT NULL COMMENT '年均维护费用（美元）',
  `Depreciation_Rate` decimal(5,2) DEFAULT NULL COMMENT '年均折旧率（%）',
  `Resale_Value` decimal(15,2) DEFAULT NULL COMMENT '预估残值（美元）',
  PRIMARY KEY (`Price_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for safety_features
-- ----------------------------
DROP TABLE IF EXISTS `safety_features`;
CREATE TABLE `safety_features` (
  `Safety_ID` int NOT NULL AUTO_INCREMENT COMMENT '安全特性唯一标识',
  `Car_ID` int NOT NULL COMMENT '汽车ID',
  `Airbag_Count` int NOT NULL COMMENT '安全气囊数量',
  `ABS_Effectiveness` decimal(4,2) DEFAULT NULL COMMENT 'ABS系统效率（%）',
  `ESC_Effectiveness` decimal(4,2) DEFAULT NULL COMMENT '电子稳定控制效率（%）',
  `Lane_Assist_Accuracy` decimal(4,2) DEFAULT NULL COMMENT '车道辅助准确率（%）',
  `Brake_Assist_Response_Time` decimal(4,2) DEFAULT NULL COMMENT '刹车辅助响应时间（秒）',
  `Crash_Test_Rating` decimal(3,1) DEFAULT NULL COMMENT '碰撞测试评分（满分5分）',
  `Pedestrian_Detection_Accuracy` decimal(4,2) DEFAULT NULL COMMENT '行人检测准确率（%）',
  `Night_Vision_Range` decimal(5,2) DEFAULT NULL COMMENT '夜视系统探测范围（米）',
  `Tire_Pressure_Monitoring_Accuracy` decimal(4,2) DEFAULT NULL COMMENT '胎压监测准确率（%）',
  PRIMARY KEY (`Safety_ID`),
  KEY `Car_ID` (`Car_ID`),
  CONSTRAINT `safety_features_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `cars` (`Car_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
