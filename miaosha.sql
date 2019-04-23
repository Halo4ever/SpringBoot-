/*
Navicat MySQL Data Transfer

Source Server         : dbgirl
Source Server Version : 50636
Source Host           : 127.0.0.1:3307
Source Database       : miaosha

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2019-04-23 19:19:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `sales` int(11) DEFAULT '0',
  `img_url` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('2', 'iphone99', '2', 'It\'s a good iphone', '166', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=753639754,3710547451&fm=27&gp=0.jpg');
INSERT INTO `item` VALUES ('17', 'iphone', '2000', 'beatiful', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=753639754,3710547451&fm=27&gp=0.jpg');
INSERT INTO `item` VALUES ('18', 'iphone', '2000', 'beatiful', '54', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=753639754,3710547451&fm=27&gp=0.jpg');

-- ----------------------------
-- Table structure for `item_stock`
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES ('1', '0', '0');
INSERT INTO `item_stock` VALUES ('2', '185', '2');
INSERT INTO `item_stock` VALUES ('3', '20', '3');
INSERT INTO `item_stock` VALUES ('4', '123', '4');
INSERT INTO `item_stock` VALUES ('5', '123', '5');
INSERT INTO `item_stock` VALUES ('6', '2000', '6');
INSERT INTO `item_stock` VALUES ('7', '200', '7');
INSERT INTO `item_stock` VALUES ('8', '200', '8');
INSERT INTO `item_stock` VALUES ('9', '22', '9');
INSERT INTO `item_stock` VALUES ('10', '22', '10');
INSERT INTO `item_stock` VALUES ('11', '22', '11');
INSERT INTO `item_stock` VALUES ('12', '22', '12');
INSERT INTO `item_stock` VALUES ('13', '20', '13');
INSERT INTO `item_stock` VALUES ('14', '20', '14');
INSERT INTO `item_stock` VALUES ('15', '200', '15');
INSERT INTO `item_stock` VALUES ('16', '200', '16');
INSERT INTO `item_stock` VALUES ('17', '193', '17');
INSERT INTO `item_stock` VALUES ('18', '183', '18');
INSERT INTO `item_stock` VALUES ('19', '20', '19');
INSERT INTO `item_stock` VALUES ('20', '2121', '20');
INSERT INTO `item_stock` VALUES ('21', '2', '21');
INSERT INTO `item_stock` VALUES ('22', '2', '22');
INSERT INTO `item_stock` VALUES ('23', '2', '23');

-- ----------------------------
-- Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` varchar(32) COLLATE utf8_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_price` double DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `order_price` double DEFAULT NULL,
  `promo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('2019042300000000', '12', '18', '2000', '1', '2000', null);
INSERT INTO `order_info` VALUES ('2019042300000100', '12', '18', '2000', '1', '2000', null);
INSERT INTO `order_info` VALUES ('2019042300000200', '12', '18', '2000', '1', '2000', null);
INSERT INTO `order_info` VALUES ('2019042300000300', '12', '18', '2000', '1', '2000', null);
INSERT INTO `order_info` VALUES ('2019042300000400', '12', '18', '2000', '1', '2000', null);
INSERT INTO `order_info` VALUES ('2019042300000500', '12', '18', '2000', '1', '2000', null);
INSERT INTO `order_info` VALUES ('2019042300000600', '12', '18', '2000', '1', '2000', null);
INSERT INTO `order_info` VALUES ('2019042300000700', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300000800', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300000900', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300001000', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300001100', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300001200', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300001300', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300001400', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300001500', '12', '2', '2', '1', '2', null);
INSERT INTO `order_info` VALUES ('2019042300001600', '12', '2', '2', '1', '2', null);

-- ----------------------------
-- Table structure for `promo`
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `promo_name` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `promo_item_price` double DEFAULT NULL,
  `end_date` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES ('0', 'iphone4抢购活动', '2019-04-23 19:10:00', '2', '100', '2019-04-28 10:00:00');

-- ----------------------------
-- Table structure for `sequence_info`
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info` (
  `name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL DEFAULT '',
  `current_value` int(11) DEFAULT '0',
  `step` int(11) DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
INSERT INTO `sequence_info` VALUES ('order_info', '17', '1');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `gender` tinyint(4) DEFAULT '0' COMMENT '//1代表男性，2代表女性',
  `age` int(11) DEFAULT NULL,
  `telphone` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `register_mode` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL COMMENT '//byphone,bywechar,byalipay',
  `third_party_id` varchar(64) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `passwordUnique` (`telphone`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '123', '1', '20', '13055405459', 'byphone', null);
INSERT INTO `user_info` VALUES ('2', '123456', '1', '1', '123456789', 'byphone', null);
INSERT INTO `user_info` VALUES ('4', '123', '1', '1', '123456', 'byphone', null);
INSERT INTO `user_info` VALUES ('5', '1', '1', '1', '12345678914', 'byphone', null);
INSERT INTO `user_info` VALUES ('6', '123', '1', '20', '18665515665', 'byphone', null);
INSERT INTO `user_info` VALUES ('7', '1', '1', '20', '111', 'byphone', null);
INSERT INTO `user_info` VALUES ('8', 'halo', '1', '20', '1111', 'byphone', null);
INSERT INTO `user_info` VALUES ('9', '123', '1', '20', '11111', 'byphone', null);
INSERT INTO `user_info` VALUES ('10', '123', '1', '20', '222222222222', 'byphone', null);
INSERT INTO `user_info` VALUES ('11', '123', '1', '20', '88888', 'byphone', null);
INSERT INTO `user_info` VALUES ('12', '123', '1', '20', '328087786', 'byphone', null);

-- ----------------------------
-- Table structure for `user_password`
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) COLLATE utf8_unicode_520_ci DEFAULT '''''',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of user_password
-- ----------------------------
INSERT INTO `user_password` VALUES ('1', 'xMpCOKC5I4INzFCab3WEmw==', null);
INSERT INTO `user_password` VALUES ('2', 'xMpCOKC5I4INzFCab3WEmw==', null);
INSERT INTO `user_password` VALUES ('3', 'ICy5YqxZB1uWSwcVLSNLcA==', null);
INSERT INTO `user_password` VALUES ('4', 'xMpCOKC5I4INzFCab3WEmw==', null);
INSERT INTO `user_password` VALUES ('5', 'xMpCOKC5I4INzFCab3WEmw==', null);
INSERT INTO `user_password` VALUES ('6', '4QrcOUm6Wau+VuBX8g+IPg==', null);
INSERT INTO `user_password` VALUES ('7', '4QrcOUm6Wau+VuBX8g+IPg==', null);
INSERT INTO `user_password` VALUES ('8', 'ICy5YqxZB1uWSwcVLSNLcA==', null);
INSERT INTO `user_password` VALUES ('9', '4QrcOUm6Wau+VuBX8g+IPg==', null);
INSERT INTO `user_password` VALUES ('10', 'ICy5YqxZB1uWSwcVLSNLcA==', null);
INSERT INTO `user_password` VALUES ('11', 'ICy5YqxZB1uWSwcVLSNLcA==', '11');
INSERT INTO `user_password` VALUES ('12', 'ICy5YqxZB1uWSwcVLSNLcA==', '12');
