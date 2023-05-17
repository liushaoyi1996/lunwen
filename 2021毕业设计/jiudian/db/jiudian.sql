/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : jiudian

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2021-06-03 12:27:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `psw` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for canteen
-- ----------------------------
DROP TABLE IF EXISTS `canteen`;
CREATE TABLE `canteen` (
  `id` int(11) NOT NULL auto_increment,
  `sum` varchar(4) NOT NULL COMMENT '房间号码',
  `type` int(2) default NULL COMMENT '餐厅类型0小1中2大3小宴会4大宴会',
  `level` int(2) default NULL COMMENT '等级0经济1普通2商务3豪华',
  `style` int(5) default NULL COMMENT '装饰类型0普通1中式2欧式3典雅4简约5奢华',
  `size` int(255) default NULL,
  `ps` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of canteen
-- ----------------------------
INSERT INTO `canteen` VALUES ('5', '9998', '1', '1', '1', '5', '5');

-- ----------------------------
-- Table structure for carte
-- ----------------------------
DROP TABLE IF EXISTS `carte`;
CREATE TABLE `carte` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(55) default NULL COMMENT '菜名',
  `money` varchar(25) default NULL COMMENT '价格',
  `type` varchar(6) default NULL COMMENT '类型 菜肴0 汤1 甜品2 饮品3',
  `taste` varchar(25) default NULL COMMENT '口味',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carte
-- ----------------------------
INSERT INTO `carte` VALUES ('4', '雪泥豆沙', '102', '2', '甜');
INSERT INTO `carte` VALUES ('5', '红烧肉', '55', '0', '甜');
INSERT INTO `carte` VALUES ('6', '麻婆豆腐', '16', '0', '辣');
INSERT INTO `carte` VALUES ('7', '紫菜蛋花汤', '9', '1', '咸鲜');
INSERT INTO `carte` VALUES ('8', '酸梅汤', '12', '3', '酸甜');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  `sex` varchar(2) default NULL,
  `number` varchar(20) default NULL,
  `phone` varchar(16) default NULL,
  `ps` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('4', '888', '1', '888', '888', '888');
INSERT INTO `client` VALUES ('5', '8889', '0', '111', '111', '111');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(12) NOT NULL auto_increment,
  `sum` varchar(12) default NULL COMMENT '房间',
  `date` datetime default NULL COMMENT '日期',
  `discount` varchar(10) default NULL COMMENT '折扣',
  `money` varchar(16) default NULL,
  `money1` varchar(16) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', '1001', '2021-05-04 22:10:43', '55', '111', '55');
INSERT INTO `dingdan` VALUES ('2', '5555', '2021-05-04 00:00:00', '100', '200', '');
INSERT INTO `dingdan` VALUES ('3', '5555', '2021-05-04 00:00:00', '55', '55', '55');
INSERT INTO `dingdan` VALUES ('4', '101010', '2021-05-12 00:00:00', '10101', '111', '111');

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent` (
  `id` int(11) NOT NULL auto_increment,
  `sum` varchar(4) default NULL COMMENT '房间号',
  `name` varchar(12) default NULL COMMENT '顾客姓名',
  `number` varchar(16) default NULL COMMENT '顾客身份证号码',
  `phone` varchar(16) default NULL COMMENT '顾客手机号',
  `reserve_day` date default NULL COMMENT '预定时间',
  `check_day1` date default NULL COMMENT '入住日期',
  `check_day2` date default NULL COMMENT '离开日期',
  `money` varchar(12) default NULL COMMENT '押金',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('9', '1001', '张大炮', '231', '321', '2021-03-16', '2021-03-23', '2021-03-23', '105');
INSERT INTO `indent` VALUES ('10', '1001', '张大炮', '231', '321', '2021-03-16', '2021-03-23', '2021-03-23', '105');
INSERT INTO `indent` VALUES ('11', '1001', '张大炮', '231', '321', '2021-03-16', '2021-03-23', '2021-03-23', '105');
INSERT INTO `indent` VALUES ('12', '5000', '111', '222', '1', '2021-03-01', '2021-03-31', '2021-03-31', '555');
INSERT INTO `indent` VALUES ('14', '9', '9', '9', '9', null, '2021-05-04', '2021-05-10', '5');
INSERT INTO `indent` VALUES ('15', '9999', 'aaaa', '111', '111111', null, '2021-05-04', '2021-05-05', '555');
INSERT INTO `indent` VALUES ('16', '1111', '111', '111', '111', null, '2021-05-07', '2021-04-16', '1010');
INSERT INTO `indent` VALUES ('17', '7777', '1010101', '10101', '000', null, '2021-05-04', '2021-05-05', '101010');
INSERT INTO `indent` VALUES ('18', '9999', '101', '1010', '1010', null, '2021-05-05', '2021-05-21', '111');
INSERT INTO `indent` VALUES ('19', '7777', '7777', '7777', '7777', null, '2021-05-21', '2021-05-28', '10');

-- ----------------------------
-- Table structure for kefang
-- ----------------------------
DROP TABLE IF EXISTS `kefang`;
CREATE TABLE `kefang` (
  `id` int(11) NOT NULL auto_increment,
  `sum` varchar(4) NOT NULL COMMENT '房间号码',
  `money` varchar(12) default '' COMMENT '价格',
  `type` int(2) default NULL COMMENT '房间类型（大床）',
  `window` int(2) default NULL COMMENT '窗户',
  `clean` int(2) default NULL COMMENT '清洁状态',
  `level` int(2) default NULL COMMENT '房间高级等级',
  `size` int(5) default NULL COMMENT '房间大小',
  PRIMARY KEY  (`id`,`sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kefang
-- ----------------------------
INSERT INTO `kefang` VALUES ('21', '1000', '40', '0', '0', '0', '1', '1');
INSERT INTO `kefang` VALUES ('22', '9999', '6000', '4', '4', '0', '4', '999');
INSERT INTO `kefang` VALUES ('23', '2001', '100', '1', '2', '0', '2', '50');
INSERT INTO `kefang` VALUES ('25', '9988', '9899', '0', '0', '0', '0', '1000');
INSERT INTO `kefang` VALUES ('26', '1005', '22', '0', '1', '0', '0', '22');
INSERT INTO `kefang` VALUES ('27', '1001', '10', '0', '0', '0', '0', '10');
INSERT INTO `kefang` VALUES ('28', '5555', '5', '0', '0', '0', '0', '111');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) default NULL COMMENT '员工姓名',
  `sex` varchar(4) default NULL COMMENT '性别',
  `year` varchar(4) default NULL COMMENT '年龄',
  `number` varchar(20) default NULL COMMENT '身份证号',
  `type` varchar(4) default NULL COMMENT '职业',
  `branch` varchar(4) default NULL COMMENT '部门',
  `birthday` date default NULL,
  `phone` varchar(16) default NULL COMMENT '手机号',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('2', '10', '0', '11', '0', '5', '0', '2021-01-01', '5');
