/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : car_engine

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/01/2025 20:44:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for engine
-- ----------------------------
DROP TABLE IF EXISTS `engine`;
CREATE TABLE `engine` (
  `Engine_ID` int NOT NULL AUTO_INCREMENT COMMENT '发动机唯一标识符',
  `Manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '制造商',
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '发动机型号',
  `Displacement` decimal(10,2) NOT NULL COMMENT '排量 (升)',
  `Cylinders` int NOT NULL COMMENT '气缸数',
  `Configuration` enum('Inline','V','Boxer','W','Rotary') NOT NULL COMMENT '气缸排列',
  `Valves_Cylinder` int NOT NULL COMMENT '每缸气门数',
  `Compression_Ratio` decimal(10,1) NOT NULL COMMENT '压缩比',
  `Fuel_Type` enum('Gasoline','Diesel','Electric','Hybrid') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '燃油类型',
  `Aspiration` enum('Naturally Aspirated','Turbocharged','Supercharged') NOT NULL COMMENT '进气方式',
  `Horsepower` int NOT NULL COMMENT '马力',
  `Torque` int NOT NULL COMMENT '扭矩 (牛米)',
  `Redline` int NOT NULL COMMENT '红线转速 (RPM)',
  `Bore` decimal(10,2) NOT NULL COMMENT '缸径 (毫米)',
  `Stroke` decimal(10,2) NOT NULL COMMENT '行程 (毫米)',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量 (公斤)',
  PRIMARY KEY (`Engine_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机基本信息表';

-- ----------------------------
-- Table structure for enginedimensions
-- ----------------------------
DROP TABLE IF EXISTS `enginedimensions`;
CREATE TABLE `enginedimensions` (
  `Dimension_ID` int NOT NULL AUTO_INCREMENT COMMENT '尺寸数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Length` decimal(10,2) NOT NULL COMMENT '长度 (毫米)',
  `Width` decimal(10,2) NOT NULL COMMENT '宽度 (毫米)',
  `Height` decimal(10,2) NOT NULL COMMENT '高度 (毫米)',
  `Weight` decimal(10,2) NOT NULL COMMENT '重量 (公斤)',
  `Cylinder_Spacing` decimal(10,2) NOT NULL COMMENT '气缸间距 (毫米)',
  `DeckHeight` decimal(10,2) NOT NULL COMMENT '缸体高度 (毫米)',
  `Main_Bore_Diameter` decimal(10,2) NOT NULL COMMENT '主轴承孔径 (毫米)',
  `Rod_Journal_Diameter` decimal(10,2) NOT NULL COMMENT '连杆轴颈直径 (毫米)',
  PRIMARY KEY (`Dimension_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginedimensions_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机尺寸信息表';

-- ----------------------------
-- Table structure for enginedynamics
-- ----------------------------
DROP TABLE IF EXISTS `enginedynamics`;
CREATE TABLE `enginedynamics` (
  `Dynamics_ID` int NOT NULL AUTO_INCREMENT COMMENT '动态数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Max_turn` int NOT NULL COMMENT '最大转速 (RPM)',
  `Idle_turn` int NOT NULL COMMENT '怠速转速 (RPM)',
  `Peak_Torque` int NOT NULL COMMENT '峰值扭矩转速 (RPM)',
  `Peak_Power` int NOT NULL COMMENT '峰值功率转速 (RPM)',
  `Piston_Speed` decimal(10,2) NOT NULL COMMENT '活塞速度 (米/秒)',
  `Mean_Piston_Speed` decimal(10,2) NOT NULL COMMENT '平均活塞速度 (米/秒)',
  `Angular_Velocity` decimal(10,2) NOT NULL COMMENT '角速度 (弧度/秒)',
  PRIMARY KEY (`Dynamics_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginedynamics_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机动态性能数据表';

-- ----------------------------
-- Table structure for enginematerials
-- ----------------------------
DROP TABLE IF EXISTS `enginematerials`;
CREATE TABLE `enginematerials` (
  `Material_ID` int NOT NULL AUTO_INCREMENT COMMENT '材料数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Block_Material` enum('Cast Iron','Aluminum','Magnesium') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缸体材料',
  `Head_Material` enum('Aluminum','Cast Iron','Titanium') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缸盖材料',
  `Piston_Material` enum('Aluminum','Forged Aluminum','Steel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活塞材料',
  `Crankshaft_Material` enum('Forged Steel','Cast Iron','Billet Steel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '曲轴材料',
  `Connecting_Rod_Material` enum('Steel','Titanium','Aluminum') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '连杆材料',
  `Valve_Material` enum('Stainless Steel','Titanium','Inconel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '气门材料',
  `Coating_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '涂层类型',
  `Heat_Treatment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '热处理方式',
  PRIMARY KEY (`Material_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginematerials_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机材料信息表';

-- ----------------------------
-- Table structure for enginematerials_copy1
-- ----------------------------
DROP TABLE IF EXISTS `enginematerials_copy1`;
CREATE TABLE `enginematerials_copy1` (
  `Material_ID` int NOT NULL AUTO_INCREMENT COMMENT '材料数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Block_Material` enum('Cast Iron','Aluminum','Magnesium') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缸体材料',
  `Head_Material` enum('Aluminum','Cast Iron','Titanium') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缸盖材料',
  `Piston_Material` enum('Aluminum','Forged Aluminum','Steel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活塞材料',
  `Crankshaft_Material` enum('Forged Steel','Cast Iron','Billet Steel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '曲轴材料',
  `Connecting_Rod_Material` enum('Steel','Titanium','Aluminum') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '连杆材料',
  `Valve_Material` enum('Stainless Steel','Titanium','Inconel') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '气门材料',
  `Coating_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '涂层类型',
  `Heat_Treatment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '热处理方式',
  PRIMARY KEY (`Material_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginematerials_copy1_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机材料信息表';

-- ----------------------------
-- Table structure for engineperformance
-- ----------------------------
DROP TABLE IF EXISTS `engineperformance`;
CREATE TABLE `engineperformance` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT COMMENT '性能数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Power_To_Weight_Ratio` decimal(10,2) NOT NULL COMMENT '功率重量比 (马力/公斤)',
  `BMEP` decimal(10,2) NOT NULL COMMENT '平均有效压力 (Bar)',
  `Specific_Power` decimal(10,2) NOT NULL COMMENT '比功率 (马力/升)',
  `Specific_Torque` decimal(10,2) NOT NULL COMMENT '比扭矩 (牛米/升)',
  `Thermal_Efficiency` decimal(10,2) NOT NULL COMMENT '热效率 (%)',
  `Fuel_Consumption` decimal(10,2) NOT NULL COMMENT '燃油消耗率 (升/100公里)',
  PRIMARY KEY (`Performance_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `engineperformance_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机性能数据表';

-- ----------------------------
-- Table structure for enginethermodynamics
-- ----------------------------
DROP TABLE IF EXISTS `enginethermodynamics`;
CREATE TABLE `enginethermodynamics` (
  `Thermodynamics_ID` int NOT NULL AUTO_INCREMENT COMMENT '热力学数据唯一标识符',
  `Engine_ID` int NOT NULL COMMENT '关联的发动机ID',
  `Combustion_Efficiency` decimal(10,2) NOT NULL COMMENT '燃烧效率 (%)',
  `Exhaust_Gas_Temperature` decimal(10,2) NOT NULL COMMENT '排气温度 (°C)',
  `Coolant_Temperature` decimal(10,2) NOT NULL COMMENT '冷却液温度 (°C)',
  `Oil_Temperature` decimal(10,2) NOT NULL COMMENT '机油温度 (°C)',
  `Heat_Rejection_Rate` decimal(10,2) NOT NULL COMMENT '热排放率 (千瓦)',
  `Specific_Heat_Capacity` decimal(10,2) NOT NULL COMMENT '比热容 (焦耳/千克·K)',
  `Thermal_Conductivity` decimal(10,2) NOT NULL COMMENT '热导率 (瓦/米·K)',
  PRIMARY KEY (`Thermodynamics_ID`) USING BTREE,
  KEY `EngineID` (`Engine_ID`),
  CONSTRAINT `enginethermodynamics_ibfk_1` FOREIGN KEY (`Engine_ID`) REFERENCES `engine` (`Engine_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发动机热力学数据表';

SET FOREIGN_KEY_CHECKS = 1;
