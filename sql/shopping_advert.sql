/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.168
Source Server Version : 50722
Source Host           : 192.168.1.168:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-11-26 20:28:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shopping_advert
-- ----------------------------
DROP TABLE IF EXISTS `shopping_advert`;
CREATE TABLE `shopping_advert` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addTime` datetime DEFAULT NULL,
  `deleteStatus` bit(1) NOT NULL,
  `ad_begin_time` date DEFAULT NULL,
  `ad_click_num` int(11) NOT NULL,
  `ad_end_time` date DEFAULT NULL,
  `ad_gold` int(11) NOT NULL,
  `ad_slide_sequence` int(11) NOT NULL,
  `ad_status` int(11) NOT NULL,
  `ad_text` varchar(255) DEFAULT NULL,
  `ad_title` varchar(255) DEFAULT NULL,
  `ad_url` varchar(255) DEFAULT NULL,
  `ad_acc_id` bigint(20) DEFAULT NULL,
  `ad_ap_id` bigint(20) DEFAULT NULL,
  `ad_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCECB7A255A9A4C35` (`ad_user_id`) USING BTREE,
  KEY `FKCECB7A25296B4EE3` (`ad_ap_id`) USING BTREE,
  KEY `FKCECB7A25409CE030` (`ad_acc_id`) USING BTREE,
  KEY `FKC0F968B253F6EE6` (`ad_user_id`) USING BTREE,
  KEY `FKC0F968BFBAD8854` (`ad_ap_id`) USING BTREE,
  KEY `FKC0F968B87E6C41F` (`ad_acc_id`) USING BTREE,
  CONSTRAINT `shopping_advert_ibfk_1` FOREIGN KEY (`ad_user_id`) REFERENCES `shopping_user` (`id`),
  CONSTRAINT `shopping_advert_ibfk_2` FOREIGN KEY (`ad_acc_id`) REFERENCES `shopping_accessory` (`id`),
  CONSTRAINT `shopping_advert_ibfk_3` FOREIGN KEY (`ad_ap_id`) REFERENCES `shopping_adv_pos` (`id`),
  CONSTRAINT `shopping_advert_ibfk_4` FOREIGN KEY (`ad_ap_id`) REFERENCES `shopping_adv_pos` (`id`),
  CONSTRAINT `shopping_advert_ibfk_5` FOREIGN KEY (`ad_acc_id`) REFERENCES `shopping_accessory` (`id`),
  CONSTRAINT `shopping_advert_ibfk_6` FOREIGN KEY (`ad_user_id`) REFERENCES `shopping_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262162 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of shopping_advert
