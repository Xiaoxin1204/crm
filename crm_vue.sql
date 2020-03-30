/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : 106.15.72.234:3306
 Source Schema         : crm_vue

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 30/03/2020 09:57:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for communication
-- ----------------------------
DROP TABLE IF EXISTS `communication`;
CREATE TABLE `communication`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '概要',
  `detail_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '详细信息',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '交谈时间点',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of communication
-- ----------------------------
INSERT INTO `communication` VALUES (1, '签订意向协议', '测试2', '海南省', '主办单位：海南通讯协会', '2019-11-19 00:00:00', 1);
INSERT INTO `communication` VALUES (2, '娱乐', '增加与客户的感情', '浙江省', '主办单位：天上人间', '2019-12-02 06:59:47', 1);
INSERT INTO `communication` VALUES (4, 'test', 'test', 'test', NULL, '2019-12-06 05:43:38', 1);
INSERT INTO `communication` VALUES (5, 'test', 'test11', 'test', 'test', '2019-12-06 05:48:59', 1);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司名字',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `permission` int(11) NULL DEFAULT NULL COMMENT '权限0为公司，1为员工',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业联系人电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '大肥玥', '123456', 0, '17815512453');
INSERT INTO `company` VALUES (2, '小肥玥', '123456', 0, '15157872981');
INSERT INTO `company` VALUES (3, '阿里巴巴', '123', 0, '13636545615');
INSERT INTO `company` VALUES (4, '京东', '123', 0, '13546454654');
INSERT INTO `company` VALUES (5, '浙江龙港', '981230', 0, '17816180517');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户公司名字',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `contact_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人名字',
  `tel` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司联系电话',
  `state` int(11) NULL DEFAULT 1 COMMENT '状态 0为流失 1为正在执行 2为处在公海中 3为成交',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '所属员工id',
  `comp_id` int(11) NOT NULL COMMENT '所属公司id',
  `serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户的编号',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地区',
  `comp_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司地址',
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户等级',
  `credit` int(11) NULL DEFAULT NULL COMMENT '客户信用度',
  `license_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '营业执照编号',
  `corporation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '法人',
  `register_money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '注册资金',
  `annual_sale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '年营业额',
  `land_tax_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地税登记号',
  `national_tax_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国税登记号',
  `deposit_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开户银行',
  `bank_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '银行账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '阿里巴巴', '电商', '李先生', '17857309089', 1, 1, 1, '123456', '2019-12-13 09:47:44', '浙江', '杭州电子科技大学', 'S', 3, '1324654987431432', '李建新', '1000万', '5亿', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '6217993300001663546');
INSERT INTO `customer` VALUES (2, '京东', '互联网', '金先生', '17857309089', 1, 1, 1, '123457', '2019-12-12 21:20:40', '浙江', '杭州电子科技大学', 'S', 5, '1324654987431432', '李建新', '1000万', '5亿', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '6217993300001663546');
INSERT INTO `customer` VALUES (3, '万达集团', '房地产', '李先生', '17857309089', 2, NULL, 1, '123458', '2019-12-12 21:20:42', '浙江', '杭州电子科技大学', 'S', 5, '1324654987431432', '李建新', '1000万', '5亿', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '6217993300001663546');
INSERT INTO `customer` VALUES (4, '京东东', '互联网', '李先生', '17857309089', 1, 1, 1, '123455', '2019-12-20 21:02:56', '浙江', '杭州电子科技大学', 'S', 5, '1324654987431432', '李建新', '1000万', '5亿', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '6217993300001663546');
INSERT INTO `customer` VALUES (5, '苏宁宁', '互联网', '金先生', '17857309089', 1, 1, 1, '123454', '2019-12-20 21:03:03', '浙江', '杭州电子科技大学', 'S', 5, '1324654987431432', '李建新', '1000万', '5亿', '5678-522465-5243232', '9012-522465-5243232', '杭州银行', '6217993300001663546');
INSERT INTO `customer` VALUES (6, '苏宁', '互联网', '李先生', '17857309089', 1, 1, 1, '123453', '2019-12-04 11:23:15', '浙江', '杭州电子科技大学', 'S', 5, '1324654987431432', '李建新', '1000万', '105亿', '5678-522465-5243232', '9012-522465-5243232', '建设银行', '6217993300001663546');
INSERT INTO `customer` VALUES (7, '旺仔', '零食', '李先生', '17857309089', 1, 1, 1, '123452', '2019-12-04 11:23:16', '浙江', '杭州电子科技大学', 'S', 5, '1324654987431432', '李建新', '1000万', '15亿', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '6217993300001663546');
INSERT INTO `customer` VALUES (8, '大肥玥', '零食', '李先生', '17857309089', 1, 1, 1, '123451', '2019-12-04 11:23:17', '浙江', '杭州电子科技大学', 'S', 5, '1324654987431432', '李建新', '1000万', '25亿', '5678-522465-5243232', '9012-522465-5243232', '建设银行', '6217993300001663546');
INSERT INTO `customer` VALUES (29, '格雅酒店', '酒店', '林韩', '17815512654', 1, 2, 2, 'bfbbad', '2019-12-09 14:02:47', '浙江省', '杭州电子科技大学', 'S', 5, '1324654987431432', '林韩', '5000万', '100000万', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '621799330000166385');
INSERT INTO `customer` VALUES (30, '天上人间', '洗浴中心', '林韩', '17815512654', 1, 1, 1, '06a2e2', '2019-12-09 14:03:34', '浙江省', '杭州电子科技大学', 'S', 5, '1324654987431432', '林韩', '5000万', '100000万', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '621799330000166385');
INSERT INTO `customer` VALUES (31, '甜蜜蜜', '娱乐', '林韩', '17815512654', 1, 0, 1, '55b2dc', '2019-12-09 14:04:36', '浙江省', '杭州电子科技大学', 'S', 5, '1324654987431432', '林韩', '5000万', '100000万', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '621799330000166385');
INSERT INTO `customer` VALUES (32, '大肥玥集团', '集团', '李建新', '17815512654', 1, 0, 2, '437a37', '2019-12-09 14:07:45', '浙江省', '杭州电子科技大学', 'S', 5, '1324654987431432', '李建新', '5000万', '100000万', '5678-522465-5243232', '9012-522465-5243232', '农业银行', '621799330000166385');

