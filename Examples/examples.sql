/*
MySQL Data Transfer
Source Host: localhost
Source Database: demo
Target Host: localhost
Target Database: demo
Date: 2010-9-28 18:43:29
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for think_access
-- ----------------------------
CREATE TABLE `think_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_attach
-- ----------------------------
CREATE TABLE `think_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` varchar(20) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `savepath` varchar(255) NOT NULL,
  `savename` varchar(255) NOT NULL,
  `module` varchar(100) NOT NULL,
  `recordId` int(11) NOT NULL,
  `userId` int(11) unsigned DEFAULT NULL,
  `uploadTime` int(11) unsigned DEFAULT NULL,
  `downCount` mediumint(9) unsigned DEFAULT '0',
  `hash` varchar(32) NOT NULL,
  `verify` varchar(8) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `version` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `updateTime` int(12) unsigned DEFAULT NULL,
  `downloadTime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `recordId` (`recordId`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_blog
-- ----------------------------
CREATE TABLE `think_blog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '',
  `userId` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `categoryId` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext,
  `cTime` int(11) unsigned NOT NULL DEFAULT '0',
  `mTime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readCount` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `commentCount` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_card
-- ----------------------------
CREATE TABLE `think_card` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `member_id` mediumint(6) NOT NULL,
  `card` varchar(25) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_category
-- ----------------------------
CREATE TABLE `think_category` (
  `id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_comment
-- ----------------------------
CREATE TABLE `think_comment` (
  `id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `recordId` int(11) unsigned NOT NULL DEFAULT '0',
  `author` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(25) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `cTime` int(11) unsigned NOT NULL DEFAULT '0',
  `agent` varchar(255) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_dept
-- ----------------------------
CREATE TABLE `think_dept` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_form
-- ----------------------------
CREATE TABLE `think_form` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_group
-- ----------------------------
CREATE TABLE `think_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_groups
-- ----------------------------
CREATE TABLE `think_groups` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_member
-- ----------------------------
CREATE TABLE `think_member` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `dept_id` smallint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_member_groups
-- ----------------------------
CREATE TABLE `think_member_groups` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `groups_id` mediumint(5) NOT NULL,
  `member_id` mediumint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_node
-- ----------------------------
CREATE TABLE `think_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_photo
-- ----------------------------
CREATE TABLE `think_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_profile
-- ----------------------------
CREATE TABLE `think_profile` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `member_id` mediumint(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_role
-- ----------------------------
CREATE TABLE `think_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ename` varchar(5) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `ename` (`ename`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_role_user
-- ----------------------------
CREATE TABLE `think_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_tag
-- ----------------------------
CREATE TABLE `think_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` mediumint(6) unsigned NOT NULL,
  `module` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`),
  KEY `count` (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_tagged
-- ----------------------------
CREATE TABLE `think_tagged` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL,
  `recordId` int(11) unsigned NOT NULL,
  `tagId` int(11) NOT NULL,
  `tagTime` int(11) NOT NULL,
  `module` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_user
-- ----------------------------
CREATE TABLE `think_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `bind_account` varchar(50) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `verify` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `type_id` tinyint(2) unsigned DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `think_access` VALUES ('2', '1', '1', '0', null);
INSERT INTO `think_access` VALUES ('2', '40', '2', '1', null);
INSERT INTO `think_access` VALUES ('2', '30', '2', '1', null);
INSERT INTO `think_access` VALUES ('3', '1', '1', '0', null);
INSERT INTO `think_access` VALUES ('2', '69', '2', '1', null);
INSERT INTO `think_access` VALUES ('2', '50', '3', '40', null);
INSERT INTO `think_access` VALUES ('3', '50', '3', '40', null);
INSERT INTO `think_access` VALUES ('1', '50', '3', '40', null);
INSERT INTO `think_access` VALUES ('3', '7', '2', '1', null);
INSERT INTO `think_access` VALUES ('3', '39', '3', '30', null);
INSERT INTO `think_access` VALUES ('2', '39', '3', '30', null);
INSERT INTO `think_access` VALUES ('2', '49', '3', '30', null);
INSERT INTO `think_access` VALUES ('4', '1', '1', '0', null);
INSERT INTO `think_access` VALUES ('4', '2', '2', '1', null);
INSERT INTO `think_access` VALUES ('4', '3', '2', '1', null);
INSERT INTO `think_access` VALUES ('4', '4', '2', '1', null);
INSERT INTO `think_access` VALUES ('4', '5', '2', '1', null);
INSERT INTO `think_access` VALUES ('4', '6', '2', '1', null);
INSERT INTO `think_access` VALUES ('4', '7', '2', '1', null);
INSERT INTO `think_access` VALUES ('4', '11', '2', '1', null);
INSERT INTO `think_access` VALUES ('5', '25', '1', '0', null);
INSERT INTO `think_access` VALUES ('5', '51', '2', '25', null);
INSERT INTO `think_access` VALUES ('1', '1', '1', '0', null);
INSERT INTO `think_access` VALUES ('1', '39', '3', '30', null);
INSERT INTO `think_access` VALUES ('1', '69', '2', '1', null);
INSERT INTO `think_access` VALUES ('1', '30', '2', '1', null);
INSERT INTO `think_access` VALUES ('1', '40', '2', '1', null);
INSERT INTO `think_access` VALUES ('1', '49', '3', '30', null);
INSERT INTO `think_access` VALUES ('3', '69', '2', '1', null);
INSERT INTO `think_access` VALUES ('3', '30', '2', '1', null);
INSERT INTO `think_access` VALUES ('3', '40', '2', '1', null);
INSERT INTO `think_access` VALUES ('1', '37', '3', '30', null);
INSERT INTO `think_access` VALUES ('1', '36', '3', '30', null);
INSERT INTO `think_access` VALUES ('1', '35', '3', '30', null);
INSERT INTO `think_access` VALUES ('1', '34', '3', '30', null);
INSERT INTO `think_access` VALUES ('1', '33', '3', '30', null);
INSERT INTO `think_access` VALUES ('1', '32', '3', '30', null);
INSERT INTO `think_access` VALUES ('1', '31', '3', '30', null);
INSERT INTO `think_access` VALUES ('2', '32', '3', '30', null);
INSERT INTO `think_access` VALUES ('2', '31', '3', '30', null);
INSERT INTO `think_access` VALUES ('7', '1', '1', '0', null);
INSERT INTO `think_access` VALUES ('7', '30', '2', '1', null);
INSERT INTO `think_access` VALUES ('7', '40', '2', '1', null);
INSERT INTO `think_access` VALUES ('7', '69', '2', '1', null);
INSERT INTO `think_access` VALUES ('7', '50', '3', '40', null);
INSERT INTO `think_access` VALUES ('7', '39', '3', '30', null);
INSERT INTO `think_access` VALUES ('7', '49', '3', '30', null);
INSERT INTO `think_attach` VALUES ('1', '副本a.rar', 'application/x-rar', '651', 'rar', '../Public/Uploads/', '副本a.rar', 'Blog', '1', '0', '1277718745', '0', '2bd1870c322a0418c0406eac1cfcb778', '0', '', '0', null, '0');
INSERT INTO `think_attach` VALUES ('2', '副本b.rar', 'application/x-rar', '651', 'rar', '../Public/Uploads/', '副本b.rar', 'Blog', '1', '0', '1277718745', '0', '2bd1870c322a0418c0406eac1cfcb778', '0', '', '0', null, '0');
INSERT INTO `think_blog` VALUES ('1', '', '0', '1', 'abc', '<p><strong>abc</strong><br />\nabc</p>', '1277718745', '0', '1', '1', '1', 'abc');
INSERT INTO `think_blog` VALUES ('2', '', '0', '2', 'php', '<p><strong>php</strong></p>', '1277718803', '0', '1', '1', '0', 'php ');
INSERT INTO `think_blog` VALUES ('3', '', '0', '3', 'jQuery', '<p>jQuery</p>', '1277718927', '0', '1', '1', '11', 'js jquery');
INSERT INTO `think_category` VALUES ('1', '', 'abc', '', '0');
INSERT INTO `think_category` VALUES ('2', '', 'php', '', '0');
INSERT INTO `think_category` VALUES ('3', '', 'js', '', '0');
INSERT INTO `think_comment` VALUES ('1', '1', 'abc', 'abc@qq.com', '', '127.0.0.1', '[emot]bad[/emot][emot]zzz[/emot][emot]cry[/emot]', '1277718830', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('2', '3', 'aa', 'aa@aa.com', '', '127.0.0.1', 'aa[emot]puke[/emot][emot]love[/emot][emot]sweat[/emot]', '1277719049', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('3', '3', 'bb', '', '', '127.0.0.1', 'bb[emot]sweat[/emot]', '1277719119', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('4', '3', 'cc', '', '', '127.0.0.1', 'cc[emot]puzzled[/emot][emot]mute[/emot]', '1277719130', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('5', '3', 'dd', '', '', '127.0.0.1', 'dd[emot]bad[/emot][emot]sweat[/emot][emot]astonish[/emot]', '1277719144', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('6', '3', 'ee', '', '', '127.0.0.1', 'ee[emot]laugh[/emot][emot]love[/emot][emot]bad[/emot][emot]good[/emot]', '1277719159', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('7', '3', 'ff', '', '', '127.0.0.1', 'ff[emot]cry[/emot][emot]laugh[/emot]', '1277719173', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('8', '3', 'gg', '', '', '127.0.0.1', 'gg[emot]puzzled[/emot]', '1277719185', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('9', '3', 'ff', '', '', '127.0.0.1', 'ff', '1277719197', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('10', '3', 'gg', '', '', '127.0.0.1', 'gg', '1277719219', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('11', '3', 'hh', '', '', '127.0.0.1', 'hh[emot]mute[/emot][emot]angry[/emot][emot]love[/emot]', '1277719228', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_comment` VALUES ('12', '3', 'ii', '', '', '127.0.0.1', 'asdf[emot]good[/emot][emot]sweat[/emot]', '1277719254', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6', '1', 'Blog');
INSERT INTO `think_dept` VALUES ('1', '开发部');
INSERT INTO `think_dept` VALUES ('2', '销售部');
INSERT INTO `think_dept` VALUES ('3', '财务部');
INSERT INTO `think_form` VALUES ('1', 'ThinkPHP2.0发布', '祖国60周年华诞献礼，ThinkPHP2.0新版正式发布了！', '1', '1254325349', '0', '1', '');
INSERT INTO `think_form` VALUES ('2', '新版套装销售', 'ThinkPHP新版发布超值纪念套装火热征订中！还送2G主机空间！', '33', '1254325948', '0', '1', '');
INSERT INTO `think_group` VALUES ('2', 'App', '应用中心', '1222841259', '0', '1', '0', '0');
INSERT INTO `think_groups` VALUES ('1', '项目组1');
INSERT INTO `think_groups` VALUES ('2', '项目组2');
INSERT INTO `think_groups` VALUES ('3', '项目组3');
INSERT INTO `think_node` VALUES ('49', 'read', '查看', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('40', 'Index', '默认模块', '1', '', '1', '1', '2', '0', '0');
INSERT INTO `think_node` VALUES ('39', 'index', '列表', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('37', 'resume', '恢复', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('36', 'forbid', '禁用', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('35', 'foreverdelete', '删除', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('34', 'update', '更新', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('33', 'edit', '编辑', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('32', 'insert', '写入', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('31', 'add', '新增', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('30', 'Public', '公共模块', '1', '', '2', '1', '2', '0', '0');
INSERT INTO `think_node` VALUES ('69', 'Form', '数据管理', '1', '', '1', '1', '2', '0', '2');
INSERT INTO `think_node` VALUES ('7', 'User', '后台用户', '1', '', '4', '1', '2', '0', '2');
INSERT INTO `think_node` VALUES ('6', 'Role', '角色管理', '1', '', '3', '1', '2', '0', '2');
INSERT INTO `think_node` VALUES ('2', 'Node', '节点管理', '1', '', '2', '1', '2', '0', '2');
INSERT INTO `think_node` VALUES ('1', 'Rbac', 'Rbac后台管理', '1', '', null, '0', '1', '0', '0');
INSERT INTO `think_node` VALUES ('50', 'main', '空白首页', '1', '', null, '40', '3', '0', '0');
INSERT INTO `think_role` VALUES ('1', '领导组', '0', '1', '', '', '1208784792', '1254325558');
INSERT INTO `think_role` VALUES ('2', '员工组', '0', '1', '', '', '1215496283', '1254325566');
INSERT INTO `think_role` VALUES ('7', '演示组', '0', '1', '', null, '1254325787', '0');
INSERT INTO `think_role_user` VALUES ('4', '27');
INSERT INTO `think_role_user` VALUES ('4', '26');
INSERT INTO `think_role_user` VALUES ('4', '30');
INSERT INTO `think_role_user` VALUES ('5', '31');
INSERT INTO `think_role_user` VALUES ('3', '22');
INSERT INTO `think_role_user` VALUES ('3', '1');
INSERT INTO `think_role_user` VALUES ('1', '4');
INSERT INTO `think_role_user` VALUES ('2', '3');
INSERT INTO `think_role_user` VALUES ('7', '2');
INSERT INTO `think_tag` VALUES ('1', 'abc', '1', 'Blog');
INSERT INTO `think_tag` VALUES ('2', 'php', '1', 'Blog');
INSERT INTO `think_tag` VALUES ('3', 'js', '1', 'Blog');
INSERT INTO `think_tag` VALUES ('4', 'jquery', '1', 'Blog');
INSERT INTO `think_tagged` VALUES ('1', '0', '1', '1', '1277718745', 'Blog');
INSERT INTO `think_tagged` VALUES ('2', '0', '2', '2', '1277718803', 'Blog');
INSERT INTO `think_tagged` VALUES ('3', '0', '2', '2', '1277718803', 'Blog');
INSERT INTO `think_tagged` VALUES ('4', '0', '3', '3', '1277718927', 'Blog');
INSERT INTO `think_tagged` VALUES ('5', '0', '3', '4', '1277718927', 'Blog');
INSERT INTO `think_user` VALUES ('1', 'admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', '', '1254326174', '127.0.0.1', '884', '8888', 'liu21st@gmail.com', '备注信息', '1222907803', '1239977420', '1', '0', '');
INSERT INTO `think_user` VALUES ('2', 'demo', '演示', 'fe01ce2a7fbac8fafaed7c982a04e229', '', '1254326091', '127.0.0.1', '90', '8888', '', '', '1239783735', '1254325770', '1', '0', '');
INSERT INTO `think_user` VALUES ('3', 'member', '员工', 'aa08769cdcb26674c6706093503ff0a3', '', '1285670573', '127.0.0.1', '16', '', '', '', '1253514375', '1254325728', '1', '0', '');
INSERT INTO `think_user` VALUES ('4', 'leader', '领导', 'c444858e0aaeb727da73d2eae62321ad', '', '1254325906', '127.0.0.1', '15', '', '', '领导', '1253514575', '1254325705', '1', '0', '');
