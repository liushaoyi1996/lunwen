/*
Navicat MySQL Data Transfer

Source Server         : mysqlTest
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mobilesell

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-03-26 10:08:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `mobileid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ee72sovfnd3vmocchnnnd1g88` (`mobileid`),
  CONSTRAINT `FK_ee72sovfnd3vmocchnnnd1g88` FOREIGN KEY (`mobileid`) REFERENCES `mobile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carts
-- ----------------------------

-- ----------------------------
-- Table structure for cartvo
-- ----------------------------
DROP TABLE IF EXISTS `cartvo`;
CREATE TABLE `cartvo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartvo
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '华为');
INSERT INTO `category` VALUES ('2', '小米');
INSERT INTO `category` VALUES ('3', '苹果');

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(2555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES ('1', '今日手机购买将会有特大优惠，注意光顾，谢谢各位1111');

-- ----------------------------
-- Table structure for mobile
-- ----------------------------
DROP TABLE IF EXISTS `mobile`;
CREATE TABLE `mobile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `categoryid` bigint(20) DEFAULT NULL,
  `cartid` bigint(20) DEFAULT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `hotsell` int(11) DEFAULT NULL,
  `lowprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7v1jaqytig943eh9fd3ru7gd9` (`categoryid`),
  KEY `FK_3nqhap4fghq01p9jj2lwqlkhj` (`cartid`),
  KEY `FK_rwrxh7uiliuenddogkce67g6v` (`cart_id`),
  CONSTRAINT `FK_3nqhap4fghq01p9jj2lwqlkhj` FOREIGN KEY (`cartid`) REFERENCES `carts` (`id`),
  CONSTRAINT `FK_7v1jaqytig943eh9fd3ru7gd9` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_rwrxh7uiliuenddogkce67g6v` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobile
-- ----------------------------
INSERT INTO `mobile` VALUES ('1', '华为', 'nova3', '2999', '1', null, null, '1', '0');
INSERT INTO `mobile` VALUES ('2', '华为', 'p10', '4999', '1', null, null, '0', '1');
INSERT INTO `mobile` VALUES ('3', '小米', '6x', '3500', '2', null, null, '0', '0');
INSERT INTO `mobile` VALUES ('4', '小米', '8x', '5000', '2', null, null, '1', '0');
INSERT INTO `mobile` VALUES ('5', '苹果', 'iphone7', '5999', '3', null, null, '0', '1');
INSERT INTO `mobile` VALUES ('6', '苹果', 'iphone7 plus', '8000', '3', null, null, '0', '1');
INSERT INTO `mobile` VALUES ('7', '华为', 'xx', '11111', '1', null, null, '0', '0');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `haibao` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `onsell` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(2555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '“苹果滞销 救救库克”，这个男人带领下的苹果公司，似乎陷入了iPhone销售困局当中。低迷的市场表现，让苹果对旗下的iPhone不断进行价格调整，媒体指出苹果从开年到现在至少已经做了三次降价调整，包括iPhone XS、XS Max以及iPhone XR这三款去年9月发布的新iPhone。\r\n\r\niPhone XR\r\niPhone XR\r\n\r\n　　那么降价后的iPhone真的有人买吗？综合各大电商给出的数据：从1月11日第一轮价格调整开始到1月30日，苏宁易购的iPhone销量增长83%；天猫随后在1月13日进行价格调整后，截至1月29日，iPhone销量飙升76%；此外，自3月5日iPhone启动第三轮降价以来，截至3月7日12点，iPhone在天猫整体销量环比提升150%，其中iPhone XS Max销量环比足足提升230%。\r\n\r\n图源网\r\n图源网\r\n\r\n　　从苏宁到天猫等主流电商，再到拼多多等新崛起的主打低价的平台，iPhone的降价引发了一波抢购狂潮。对于许多持币观望的用户而言，下探到5000元和7000元档位的iPhone XR和iPhone XS，以及突破4000元底线的iPhone 8，吸引力相比降价前大幅加强。和价格差不多的国产高端旗舰机，这部分人更愿意购买iPhone。至于iPhone降价能否产生长远影响，还需要观察。');
INSERT INTO `news` VALUES ('2', '对于一款手机产品而言，获得红点设计奖或者iF设计奖等权威设计奖项，是一种对工业设计的褒奖。今天早上，@小米手机  官微发布微博，宣布小米8透明探索版和小米MIX 3荣获2019红点设计奖！小米官方表示，两款年度旗舰以各自开创性的设计和体验，为每个人的科技生活带来全新灵感。\r\n\r\n小米8透明探索版获红点设计奖\r\n小米8透明探索版获红点设计奖\r\n\r\n小米MIX 3获红点设计奖\r\n小米MIX 3获红点设计奖\r\n\r\n　　在微博图片中，小米官方对两款手机的设计进行了解析。小米8透明探索版是全球首款压感屏幕指纹及双频GPS手机，独特的“透明设计”使手机内部科技感十足的精密元器件一览无余。小米MIX 3开创性的磁动力滑盖全面屏，巧妙地将前置双摄放到屏幕后方，为极致全面屏和前置摄像头的共存提出了新的设计方向。\r\n');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'nova3', '2', '2999', '1');
INSERT INTO `orders` VALUES ('2', 'iphone7', '1', '5999', '0');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` date DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `time` time DEFAULT NULL,
  `movieid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7jrt9q059a6wn9wdkc3jh1xqq` (`movieid`),
  CONSTRAINT `FK_7jrt9q059a6wn9wdkc3jh1xqq` FOREIGN KEY (`movieid`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flag` int(11) DEFAULT NULL,
  `seatnum` bigint(20) DEFAULT NULL,
  `scheduleid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qki0bowoh1nlomh3jntwoun06` (`scheduleid`),
  CONSTRAINT `FK_qki0bowoh1nlomh3jntwoun06` FOREIGN KEY (`scheduleid`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seat
-- ----------------------------

-- ----------------------------
-- Table structure for snack
-- ----------------------------
DROP TABLE IF EXISTS `snack`;
CREATE TABLE `snack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `haibao` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snack
-- ----------------------------

-- ----------------------------
-- Table structure for snackorder
-- ----------------------------
DROP TABLE IF EXISTS `snackorder`;
CREATE TABLE `snackorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snackorder
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `connect` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `user_Address` varchar(255) DEFAULT NULL,
  `user_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
