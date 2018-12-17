/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-12-17 17:17:07
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
  `activity_logo` varchar(100) NOT NULL DEFAULT '' COMMENT '活动logo',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:停用 2 启用',
  `desc` text NOT NULL COMMENT '描述',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `view_num` int(11) NOT NULL DEFAULT '0' COMMENT '访问次数',
  `zan_num` int(11) NOT NULL DEFAULT '0' COMMENT '该活动被赞次数',
  `item_num` int(11) NOT NULL DEFAULT '0' COMMENT '该项目参与的项目数',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_huodong
-- ----------------------------
INSERT INTO `tp_huodong` VALUES ('1', '最美全家福', '0.00', 'desc/20181216\\95d47f1a2853c5b3439256af6683244b.png', '2', '<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-align:center;\">\n	<img width=\"50\" height=\"34\" title=\"1.png\" alt=\"global_DF7F0810-057A-8BD2-8A67-D83A4B4F2\" src=\"http://img.a.mvote.net/imgsource/global_DF7F0810-057A-8BD2-8A67-D83A4B4F2DB6_src.png\" border=\"0\" style=\"height:34px;width:50px;\" /><span style=\"line-height:37.8px;font-family:黑体;font-size:16px;\">‍</span><span style=\"font-size:16px;\">‍‍‍‍‍‍‍‍‍‍‍</span><strong><span style=\"line-height:32.4px;color:#FF0000;font-family:微软雅黑;font-size:16px;\">2018重庆市</span></strong><strong><span style=\"line-height:32.4px;color:#FF0000;font-family:微软雅黑, &quot;microsoft yahei&quot;;font-size:16px;\">“最美家庭”评选</span></strong><span style=\"font-size:12px;\">‍‍</span><img width=\"50\" height=\"34\" alt=\"global_19A971EA-DD88-5E57-DA7D-8ADCF5C3A\" src=\"http://img.a.mvote.net/imgsource/global_19A971EA-DD88-5E57-DA7D-8ADCF5C3AC64_src.png\" border=\"0\" style=\"height:34px;width:50px;\" /> \n</p>\n<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;text-align:center;\">\n	<span style=\"line-height:37.8px;font-family:黑体;font-size:21px;\">‍</span>‍<span style=\"line-height:25.2px;\">主办单位</span> \n</p>\n<p style=\"font-size:14px;background-color:#FFFFFF;text-align:center;\">\n	<span><b>重庆市伊莲摄影有限公司</b></span> \n</p>\n<div style=\"color:#333333;background-color:#FFFFFF;\">\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;text-align:center;\">\n		<strong><span style=\"line-height:32.4px;color:#C00000;font-family:微软雅黑, &quot;microsoft yahei&quot;;font-size:18px;\"><img width=\"80\" height=\"21\" alt=\"global_39D7DD95-599C-A3D0-FBE4-97DF0E14D\" src=\"http://img.a.mvote.net/imgsource/global_39D7DD95-599C-A3D0-FBE4-97DF0E14DE49_src.png\" border=\"0\" style=\"height:21px;width:80px;\" />&nbsp;评选范围</span></strong><img width=\"80\" height=\"21\" alt=\"global_39D7DD95-599C-A3D0-FBE4-97DF0E14D\" src=\"http://img.a.mvote.net/imgsource/global_39D7DD95-599C-A3D0-FBE4-97DF0E14DE49_src.png\" border=\"0\" style=\"height:21px;width:80px;\" /><strong><span style=\"line-height:32.4px;color:#C00000;font-family:微软雅黑, &quot;microsoft yahei&quot;;font-size:18px;\"></span></strong> \n	</p>\n	<p style=\"text-align:center;\">\n		<span><span style=\"font-size:21px;\">渝北最美家庭</span></span> \n	</p>\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;text-align:center;\">\n		<span style=\"line-height:37.8px;font-family:仿宋_gb2312;font-size:21px;\">‍</span><strong><span style=\"line-height:32.4px;color:#C00000;font-family:微软雅黑, &quot;microsoft yahei&quot;;font-size:18px;\"><img width=\"80\" height=\"21\" alt=\"global_39D7DD95-599C-A3D0-FBE4-97DF0E14D\" src=\"http://img.a.mvote.net/imgsource/global_39D7DD95-599C-A3D0-FBE4-97DF0E14DE49_src.png\" border=\"0\" style=\"height:21px;width:80px;\" />&nbsp;评选条件&nbsp;<strong><img width=\"80\" height=\"21\" alt=\"global_39D7DD95-599C-A3D0-FBE4-97DF0E14D\" src=\"http://img.a.mvote.net/imgsource/global_39D7DD95-599C-A3D0-FBE4-97DF0E14DE49_src.png\" border=\"0\" style=\"height:21px;width:80px;\" /></strong></span></strong> \n	</p>\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">\n		<span style=\"line-height:25.2px;font-family:微软雅黑, &quot;microsoft yahei&quot;;\">&nbsp; 1、拥护党的路线、方针、政策，政治合格，遵纪守法，品行端正。</span> \n	</p>\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">\n		<span style=\"line-height:25.2px;font-family:微软雅黑, &quot;microsoft yahei&quot;;\">&nbsp; 2、切实全面履行护理职责，工作到位，为患者提供全面、全程优质护理服务，经常与患者沟通交流，给予心理护理。</span> \n	</p>\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">\n		<span style=\"line-height:25.2px;font-family:微软雅黑, &quot;microsoft yahei&quot;;\">&nbsp; 3、对待患者热情、细心、耐心，态度好，工作认真、踏实、严谨，富有爱心，受到患者好评。</span> \n	</p>\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">\n		<span style=\"line-height:25.2px;font-family:微软雅黑, &quot;microsoft yahei&quot;;\">&nbsp; 4、具有团队合作精神，沟通协调能力强，工作积极主动、配合默契，赢得同行、患者和社会认可。</span> \n	</p>\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">\n		<span style=\"line-height:25.2px;font-family:微软雅黑, &quot;microsoft yahei&quot;;\">&nbsp; 5、认真钻研、不断进取，爱岗敬业，工作能力突出，在开展优质护理服务工作中，充分发挥模范带头作用。</span> \n	</p>\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">\n		<span style=\"line-height:25.2px;font-family:微软雅黑, &quot;microsoft yahei&quot;;\">&nbsp; 6、主动接受护理新理念，学习护理新技术，在临床护理、护理教学、护理管理和护理科研等方面成绩显著。</span> \n	</p>\n	<p style=\"font-size:14px;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">\n		<span style=\"line-height:25.2px;font-family:微软雅黑, &quot;microsoft yahei&quot;;\">&nbsp; 7、近三年内未发生护理差错事故，同时为2016年先进工作者。</span> \n	</p>\n</div>', '1544889600', '1545221044', '244', '24', '0', '1544926885');
INSERT INTO `tp_huodong` VALUES ('2', '最美小姐姐', '0.00', 'desc/20181216\\9ffcd27ddf7742df10b33ed574cffde8.png', '1', '水电费', '1544889600', '1545926400', '0', '0', '0', '1544941758');

