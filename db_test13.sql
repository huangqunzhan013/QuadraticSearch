/*
Navicat MySQL Data Transfer

Source Server         : Database
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : db_test13

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-06-30 16:20:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_grade`
-- ----------------------------
DROP TABLE IF EXISTS `tb_grade`;
CREATE TABLE `tb_grade` (
  `xh` char(2) NOT NULL COMMENT '学号',
  `km` varchar(10) NOT NULL COMMENT '科目',
  `cj` int(11) NOT NULL COMMENT '成绩',
  PRIMARY KEY (`xh`,`km`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_grade
-- ----------------------------
INSERT INTO `tb_grade` VALUES ('01', '数学', '90');
INSERT INTO `tb_grade` VALUES ('01', '语文', '70');
INSERT INTO `tb_grade` VALUES ('02', '数学', '85');
INSERT INTO `tb_grade` VALUES ('02', '语文', '90');
INSERT INTO `tb_grade` VALUES ('03', '数学', '84');
INSERT INTO `tb_grade` VALUES ('03', '语文', '77');
INSERT INTO `tb_grade` VALUES ('04', '数学', '90');
INSERT INTO `tb_grade` VALUES ('04', '语文', '99');
INSERT INTO `tb_grade` VALUES ('05', '数学', '67');
INSERT INTO `tb_grade` VALUES ('05', '语文', '70');
INSERT INTO `tb_grade` VALUES ('06', '数学', '78');
INSERT INTO `tb_grade` VALUES ('06', '语文', '88');
INSERT INTO `tb_grade` VALUES ('07', '数学', '100');
INSERT INTO `tb_grade` VALUES ('07', '语文', '99');
INSERT INTO `tb_grade` VALUES ('08', '数学', '55');
INSERT INTO `tb_grade` VALUES ('08', '语文', '90');
INSERT INTO `tb_grade` VALUES ('09', '数学', '30');
INSERT INTO `tb_grade` VALUES ('09', '语文', '40');
INSERT INTO `tb_grade` VALUES ('10', '数学', '97');
INSERT INTO `tb_grade` VALUES ('10', '语文', '87');

-- ----------------------------
-- Table structure for `tb_stuinf`
-- ----------------------------
DROP TABLE IF EXISTS `tb_stuinf`;
CREATE TABLE `tb_stuinf` (
  `xh` char(2) NOT NULL COMMENT '学号',
  `xm` varchar(10) NOT NULL COMMENT '姓名',
  `s_class` varchar(10) NOT NULL COMMENT '班级',
  PRIMARY KEY (`xh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_stuinf
-- ----------------------------
INSERT INTO `tb_stuinf` VALUES ('01', '小陈', '1201');
INSERT INTO `tb_stuinf` VALUES ('02', '小李', '1202');
INSERT INTO `tb_stuinf` VALUES ('03', '小张', '1201');
INSERT INTO `tb_stuinf` VALUES ('04', '小王', '1202');
INSERT INTO `tb_stuinf` VALUES ('05', '小何', '1201');
INSERT INTO `tb_stuinf` VALUES ('07', '小明', '1201');
INSERT INTO `tb_stuinf` VALUES ('08', '小红', '1202');
INSERT INTO `tb_stuinf` VALUES ('09', '小林', '1203');
INSERT INTO `tb_stuinf` VALUES ('10', '小花', '1203');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('tom', '123');
