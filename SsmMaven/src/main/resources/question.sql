/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云
Source Server Version : 50626
Source Host           : 123.207.155.110:3306
Source Database       : question

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-04-22 00:09:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '答案id',
  `randomuserid` int(10) unsigned DEFAULT NULL COMMENT '匿名用户的id',
  `qid` int(11) DEFAULT NULL COMMENT '问卷id',
  `aresult` varchar(255) DEFAULT NULL COMMENT 'json格式的答案',
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `tid` int(11) DEFAULT NULL COMMENT '问题的id',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answers
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `Mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Mname` varchar(255) DEFAULT NULL,
  `Mpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '问题id',
  `qid` int(11) DEFAULT NULL COMMENT '问卷编号',
  `tname` varchar(255) DEFAULT NULL COMMENT '题目名称',
  `type` int(11) DEFAULT NULL COMMENT '题目类型 1是单选  2是多选 3是问答题',
  `option` varchar(255) DEFAULT NULL COMMENT '选项',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '3', '问题1', '1', '[\"我是傻逼么？\"]');
INSERT INTO `question` VALUES ('2', '3', '问题2', '1', '[\"我是不是傻逼么？\"]');
INSERT INTO `question` VALUES ('3', '3', '问题3', '1', '[\"我是智障么？\"]');
INSERT INTO `question` VALUES ('23', '29', '问题1', '1', '[\"我是傻逼么？\"]');
INSERT INTO `question` VALUES ('24', '29', '问题2', '1', '[\"我是不是傻逼么？\"]');
INSERT INTO `question` VALUES ('25', '29', '问题3', '1', '[\"我是智障么？\"]');

-- ----------------------------
-- Table structure for questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qname` varchar(255) DEFAULT NULL COMMENT '问卷名称',
  `quid` int(255) DEFAULT NULL COMMENT '问卷作者id',
  `qstartDate` datetime NOT NULL COMMENT '开始日期',
  `qendDate` datetime NOT NULL COMMENT '结束日期',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '如果为1则为正常，为0的话是在垃圾桶里边',
  `sum` int(11) DEFAULT NULL COMMENT '答卷的个数',
  `release` int(11) NOT NULL DEFAULT '0' COMMENT '是否发布出来  1为发布出来  0 为未发布',
  `info` varchar(255) DEFAULT NULL COMMENT '问卷的介绍',
  PRIMARY KEY (`qid`),
  UNIQUE KEY `qname` (`qname`,`quid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------
INSERT INTO `questionnaire` VALUES ('2', '垃圾桶', '1', '2018-04-04 23:47:03', '2018-04-21 23:47:07', '0', null, '0', null);
INSERT INTO `questionnaire` VALUES ('3', '222', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('4', '列表数据', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('5', '2223867', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('6', '2226532', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('7', '2228460', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('8', '列表数据3892', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('9', '列表数据2625', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('10', '列表数据9293', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('11', '2227766', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('12', '2221896', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('13', '2223453', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('14', '列表数据3138', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('15', '2221356', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('16', '2223861', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('17', '2226970', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('18', '2221958', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('19', '2221529', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('20', '2225665', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('21', '2226615', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('22', '2223185', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('23', '2225256', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('24', '2221857', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('25', '2223434', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('26', '2228423', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('27', '2228875', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('28', '2223337', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);
INSERT INTO `questionnaire` VALUES ('29', '2228055', '1', '2018-03-23 14:02:35', '2018-04-21 14:02:38', '1', null, '0', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) DEFAULT NULL COMMENT '用户名',
  `upassword` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话',
  `head` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像（存url）',
  `qq` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'qq',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `Uname` (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
