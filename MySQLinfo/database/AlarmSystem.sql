/*
 Navicat Premium Data Transfer

 Source Server         : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com_26791
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : sh-cynosdbmysql-grp-noxslim6.sql.tencentcdb.com:26791
 Source Schema         : AlarmSystem

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 11/08/2025 12:26:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for HistoricalDataAnalysis
-- ----------------------------
DROP TABLE IF EXISTS `HistoricalDataAnalysis`;
CREATE TABLE `HistoricalDataAnalysis` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EventType` varchar(100) DEFAULT NULL,
  `AnalysisTime` varchar(20) DEFAULT NULL,
  `DataStartTime` varchar(20) DEFAULT NULL,
  `DataEndTime` varchar(20) DEFAULT NULL,
  `TotalEvents` int DEFAULT NULL,
  `AverageSeverity` decimal(5,2) DEFAULT NULL,
  `MaxSeverity` int DEFAULT NULL,
  `MinSeverity` int DEFAULT NULL,
  `FalseAlarmRate` decimal(5,2) DEFAULT NULL,
  `AnalysisResult` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of HistoricalDataAnalysis
-- ----------------------------
BEGIN;
INSERT INTO `HistoricalDataAnalysis` VALUES (1, '地震', NULL, '2024-01-01', '2025-05-31', 128, 6.00, NULL, NULL, 5.00, '震级6.0-6.9级地震响应策略：\n1. 启动Ⅱ级应急响应\n2. 重点防御区建筑物安全排查\n3. 生命线工程应急保障方案');
INSERT INTO `HistoricalDataAnalysis` VALUES (2, '洪水', NULL, '2024-05-01', '2025-06-01', 28, 7.00, NULL, NULL, NULL, '长江中游洪水传播模型：\n1. 洪峰传播速度5m/s\n2. 100km传播时间5.56小时\n3. 影响半径25km');
INSERT INTO `HistoricalDataAnalysis` VALUES (3, '海啸', NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, '特大海啸分析报告：\n1. 破坏性波浪传播模型\n2. 海岸带淹没风险评估\n3. 跨洋预警系统响应方案');
INSERT INTO `HistoricalDataAnalysis` VALUES (4, '核泄漏', NULL, '2020-01-01', '2025-06-01', 3, NULL, 10, NULL, 0.10, '核泄漏等级INES 7级响应方案：\n1. 立即启动50km撤离计划\n2. 碘片分发半径100km\n3. 建立三级污染控制区\n\n长期影响评估：\n• 生态恢复周期>300年\n• 致癌风险增加37倍\n• 土地禁用期≥60年');
INSERT INTO `HistoricalDataAnalysis` VALUES (5, '火山喷发', NULL, '2023-03-01', '2025-05-30', NULL, NULL, 9, NULL, NULL, '富士山级火山喷发分析：\n1. 500km扩散时间13.89小时\n2. 浓度衰减至初始值0.074%\n3. 航空危险半径1200km');
INSERT INTO `HistoricalDataAnalysis` VALUES (6, '龙卷风', NULL, '2024-05-01', '2025-05-31', 12, NULL, 8, NULL, 2.00, 'EF4级龙卷风应急响应方案：\n1. 启动30分钟预警机制\n2. 建立三级避难体系\n3. 实施交通熔断措施\n\n灾害特征：\n• 风速267-322km/h\n• 建筑物完全摧毁\n• 汽车抛掷距离>100m');
INSERT INTO `HistoricalDataAnalysis` VALUES (7, '洪水', NULL, '2024-07-01', '2025-06-15', 8, 5.00, NULL, NULL, NULL, '长江流域洪水事件分析：\n1. 50km传播时间6小时56分\n2. 洪水锋面高度3.5m\n3. 淹没面积预估120km²');
INSERT INTO `HistoricalDataAnalysis` VALUES (8, '火灾', NULL, '2025-01-01', '2025-06-15', 9, 4.00, NULL, NULL, 3.00, '工业区火灾三级响应方案：\n1. 启动200m安全隔离区\n2. 部署泡沫灭火系统\n3. 开启厂房排烟装置\n4. 伤员分类救治流程\n\n灾后改进：\n• 热成像误报校准\n• 防火间距增加至15m');
INSERT INTO `HistoricalDataAnalysis` VALUES (9, '火灾', NULL, '2025-03-01', '2025-06-15', 6, 3.00, NULL, NULL, 1.00, '商业综合体火灾二级响应方案：\n1. 启动100m警戒范围\n2. 部署干粉灭火装置\n3. 实施垂直疏散方案\n4. 启动排烟联动系统\n\n改进措施：\n• 优化烟雾探测器灵敏度\n• 增加防火分区至每500㎡');
COMMIT;

-- ----------------------------
-- Table structure for WarningEvent
-- ----------------------------
DROP TABLE IF EXISTS `WarningEvent`;
CREATE TABLE `WarningEvent` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EventType` varchar(100) DEFAULT NULL,
  `EventTime` varchar(20) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `SeverityLevel` int DEFAULT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `RadiusKm` decimal(10,2) DEFAULT NULL,
  `PopulationAffected` int DEFAULT NULL,
  `EstimatedDamageUSD` decimal(15,2) DEFAULT NULL,
  `EventDescription` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of WarningEvent
-- ----------------------------
BEGIN;
INSERT INTO `WarningEvent` VALUES (1, 'Flood', '2023-10-01 14:30:00', 'Yangtze River Basin', 8, 30.123456, 114.567890, 50.00, 100000, 5000000.00, 'Heavy rainfall caused severe flooding in the Yangtze River Basin.');
INSERT INTO `WarningEvent` VALUES (2, 'Earthquake', '2023-09-25 08:15:00', 'Sichuan Province', 9, 31.234567, 103.456789, 100.00, 500000, 10000000.00, 'A 7.0 magnitude earthquake struck Sichuan Province, causing widespread damage.');
INSERT INTO `WarningEvent` VALUES (3, 'Wildfire', '2023-08-15 12:45:00', 'California, USA', 7, 36.654321, -118.987654, 75.00, 20000, 2000000.00, 'A wildfire broke out in California, destroying thousands of acres of forest.');
INSERT INTO `WarningEvent` VALUES (4, 'Tornado', '2023-07-10 16:20:00', 'Oklahoma, USA', 6, 35.987654, -97.123456, 30.00, 15000, 1500000.00, 'A tornado touched down in Oklahoma, causing significant damage to homes and infrastructure.');
INSERT INTO `WarningEvent` VALUES (5, 'Tsunami', '2023-06-05 09:00:00', 'Pacific Coast, Japan', 10, 38.123456, 142.654321, 200.00, 1000000, 50000000.00, 'A powerful tsunami hit the Pacific Coast of Japan following an undersea earthquake.');
INSERT INTO `WarningEvent` VALUES (6, 'Landslide', '2023-05-20 11:10:00', 'Himalayas, Nepal', 7, 27.987654, 85.123456, 20.00, 5000, 1000000.00, 'Heavy rains triggered a landslide in the Himalayan region of Nepal.');
INSERT INTO `WarningEvent` VALUES (7, 'Volcanic Eruption', '2023-04-15 18:30:00', 'Mount Etna, Italy', 8, 37.734567, 15.004321, 50.00, 10000, 3000000.00, 'Mount Etna erupted, causing ash clouds and evacuations in nearby towns.');
INSERT INTO `WarningEvent` VALUES (8, '地震', '2024-03-15 10:00:00', '四川成都', 7, 30.658900, 104.063400, 10.00, 50000, 1000000.00, '一次中等强度地震');
INSERT INTO `WarningEvent` VALUES (9, '火灾', '2024-03-15 14:30:00', '上海某工厂', 8, 31.230456, 121.443210, 2.00, 1000, 500000.00, '工业区大型仓库火灾');
INSERT INTO `WarningEvent` VALUES (10, '洪水', '2024-03-15 08:00:00', '湖南长沙', 9, 28.123456, 113.456789, 5.00, 20000, 10000000.00, '强降雨引发城市内涝');
INSERT INTO `WarningEvent` VALUES (11, '地震', '2024-03-15 10:00:00', '四川成都', 7, 30.658900, 104.063400, 10.00, 50000, 1000000.00, '一次中等强度地震');
INSERT INTO `WarningEvent` VALUES (12, '火灾', '2024-03-15 14:30:00', '上海某工厂', 8, 31.230456, 121.443210, 2.00, 1000, 500000.00, '工业区大型仓库火灾');
INSERT INTO `WarningEvent` VALUES (13, '洪水', '2024-03-15 08:00:00', '湖南长沙', 9, 28.123456, 113.456789, 5.00, 20000, 10000000.00, '强降雨引发城市内涝');
INSERT INTO `WarningEvent` VALUES (14, '火山喷发', '2024-04-01 09:00:00', '日本富士山', 10, 35.360000, 138.727000, 500.00, 100000, 1000000000.00, '大规模火山喷发导致火山灰扩散');
INSERT INTO `WarningEvent` VALUES (88888, '火山喷发', '2025-06-16 19:22:00', '环太平洋火山带测试点', 8, 35.360600, 138.727400, 50.00, 120000, 5000000000.00, '测试用火山喷发事件：扩散速度10m/s');
INSERT INTO `WarningEvent` VALUES (99999, '海啸', '2025-06-16 14:42:00', '太平洋测试海域', 9, 35.689500, 139.691700, 200.00, 5000000, 10000000000.00, '测试用海啸事件数据');
INSERT INTO `WarningEvent` VALUES (999999, '地震', '2025-06-16 19:44:00', '日本东京都千代田区', 7, 35.689500, 139.691700, 100.00, 1000000, 10000000000.00, 'M6.5级地震，震源深度10公里，走滑型断层活动');
COMMIT;

-- ----------------------------
-- Table structure for WarningNotificationRecord
-- ----------------------------
DROP TABLE IF EXISTS `WarningNotificationRecord`;
CREATE TABLE `WarningNotificationRecord` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EventId` int DEFAULT NULL,
  `TriggerId` int DEFAULT NULL,
  `NotificationTime` varchar(20) DEFAULT NULL,
  `RecipientType` varchar(100) DEFAULT NULL,
  `RecipientCount` int DEFAULT NULL,
  `NotificationMethod` varchar(100) DEFAULT NULL,
  `NotificationContent` text,
  `IsAcknowledged` tinyint(1) DEFAULT NULL,
  `AcknowledgedTime` varchar(20) DEFAULT NULL,
  `NotificationStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of WarningNotificationRecord
-- ----------------------------
BEGIN;
INSERT INTO `WarningNotificationRecord` VALUES (1, 1, 1, '2023-10-01 15:05:00', 'Public', 100000, 'SMS', 'Flood warning: Water level has exceeded 10 meters. Please evacuate immediately.', 1, '2023-10-01 15:10:00', 'Success');
INSERT INTO `WarningNotificationRecord` VALUES (2, 2, 2, '2023-09-25 08:35:00', 'Government', 500, 'Email', 'Earthquake alert: A 6.5 magnitude earthquake has been detected. Evacuation orders issued.', 1, '2023-09-25 08:40:00', 'Success');
INSERT INTO `WarningNotificationRecord` VALUES (3, 3, 3, '2023-08-15 13:05:00', 'Public', 20000, 'Broadcast', 'Wildfire alert: A wildfire has spread over 1200 acres. Stay indoors and avoid affected areas.', 1, '2023-08-15 13:10:00', 'Success');
INSERT INTO `WarningNotificationRecord` VALUES (4, 4, 4, '2023-07-10 16:35:00', 'Public', 15000, 'SMS', 'Tornado warning: Wind speeds have exceeded 220 km/h. Take shelter immediately.', 0, NULL, 'Pending');
INSERT INTO `WarningNotificationRecord` VALUES (5, 5, 5, '2023-06-05 09:35:00', 'Public', 1000000, 'Broadcast', 'Tsunami alert: Wave height has reached 6 meters. Evacuate coastal areas immediately.', 1, '2023-06-05 09:40:00', 'Success');
INSERT INTO `WarningNotificationRecord` VALUES (6, 6, 6, '2023-05-20 11:35:00', 'Government', 1000, 'Email', 'Landslide warning: Rainfall has exceeded 60 mm in landslide-prone areas. Roads are blocked.', 1, '2023-05-20 11:40:00', 'Success');
INSERT INTO `WarningNotificationRecord` VALUES (7, 7, 7, '2023-04-15 19:05:00', 'Public', 50000, 'SMS', 'Volcanic eruption alert: Volcanic explosivity index (VEI) has reached 4.5. Evacuate nearby towns.', 1, '2023-04-15 19:10:00', 'Success');
INSERT INTO `WarningNotificationRecord` VALUES (8, NULL, NULL, '2025-06-18 16:30:00', '公众', 50000, '广播', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (9, NULL, NULL, '2025-06-18 15:45:00', '企业', 20, '邮件', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (10, NULL, NULL, '2025-06-18 17:10:00', '政府', 1, '短信', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (11, NULL, NULL, '2025-06-18 16:30:00', '公众', 50000, '广播', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (12, NULL, NULL, '2025-06-18 15:45:00', '企业', 20, '邮件', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (13, NULL, NULL, '2025-06-18 17:10:00', '政府', 1, '短信', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (14, NULL, NULL, '2025-06-18 16:30:00', '公众', 50000, '广播', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (15, NULL, NULL, '2025-06-18 15:45:00', '企业', 20, '邮件', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (16, NULL, NULL, '2025-06-18 17:10:00', '政府', 1, '短信', NULL, NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (17, NULL, NULL, '2025-06-18 17:00:00', '公众', 250000, '短信', '【市应急局】高温红色预警：今日最高气温将达40℃，请避免户外活动，注意防暑降温。', NULL, NULL, '成功');
INSERT INTO `WarningNotificationRecord` VALUES (18, NULL, NULL, '2025-06-18 16:30:00', '政府', 50, '短信', '应急指挥部指令：立即启动高温Ⅲ级应急响应', NULL, NULL, '成功');
INSERT INTO `WarningNotificationRecord` VALUES (19, NULL, NULL, '2025-06-18 17:15:00', '企业', 300, 'APP推送', '生产安全提示：高温期间制冷设备满负荷运行通知', NULL, NULL, '待发送');
INSERT INTO `WarningNotificationRecord` VALUES (20, NULL, NULL, '2025-06-18 17:00:00', '公众', 5000000, '广播', '【国家应急中心】台风\"海燕\"将于3小时后登陆，中心风力16级', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (21, NULL, NULL, '2025-06-18 17:30:00', '公众', 10000, '短信', '高温红色预警：户外活动暂停', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (22, NULL, NULL, '2025-06-18 17:35:00', '政府', 200, '短信', '防汛应急响应通知', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (23, NULL, NULL, '2025-06-18 17:40:00', '企业', 1500, '邮件', '生产安全通告', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (24, NULL, NULL, '2025-06-18 17:30:00', '企业', 1500, '邮件', '【国家应急管理部】暴雨红色预警通知\n\n根据气象监测，未来6小时将出现200mm以上特大暴雨：\n1. 立即停止户外作业\n2. 启动防汛应急预案Ⅲ级响应\n3. 检查排水系统\n4. 重要设备转移至安全高程\n5. 于18:00前反馈准备情况至yjyj@emergency.gov.cn', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (25, NULL, NULL, '2025-06-18 17:45:00', '公众', 1000000, '广播', '台风\"青鸾\"路径更新：预计19日03时登陆，中心风力升至15级', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (26, NULL, NULL, '2025-06-18 17:50:00', '政府', 200, '广播', '防汛应急响应升级至Ⅱ级', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (27, NULL, NULL, '2025-06-18 18:00:00', '企业', 5000, '卫星', '跨区域电力调度指令', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (28, NULL, NULL, '2025-06-18 17:45:00', '公众', 1000000, '广播', '台风\"青鸾\"路径更新：预计19日03时登陆，中心风力升至15级', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (29, NULL, NULL, '2025-06-18 17:50:00', '政府', 200, '广播', '防汛应急响应升级至Ⅱ级', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (30, NULL, NULL, '2025-06-18 18:00:00', '企业', 5000, '卫星', '跨区域电力调度指令', NULL, NULL, NULL);
INSERT INTO `WarningNotificationRecord` VALUES (31, NULL, NULL, '2025-06-18 18:15:00', '政府', 385, '短信', '【省应急厅】地质灾害Ⅰ级响应：立即启动省-市-县三级指挥部，2小时内上报救援方案', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for WarningRule
-- ----------------------------
DROP TABLE IF EXISTS `WarningRule`;
CREATE TABLE `WarningRule` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RuleName` varchar(100) DEFAULT NULL,
  `EventType` varchar(100) DEFAULT NULL,
  `ThresholdValue` decimal(15,2) DEFAULT NULL,
  `ThresholdUnit` varchar(50) DEFAULT NULL,
  `ConditionOperator` varchar(10) DEFAULT NULL,
  `SeverityLevel` int DEFAULT NULL,
  `ActionType` varchar(100) DEFAULT NULL,
  `RuleDescription` text,
  `IsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of WarningRule
-- ----------------------------
BEGIN;
INSERT INTO `WarningRule` VALUES (1, 'FloodWarning', 'Flood', 10.00, 'meters', '>', 8, 'Notify Authorities', 'Triggered when water level exceeds 10 meters.', 1);
INSERT INTO `WarningRule` VALUES (2, 'EarthquakeAlert', 'Earthquake', 6.00, 'magnitude', '>=', 9, 'Evacuate Area', 'Triggered when earthquake magnitude is 6.0 or higher.', 1);
INSERT INTO `WarningRule` VALUES (3, 'WildfireDetection', 'Wildfire', 1000.00, 'acres', '>', 7, 'Deploy Firefighters', 'Triggered when wildfire area exceeds 1000 acres.', 1);
INSERT INTO `WarningRule` VALUES (4, 'TornadoWarning', 'Tornado', 200.00, 'km/h', '>', 6, 'Issue Tornado Alert', 'Triggered when wind speed exceeds 200 km/h.', 1);
INSERT INTO `WarningRule` VALUES (5, 'TsunamiAlert', 'Tsunami', 5.00, 'meters', '>', 10, 'Evacuate Coastal Areas', 'Triggered when tsunami wave height exceeds 5 meters.', 1);
INSERT INTO `WarningRule` VALUES (6, 'LandslideWarning', 'Landslide', 50.00, 'mm', '>', 7, 'Block Roads', 'Triggered when rainfall exceeds 50 mm in landslide-prone areas.', 1);
INSERT INTO `WarningRule` VALUES (7, 'VolcanicEruptionAlert', 'Volcanic Eruption', 4.00, 'VEI', '>=', 8, 'Evacuate Nearby Towns', 'Triggered when volcanic explosivity index (VEI) is 4 or higher.', 1);
INSERT INTO `WarningRule` VALUES (8, NULL, '洪水', NULL, NULL, NULL, 8, '启动Ⅱ级应急响应；疏散低洼地区居民；调拨救援物资；部署抢险队伍；发布避灾指南；协调军队支援；设立临时安置点；切断危险区域电力与燃气供应', NULL, NULL);
INSERT INTO `WarningRule` VALUES (9, NULL, '龙卷风', NULL, NULL, NULL, 6, '发布黄色预警；提醒公众关注天气变化；加固户外设施；关闭高风险区域；准备应急物资；组织社区避险演练；协调救援力量待命', NULL, NULL);
INSERT INTO `WarningRule` VALUES (10, NULL, '洪水', NULL, NULL, NULL, 8, '启动Ⅱ级应急响应；组织群众转移避险；调拨救援物资；部署抢险队伍；切断电力与燃气供应；设立临时安置点；发布实时汛情通报；协调军队参与救援', NULL, NULL);
INSERT INTO `WarningRule` VALUES (11, NULL, '洪水', NULL, NULL, NULL, 8, '启动Ⅱ级应急响应；组织群众转移避险；调拨救援物资；部署抢险队伍；切断电力与燃气供应；设立临时安置点；发布实时汛情通报；协调军队参与救援', NULL, NULL);
INSERT INTO `WarningRule` VALUES (12, NULL, '台风', NULL, NULL, NULL, 5, '发布蓝色预警；提醒公众关注天气变化；检查排水系统；加固户外设施；准备应急物资；组织社区防风演练', NULL, NULL);
INSERT INTO `WarningRule` VALUES (13, NULL, '地震', NULL, NULL, NULL, 7, '发布橙色预警；启动Ⅲ级应急响应；组织群众避险疏散；检查建筑物安全；切断危险区域电力与燃气；准备救援物资；协调消防和医疗力量待命', NULL, NULL);
INSERT INTO `WarningRule` VALUES (14, NULL, '核泄漏', NULL, NULL, NULL, 10, '启动红色预警；发布紧急疏散令；划定隔离区；派遣专业救援队；调拨防辐射物资；切断区域交通；实施空气与水源实时监测；组织国际援助；建立长期生态监测机制', NULL, NULL);
INSERT INTO `WarningRule` VALUES (15, NULL, '洪水', 500.00, NULL, NULL, 7, '发布黄色预警；加强河流水位监测；准备应急物资；通知低洼地区居民做好转移准备', NULL, NULL);
INSERT INTO `WarningRule` VALUES (16, NULL, '火灾', 1000.00, NULL, NULL, 8, '立即组织人员疏散；切断电力与燃气供应；启动自动喷淋系统；通知消防部门；广播引导群众撤离；封锁现场防止二次伤害', NULL, NULL);
INSERT INTO `WarningRule` VALUES (17, NULL, '火灾', 1000.00, NULL, NULL, 8, '疏散', NULL, NULL);
INSERT INTO `WarningRule` VALUES (18, NULL, '地震', 5.00, NULL, NULL, 7, '发布黄色预警；启动Ⅲ级应急响应；检查建筑物安全；准备应急物资', NULL, NULL);
INSERT INTO `WarningRule` VALUES (19, NULL, '海啸', 10.00, NULL, NULL, 9, '发布红色预警；立即组织沿海居民撤离至高地；关闭低洼地区交通；切断电力与燃气供应；协调救援队伍集结；广播和短信通知群众避险', NULL, NULL);
INSERT INTO `WarningRule` VALUES (20, NULL, '海啸', 10.00, NULL, NULL, 9, '疏散', NULL, NULL);
INSERT INTO `WarningRule` VALUES (21, NULL, '洪水', 500.00, NULL, NULL, 7, '发布黄色预警；加强河流水位监测；准备应急物资；通知低洼地区居民做好转移准备', NULL, NULL);
INSERT INTO `WarningRule` VALUES (22, NULL, '火灾', 100.00, NULL, NULL, 5, '通知', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for WarningTriggerRecord
-- ----------------------------
DROP TABLE IF EXISTS `WarningTriggerRecord`;
CREATE TABLE `WarningTriggerRecord` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EventId` int DEFAULT NULL,
  `RuleId` int DEFAULT NULL,
  `TriggerTime` varchar(20) DEFAULT NULL,
  `TriggerValue` decimal(15,2) DEFAULT NULL,
  `TriggerUnit` varchar(50) DEFAULT NULL,
  `SeverityLevel` int DEFAULT NULL,
  `ActionTaken` varchar(255) DEFAULT NULL,
  `IsFalseAlarm` tinyint(1) DEFAULT NULL,
  `TriggerDescription` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of WarningTriggerRecord
-- ----------------------------
BEGIN;
INSERT INTO `WarningTriggerRecord` VALUES (1, 1, 1, '2023-10-01 15:00:00', 12.50, 'meters', 8, 'Notified local authorities and issued flood warnings.', 0, 'Water level exceeded the threshold of 10 meters.');
INSERT INTO `WarningTriggerRecord` VALUES (2, 2, 2, '2023-09-25 08:30:00', 6.50, 'magnitude', 9, 'Evacuation orders issued for affected areas.', 0, 'Earthquake magnitude exceeded the threshold of 6.0.');
INSERT INTO `WarningTriggerRecord` VALUES (3, 3, 3, '2023-08-15 13:00:00', 1200.00, 'acres', 7, 'Firefighters deployed to contain the wildfire.', 0, 'Wildfire area exceeded the threshold of 1000 acres.');
INSERT INTO `WarningTriggerRecord` VALUES (4, 4, 4, '2023-07-10 16:30:00', 220.00, 'km/h', 6, 'Tornado alert issued and residents advised to take shelter.', 0, 'Wind speed exceeded the threshold of 200 km/h.');
INSERT INTO `WarningTriggerRecord` VALUES (5, 5, 5, '2023-06-05 09:30:00', 6.00, 'meters', 10, 'Coastal areas evacuated and tsunami warnings issued.', 0, 'Tsunami wave height exceeded the threshold of 5 meters.');
INSERT INTO `WarningTriggerRecord` VALUES (6, 6, 6, '2023-05-20 11:30:00', 60.00, 'mm', 7, 'Roads blocked and residents advised to stay indoors.', 0, 'Rainfall exceeded the threshold of 50 mm in landslide-prone areas.');
INSERT INTO `WarningTriggerRecord` VALUES (7, 7, 7, '2023-04-15 19:00:00', 4.50, 'VEI', 8, 'Nearby towns evacuated and airspace closed.', 0, 'Volcanic explosivity index (VEI) exceeded the threshold of 4.');
INSERT INTO `WarningTriggerRecord` VALUES (8, NULL, NULL, '2025-06-18 10:30:00', 500.00, '毫米', 6, NULL, NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (9, NULL, NULL, '2025-06-18 12:45:00', 750.00, '毫米', 7, NULL, NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (10, NULL, NULL, '2025-06-18 14:00:00', 1000.00, '毫米', 8, NULL, NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (11, NULL, NULL, '2025-06-18 13:15:00', 850.00, '毫米', 7, NULL, NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (12, 1, NULL, '2025-06-18 14:35:00', 100.00, '摄氏度', 9, '厂区人员疏散', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (13, 1, NULL, '2025-06-18 14:40:00', 110.50, '摄氏度', 10, '启动冷却系统', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (14, 2, NULL, '2025-06-18 08:20:00', 85.00, '摄氏度', 8, '设置防火隔离带', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (15, 3, NULL, '2025-06-18 16:45:00', 42.50, '摄氏度', 7, '开放避暑中心', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (16, 1, NULL, '2025-06-18 14:35:00', 100.00, '摄氏度', 9, '疏散', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (17, 1, NULL, '2025-06-18 14:40:00', 110.50, '摄氏度', 10, '启动冷却系统', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (18, 2, NULL, '2025-06-18 08:20:00', 85.00, '摄氏度', 8, '设置防火隔离带', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (19, 3, NULL, '2025-06-18 16:45:00', 42.50, '摄氏度', 7, '开放避暑中心', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (20, 1, NULL, '2025-06-18 14:15:00', 100.00, '毫米', 8, '启动城市防洪响应', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (21, 1, NULL, '2025-06-18 14:30:00', 120.50, '毫米', 9, '地铁停运', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (22, 2, NULL, '2025-06-18 11:00:00', 85.00, '毫米', 7, '渔船回港避风', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (23, 1, NULL, '2025-06-18 16:00:00', 50.00, '摄氏度', 8, '通知应急管理部', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (24, 1, NULL, '2025-06-18 16:15:00', 55.50, '摄氏度', 9, '启动冷却系统', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (25, 1, NULL, '2025-06-18 16:30:00', 60.00, '摄氏度', 10, '全员疏散', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (26, 1, NULL, '2025-06-18 16:00:00', 50.00, '摄氏度', 8, '通知', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (27, 1, NULL, '2025-06-18 16:15:00', 55.50, '摄氏度', 9, '启动冷却系统', NULL, NULL);
INSERT INTO `WarningTriggerRecord` VALUES (28, 1, NULL, '2025-06-18 16:30:00', 60.00, '摄氏度', 10, '全员疏散', NULL, NULL);
COMMIT;

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

SET FOREIGN_KEY_CHECKS = 1;