-- ----------------------------
-- Table structure for customer_care
-- ----------------------------
DROP TABLE IF EXISTS `customer_care`;
CREATE TABLE `customer_care`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `linkman_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关怀的联系人名字',
  `birthday` date NULL DEFAULT NULL COMMENT '记录联系人的生日',
  `time` date NULL DEFAULT NULL COMMENT '关怀时间',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关怀详情',
  `status` int(11) NULL DEFAULT NULL COMMENT '0通过编辑处理，1通过自动发送短信处理，3未处理',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '进行关怀的销售代表',
  `days` int(11) NULL DEFAULT NULL,
  `comp_id` int(11) NULL DEFAULT NULL,
  `linkman_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `linkman_id`(`linkman_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_care
-- ----------------------------
INSERT INTO `customer_care` VALUES (226, '小新', '1998-12-12', '2019-12-12', '发送短信祝福', 0, 1, 335, 1, 2);
INSERT INTO `customer_care` VALUES (228, '小肥玥', '1998-12-11', NULL, NULL, 3, 1, 334, 1, 4);
INSERT INTO `customer_care` VALUES (229, '葛之覃', '1998-12-11', NULL, NULL, 3, 2, 334, 2, 8);
INSERT INTO `customer_care` VALUES (230, '姜悦', '1998-12-11', '2019-12-12', '线下拜访', 3, 2, 334, 2, 13);
INSERT INTO `customer_care` VALUES (231, '大肥玥', '1998-12-13', '2019-12-12', '大肥', 0, 1, 336, 1, 3);
INSERT INTO `customer_care` VALUES (233, '李建新', '1998-12-24', '2019-12-24', '发送短信祝福', 1, 1, 347, 1, 1);

-- ----------------------------
-- Table structure for customer_loss
-- ----------------------------
DROP TABLE IF EXISTS `customer_loss`;
CREATE TABLE `customer_loss`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户流失管理id',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '流失用户的id',
  `last_order_time` timestamp(0) NULL DEFAULT NULL COMMENT '上次下单时间',
  `measure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '暂缓措施',
  `measure_append` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追加暂缓措施',
  `loss_date` timestamp(0) NULL DEFAULT NULL COMMENT '确认流失时间',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流失原因',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '流失状态 0 将要流失  1挽回客户 2确认流失',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_loss
-- ----------------------------
INSERT INTO `customer_loss` VALUES (1, 2, NULL, '谈判', '降低价格', NULL, '价格太高', '1');

-- ----------------------------
-- Table structure for customer_transfer
-- ----------------------------
DROP TABLE IF EXISTS `customer_transfer`;
CREATE TABLE `customer_transfer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户转移记录id',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '被转移的客户id',
  `old_emp_id` int(11) NULL DEFAULT NULL COMMENT '转移前的客户经理',
  `new_emp_id` int(11) NULL DEFAULT NULL COMMENT '转移后的客户经理',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '转移原因',
  `time` timestamp(0) NULL DEFAULT NULL COMMENT '转移时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_transfer
-- ----------------------------
INSERT INTO `customer_transfer` VALUES (1, 1, 1, 2, '太丑了', '2019-11-21 00:00:00');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工名字',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号（登录用）',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `comp_id` int(11) NULL DEFAULT NULL COMMENT '所属公司id',
  `permission` int(11) NULL DEFAULT NULL COMMENT '权限0为公司，1为员工',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, '大肥玥', '17857309089', '1', '2019-12-20 21:00:31', 1, 1);
INSERT INTO `emp` VALUES (2, '员工B', '17816097076', '1204', '2019-12-10 10:26:30', 2, 1);
INSERT INTO `emp` VALUES (3, '员工c', '17878372948', '1111111', '2019-12-10 10:48:20', 2, 1);

-- ----------------------------
-- Table structure for linkman
-- ----------------------------
DROP TABLE IF EXISTS `linkman`;
CREATE TABLE `linkman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人名称',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人职位',
  `office_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '办公室电话',
  `mobile_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机电话',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `customer_id` int(11) NOT NULL COMMENT '所属客户',
  `birthday` date NULL DEFAULT NULL,
  `emp_id` int(11) NULL DEFAULT NULL,
  `comp_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of linkman
-- ----------------------------
INSERT INTO `linkman` VALUES (1, '李建新', '董事长', '88888888', '17857309089', '老板', 1, '1998-12-24', 1, 1);
INSERT INTO `linkman` VALUES (2, '小新', '销售部长', '66666666', '17857309089', '负责销售', 1, '1998-12-12', 1, 1);
INSERT INTO `linkman` VALUES (3, '大肥玥', 'HR', '66666655', '1777777777', '负责招聘', 1, '1998-12-13', 1, 1);
INSERT INTO `linkman` VALUES (4, '小肥玥', '外贸经理', '12352366', '17815512453', '负责国际贸易', 2, '1998-12-11', 1, 1);
INSERT INTO `linkman` VALUES (8, '葛之覃', '采购', '88888888', '15867198207', '采购', 1, '1998-12-11', 2, 2);
INSERT INTO `linkman` VALUES (13, '姜悦', '组长', '555666465', '17816180609', '2', 1, '1998-12-11', 2, 2);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '合同编号',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '送货地址',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态，0为未支付，1为已回款',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '客户id',
  `bus_id` int(11) NULL DEFAULT NULL,
  `fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '20191205211713884', '2019-12-21 16:02:20', '浙江', '0', 1, NULL, '合同1.pdf', 'bigyue.top/file/');