-- ----------------------------
-- Table structure for `tp_item`
-- ----------------------------
DROP TABLE IF EXISTS `tp_item`;
CREATE TABLE `tp_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '参加活动信息表',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动表（huodong）的ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `item_img` varchar(100) NOT NULL DEFAULT '' COMMENT '参选图片',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:男  2 女  3 未知',
  `desc` text NOT NULL COMMENT '描述',
  `zan_num` int(11) NOT NULL DEFAULT '0' COMMENT '被赞次数',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_item
-- ----------------------------
INSERT INTO `tp_item` VALUES ('2', '1', '杨欢', '13425998555', 'desc/20181216\\35c92c916f2ebcb7e1b9a78a74acfe57.jpg', '我是标题2', '1', '<p style=\"text-align:center;\">\n	<span style=\"font-size:24px;\">1.我是李四</span> \n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/uploads/desc/20181216\\14e33c81f2e34c540de150e8364e7bd8.png\" alt=\"\" /> \n</p>\n<p style=\"text-align:left;\">\n	<br />\n</p>\n<p>\n	<span style=\"font-size:16px;\"><span style=\"line-height:2;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"line-height:3;\">阿斯顿发送到阿斯顿发送到发送到发所多付付付付付付付付付付付付付付付付付付付付付付付付所所得到的多多多多多多多多多多多多多多多多多多所得到的多多多付所得到的多多付多多多多多多多多多多多多多多多多多多多多多多多</span></span></span>\n</p>\n<p>\n	<br />\n</p>', '9', '1544073364');
INSERT INTO `tp_item` VALUES ('5', '1', '李四', '13425998554', 'desc/20181216\\2d1f10012ddce4c6c2fab037484d3050.png', '我是最美家庭', '1', '阿斯顿发', '6', '1544948240');
INSERT INTO `tp_item` VALUES ('6', '1', '张三', '13425998558', 'desc/20181217\\c257f8805139471bdd7099cf2d1ce26d.png', '我是张三', '2', '<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\n	<span style=\"font-family:微软雅黑, &quot;microsoft yahei&quot;;font-size:16px;\">我程青青是一名儿科护理人员，于2009年毕业于江西宜春职业技术学院。在贵溪市中医院工作1年多。于2011年通过考试（人事代理）考入人民医院。从2011年开始一直在儿科工作至今。一直以来，我不断的努力，提高自己的专业水平，用饱满的工作热情，更积极向上的精神面貌，更高度的责任心，更多的耐心和包容心，为自己喜爱的儿科护理工作奉献青春。同时也获得单位领导和同事的认可，曾被评为“优秀护士”“先进个人”等。</span>\n</p>\n<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\n	<span style=\"font-family:微软雅黑, &quot;microsoft yahei&quot;;font-size:16px;\">&nbsp; &nbsp; &nbsp;在儿科护理工作中每天都上演打针，输液，抽血，抢救等等。我早已习惯在嘈杂的环境中，及时准确地处理病情，耐心的安抚患儿和家属。为了减轻患儿的病痛，减少家属的紧张情绪，不断加强自身的专业水平，穿刺技术、抢救工作等。每次操作完自我总结，为了下一次做到更完美。虽然我们工作简单而又平凡，但却充满了爱。我乐于与患儿的生命同行，让患儿因为我们护理减轻痛苦，因我的健康指导而有收获，因我的安慰而家属树立信心。</span>\n</p>\n<p style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\n	<span style=\"font-family:微软雅黑, &quot;microsoft yahei&quot;;font-size:16px;\">&nbsp; &nbsp; &nbsp;我热爱儿科护理工作，愿将自己的青春奉献给这份事业，去帮助那些需要帮助的“小天使”。我需要更努力，不断完善自我，做一名更加出色的儿科护理工作者。</span>\n</p>', '1', '1545012576');

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
  `huodong_id` int(11) NOT NULL DEFAULT '0' COMMENT 'huodong表的ID',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_zan
-- ----------------------------
