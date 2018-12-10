/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-12-10 14:57:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tp_activity`;
CREATE TABLE `tp_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动结束时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:停用 2 启用',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_activity
-- ----------------------------
INSERT INTO `tp_activity` VALUES ('1', '最美小哥哥', '1543905397', '1544164597', '1', '1544164597');
INSERT INTO `tp_activity` VALUES ('2', '最美小姐姐', '1543905397', '1544164597', '2', '1544164597');
INSERT INTO `tp_activity` VALUES ('3', '最美证件照', '1544457600', '1544585043', '1', '0');
INSERT INTO `tp_activity` VALUES ('4', '最美婚纱照', '1544025600', '1545840000', '1', '0');

-- ----------------------------
-- Table structure for `tp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', '21218cca77804d2ba1922c33e0151105', '1532215468');

-- ----------------------------
-- Table structure for `tp_bespeak`
-- ----------------------------
DROP TABLE IF EXISTS `tp_bespeak`;
CREATE TABLE `tp_bespeak` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户预约来拍照',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '预约人姓名',
  `telphone` varchar(11) NOT NULL DEFAULT '' COMMENT '预约人电话',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：男  2：女  3 未知',
  `activity_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '活动表的ID（activity）',
  `bespeak_time` int(11) NOT NULL DEFAULT '0' COMMENT '预约时间',
  `backup` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_bespeak
-- ----------------------------
INSERT INTO `tp_bespeak` VALUES ('1', '杨欢1', '13425998522', '1', '1', '1544064597', '', '1542365414');
INSERT INTO `tp_bespeak` VALUES ('2', '杨欢2', '13425998545', '2', '1', '1544064597', '', '1542365414');
INSERT INTO `tp_bespeak` VALUES ('3', '杨欢3', '13425998551', '3', '1', '1544164597', '', '1542365414');
INSERT INTO `tp_bespeak` VALUES ('4', '杨欢4', '13425998552', '1', '1', '1544164597', '', '1542365414');
INSERT INTO `tp_bespeak` VALUES ('5', '杨欢5', '13425998553', '2', '1', '1544164597', '', '1542365414');
INSERT INTO `tp_bespeak` VALUES ('6', '杨欢6', '13425998554', '1', '1', '1544164597', '', '1542365414');

-- ----------------------------
-- Table structure for `tp_huodong`
-- ----------------------------
DROP TABLE IF EXISTS `tp_huodong`;
CREATE TABLE `tp_huodong` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名',
  `yuyue_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:停用 2 启用',
  `desc` text NOT NULL COMMENT '描述',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_huodong
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_item`
-- ----------------------------
DROP TABLE IF EXISTS `tp_item`;
CREATE TABLE `tp_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '参加活动信息表',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动表（tp_activity）的ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `item_img` varchar(100) NOT NULL DEFAULT '' COMMENT '参选图片',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:男  2 女  3 未知',
  `desc` text NOT NULL COMMENT '描述',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_item
-- ----------------------------
INSERT INTO `tp_item` VALUES ('2', '1', '杨欢2', '13425998555', '', '我是标题2', '1', '我是描述2', '1544073364');
INSERT INTO `tp_item` VALUES ('3', '2', '杨欢', '13425998556', 'desc/20181207\\9eec266cc32a0f99b0f8269d73dfde71.png', '我是标题3', '2', '<p style=\"text-align:right;\">\n	<br />\n</p>\n<p style=\"text-align:right;\">\n	我是描述\n</p>\n<p style=\"text-align:right;\">\n	<img src=\"/uploads/desc/20181207\\e8a27f84bc981c51ab560c93af64a1ea.png\" alt=\"\" />\n</p>', '1544073364');
INSERT INTO `tp_item` VALUES ('4', '2', '水电费', '13425998554', 'desc/20181206\\46821af1804ff4ab6c798e8fbac5327b.png', '阿萨德饭', '3', '<p style=\"text-align:center;\">\n	阿斯顿发\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"http://www.activity.com/uploads/desc/20181206\\5a2696ad79de5568551b352a4a4d2147.png\" alt=\"\" /> \n</p>\n<p style=\"text-align:center;\">\n	<img src=\"http://www.activity.com/uploads/desc/20181206\\52f02f66cca7ebd8031b7658e746b3f4.png\" alt=\"\" /> \n</p>\n<p style=\"text-align:center;\">\n	<img src=\"http://www.activity.com/uploads/desc/20181206\\ff6f5e6599b37d0fedaa2ffa4021c74e.png\" alt=\"\" /> \n</p>\n<p style=\"text-align:center;\">\n	我是第一恶\n</p>', '1544087313');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) NOT NULL,
  `headimgurl` varchar(255) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `city` varchar(10) DEFAULT NULL COMMENT '省/自治区',
  `province` varchar(11) DEFAULT NULL COMMENT '市',
  `country` varchar(11) DEFAULT NULL COMMENT '国',
  `phone` varchar(11) DEFAULT NULL,
  `addtime` char(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `man_name` varchar(20) DEFAULT NULL,
  `wowan_name` varchar(20) DEFAULT NULL,
  `man_birthday` varchar(20) DEFAULT NULL,
  `woman_birthday` varchar(20) DEFAULT NULL,
  `wedding_day` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `man_phone` varchar(20) DEFAULT NULL,
  `woman_phone` varchar(20) DEFAULT NULL,
  `lz_time` varchar(20) DEFAULT NULL COMMENT '领证日期',
  `wedding_status` tinyint(1) DEFAULT NULL COMMENT '是否拍摄婚纱',
  `area` varchar(50) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `yy_phone` varchar(11) DEFAULT NULL,
  `balance` float(11,2) NOT NULL DEFAULT '0.00',
  `is_fans` tinyint(1) NOT NULL DEFAULT '1',
  `first_location` varchar(255) DEFAULT '0' COMMENT '首次地理位置',
  `last_location` varchar(255) DEFAULT '0' COMMENT '最后一次',
  `unionid` varchar(100) DEFAULT NULL COMMENT 'unionid',
  `first_leader` int(10) NOT NULL DEFAULT '0' COMMENT '第一级',
  `second_leader` int(10) NOT NULL DEFAULT '0' COMMENT '第二级',
  `third_leader` int(10) NOT NULL DEFAULT '0' COMMENT '第三级',
  `brokerage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `qrcode_url` varchar(100) NOT NULL DEFAULT '' COMMENT '我的二维码邀请链接',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('5', 'oydWg0dRUVqoPoaB0HaZ8PgHJSgU', 'http://thirdwx.qlogo.cn/mmopen/vi_32/L2evTRZXmJNobbtD5Z0VDT7BnNLPThiaP2CHRlT6k7s9JCUp7N13zkjonPSZMrGoFdyYMmbICIPERaJB0iaKxMVg/132', '1', '杨欢5', '荣昌', '重庆', '中国', '', '1543905397', '1', '', '', '', '', '', '', '', '', '', null, '', null, '', '0.00', '0', '0', '0', '', '0', '0', '0', '0.00', '');