INSERT INTO `order` VALUES (4, '20191205211713637', '2019-12-21 16:02:19', '杭电信工', '0', 1, NULL, '合同2.pdf', 'bigyue.top/file/');
INSERT INTO `order` VALUES (5, '20191214135143493', '2019-12-21 16:02:18', '杭电信工', '0', 1, 2, '合同3.pdf', 'bigyue.top/file/');
INSERT INTO `order` VALUES (6, '20191216115436265', '2019-12-21 16:02:17', '浙江', '0', 1, NULL, '合同4.pdf', 'bigyue.top/file/');
INSERT INTO `order` VALUES (11, '20191216145748160', '2019-12-16 15:00:01', '浙江', '0', 1, NULL, '合同.pdf', 'bigyue.top/file/');
INSERT INTO `order` VALUES (13, '20191216192645737', '2019-12-16 19:26:43', '杭电信工', '0', 1, 2, '12.jpg', 'bigyue.top/file/');
INSERT INTO `order` VALUES (14, '20191221151843787', '2019-12-21 15:35:40', 'test', '0', 1, 2, 'Oracle连接套接字.pdf', 'bigyue.top/file/');
INSERT INTO `order` VALUES (15, '20191221160120851', '2019-12-21 16:01:20', '杭电信工', '0', 1, 2, '12.jpg', 'bigyue.top/file/');
INSERT INTO `order` VALUES (16, '20191221160344624', '2019-12-21 16:03:44', 'test1', '0', 1, 2, 'Oracle连接套接字.txt', 'bigyue.top/file/');
INSERT INTO `order` VALUES (17, '20191221183547738', '2019-12-21 18:35:47', '星汇城', '0', 1, 2, 'CRM任务.txt', 'bigyue.top/file/');
INSERT INTO `order` VALUES (20, '20191227110334550', '2019-12-27 11:03:34', '205', '0', 4, 30, '合同.pdf', 'bigyue.top/file/');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品名字',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品数量',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品地址',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品单位',
  `unit_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单价',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '所属订单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '洗面奶', '10', '韩国', '支', '30', 1);
INSERT INTO `product` VALUES (2, '洗面奶', '30', '韩国', '支', '35', 1);
INSERT INTO `product` VALUES (3, '面霜', '20', '日本', '瓶', '80', 1);
INSERT INTO `product` VALUES (4, '沐浴露', '15', '中国', '瓶', '65', 4);
INSERT INTO `product` VALUES (5, '洗发水', '20', '台湾', '瓶', '84', 4);
INSERT INTO `product` VALUES (6, '洗面奶A', '14', '韩国', '支', '14', 5);
INSERT INTO `product` VALUES (7, '洗面奶A', '14', '泰国', '支', '14', 5);
INSERT INTO `product` VALUES (8, '洗面奶', '300', '韩国', '支', '300', 6);
INSERT INTO `product` VALUES (9, '洗面奶', '10', '韩国', '支', '30', 7);
INSERT INTO `product` VALUES (17, '洗面奶', '100', '韩国', '支', '25', 11);
INSERT INTO `product` VALUES (18, '洗面奶', '100', '越南', '支', '25', 11);
INSERT INTO `product` VALUES (19, '洗面奶', '10', '韩国', '支', '30', 13);
INSERT INTO `product` VALUES (20, '洗面奶', '30', '韩国', '支', '35', 13);
INSERT INTO `product` VALUES (21, 'test', '12', 'test', 'test', '12', 14);
INSERT INTO `product` VALUES (22, '洗面奶', '21', '韩国', '支', '30', 15);
INSERT INTO `product` VALUES (23, '洗面奶', '21', '韩国', '支', '35', 15);
INSERT INTO `product` VALUES (24, 'test123', '123', '123321', '321', '321123', 16);
INSERT INTO `product` VALUES (25, 'test321', '321', '321123', '123', '321', 16);
INSERT INTO `product` VALUES (26, '毛巾', '20', '义乌', '根', '15', 17);
INSERT INTO `product` VALUES (27, '牙刷', '20', '杭州', '根', '120', 17);
INSERT INTO `product` VALUES (32, '牙刷', '100', '浙江', '支', '2', 20);
INSERT INTO `product` VALUES (33, '毛巾', '100', '浙江', '根', '2', 20);

-- ----------------------------
-- Table structure for sale_opportunity
-- ----------------------------
DROP TABLE IF EXISTS `sale_opportunity`;
CREATE TABLE `sale_opportunity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '客户id',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机会来源',
  `success` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成功几率',
  `general` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机会概要',
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户联系人',
  `contact_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户联系人电话',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '销售机会创建人',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '销售机会创建时间',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售机会的状态',
  `comp_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_opportunity