INSERT INTO `person` VALUES ('4', '啊', '0', '', '', '6', '0', '2021-03-11', '5');
INSERT INTO `person` VALUES ('14', '啊', '0', '', '', '0', '0', '2021-03-21', '6');
INSERT INTO `person` VALUES ('15', 'a', '', '111', '', '', '', '2021-03-21', '');
INSERT INTO `person` VALUES ('16', '99', '0', '9', '9', '0', '0', '2021-03-02', '99');
INSERT INTO `person` VALUES ('18', '1111', '', '', '', '', '1', null, '');

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve` (
  `id` int(11) NOT NULL auto_increment,
  `sum` varchar(4) default NULL COMMENT '房间号',
  `name` varchar(12) default NULL COMMENT '顾客姓名',
  `number` varchar(16) default NULL COMMENT '顾客身份证号码',
  `phone` varchar(16) default NULL COMMENT '顾客手机号',
  `reserve_day` date default NULL COMMENT '预定时间',
  `check_day1` date default NULL COMMENT '入住日期',
  `check_day2` date default NULL COMMENT '离开日期',
  `money` varchar(12) default NULL COMMENT '押金',
  `status` varchar(4) default '' COMMENT '入住状态0/1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES ('1', '1000', '张小炮', '230', '123', '2021-03-23', '2021-03-24', '2021-03-25', '100', '1');
INSERT INTO `reserve` VALUES ('2', '1001', '张大炮', '231', '321', '2021-03-16', '2021-03-23', '2021-03-23', '105', '1');
INSERT INTO `reserve` VALUES ('3', '5000', '111', '222', '1', '2021-03-01', '2021-03-31', '2021-03-31', '555', '1');
INSERT INTO `reserve` VALUES ('4', '5', '5', '5', '5', '2021-05-18', '2021-05-03', '2021-05-17', '5', '1');
INSERT INTO `reserve` VALUES ('5', '5', '6', '6', '6', '2021-05-03', '2021-05-03', '2021-05-03', '6', '0');
INSERT INTO `reserve` VALUES ('6', '5', null, null, null, null, null, null, null, '0');
INSERT INTO `reserve` VALUES ('7', '5', null, null, null, null, null, null, null, '0');
INSERT INTO `reserve` VALUES ('9', '5', null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(12) default NULL,
  `psw` varchar(12) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1');
INSERT INTO `user` VALUES ('2', '2', '2');
INSERT INTO `user` VALUES ('3', '3', '3');
INSERT INTO `user` VALUES ('4', '111', '111');
