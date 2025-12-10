/*
 Navicat Premium Data Transfer

 Source Server         : LogicCat
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-fx0rl4n2.sql.tencentcdb.com:21075
 Source Schema         : generators

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/12/2025 19:26:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carbon_emissions
-- ----------------------------
DROP TABLE IF EXISTS `carbon_emissions`;
CREATE TABLE `carbon_emissions`  (
  `id` int(0) NOT NULL,
  `emission_factor` decimal(10, 2) NULL DEFAULT NULL,
  `annual_emissions_tonnes` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carbon_emissions
-- ----------------------------

-- ----------------------------
-- Table structure for energy_data
-- ----------------------------
DROP TABLE IF EXISTS `energy_data`;
CREATE TABLE `energy_data`  (
  `device_id` int(0) NULL DEFAULT NULL,
  `energy_saved` decimal(10, 2) NULL DEFAULT NULL,
  `timestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of energy_data
-- ----------------------------

-- ----------------------------
-- Table structure for generators
-- ----------------------------
DROP TABLE IF EXISTS `generators`;
CREATE TABLE `generators`  (
  `GeneratorID` int(0) NOT NULL COMMENT '主键，唯一标识发电机',
  `GeneratorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发电机名称',
  `GeneratorType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发电机类型（水轮机、涡轮机）',
  `RatedPower` int(0) NULL DEFAULT NULL COMMENT '额定功率（单位：KW）',
  `Status` int(0) NULL DEFAULT NULL COMMENT '当前状态（运行、停机、维修等）1表示运行，0表示停机，2表示维修',
  `ManufactureDate` datetime(0) NULL DEFAULT NULL COMMENT '生产日期',
  `InstallationDate` datetime(0) NULL DEFAULT NULL COMMENT '安装日期',
  `ManufacturerID` int(0) NULL DEFAULT NULL COMMENT '外键，关联厂家表',
  `Maxpower` int(0) NULL DEFAULT NULL COMMENT '最大功率（单位：KW）',
  `ContinualTime` int(0) NULL DEFAULT NULL COMMENT '连续工作时间（单位：h）',
  `RatedVoltage` int(0) NULL DEFAULT NULL COMMENT '额定电压',
  `RatedRotationSpeed` int(0) NULL DEFAULT NULL COMMENT '额定转速（单位：转/分钟）',
  `Flux` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位：流量（立方米/S）',
  PRIMARY KEY (`GeneratorID`) USING BTREE,
  INDEX `Manufacturer ID`(`ManufacturerID`) USING BTREE,
  CONSTRAINT `Manufacturer ID` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturers` (`ManufacturerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of generators
-- ----------------------------
INSERT INTO `generators` VALUES (1, NULL, NULL, 1000, NULL, NULL, NULL, NULL, 1000, 100, NULL, 3000, '500');
INSERT INTO `generators` VALUES (2, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL);
INSERT INTO `generators` VALUES (3, NULL, NULL, 1000, NULL, NULL, NULL, NULL, 1000, NULL, NULL, 3000, '500');
INSERT INTO `generators` VALUES (4, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1500, '50');
INSERT INTO `generators` VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 200, NULL, NULL, NULL);
INSERT INTO `generators` VALUES (6, 'Generator_Maintenance', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `generators` VALUES (7, 'EnvironmentalImpactGen', NULL, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `generators` VALUES (1001, '发电机1', '水轮机', 150000, 0, '2006-01-01 00:00:00', '2016-02-09 00:00:00', 2001, 180000, 12, 14400, 900, '24');
INSERT INTO `generators` VALUES (1002, '发电机2', '涡轮机', 150000, 0, '2004-02-01 17:28:26', '2009-07-01 17:28:37', 2001, 180000, 12, 12400, 900, '24');
INSERT INTO `generators` VALUES (1003, '发电机3', '水轮机', 150000, 0, '2015-03-01 17:31:05', '2019-03-09 17:31:16', 2002, 180000, 12, 14400, 900, '24');
INSERT INTO `generators` VALUES (1004, '发电机4', '水轮机', 150000, 1, '2015-02-09 17:32:27', '2016-11-01 17:32:38', 2002, 180000, 12, 12400, 900, '24');
INSERT INTO `generators` VALUES (1005, '发电机5', '涡轮机', 150000, 0, '2018-02-09 19:21:53', '2020-02-01 19:21:59', 2001, 180000, 12, 12400, 800, '24');
INSERT INTO `generators` VALUES (1006, '发电机5', '涡轮机', 150000, 1, '2017-03-02 19:22:05', '2020-02-06 19:22:12', 2002, 180000, 12, 14400, 800, '24');
INSERT INTO `generators` VALUES (1007, 'Generator A', 'Hydro', 200, 1, NULL, NULL, NULL, 220, 100, 400, 1500, '15');
INSERT INTO `generators` VALUES (1008, 'Generator B', 'Hydro', 300, 1, NULL, NULL, NULL, 330, 100, 400, 1500, '20');
INSERT INTO `generators` VALUES (1009, 'Generator C', 'Hydro', 150, 1, NULL, NULL, NULL, 165, 100, 400, 1500, '12');
INSERT INTO `generators` VALUES (1010, 'Generator D', 'Hydro', 250, 1, NULL, NULL, NULL, 275, 100, 400, 1500, '18');
INSERT INTO `generators` VALUES (1011, 'Generator E', 'Hydro', 100, 1, NULL, NULL, NULL, 110, 100, 400, 1500, '10');
INSERT INTO `generators` VALUES (1012, 'Continuous Generator', 'Hydro', 500, 1, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL);
INSERT INTO `generators` VALUES (1013, 'High Power Generator', 'Thermal', 10000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `generators` VALUES (1014, 'Current Test Generator', 'Hydro', 500, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL);
INSERT INTO `generators` VALUES (1015, 'Maintenance Generator', 'Hydro', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `generators` VALUES (1016, 'Power Calc Generator', 'Hydro', NULL, NULL, NULL, NULL, NULL, 1000, NULL, NULL, 3000, '1000');
INSERT INTO `generators` VALUES (1017, 'Test Generator Name', 'Hydro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `generators` VALUES (1018, 'Generator18', 'Turbine', 1000, 1, '2023-01-01 00:00:00', '2023-02-01 00:00:00', 2001, 1000, 100, 10, 3000, '1000');
INSERT INTO `generators` VALUES (1019, 'Test Generator', 'Turbine', 500, 1, '2023-01-01 00:00:00', '2023-02-01 00:00:00', 2001, 600, 100, 10, 3000, '50');

-- ----------------------------
-- Table structure for generatorstationassociation
-- ----------------------------
DROP TABLE IF EXISTS `generatorstationassociation`;
CREATE TABLE `generatorstationassociation`  (
  `AssociationID` int(0) NOT NULL COMMENT '主键，唯一标识关联',
  `GeneratorID` int(0) NULL DEFAULT NULL COMMENT '外键，关联发电机表',
  `StationID` int(0) NULL DEFAULT NULL COMMENT '外键，关联电站表',
  INDEX `GeneratorID`(`GeneratorID`) USING BTREE,
  INDEX `StationID`(`StationID`) USING BTREE,
  CONSTRAINT `GeneratorID` FOREIGN KEY (`GeneratorID`) REFERENCES `generators` (`GeneratorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `StationID` FOREIGN KEY (`StationID`) REFERENCES `powerstations` (`StationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of generatorstationassociation
-- ----------------------------
INSERT INTO `generatorstationassociation` VALUES (101, 1001, 3001);
INSERT INTO `generatorstationassociation` VALUES (102, 1002, 3001);
INSERT INTO `generatorstationassociation` VALUES (103, 1003, 3001);
INSERT INTO `generatorstationassociation` VALUES (104, 1004, 3001);
INSERT INTO `generatorstationassociation` VALUES (105, 1005, 3001);
INSERT INTO `generatorstationassociation` VALUES (106, 1006, 3001);
INSERT INTO `generatorstationassociation` VALUES (107, 1007, 3001);
INSERT INTO `generatorstationassociation` VALUES (108, 1008, 3001);
INSERT INTO `generatorstationassociation` VALUES (109, 1009, 3001);
INSERT INTO `generatorstationassociation` VALUES (110, 1010, 3001);
INSERT INTO `generatorstationassociation` VALUES (111, 1011, 3001);
INSERT INTO `generatorstationassociation` VALUES (107, 1008, 3003);
INSERT INTO `generatorstationassociation` VALUES (108, 1009, 3003);
INSERT INTO `generatorstationassociation` VALUES (109, 1010, 3003);
INSERT INTO `generatorstationassociation` VALUES (110, 1011, 3003);
INSERT INTO `generatorstationassociation` VALUES (111, 1012, 3003);

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers`  (
  `ManufacturerID` int(0) NOT NULL COMMENT '主键，唯一标识厂家',
  `ManufacturerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '厂家名称',
  `Revenue` int(0) NULL DEFAULT NULL COMMENT '厂家年度营业额（单位：万元）',
  `Profit` int(0) NULL DEFAULT NULL COMMENT '厂家年度利润（单位：万元）',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '厂家地址',
  `PriceWater` int(0) NULL DEFAULT NULL COMMENT '水轮发电机单价（单位：万元）',
  `PriceTurbo` int(0) NULL DEFAULT NULL COMMENT '涡轮发电机单价（单位：万元）',
  PRIMARY KEY (`ManufacturerID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
INSERT INTO `manufacturers` VALUES (1, NULL, NULL, 5000, NULL, NULL, 200);
INSERT INTO `manufacturers` VALUES (2001, '中国重工水电集团', 135610, 56410, '中国北京', 1100, 1200);
INSERT INTO `manufacturers` VALUES (2002, '中国葛洲坝集团', 339011, 15320, '中国上海', 1050, 1150);

-- ----------------------------
-- Table structure for operationrecords
-- ----------------------------
DROP TABLE IF EXISTS `operationrecords`;
CREATE TABLE `operationrecords`  (
  `RecordID` int(0) NOT NULL COMMENT '主键，唯一标识记录',
  `GeneratorID` int(0) NULL DEFAULT NULL COMMENT '外键，关联发电机表',
  `StartTime` datetime(0) NULL DEFAULT NULL COMMENT '运行开始时间',
  `EndTime` datetime(0) NULL DEFAULT NULL COMMENT '运行结束时间',
  `PowerGenerated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '本次运行的发电量（单位：千瓦时）',
  `OperationStatus` int(0) NULL DEFAULT NULL COMMENT ' 运行状态（正常、异常等）,0表示异常，1表示正常',
  PRIMARY KEY (`RecordID`) USING BTREE,
  INDEX `GeneratorID1`(`GeneratorID`) USING BTREE,
  CONSTRAINT `GeneratorID1` FOREIGN KEY (`GeneratorID`) REFERENCES `generators` (`GeneratorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of operationrecords
-- ----------------------------
INSERT INTO `operationrecords` VALUES (60001, 1001, '2024-01-09 00:00:00', '2024-01-10 00:00:00', '2880000', 1);
INSERT INTO `operationrecords` VALUES (60002, 1002, '2024-01-09 00:00:00', '2024-01-10 00:00:00', '2880000', 1);
INSERT INTO `operationrecords` VALUES (60003, 1003, '2024-01-09 00:00:00', '2024-01-10 00:00:00', '2880000', 1);
INSERT INTO `operationrecords` VALUES (60004, 1004, '2024-01-09 00:00:00', '2024-01-10 00:00:00', '2880000', 1);
INSERT INTO `operationrecords` VALUES (60005, 1005, '2024-01-09 00:00:00', '2024-01-10 00:00:00', '2880000', 1);
INSERT INTO `operationrecords` VALUES (60006, 1006, '2024-01-09 00:00:00', '2024-01-10 00:00:00', '2880000', 1);
INSERT INTO `operationrecords` VALUES (60007, 1001, '2024-01-10 00:00:00', '2024-01-11 00:00:00', '2580000', 1);
INSERT INTO `operationrecords` VALUES (60008, 1002, '2024-01-10 00:00:00', '2024-01-11 00:00:00', '2580000', 1);
INSERT INTO `operationrecords` VALUES (60009, 1003, '2024-01-10 00:00:00', '2024-01-11 00:00:00', '2580000', 1);
INSERT INTO `operationrecords` VALUES (60010, 1004, '2024-01-10 00:00:00', '2024-01-11 00:00:00', '2580000', 1);
INSERT INTO `operationrecords` VALUES (60011, 1005, '2024-01-10 00:00:00', '2024-01-11 00:00:00', '2580000', 1);
INSERT INTO `operationrecords` VALUES (60012, 1006, '2024-01-10 00:00:00', '2024-01-11 00:00:00', '2580000', 1);

-- ----------------------------
-- Table structure for powerstations
-- ----------------------------
DROP TABLE IF EXISTS `powerstations`;
CREATE TABLE `powerstations`  (
  `StationID` int(0) NOT NULL COMMENT '主键，唯一标识电站',
  `StationName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电站名称',
  `Location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电站位置',
  `TotalCapacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电站总装机容量（单位：MW）',
  `Status` int(0) NULL DEFAULT NULL COMMENT '电站当前状态（1运行、0停机、2建设中等）',
  `Flux` int(0) NULL DEFAULT NULL COMMENT '单位：流量（立方米/S）',
  PRIMARY KEY (`StationID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of powerstations
-- ----------------------------
INSERT INTO `powerstations` VALUES (3001, '西江', '西江', '12', 1, 648);
INSERT INTO `powerstations` VALUES (3002, '东江', '东江', '12', 2, 520);
INSERT INTO `powerstations` VALUES (3003, 'Test Station', 'Test Location', '1000', 1, 100);

-- ----------------------------
-- Table structure for sensordata
-- ----------------------------
DROP TABLE IF EXISTS `sensordata`;
CREATE TABLE `sensordata`  (
  `DataID` int(0) NOT NULL COMMENT '主键，唯一标识数据',
  `SensorID` int(0) NULL DEFAULT NULL COMMENT '外键，关联传感器表',
  `CollectionTime` datetime(0) NULL DEFAULT NULL COMMENT '数据采集时间',
  `DataValue` double NULL DEFAULT NULL COMMENT '传感器采集的数据值',
  PRIMARY KEY (`DataID`) USING BTREE,
  INDEX `SensorID1`(`SensorID`) USING BTREE,
  CONSTRAINT `SensorID1` FOREIGN KEY (`SensorID`) REFERENCES `sensors` (`SensorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sensordata
-- ----------------------------
INSERT INTO `sensordata` VALUES (1, 101, '2025-11-26 13:40:50', 50);
INSERT INTO `sensordata` VALUES (2, 2, NULL, 150);
INSERT INTO `sensordata` VALUES (3, 3, NULL, 150);
INSERT INTO `sensordata` VALUES (4, 4, NULL, 50);
INSERT INTO `sensordata` VALUES (5, 5, NULL, 50);
INSERT INTO `sensordata` VALUES (7, 104, '2025-11-26 13:42:47', 50);
INSERT INTO `sensordata` VALUES (9, 9, NULL, 200);
INSERT INTO `sensordata` VALUES (11, 11, NULL, 1000000);
INSERT INTO `sensordata` VALUES (12, 12, NULL, 2000);
INSERT INTO `sensordata` VALUES (50001, 40001, '2019-03-27 00:00:00', 700);
INSERT INTO `sensordata` VALUES (50002, 40002, '2019-03-27 00:00:00', 700);
INSERT INTO `sensordata` VALUES (50003, 40003, '2019-03-27 00:00:00', 13);
INSERT INTO `sensordata` VALUES (50004, 40004, '2019-03-27 00:00:00', 1399);
INSERT INTO `sensordata` VALUES (50005, 40005, '2019-03-27 00:00:00', 1399);
INSERT INTO `sensordata` VALUES (50006, 40006, '2019-03-27 00:00:00', 0);
INSERT INTO `sensordata` VALUES (50007, 40007, '2019-03-27 00:00:00', 670);
INSERT INTO `sensordata` VALUES (50008, 40008, '2019-03-27 00:00:00', 670);
INSERT INTO `sensordata` VALUES (50009, 40009, '2019-03-27 00:00:00', 12);
INSERT INTO `sensordata` VALUES (50010, 40010, '2019-03-27 00:00:00', 1359);
INSERT INTO `sensordata` VALUES (50011, 40011, '2019-03-27 00:00:00', 1359);
INSERT INTO `sensordata` VALUES (50012, 40012, '2019-03-27 00:00:00', 0);
INSERT INTO `sensordata` VALUES (50013, 40013, '2019-03-27 00:00:00', 800);
INSERT INTO `sensordata` VALUES (50014, 40014, '2019-03-27 00:00:00', 801);
INSERT INTO `sensordata` VALUES (50015, 40015, '2019-03-27 00:00:00', 17);
INSERT INTO `sensordata` VALUES (50016, 40016, '2019-03-27 00:00:00', 1656);
INSERT INTO `sensordata` VALUES (50017, 40017, '2019-03-27 00:00:00', 1656);
INSERT INTO `sensordata` VALUES (50018, 40018, '2019-03-27 00:00:00', 0);
INSERT INTO `sensordata` VALUES (50019, 40019, '2019-03-27 00:00:00', 672);
INSERT INTO `sensordata` VALUES (50020, 40020, '2019-03-27 00:00:00', 672);
INSERT INTO `sensordata` VALUES (50021, 40021, '2019-03-27 00:00:00', 11);
INSERT INTO `sensordata` VALUES (50022, 40022, '2019-03-27 00:00:00', 1345);
INSERT INTO `sensordata` VALUES (50023, 40023, '2019-03-27 00:00:00', 1345);
INSERT INTO `sensordata` VALUES (50024, 40024, '2019-03-27 00:00:00', 0);
INSERT INTO `sensordata` VALUES (50025, 40025, '2019-03-27 00:00:00', 509);
INSERT INTO `sensordata` VALUES (50026, 40026, '2019-03-27 00:00:00', 509);
INSERT INTO `sensordata` VALUES (50027, 40027, '2019-03-27 00:00:00', 11);
INSERT INTO `sensordata` VALUES (50028, 40028, '2019-03-27 00:00:00', 903);
INSERT INTO `sensordata` VALUES (50029, 40029, '2019-03-27 00:00:00', 903);
INSERT INTO `sensordata` VALUES (50030, 40030, '2019-03-27 00:00:00', 0);
INSERT INTO `sensordata` VALUES (50031, 40031, '2019-03-27 00:00:00', 701);
INSERT INTO `sensordata` VALUES (50032, 40032, '2019-03-27 00:00:00', 702);
INSERT INTO `sensordata` VALUES (50033, 40033, '2019-03-27 00:00:00', 13);
INSERT INTO `sensordata` VALUES (50034, 40034, '2019-03-27 00:00:00', 1378);
INSERT INTO `sensordata` VALUES (50035, 40035, '2019-03-27 00:00:00', 1378);
INSERT INTO `sensordata` VALUES (50036, 40036, '2019-03-27 00:00:00', 0);
INSERT INTO `sensordata` VALUES (50037, 40001, '2024-01-01 08:00:00', 20);
INSERT INTO `sensordata` VALUES (50038, 40001, '2024-01-01 10:00:00', 80);
INSERT INTO `sensordata` VALUES (50039, 40002, '2024-01-01 00:00:00', -273.15);
INSERT INTO `sensordata` VALUES (50040, 40002, '2024-01-01 12:00:00', 1000);
INSERT INTO `sensordata` VALUES (50041, 40037, '2024-01-01 09:00:00', 50);
INSERT INTO `sensordata` VALUES (50042, 40038, '2024-01-01 14:00:00', 200);
INSERT INTO `sensordata` VALUES (50043, 40039, '2024-01-01 15:00:00', 50);

-- ----------------------------
-- Table structure for sensors
-- ----------------------------
DROP TABLE IF EXISTS `sensors`;
CREATE TABLE `sensors`  (
  `SensorID` int(0) NOT NULL COMMENT '唯一标识传感器',
  `GeneratorID` int(0) NULL DEFAULT NULL COMMENT '外键，关联发电机表',
  `SensorType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '传感器类型\r\n温度传感器器（单位，摄氏度）\r\n压力传感器（单位，Mpa）\r\n震动传感器（单位，Hz）\r\n流量传感器（单位，立方米/S）',
  `SensorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '传感器名',
  PRIMARY KEY (`SensorID`) USING BTREE,
  INDEX `GeneratorID2`(`GeneratorID`) USING BTREE,
  CONSTRAINT `GeneratorID2` FOREIGN KEY (`GeneratorID`) REFERENCES `generators` (`GeneratorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sensors
-- ----------------------------
INSERT INTO `sensors` VALUES (1, NULL, 'TemperatureSensor', NULL);
INSERT INTO `sensors` VALUES (2, NULL, 'TemperatureSensor', NULL);
INSERT INTO `sensors` VALUES (3, NULL, 'TemperatureSensor', NULL);
INSERT INTO `sensors` VALUES (4, NULL, 'PressureSensor', NULL);
INSERT INTO `sensors` VALUES (5, NULL, 'PressureSensor', NULL);
INSERT INTO `sensors` VALUES (9, NULL, 'VibrationSensor', NULL);
INSERT INTO `sensors` VALUES (11, NULL, 'FlowSensor', NULL);
INSERT INTO `sensors` VALUES (12, NULL, 'TemperatureSensor', NULL);
INSERT INTO `sensors` VALUES (101, NULL, 'PressureSensor', NULL);
INSERT INTO `sensors` VALUES (102, NULL, 'PressureSensor', NULL);
INSERT INTO `sensors` VALUES (103, NULL, 'VibrationSensor', NULL);
INSERT INTO `sensors` VALUES (104, NULL, 'PressureSensor', NULL);
INSERT INTO `sensors` VALUES (106, NULL, 'VibrationSensor', NULL);
INSERT INTO `sensors` VALUES (107, NULL, 'PressureSensor', NULL);
INSERT INTO `sensors` VALUES (109, NULL, 'VibrationSensor', NULL);
INSERT INTO `sensors` VALUES (40001, 1001, '温度传感器', '温度传感器1');
INSERT INTO `sensors` VALUES (40002, 1001, '温度传感器', '温度传感器2');
INSERT INTO `sensors` VALUES (40003, 1001, '流量传感器', '流量传感器1');
INSERT INTO `sensors` VALUES (40004, 1001, '振动传感器', '振动传感器1');
INSERT INTO `sensors` VALUES (40005, 1001, '振动传感器', '振动传感器2');
INSERT INTO `sensors` VALUES (40006, 1001, '压力传感器', '压力传感器1');
INSERT INTO `sensors` VALUES (40007, 1002, '温度传感器', '温度传感器1');
INSERT INTO `sensors` VALUES (40008, 1002, '温度传感器', '温度传感器2');
INSERT INTO `sensors` VALUES (40009, 1002, '流量传感器', '流量传感器1');
INSERT INTO `sensors` VALUES (40010, 1002, '振动传感器', '振动传感器1');
INSERT INTO `sensors` VALUES (40011, 1002, '振动传感器', '振动传感器2');
INSERT INTO `sensors` VALUES (40012, 1002, '压力传感器', '压力传感器1');
INSERT INTO `sensors` VALUES (40013, 1003, '温度传感器', '温度传感器1');
INSERT INTO `sensors` VALUES (40014, 1003, '温度传感器', '温度传感器2');
INSERT INTO `sensors` VALUES (40015, 1003, '流量传感器', '流量传感器1');
INSERT INTO `sensors` VALUES (40016, 1003, '振动传感器', '振动传感器1');
INSERT INTO `sensors` VALUES (40017, 1003, '振动传感器', '振动传感器2');
INSERT INTO `sensors` VALUES (40018, 1003, '压力传感器', '压力传感器1');
INSERT INTO `sensors` VALUES (40019, 1004, '温度传感器', '温度传感器1');
INSERT INTO `sensors` VALUES (40020, 1004, '温度传感器', '温度传感器2');
INSERT INTO `sensors` VALUES (40021, 1004, '流量传感器', '流量传感器1');
INSERT INTO `sensors` VALUES (40022, 1004, '振动传感器', '振动传感器1');
INSERT INTO `sensors` VALUES (40023, 1004, '振动传感器', '振动传感器2');
INSERT INTO `sensors` VALUES (40024, 1004, '压力传感器', '压力传感器1');
INSERT INTO `sensors` VALUES (40025, 1005, '温度传感器', '温度传感器1');
INSERT INTO `sensors` VALUES (40026, 1005, '温度传感器', '温度传感器2');
INSERT INTO `sensors` VALUES (40027, 1005, '流量传感器', '流量传感器1');
INSERT INTO `sensors` VALUES (40028, 1005, '振动传感器', '振动传感器1');
INSERT INTO `sensors` VALUES (40029, 1005, '振动传感器', '振动传感器2');
INSERT INTO `sensors` VALUES (40030, 1005, '压力传感器', '压力传感器1');
INSERT INTO `sensors` VALUES (40031, 1006, '温度传感器', '温度传感器1');
INSERT INTO `sensors` VALUES (40032, 1006, '温度传感器', '温度传感器2');
INSERT INTO `sensors` VALUES (40033, 1006, '流量传感器', '流量传感器1');
INSERT INTO `sensors` VALUES (40034, 1006, '振动传感器', '振动传感器1');
INSERT INTO `sensors` VALUES (40035, 1006, '振动传感器', '振动传感器2');
INSERT INTO `sensors` VALUES (40036, 1006, '压力传感器', '压力传感器1');
INSERT INTO `sensors` VALUES (40037, 1001, 'Flow Sensor', 'Flow Sensor Test');
INSERT INTO `sensors` VALUES (40038, 1017, 'Temperature Sensor', 'Temp Sensor Test');
INSERT INTO `sensors` VALUES (40039, 1001, 'Pressure Sensor', 'Pressure Sensor Test');
INSERT INTO `sensors` VALUES (40040, 1019, 'Temperature Sensor', 'Temperature Sensor1');
INSERT INTO `sensors` VALUES (40041, 1001, 'Pressure Sensor', 'Pressure Sensor2');

SET FOREIGN_KEY_CHECKS = 1;