-- ----------------------------
INSERT INTO `sale_opportunity` VALUES (2, 1, '客户主动询价', '70', '这是销售机会概要', '李建新', '17857309089', 1, '2019-12-16 19:26:43', '合同/订单签订', 1);
INSERT INTO `sale_opportunity` VALUES (3, 1, '拓展市场业务', '80', '这是销售机会概要', '李建新', '17857309089', 1, '2019-12-12 11:21:44', '需求分析', 1);
INSERT INTO `sale_opportunity` VALUES (5, 1, '拓展市场业务', '70', '这是销售机会概要', '李建新', '17857309089', 1, '2019-12-12 11:21:45', '已报价', 1);
INSERT INTO `sale_opportunity` VALUES (30, 4, '广告', '80', '关于采购电脑', '李建新', '17857309089', 1, '2019-12-27 11:03:34', '合同/订单签订', 1);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务的类型(数据字典)',
  `general` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务的概要',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '客户id',
  `emergency` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '服务紧急程度(数据字典)',
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务状态0为未处理，1为成功处理',
  `request` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '客户请求内容',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '服务的创建时间',
  `handler_time` timestamp(0) NULL DEFAULT NULL COMMENT '服务的处理时间',
  `handle_result` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '服务的处理结果',
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户对服务的满意度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (24, '咨询', '询问商品价格', 1, '加急', '1888888888', '0', '客户对于价钱有异议', '2019-11-21 17:55:23', '2019-11-23 00:00:00', '价格降了1', '满意');

SET FOREIGN_KEY_CHECKS = 1;