INSERT INTO `tp_user` VALUES ('6', 'oydWg0dRUVqoPoaB0HaZ8PgHJSgU', 'http://thirdwx.qlogo.cn/mmopen/vi_32/L2evTRZXmJNobbtD5Z0VDT7BnNLPThiaP2CHRlT6k7s9JCUp7N13zkjonPSZMrGoFdyYMmbICIPERaJB0iaKxMVg/132', '1', '杨欢6', '荣昌', '重庆', '中国', '', '1543905397', '1', '', '', '', '', '', '', '', '', '', null, '', null, '', '0.00', '0', '0', '0', '', '0', '0', '0', '0.00', '');
INSERT INTO `tp_user` VALUES ('7', 'oydWg0dRUVqoPoaB0HaZ8PgHJSgU', 'http://thirdwx.qlogo.cn/mmopen/vi_32/L2evTRZXmJNobbtD5Z0VDT7BnNLPThiaP2CHRlT6k7s9JCUp7N13zkjonPSZMrGoFdyYMmbICIPERaJB0iaKxMVg/132', '1', '杨欢7', '荣昌', '重庆', '中国', '', '1543905397', '1', '', '', '', '', '', '', '', '', '', null, '', null, '', '0.00', '0', '0', '0', '', '0', '0', '0', '0.00', '');
INSERT INTO `tp_user` VALUES ('8', 'oydWg0dRUVqoPoaB0HaZ8PgHJSgU', 'http://thirdwx.qlogo.cn/mmopen/vi_32/L2evTRZXmJNobbtD5Z0VDT7BnNLPThiaP2CHRlT6k7s9JCUp7N13zkjonPSZMrGoFdyYMmbICIPERaJB0iaKxMVg/132', '1', '杨欢8', '荣昌', '重庆', '中国', '', '1543905397', '1', '', '', '', '', '', '', '', '', '', null, '', null, '', '0.00', '0', '0', '0', '', '0', '0', '0', '0.00', '');

-- ----------------------------
-- Table structure for `tp_yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `tp_yuyue`;
CREATE TABLE `tp_yuyue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `huodong_id` int(11) NOT NULL DEFAULT '0' COMMENT 'huodong表的ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '预约人姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `shoot_person` smallint(3) NOT NULL DEFAULT '1' COMMENT '拍摄人数',
  `order_sn` varchar(100) NOT NULL DEFAULT '' COMMENT '订单号',
  `trade_no` varchar(100) NOT NULL DEFAULT '' COMMENT '微信返回的订单号',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `yuyue_time` int(11) NOT NULL DEFAULT '0' COMMENT '预约时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:待支付  1 已支付',
  `backup` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_yuyue
-- ----------------------------
INSERT INTO `tp_yuyue` VALUES ('1', '1', '杨欢', '13425998554', '3', '15464646464', '131314644', '100.00', '1542564875', '1', '阿斯顿发斯蒂芬水电费是打发撒旦法撒旦法是阿撒旦法撒旦法是是打发斯蒂芬爱上发送到发送到', '1524699858');

-- ----------------------------
-- Table structure for `tp_zan`
-- ----------------------------
DROP TABLE IF EXISTS `tp_zan`;
CREATE TABLE `tp_zan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞表',
  `item_id` int(11) NOT NULL COMMENT 'item表的ID',
  `user_id` int(11) NOT NULL COMMENT '点赞的人',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_zan
-- ----------------------------
