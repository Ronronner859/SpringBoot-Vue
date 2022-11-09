/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : question-project

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 25/07/2021 09:17:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer_paper
-- ----------------------------
DROP TABLE IF EXISTS `answer_paper`;
CREATE TABLE `answer_paper`  (
  `answer_paper_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '试题id',
  `openid` varchar(164) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '答题人id',
  `paper_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '1:单选题 2：多选题 3：单文本 4：多文本',
  `paper_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '答案',
  PRIMARY KEY (`answer_paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_paper
-- ----------------------------
INSERT INTO `answer_paper` VALUES (61, 95, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '261');
INSERT INTO `answer_paper` VALUES (62, 96, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '266');
INSERT INTO `answer_paper` VALUES (63, 97, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '267');
INSERT INTO `answer_paper` VALUES (64, 98, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '270');
INSERT INTO `answer_paper` VALUES (65, 99, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '2', '273,274,275');
INSERT INTO `answer_paper` VALUES (66, 71, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '174');
INSERT INTO `answer_paper` VALUES (67, 72, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '177');
INSERT INTO `answer_paper` VALUES (68, 73, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '179');
INSERT INTO `answer_paper` VALUES (69, 74, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '4', '建议搞好卫生');
INSERT INTO `answer_paper` VALUES (70, 100, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '280');
INSERT INTO `answer_paper` VALUES (71, 101, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '282');
INSERT INTO `answer_paper` VALUES (72, 102, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '286');
INSERT INTO `answer_paper` VALUES (73, 103, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '1', '288');

-- ----------------------------
-- Table structure for answer_paper_choice
-- ----------------------------
DROP TABLE IF EXISTS `answer_paper_choice`;
CREATE TABLE `answer_paper_choice`  (
  `answer_choice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chioce_id` int(11) NULL DEFAULT NULL COMMENT '选项id',
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '试题id',
  `openid` varchar(164) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '答题人',
  PRIMARY KEY (`answer_choice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_paper_choice
-- ----------------------------
INSERT INTO `answer_paper_choice` VALUES (64, 261, 95, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (65, 266, 96, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (66, 267, 97, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (67, 270, 98, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (68, 273, 99, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (69, 274, 99, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (70, 275, 99, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (71, 174, 71, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (72, 177, 72, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (73, 179, 73, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (74, 280, 100, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (75, 282, 101, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (76, 286, 102, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');
INSERT INTO `answer_paper_choice` VALUES (77, 288, 103, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro');

-- ----------------------------
-- Table structure for answer_question
-- ----------------------------
DROP TABLE IF EXISTS `answer_question`;
CREATE TABLE `answer_question`  (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '问卷id',
  `openid` varchar(164) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '小程序openid',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`answer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_question
-- ----------------------------
INSERT INTO `answer_question` VALUES (14, 1, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '2021-07-25 08:18:36');
INSERT INTO `answer_question` VALUES (15, 3, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '2021-07-25 08:19:05');
INSERT INTO `answer_question` VALUES (16, 4, 'ok-u55d9l9iOTTwm2T3qT2P1Xuro', '2021-07-25 08:19:30');

-- ----------------------------
-- Table structure for sys_paper
-- ----------------------------
DROP TABLE IF EXISTS `sys_paper`;
CREATE TABLE `sys_paper`  (
  `paper_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '问卷id',
  `paper_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '试卷标题',
  `paper_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '试题类型 1：单选题  2：问答题',
  `paper_order` int(255) NULL DEFAULT NULL COMMENT '试卷序号',
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_paper
-- ----------------------------
INSERT INTO `sys_paper` VALUES (71, 3, '您对学校食堂饭、菜的数量满意吗？', '1', 1);
INSERT INTO `sys_paper` VALUES (72, 3, '您对学校食堂的卫生满意吗？', '1', 2);
INSERT INTO `sys_paper` VALUES (73, 3, '您对学校食堂服务员态度满意吗？', '1', 3);
INSERT INTO `sys_paper` VALUES (74, 3, '请填写您的建议和意见？', '4', 4);
INSERT INTO `sys_paper` VALUES (81, 5, '您对所学专业所涵盖课程', '1', 1);
INSERT INTO `sys_paper` VALUES (82, 5, '您对所学专业所使用教材', '1', 2);
INSERT INTO `sys_paper` VALUES (83, 5, '您对学院的教学设施(如多媒体)满意吗？', '1', 3);
INSERT INTO `sys_paper` VALUES (84, 5, '您对学校图书馆的设备(如检索系统和数据库)满意吗？', '1', 4);
INSERT INTO `sys_paper` VALUES (85, 5, '您对专题学术讲座的满意度如何？', '1', 5);
INSERT INTO `sys_paper` VALUES (86, 5, '您对学校师资力量的满意度如何？', '1', 6);
INSERT INTO `sys_paper` VALUES (95, 1, '您的性别?', '1', 1);
INSERT INTO `sys_paper` VALUES (96, 1, '您所在的年级？', '1', 2);
INSERT INTO `sys_paper` VALUES (97, 1, '您注重饮食的营养搭配吗?', '1', 3);
INSERT INTO `sys_paper` VALUES (98, 1, '您是否了解各类食品的营养价值 ？', '1', 4);
INSERT INTO `sys_paper` VALUES (99, 1, '您早餐一般吃什么？', '2', 5);
INSERT INTO `sys_paper` VALUES (100, 4, '您的性别是', '1', 1);
INSERT INTO `sys_paper` VALUES (101, 4, '您的年级是？', '1', 2);
INSERT INTO `sys_paper` VALUES (102, 4, '您所在的专业是？', '1', 3);
INSERT INTO `sys_paper` VALUES (103, 4, '您认为隐性逃课对成绩影响程度如何？', '1', 4);
INSERT INTO `sys_paper` VALUES (109, 6, '你的性别？', '1', 1);
INSERT INTO `sys_paper` VALUES (110, 6, '你所在的年级？', '1', 2);
INSERT INTO `sys_paper` VALUES (111, 6, '你平均每个月大约消费多少元？', '1', 3);
INSERT INTO `sys_paper` VALUES (112, 6, '你期望的消费每个月大约多少元？', '1', 4);
INSERT INTO `sys_paper` VALUES (113, 6, '你一般消费花费在哪些方面?', '2', 5);
INSERT INTO `sys_paper` VALUES (114, 6, '你日常一般在哪里用餐？', '1', 6);
INSERT INTO `sys_paper` VALUES (115, 6, '你一般在哪里买服饰？', '1', 7);
INSERT INTO `sys_paper` VALUES (116, 6, '你购物是一般考虑哪些因素？', '2', 8);
INSERT INTO `sys_paper` VALUES (117, 2, '您期望的薪资是多少？', '1', 1);
INSERT INTO `sys_paper` VALUES (118, 2, '您喜欢的城市是哪几个？', '2', 2);
INSERT INTO `sys_paper` VALUES (119, 2, '您的生日？', '3', 3);
INSERT INTO `sys_paper` VALUES (120, 2, '请做一个简单的自我介绍？', '4', 4);
INSERT INTO `sys_paper` VALUES (121, 2, '您的人生规划？', '4', 5);
INSERT INTO `sys_paper` VALUES (122, 12, '你的性别？', '1', 1);
INSERT INTO `sys_paper` VALUES (123, 12, '你对现在的工作满意吗？', '1', 2);
INSERT INTO `sys_paper` VALUES (124, 12, '您喜欢的工作是哪些？', '2', 3);
INSERT INTO `sys_paper` VALUES (125, 12, '你的生日？', '3', 4);
INSERT INTO `sys_paper` VALUES (126, 12, '简单的自我介绍？', '4', 5);
INSERT INTO `sys_paper` VALUES (132, 14, '你的性别？', '1', 1);
INSERT INTO `sys_paper` VALUES (133, 14, '你对现在的工作满意吗？', '1', 2);
INSERT INTO `sys_paper` VALUES (134, 14, '你期望的工作？', '2', 3);
INSERT INTO `sys_paper` VALUES (135, 14, '你的生日？', '3', 4);
INSERT INTO `sys_paper` VALUES (136, 14, '自我介绍？', '4', 5);

-- ----------------------------
-- Table structure for sys_paper_choice
-- ----------------------------
DROP TABLE IF EXISTS `sys_paper_choice`;
CREATE TABLE `sys_paper_choice`  (
  `chioce_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `paper_id` int(11) NULL DEFAULT NULL COMMENT '试卷id',
  `choice_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '选项内容',
  `choice_order` int(255) NULL DEFAULT NULL COMMENT '选项序号',
  PRIMARY KEY (`chioce_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 382 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_paper_choice
-- ----------------------------
INSERT INTO `sys_paper_choice` VALUES (174, 71, '满意', 1);
INSERT INTO `sys_paper_choice` VALUES (175, 71, '不满意', 2);
INSERT INTO `sys_paper_choice` VALUES (176, 71, '一般', 3);
INSERT INTO `sys_paper_choice` VALUES (177, 72, '满意', 1);
INSERT INTO `sys_paper_choice` VALUES (178, 72, '不满意', 2);
INSERT INTO `sys_paper_choice` VALUES (179, 73, '满意', 1);
INSERT INTO `sys_paper_choice` VALUES (180, 73, '不满意', 2);
INSERT INTO `sys_paper_choice` VALUES (195, 81, '很满意', 1);
INSERT INTO `sys_paper_choice` VALUES (196, 81, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (197, 81, '很不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (198, 81, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (199, 81, '一般', 5);
INSERT INTO `sys_paper_choice` VALUES (200, 82, '很满意', 1);
INSERT INTO `sys_paper_choice` VALUES (201, 82, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (202, 82, '很不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (203, 82, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (204, 82, '一般', 5);
INSERT INTO `sys_paper_choice` VALUES (205, 83, '很满意', 1);
INSERT INTO `sys_paper_choice` VALUES (206, 83, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (207, 83, '很不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (208, 83, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (209, 83, '一般', 5);
INSERT INTO `sys_paper_choice` VALUES (210, 84, '很满意', 1);
INSERT INTO `sys_paper_choice` VALUES (211, 84, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (212, 84, '很不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (213, 84, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (214, 84, '一般', 5);
INSERT INTO `sys_paper_choice` VALUES (215, 85, '很满意', 1);
INSERT INTO `sys_paper_choice` VALUES (216, 85, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (217, 85, '很不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (218, 85, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (219, 85, '一般', 5);
INSERT INTO `sys_paper_choice` VALUES (220, 86, '很满意', 1);
INSERT INTO `sys_paper_choice` VALUES (221, 86, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (222, 86, '很不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (223, 86, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (224, 86, '一般', 5);
INSERT INTO `sys_paper_choice` VALUES (261, 95, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (262, 95, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (263, 96, '大一', 1);
INSERT INTO `sys_paper_choice` VALUES (264, 96, '大二', 2);
INSERT INTO `sys_paper_choice` VALUES (265, 96, '大三', 3);
INSERT INTO `sys_paper_choice` VALUES (266, 96, '大四', 4);
INSERT INTO `sys_paper_choice` VALUES (267, 97, '一般', 1);
INSERT INTO `sys_paper_choice` VALUES (268, 97, '不重视', 2);
INSERT INTO `sys_paper_choice` VALUES (269, 97, '非常重视', 3);
INSERT INTO `sys_paper_choice` VALUES (270, 98, '很了解', 1);
INSERT INTO `sys_paper_choice` VALUES (271, 98, '不了解', 2);
INSERT INTO `sys_paper_choice` VALUES (272, 98, '一般了解', 3);
INSERT INTO `sys_paper_choice` VALUES (273, 99, '牛奶', 1);
INSERT INTO `sys_paper_choice` VALUES (274, 99, '面包', 2);
INSERT INTO `sys_paper_choice` VALUES (275, 99, '油条、豆浆', 3);
INSERT INTO `sys_paper_choice` VALUES (276, 99, '蔬菜、水果', 4);
INSERT INTO `sys_paper_choice` VALUES (277, 99, '饮料', 5);
INSERT INTO `sys_paper_choice` VALUES (278, 99, '喝粥', 6);
INSERT INTO `sys_paper_choice` VALUES (279, 99, '饼', 7);
INSERT INTO `sys_paper_choice` VALUES (280, 100, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (281, 100, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (282, 101, '大一', 1);
INSERT INTO `sys_paper_choice` VALUES (283, 101, '大二', 2);
INSERT INTO `sys_paper_choice` VALUES (284, 101, '大三', 3);
INSERT INTO `sys_paper_choice` VALUES (285, 101, '大四', 4);
INSERT INTO `sys_paper_choice` VALUES (286, 102, '文科类', 1);
INSERT INTO `sys_paper_choice` VALUES (287, 102, '理工类', 2);
INSERT INTO `sys_paper_choice` VALUES (288, 103, '完全不受影响', 1);
INSERT INTO `sys_paper_choice` VALUES (289, 103, '比较不影响', 2);
INSERT INTO `sys_paper_choice` VALUES (290, 103, '一般', 3);
INSERT INTO `sys_paper_choice` VALUES (291, 103, '比较影响', 4);
INSERT INTO `sys_paper_choice` VALUES (292, 103, '非常受影响', 5);
INSERT INTO `sys_paper_choice` VALUES (302, 109, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (303, 109, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (304, 110, '大一', 1);
INSERT INTO `sys_paper_choice` VALUES (305, 110, '大二', 2);
INSERT INTO `sys_paper_choice` VALUES (306, 110, '大三', 3);
INSERT INTO `sys_paper_choice` VALUES (307, 110, '大四', 4);
INSERT INTO `sys_paper_choice` VALUES (308, 111, '大约500元', 1);
INSERT INTO `sys_paper_choice` VALUES (309, 111, '大约1000元', 2);
INSERT INTO `sys_paper_choice` VALUES (310, 111, '大约1500元', 3);
INSERT INTO `sys_paper_choice` VALUES (311, 111, '2000元以上', 4);
INSERT INTO `sys_paper_choice` VALUES (312, 112, '大约500元', 1);
INSERT INTO `sys_paper_choice` VALUES (313, 112, '大约1000元', 2);
INSERT INTO `sys_paper_choice` VALUES (314, 112, '大约1500元', 3);
INSERT INTO `sys_paper_choice` VALUES (315, 112, '2000元以上', 4);
INSERT INTO `sys_paper_choice` VALUES (316, 113, '伙食', 1);
INSERT INTO `sys_paper_choice` VALUES (317, 113, '衣服饰品', 2);
INSERT INTO `sys_paper_choice` VALUES (318, 113, '日用品', 3);
INSERT INTO `sys_paper_choice` VALUES (319, 113, '学习', 4);
INSERT INTO `sys_paper_choice` VALUES (320, 113, '娱乐', 5);
INSERT INTO `sys_paper_choice` VALUES (321, 113, '通讯', 6);
INSERT INTO `sys_paper_choice` VALUES (322, 114, '食堂', 1);
INSERT INTO `sys_paper_choice` VALUES (323, 114, '饭店', 2);
INSERT INTO `sys_paper_choice` VALUES (324, 114, '路边小摊', 3);
INSERT INTO `sys_paper_choice` VALUES (325, 114, '外卖', 4);
INSERT INTO `sys_paper_choice` VALUES (326, 114, '其他', 5);
INSERT INTO `sys_paper_choice` VALUES (327, 115, '大型超市或百货商场', 1);
INSERT INTO `sys_paper_choice` VALUES (328, 115, '专卖店或品牌店', 2);
INSERT INTO `sys_paper_choice` VALUES (329, 115, '特色店或折扣店', 3);
INSERT INTO `sys_paper_choice` VALUES (330, 115, '路边小摊', 4);
INSERT INTO `sys_paper_choice` VALUES (331, 115, '小店', 5);
INSERT INTO `sys_paper_choice` VALUES (332, 115, '网购', 6);
INSERT INTO `sys_paper_choice` VALUES (333, 115, '其他', 7);
INSERT INTO `sys_paper_choice` VALUES (334, 116, '实用', 1);
INSERT INTO `sys_paper_choice` VALUES (335, 116, '时尚', 2);
INSERT INTO `sys_paper_choice` VALUES (336, 116, '价格', 3);
INSERT INTO `sys_paper_choice` VALUES (337, 116, '品牌', 4);
INSERT INTO `sys_paper_choice` VALUES (338, 117, '3000', 1);
INSERT INTO `sys_paper_choice` VALUES (339, 117, '5000', 2);
INSERT INTO `sys_paper_choice` VALUES (340, 117, '8000', 3);
INSERT INTO `sys_paper_choice` VALUES (341, 117, '10000及以上', 4);
INSERT INTO `sys_paper_choice` VALUES (342, 118, '北京', 1);
INSERT INTO `sys_paper_choice` VALUES (343, 118, '上海', 2);
INSERT INTO `sys_paper_choice` VALUES (344, 118, '深圳', 3);
INSERT INTO `sys_paper_choice` VALUES (345, 118, '昆明', 4);
INSERT INTO `sys_paper_choice` VALUES (346, 118, '成都', 5);
INSERT INTO `sys_paper_choice` VALUES (347, 122, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (348, 122, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (349, 123, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (350, 123, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (351, 123, '一般', 3);
INSERT INTO `sys_paper_choice` VALUES (352, 123, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (353, 123, '非常不满意', 5);
INSERT INTO `sys_paper_choice` VALUES (354, 124, '医生', 1);
INSERT INTO `sys_paper_choice` VALUES (355, 124, '教师', 2);
INSERT INTO `sys_paper_choice` VALUES (356, 124, '公务员', 3);
INSERT INTO `sys_paper_choice` VALUES (357, 124, '其他', 4);
INSERT INTO `sys_paper_choice` VALUES (370, 132, '男', 1);
INSERT INTO `sys_paper_choice` VALUES (371, 132, '女', 2);
INSERT INTO `sys_paper_choice` VALUES (372, 133, '非常满意', 1);
INSERT INTO `sys_paper_choice` VALUES (373, 133, '满意', 2);
INSERT INTO `sys_paper_choice` VALUES (374, 133, '非常不满意', 3);
INSERT INTO `sys_paper_choice` VALUES (375, 133, '不满意', 4);
INSERT INTO `sys_paper_choice` VALUES (376, 133, '一般', 5);
INSERT INTO `sys_paper_choice` VALUES (377, 134, '医生', 1);
INSERT INTO `sys_paper_choice` VALUES (378, 134, '教师', 2);
INSERT INTO `sys_paper_choice` VALUES (379, 134, '公务员', 3);
INSERT INTO `sys_paper_choice` VALUES (380, 134, '销售', 4);
INSERT INTO `sys_paper_choice` VALUES (381, 134, '软件开发', 5);

-- ----------------------------
-- Table structure for sys_question
-- ----------------------------
DROP TABLE IF EXISTS `sys_question`;
CREATE TABLE `sys_question`  (
  `question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问卷id',
  `question_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '问卷标题',
  `question_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '问卷描述',
  `question_img` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '问卷图片路径',
  `question_order` int(11) NULL DEFAULT NULL COMMENT '序号',
  `question_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态 0:停用 1：启用',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_question
-- ----------------------------
INSERT INTO `sys_question` VALUES (1, '大学生饮食情况问卷调查', '简单的调查一下大学生学习满意度简单的调查一下大学生学习满意度简单的调查一下大学生学习满意度简单的调查一下大学生学习满意度简单的调查一下大学生学习满意度', 'http://192.168.1.102:8089/images/99534cf4-aaa6-44bf-baa0-e3fb24185737.jpg', 1, '1');
INSERT INTO `sys_question` VALUES (2, '工资满意度调查', '您好！为了了解全国员工工资的满意度，我们特开展了这次满意度调查，搜集同学们的的意见和建议，本调查采取不记名方式，请您耐心填答。', 'http://192.168.1.102:8089/images/4332a2b6-b826-49c4-9ffc-91e303bd3418.jpg', 2, '1');
INSERT INTO `sys_question` VALUES (3, '学校食堂满意度调查', '您好！为了了解学生对学校食堂的满意度，我们特开展了这次满意度调查，搜集同学们的的意见和建议，本调查采取不记名方式，请您耐心填答。', 'http://192.168.1.102:8089/images/fba31dbb-1f72-42e2-94d2-fe78d20d45c3.jpg', 3, '1');
INSERT INTO `sys_question` VALUES (4, '大学生逃课问卷调查', '您好！为了了解学生对学校教学的满意度，我们特开展了这次关于大学生逃课的问卷调查，搜集同学们的的意见和建议，本调查采取不记名方式，请您耐心填答。', 'http://192.168.1.102:8089/images/d22b46f6-2981-443b-a1d0-78863544e8b6.jpg', 4, '1');
INSERT INTO `sys_question` VALUES (5, '学校教学满意度调查', '您好！为了了解学生对学校教学的满意度，我们特开展了这次满意度调查，搜集同学们的的意见和建议，本调查采取不记名方式，请您耐心填答。', 'http://192.168.1.102:8089/images/cc8a9ab8-250b-4d76-bbf1-4036d6aa5409.jpg', 5, '1');
INSERT INTO `sys_question` VALUES (6, '大学生消费观问卷调查', '您好，我是XX大学XX院的一名学生，按照我们院的教学安排，正在进行一项关于我校大学生消费观的调查，想请您用几分钟帮忙填一下这份问卷调查；本问卷实行匿名制，所有数据只用于数据分析，请您按照自己的实际情况进行填写；谢谢您的帮助！', 'http://192.168.1.102:8089/images/a034037b-9c31-4961-a1dd-3b28e11d3ead.jpg', 6, '0');
INSERT INTO `sys_question` VALUES (7, '医院服务态度满意度调查', '医院服务态度满意度调查医院服务态度满意度调查医院服务态度满意度调查医院服务态度满意度调查医院服务态度满意度调查医院服务态度满意度调查', 'http://192.168.1.102:8089/images/bb502b63-3b2f-4558-a843-10afa74cc691.jpg', 7, '1');
INSERT INTO `sys_question` VALUES (8, '医生服务态度满意度调查', '医生服务态度满意度调查医生服务态度满意度调查医生服务态度满意度调查医生服务态度满意度调查医生服务态度满意度调查医生服务态度满意度调查医生服务态度满意度调查医生服务态度满意度调查医生服务态度满意度调查', 'http://192.168.1.102:8089/images/bfe3fbd0-0b29-48e8-81dc-260cb94c39e9.jpg', 8, '1');
INSERT INTO `sys_question` VALUES (9, '教师课程满意度调查', '教师课程满意度调查教师课程满意度调查教师课程满意度调查教师课程满意度调查教师课程满意度调查教师课程满意度调查教师课程满意度调查', 'http://192.168.1.102:8089/images/0016e52c-deab-4958-890c-c20422c3a2f4.jpg', 9, '1');
INSERT INTO `sys_question` VALUES (10, '医院卫生满意度调查', '医院卫生满意度调查医院卫生满意度调查医院卫生满意度调查医院卫生满意度调查医院卫生满意度调查医院卫生满意度调查医院卫生满意度调查', 'http://192.168.1.102:8089/images/0c138a39-0925-417d-96f2-b580fc177127.jpg', 10, '1');
INSERT INTO `sys_question` VALUES (11, '医院医疗设备满意度调查', '医院医疗设备满意度调查医院医疗设备满意度调查医院医疗设备满意度调查医院医疗设备满意度调查', 'http://192.168.1.102:8089/images/d2ca9714-e218-4d22-9939-676dc06d64f6.jpg', 11, '1');
INSERT INTO `sys_question` VALUES (12, '测试调查', '测试调查测试调查测试调查测试调查测试调查', 'http://localhost:8089/images/60227357-51d0-468a-961a-ca0241670f68.jpg', 12, '1');
INSERT INTO `sys_question` VALUES (14, '测试88', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'http://localhost:8089/images/1e23f847-8ccf-446a-b4b7-75c1ced5d704.jpg', 13, '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录密码',
  `phone` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (2, 'admin', '111111', '18687116223', '3501754007@qq.com');
INSERT INTO `sys_user` VALUES (3, 'lcy', '123', '18787171906', '123@qq.com');
INSERT INTO `sys_user` VALUES (4, 'zsfzsf', '1234', '18687445663', '123@qq.com');
INSERT INTO `sys_user` VALUES (5, 'lcy1', 'lcy1', '18787195630', '123@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
