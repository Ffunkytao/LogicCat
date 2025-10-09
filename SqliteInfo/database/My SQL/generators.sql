/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : generators

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 22:04:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for generators
-- ----------------------------
DROP TABLE IF EXISTS `generators`;
CREATE TABLE `generators` (
  `GeneratorID` int NOT NULL COMMENT '主键，唯一标识发电机',
  `GeneratorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '发电机名称',
  `GeneratorType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '发电机类型（水轮机、涡轮机）',
  `RatedPower` int DEFAULT NULL COMMENT '额定功率（单位：KW）',
  `Status` int DEFAULT NULL COMMENT '当前状态（运行、停机、维修等）1表示运行，0表示停机，2表示维修',
  `ManufactureDate` datetime DEFAULT NULL COMMENT '生产日期',
  `InstallationDate` datetime DEFAULT NULL COMMENT '安装日期',
  `ManufacturerID` int DEFAULT NULL COMMENT '外键，关联厂家表',
  `Maxpower` int DEFAULT NULL COMMENT '最大功率（单位：KW）',
  `ContinualTime` int DEFAULT NULL COMMENT '连续工作时间（单位：h）',
  `RatedVoltage` int DEFAULT NULL COMMENT '额定电压',
  `RatedRotationSpeed` int DEFAULT NULL COMMENT '额定转速（单位：转/分钟）',
  `Flux` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '单位：流量（立方米/S）',
  PRIMARY KEY (`GeneratorID`) USING BTREE,
  KEY `Manufacturer ID` (`ManufacturerID`),
  CONSTRAINT `Manufacturer ID` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturers` (`ManufacturerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for generatorstationassociation
-- ----------------------------
DROP TABLE IF EXISTS `generatorstationassociation`;
CREATE TABLE `generatorstationassociation` (
  `AssociationID` int NOT NULL COMMENT '主键，唯一标识关联',
  `GeneratorID` int DEFAULT NULL COMMENT '外键，关联发电机表',
  `StationID` int DEFAULT NULL COMMENT '外键，关联电站表',
  KEY `GeneratorID` (`GeneratorID`),
  KEY `StationID` (`StationID`),
  CONSTRAINT `GeneratorID` FOREIGN KEY (`GeneratorID`) REFERENCES `generators` (`GeneratorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `StationID` FOREIGN KEY (`StationID`) REFERENCES `powerstations` (`StationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `ManufacturerID` int NOT NULL COMMENT '主键，唯一标识厂家',
  `ManufacturerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '厂家名称',
  `Revenue` int DEFAULT NULL COMMENT '厂家年度营业额（单位：万元）',
  `Profit` int DEFAULT NULL COMMENT '厂家年度利润（单位：万元）',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '厂家地址',
  `PriceWater` int DEFAULT NULL COMMENT '水轮发电机单价（单位：万元）',
  `PriceTurbo` int DEFAULT NULL COMMENT '涡轮发电机单价（单位：万元）',
  PRIMARY KEY (`ManufacturerID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for operationrecords
-- ----------------------------
DROP TABLE IF EXISTS `operationrecords`;
CREATE TABLE `operationrecords` (
  `RecordID` int NOT NULL COMMENT '主键，唯一标识记录',
  `GeneratorID` int DEFAULT NULL COMMENT '外键，关联发电机表',
  `StartTime` datetime DEFAULT NULL COMMENT '运行开始时间',
  `EndTime` datetime DEFAULT NULL COMMENT '运行结束时间',
  `PowerGenerated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '本次运行的发电量（单位：千瓦时）',
  `OperationStatus` int DEFAULT NULL COMMENT ' 运行状态（正常、异常等）,0表示异常，1表示正常',
  PRIMARY KEY (`RecordID`) USING BTREE,
  KEY `GeneratorID1` (`GeneratorID`),
  CONSTRAINT `GeneratorID1` FOREIGN KEY (`GeneratorID`) REFERENCES `generators` (`GeneratorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for powerstations
-- ----------------------------
DROP TABLE IF EXISTS `powerstations`;
CREATE TABLE `powerstations` (
  `StationID` int NOT NULL COMMENT '主键，唯一标识电站',
  `StationName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '电站名称',
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '电站位置',
  `TotalCapacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '电站总装机容量（单位：MW）',
  `Status` int DEFAULT NULL COMMENT '电站当前状态（1运行、0停机、2建设中等）',
  `Flux` int DEFAULT NULL COMMENT '单位：流量（立方米/S）',
  PRIMARY KEY (`StationID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sensordata
-- ----------------------------
DROP TABLE IF EXISTS `sensordata`;
CREATE TABLE `sensordata` (
  `DataID` int NOT NULL COMMENT '主键，唯一标识数据',
  `SensorID` int DEFAULT NULL COMMENT '外键，关联传感器表',
  `CollectionTime` datetime DEFAULT NULL COMMENT '数据采集时间',
  `DataValue` double DEFAULT NULL COMMENT '传感器采集的数据值',
  PRIMARY KEY (`DataID`) USING BTREE,
  KEY `SensorID1` (`SensorID`),
  CONSTRAINT `SensorID1` FOREIGN KEY (`SensorID`) REFERENCES `sensors` (`SensorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sensors
-- ----------------------------
DROP TABLE IF EXISTS `sensors`;
CREATE TABLE `sensors` (
  `SensorID` int NOT NULL COMMENT '唯一标识传感器',
  `GeneratorID` int DEFAULT NULL COMMENT '外键，关联发电机表',
  `SensorType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '传感器类型\r\n温度传感器器（单位，摄氏度）\r\n压力传感器（单位，Mpa）\r\n震动传感器（单位，Hz）\r\n流量传感器（单位，立方米/S）',
  `SensorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '传感器名',
  PRIMARY KEY (`SensorID`) USING BTREE,
  KEY `GeneratorID2` (`GeneratorID`),
  CONSTRAINT `GeneratorID2` FOREIGN KEY (`GeneratorID`) REFERENCES `generators` (`GeneratorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
