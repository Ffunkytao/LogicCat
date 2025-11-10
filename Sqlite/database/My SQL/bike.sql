/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : bike

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 20:07:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Bicycle
-- ----------------------------
DROP TABLE IF EXISTS `Bicycle`;
CREATE TABLE `Bicycle` (
  `BicycleID` int NOT NULL AUTO_INCREMENT COMMENT '自行车唯一标识符',
  `Manufacturer` varchar(50) NOT NULL COMMENT '制造商',
  `Model` varchar(50) NOT NULL COMMENT '自行车型号',
  `Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '自行车类型 (Road, Mountain, Hybrid, Electric, BMX)',
  `FrameMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车架材料 (Aluminum, Carbon Fiber, Steel, Titanium)',
  `WheelSize` decimal(10,1) NOT NULL COMMENT '轮径 (英寸)',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量 (公斤)',
  `GearCount` int NOT NULL COMMENT '变速档位数',
  `BrakeType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '刹车类型 (Rim, Disc, Coaster)',
  `SuspensionType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '避震类型 (None, Front, Full)',
  `MaxLoad` decimal(10,2) NOT NULL COMMENT '最大载重 (公斤)',
  `Price` decimal(10,2) NOT NULL COMMENT '价格 (元)',
  `FrameSize` decimal(10,1) NOT NULL COMMENT '车架尺寸 (厘米)',
  `HandlebarWidth` decimal(10,1) NOT NULL COMMENT '车把宽度 (厘米)',
  `CrankLength` decimal(10,1) NOT NULL COMMENT '曲柄长度 (毫米)',
  `TirePressure` decimal(10,1) NOT NULL COMMENT '轮胎压力 (PSI)',
  PRIMARY KEY (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车基本信息表';

-- ----------------------------
-- Table structure for BicycleComponents
-- ----------------------------
DROP TABLE IF EXISTS `BicycleComponents`;
CREATE TABLE `BicycleComponents` (
  `ComponentID` int NOT NULL AUTO_INCREMENT COMMENT '组件唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `FrameMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车架材料 (Aluminum, Carbon Fiber, Steel, Titanium)',
  `ForkMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '前叉材料 (Aluminum, Carbon Fiber, Steel)',
  `HandlebarMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车把材料 (Aluminum, Carbon Fiber, Steel)',
  `SaddleMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '座垫材料 (Leather, Synthetic, Gel)',
  `ChainMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '链条材料 (Steel, Nickel-Plated)',
  `TireType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '轮胎类型 (Clincher, Tubular, Tubeless)',
  `TireWidth` decimal(10,1) NOT NULL COMMENT '轮胎宽度 (毫米)',
  `RimMaterial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '轮圈材料 (Aluminum, Carbon Fiber)',
  `SpokeCount` int NOT NULL COMMENT '辐条数量',
  `PedalType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '踏板类型 (Flat, Clipless)',
  PRIMARY KEY (`ComponentID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicycleComponents_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车组件信息表';

-- ----------------------------
-- Table structure for BicycleDynamics
-- ----------------------------
DROP TABLE IF EXISTS `BicycleDynamics`;
CREATE TABLE `BicycleDynamics` (
  `DynamicsID` int NOT NULL AUTO_INCREMENT COMMENT '动力学数据唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `CenterOfGravityHeight` decimal(10,2) NOT NULL COMMENT '重心高度 (厘米)',
  `Wheelbase` decimal(10,2) NOT NULL COMMENT '轴距 (厘米)',
  `Trail` decimal(10,2) NOT NULL COMMENT '前叉偏移量 (厘米)',
  `SteeringAngle` decimal(10,2) NOT NULL COMMENT '转向角度 (度)',
  `HeadTubeAngle` decimal(10,2) NOT NULL COMMENT '头管角度 (度)',
  `BottomBracketDrop` decimal(10,2) NOT NULL COMMENT '五通下沉量 (毫米)',
  `ChainstayLength` decimal(10,2) NOT NULL COMMENT '后下叉长度 (厘米)',
  PRIMARY KEY (`DynamicsID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicycleDynamics_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车动力学数据表';

-- ----------------------------
-- Table structure for BicyclePerformance
-- ----------------------------
DROP TABLE IF EXISTS `BicyclePerformance`;
CREATE TABLE `BicyclePerformance` (
  `PerformanceID` int NOT NULL AUTO_INCREMENT COMMENT '性能数据唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `TopSpeed` decimal(10,2) NOT NULL COMMENT '最高速度 (公里/小时)',
  `Acceleration` decimal(10,2) NOT NULL COMMENT '加速性能 (秒/0-30公里/小时)',
  `RollingResistance` decimal(10,3) NOT NULL COMMENT '滚动阻力系数',
  `AerodynamicDrag` decimal(10,3) NOT NULL COMMENT '空气阻力系数',
  `PowerTransferEfficiency` decimal(10,2) NOT NULL COMMENT '动力传递效率 (%)',
  `BrakingDistance` decimal(10,2) NOT NULL COMMENT '刹车距离 (米)',
  `ClimbingEfficiency` decimal(10,2) NOT NULL COMMENT '爬坡效率 (%)',
  `CorneringStability` decimal(10,2) NOT NULL COMMENT '转弯稳定性 (评分)',
  PRIMARY KEY (`PerformanceID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicyclePerformance_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车性能数据表';

-- ----------------------------
-- Table structure for BicycleRider
-- ----------------------------
DROP TABLE IF EXISTS `BicycleRider`;
CREATE TABLE `BicycleRider` (
  `RiderID` int NOT NULL AUTO_INCREMENT COMMENT '骑手唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `RiderName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '骑手姓名',
  `RiderWeight` decimal(10,2) NOT NULL COMMENT '骑手体重 (公斤)',
  `RiderHeight` decimal(10,2) NOT NULL COMMENT '骑手身高 (厘米)',
  `RidingStyle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '骑行风格 (Casual, Competitive, Off-Road)',
  `RiderAge` int NOT NULL COMMENT '骑手年龄',
  `RiderPowerOutput` decimal(10,2) NOT NULL COMMENT '骑手功率输出 (瓦)',
  `RiderCadence` decimal(10,2) NOT NULL COMMENT '骑手踏频 (RPM)',
  PRIMARY KEY (`RiderID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicycleRider_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='骑手信息表';

-- ----------------------------
-- Table structure for BicycleThermodynamics
-- ----------------------------
DROP TABLE IF EXISTS `BicycleThermodynamics`;
CREATE TABLE `BicycleThermodynamics` (
  `ThermodynamicsID` int NOT NULL AUTO_INCREMENT COMMENT '热力学数据唯一标识符',
  `BicycleID` int NOT NULL COMMENT '关联的自行车ID',
  `MotorEfficiency` decimal(10,2) NOT NULL COMMENT '电机效率 (%)',
  `BatteryCapacity` decimal(10,2) NOT NULL COMMENT '电池容量 (瓦时)',
  `HeatDissipationRate` decimal(10,2) NOT NULL COMMENT '散热率 (瓦)',
  `AmbientTemperature` decimal(10,2) NOT NULL COMMENT '环境温度 (°C)',
  `MotorTemperature` decimal(10,2) NOT NULL COMMENT '电机温度 (°C)',
  `BatteryTemperature` decimal(10,2) NOT NULL COMMENT '电池温度 (°C)',
  PRIMARY KEY (`ThermodynamicsID`),
  KEY `BicycleID` (`BicycleID`),
  CONSTRAINT `BicycleThermodynamics_ibfk_1` FOREIGN KEY (`BicycleID`) REFERENCES `Bicycle` (`BicycleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自行车热力学数据表';

SET FOREIGN_KEY_CHECKS = 1;