-- ----------------------------
INSERT INTO `shopping_advert` VALUES ('1', '2013-12-23 21:16:27', '\0', '2013-12-14', '3', '2022-12-31', '0', '0', '1', '', '首页幻灯广告3', 'http://www.baidu.com', '12', '1', '1');
INSERT INTO `shopping_advert` VALUES ('65536', '2013-12-17 17:13:15', '\0', '2013-12-16', '8', '2022-12-31', '0', '1', '1', '', '首页幻灯图片1', 'http://www.baidu.com', '10', '1', '1');
INSERT INTO `shopping_advert` VALUES ('65537', '2013-12-17 17:16:37', '\0', '2013-12-15', '0', '2022-12-31', '0', '2', '1', '', '首页幻灯图片2', 'http://www.baidu.com', '11', '1', '1');
INSERT INTO `shopping_advert` VALUES ('131073', '2013-12-18 12:30:35', '\0', '2013-12-18', '4', '2022-12-31', '0', '0', '1', '', '首页滚动广告1', 'http://www.baidu.com', '23', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('163840', '2013-12-18 12:51:12', '\0', '2013-12-18', '3', '2022-12-31', '0', '0', '1', '', '首页滚动广告2', 'http://www.baidu.com', '5', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('163841', '2013-12-18 12:52:29', '\0', '2013-12-18', '2', '2022-12-31', '0', '0', '1', '', '首页滚动广告3', 'http://www.baidu.com', '22', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('163842', '2013-12-18 12:58:00', '\0', '2013-12-18', '3', '2022-12-31', '0', '0', '1', '', '首页滚动广告4', 'http://www.baidu.com', '21', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('163843', '2013-12-18 12:58:22', '\0', '2013-12-18', '5', '2022-12-31', '0', '0', '1', '', '首页滚动广告5', 'http://www.baidu.com', '20', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('163844', '2013-12-18 12:59:02', '\0', '2013-12-18', '0', '2022-12-31', '0', '0', '1', '', '首页滚动广告6', 'http://www.baidu.com', '19', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('229376', '2013-12-19 12:02:39', '\0', '2013-12-18', '0', '2022-12-31', '0', '1', '1', '', '积分商城幻灯1', 'http://www.baidu.com', '18', '229376', '1');
INSERT INTO `shopping_advert` VALUES ('229377', '2013-12-19 12:02:59', '\0', '2013-12-18', '0', '2022-12-31', '0', '2', '1', '', '积分商城幻灯2', 'http://www.baidu.com', '17', '229376', '1');
INSERT INTO `shopping_advert` VALUES ('229378', '2013-12-19 12:03:31', '\0', '2013-12-18', '0', '2022-12-31', '0', '3', '1', '', '积分商城幻灯3', 'http://www.baidu.com', '16', '229376', '1');
INSERT INTO `shopping_advert` VALUES ('229379', '2013-12-19 12:03:50', '\0', '2013-12-18', '0', '2022-12-31', '0', '4', '1', '', '积分商城幻灯4', 'http://www.baidu.com', '15', '229376', '1');
INSERT INTO `shopping_advert` VALUES ('262144', '2013-12-19 13:58:52', '\0', '2013-12-18', '2', '2022-12-31', '0', '4', '1', '', '首页幻灯图片4', 'http://www.baidu.com', '14', '1', '1');
INSERT INTO `shopping_advert` VALUES ('262145', '2013-12-19 14:00:54', '\0', '2013-12-17', '2', '2022-12-31', '0', '5', '1', '', '首页幻灯广告5', 'http://www.baidu.com', '13', '1', '1');
INSERT INTO `shopping_advert` VALUES ('262146', '2014-10-09 14:58:18', '\0', '2014-10-01', '0', '2022-12-31', '0', '1', '1', '', '闲置商品主页幻灯广告1', 'http://www.baidu.com', '426007', '262146', '1');
INSERT INTO `shopping_advert` VALUES ('262147', '2014-10-09 14:58:45', '\0', '2014-10-01', '0', '2022-12-31', '0', '2', '1', '', '闲置商品主页幻灯广告2', 'http://www.baidu.com', '426008', '262146', '1');
INSERT INTO `shopping_advert` VALUES ('262148', '2014-10-09 14:59:12', '\0', '2014-10-01', '0', '2022-12-31', '0', '3', '1', '', '闲置商品主页幻灯广告3', 'http://www.baidu.com', '426009', '262146', '1');
INSERT INTO `shopping_advert` VALUES ('262149', '2015-02-17 11:44:04', '\0', '2015-01-01', '1', '2024-12-31', '0', '0', '1', '', '首页滚动广告7', 'http://www.baidu.com', '426067', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('262150', '2015-02-17 11:44:32', '\0', '2015-01-01', '0', '2024-12-31', '0', '0', '1', '', '首页滚动广告8', 'http://www.baidu.com', '426068', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('262151', '2015-02-17 11:50:52', '\0', '2015-01-01', '0', '2024-12-31', '0', '0', '1', '', '首页滚动广告9', 'http://www.baidu.com', '426069', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('262152', '2015-02-17 11:51:15', '\0', '2015-01-31', '2', '2024-12-31', '0', '0', '1', '', '首页滚动广告10', 'http://www.baidu.com', '426070', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('262153', '2015-02-17 11:51:55', '\0', '2015-01-31', '0', '2024-12-31', '0', '0', '1', '', '首页滚动广告11', 'http://www.baidu.com', '426071', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('262154', '2015-02-17 11:52:13', '\0', '2015-01-31', '0', '2024-12-31', '0', '0', '1', '', '首页滚动广告12', 'http://www.baidu.com', '426072', '32768', '1');
INSERT INTO `shopping_advert` VALUES ('262155', '2016-03-14 10:55:40', '\0', '2016-03-01', '0', '2026-03-31', '0', '1', '1', '', 'wap首页广告', 'http://www.baidu.com', '426305', '262157', '1');
INSERT INTO `shopping_advert` VALUES ('262156', '2016-03-14 10:56:12', '\0', '2016-03-01', '0', '2026-03-31', '0', '2', '1', '', 'wap首页广告2', 'http://www.baidu.com', '426306', '262157', '1');
INSERT INTO `shopping_advert` VALUES ('262157', '2016-03-14 10:56:48', '\0', '2016-03-01', '0', '2026-03-31', '0', '3', '1', '', 'wap首页广告3', 'http://www.baidu.com', '426307', '262157', '1');
INSERT INTO `shopping_advert` VALUES ('262158', '2018-11-20 14:49:05', '\0', null, '0', null, '0', '0', '1', '', 'woyao', 'http://www.baidu.com', null, '1', '1');
INSERT INTO `shopping_advert` VALUES ('262159', '2018-11-24 14:43:10', '\0', '2018-11-24', '0', '2019-11-01', '0', '1', '0', '', '首页广告', 'http://www.baidu.com', '426573', '1', '1');
INSERT INTO `shopping_advert` VALUES ('262160', '2018-11-24 15:18:14', '\0', '2018-11-08', '0', '2018-11-23', '0', '1234', '1', '', 'aaaaaaaaaaaaaa', 'http://www.baidu.com', '426577', '1', '1');
INSERT INTO `shopping_advert` VALUES ('262161', '2018-11-24 15:31:03', '\0', '2018-11-15', '0', '2018-11-10', '0', '0', '1', '', 'ttttttttt', 'http://www.baidu.com', '426578', '2', '1');
