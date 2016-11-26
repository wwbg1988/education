/*
Navicat MySQL Data Transfer

Source Server         : master192.168.1.81
Source Server Version : 50542
Source Host           : 192.168.1.81:3306
Source Database       : edu

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2016-03-17 09:57:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_menu`;
CREATE TABLE `t_admin_menu` (
  `id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `isRight` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `no` int(11) DEFAULT NULL,
  `pj_no` varchar(36) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `pid` varchar(36) DEFAULT NULL,
  `menu_type_id` varchar(36) NOT NULL,
  `stat` int(11) DEFAULT '1',
  `tab_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ntq0jbuskbtg914fyen2i1ylm` (`pid`),
  KEY `FK_4ou4518q77nruu6uoqb047x6i` (`menu_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_menu
-- ----------------------------
INSERT INTO `t_admin_menu` VALUES ('05b3d370-2d74-48de-aff6-65bf2f56584b', '2015-07-29 14:10:53', 'bullet_wrench', null, '查询所有导航菜单', null, null, '', '101', '/resourceController/allsTree', 'zygl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('1e2a00c3-0241-4257-9955-202898e8c4df', '2015-06-23 15:26:46', 'plugin_go', null, '项目管理', null, null, '', '100', '/projectController/manager', '9d20aa49-24ad-4114-a72d-e63b2c630f2e', '0', '1', '2');
INSERT INTO `t_admin_menu` VALUES ('44d79272-04d9-472a-9be9-9eae4794188b', '2015-06-23 15:31:52', 'plugin_go', null, '流程表单', null, null, '', '101', '', '9d20aa49-24ad-4114-a72d-e63b2c630f2e', '0', '1', '2');
INSERT INTO `t_admin_menu` VALUES ('472201fa-a63b-4319-893f-adef97bc3894', '2015-07-29 14:08:56', 'bullet_wrench', null, '赛事流程导航菜单', null, null, '赛事流程菜单', '100', '/resourceController/tabTree', 'zygl', '1', '1', '2');
INSERT INTO `t_admin_menu` VALUES ('7b183de8-3350-4e5f-bac7-98c3ccb58708', '2015-06-24 16:53:15', 'anchor', null, '表单管理', null, null, '表单管理模块', '100', '/formsController/manager', '44d79272-04d9-472a-9be9-9eae4794188b', '0', '1', '2');
INSERT INTO `t_admin_menu` VALUES ('9d20aa49-24ad-4114-a72d-e63b2c630f2e', '2015-06-23 15:25:58', 'plugin', null, '教委项目管理', null, null, '教委管理模块', '100', '', '', '0', '1', '2');
INSERT INTO `t_admin_menu` VALUES ('a8cb79b0-da47-42d8-b6ec-abed1a168f93', '2015-06-23 15:33:04', 'anchor', null, '字段管理', null, null, '表单字段管理模块', '101', '/fieldsController/manager', '44d79272-04d9-472a-9be9-9eae4794188b', '0', '1', '2');
INSERT INTO `t_admin_menu` VALUES ('chart', null, 'chart_bar', null, '图表管理', null, null, null, '7', null, null, '0', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('ed01531b-5e3e-4d20-b42f-9b6073292804', '2015-06-23 15:33:31', 'anchor', null, '字典管理', null, null, '', '102', '/dictController/manager', '44d79272-04d9-472a-9be9-9eae4794188b', '0', '1', '2');
INSERT INTO `t_admin_menu` VALUES ('jsgl', null, 'tux', null, '系统角色管理', null, null, '', '2', '/roleController/manager', 'xtgl', '0', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('jsglAdd', null, 'wrench', null, '添加角色', null, null, null, '3', '/roleController/add', 'jsgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('jsglAddPage', null, 'wrench', null, '添加角色页面', null, null, null, '2', '/roleController/addPage', 'jsgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('jsglDelete', null, 'wrench', null, '删除角色', null, null, null, '6', '/roleController/delete', 'jsgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('jsglEdit', null, 'wrench', null, '编辑角色', null, null, null, '5', '/roleController/edit', 'jsgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('jsglEditPage', null, 'wrench', null, '编辑角色页面', null, null, null, '4', '/roleController/editPage', 'jsgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('jsglGrant', null, 'wrench', null, '角色授权', null, null, null, '8', '/roleController/grant', 'jsgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('jsglGrantPage', null, 'wrench', null, '角色授权页面', null, null, null, '7', '/roleController/grantPage', 'jsgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('jsglTreeGrid', null, 'wrench', null, '角色表格', null, null, null, '1', '/roleController/treeGrid', 'jsgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('sjygl', null, 'server_database', null, '数据源管理', null, null, null, '5', '/druidController/druid', 'xtgl', '0', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('xtgl', null, 'plugin', null, '系统管理', null, null, null, '0', null, null, '0', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhgl', null, 'status_online', null, '系统用户管理', null, null, '', '3', '/userController/manager', 'xtgl', '0', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglAdd', null, 'wrench', null, '添加用户', null, null, null, '3', '/userController/add', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglAddPage', null, 'wrench', null, '添加用户页面', null, null, null, '2', '/userController/addPage', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglBatchDelete', null, 'wrench', null, '批量删除用户', null, null, null, '7', '/userController/batchDelete', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglDateGrid', null, 'wrench', null, '用户表格', null, null, null, '1', '/userController/dataGrid', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglDelete', null, 'wrench', null, '删除用户', null, null, null, '6', '/userController/delete', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglEdit', null, 'wrench', null, '编辑用户', null, null, null, '5', '/userController/edit', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglEditPage', null, 'wrench', null, '编辑用户页面', null, null, null, '4', '/userController/editPage', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglEditPwd', null, 'wrench', null, '用户修改密码', null, null, null, '11', '/userController/editPwd', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglEditPwdPage', null, 'wrench', null, '用户修改密码页面', null, null, null, '10', '/userController/editPwdPage', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglGrant', null, 'wrench', null, '用户授权', null, null, null, '9', '/userController/grant', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('yhglGrantPage', null, 'wrench', null, '用户授权页面', null, null, null, '8', '/userController/grantPage', 'yhgl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('zygl', null, 'database_gear', null, '系统菜单管理', null, null, '管理系统中所有的菜单或功能', '1', '/resourceController/manager', 'xtgl', '0', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('zyglAdd', null, 'wrench', null, '添加菜单', null, null, '', '4', '/resourceController/add', 'zygl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('zyglAddPage', null, 'wrench', null, '添加菜单页面', null, null, '', '3', '/resourceController/addPage', 'zygl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('zyglDelete', null, 'wrench', null, '删除菜单', null, null, '', '7', '/resourceController/delete', 'zygl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('zyglEdit', null, 'wrench', null, '编辑菜单', null, null, '', '6', '/resourceController/edit', 'zygl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('zyglEditPage', null, 'wrench', null, '编辑菜单页面', null, null, '', '5', '/resourceController/editPage', 'zygl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('zyglMenu', null, 'wrench', null, '系统功能菜单', null, null, '', '2', '/resourceController/tree', 'zygl', '1', '1', '1');
INSERT INTO `t_admin_menu` VALUES ('zyglTreeGrid', null, 'wrench', null, '菜单表格', null, null, '显示菜单列表', '1', '/resourceController/treeGrid', 'zygl', '1', '1', '1');

-- ----------------------------
-- Table structure for `t_admin_menu_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_menu_type`;
CREATE TABLE `t_admin_menu_type` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_menu_type
-- ----------------------------
INSERT INTO `t_admin_menu_type` VALUES ('0', '菜单');
INSERT INTO `t_admin_menu_type` VALUES ('1', '功能');

-- ----------------------------
-- Table structure for `t_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_role`;
CREATE TABLE `t_admin_role` (
  `id` varchar(36) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `role_name` varchar(50) NOT NULL,
  `no` int(11) DEFAULT NULL,
  `pj_no` varchar(36) DEFAULT NULL,
  `post_no` varchar(255) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `pid` varchar(36) DEFAULT NULL,
  `stat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_os4oowh8je9g6ox2qwhuiurha` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_role
-- ----------------------------
INSERT INTO `t_admin_role` VALUES ('0', null, '超管', null, null, null, '超级管理员角色，拥有系统中所有的资源访问权限', '0', null, '1');
INSERT INTO `t_admin_role` VALUES ('09a7ad90-0a0e-420b-9602-0dc8bd660394', '2015-06-20 07:42:07', '梅西', null, null, null, '射射射射', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('157d1e87-274a-43fb-9ca1-550de9d40e9a', '2015-06-20 17:00:30', '詹姆斯', null, null, null, '不好不好不好', '100', '8c857741-3965-47de-87a9-62851dc1f404', '1');
INSERT INTO `t_admin_role` VALUES ('1600725b-1aae-453f-9e6b-1b5b0daaff74', '2015-06-23 04:41:15', '恒大', null, null, null, '呀呀呀呀', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('1e02e3c5-52ed-4cfe-b746-1d136f736533', '2015-06-23 04:48:22', '曼联', null, null, null, '娜娜娜娜安安777', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('20869b86-472c-4569-8f40-16a006c315af', '2015-06-20 04:01:28', '亨利', null, null, null, '事实上事实上', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('221f8fb8-24a6-47d8-b429-44dbe8313d03', '2015-06-20 07:52:27', '特里', null, null, null, '灌灌灌灌', '100', '67513800-5321-410b-b1ea-b34db950c7ed', '1');
INSERT INTO `t_admin_role` VALUES ('334b0c96-2c11-4526-bd52-98a8cd2fa719', '2015-06-20 03:53:20', '内德维德', null, null, null, '事实上事实上', '100', 'guest', null);
INSERT INTO `t_admin_role` VALUES ('34230ef5-9b6f-43c0-a052-0ef464d5e751', '2015-06-20 00:04:38', '卡卡', null, null, null, '啦啦啦啦啦啦啦啦啦啦', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('46edee45-b7dc-49e1-a8e9-773632c83c75', '2015-06-20 18:37:01', '加图索', null, null, null, '2222', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('56b82620-510c-4559-a755-4a135f89b598', '2015-06-20 03:56:15', '内德维德', null, null, null, '是水水水水水水水水', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('67513800-5321-410b-b1ea-b34db950c7ed', '2015-06-20 07:02:25', '库里', null, null, null, '金州勇士', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', '2015-06-23 04:49:38', '曼联', null, null, null, '曼彻斯特8', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('794d1b55-ad94-40e0-8794-d5c8a34bb4a9', '2015-06-20 17:44:18', '因扎吉', null, null, null, '888888', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('7a52aa90-5786-4559-ac3d-03a3591a3828', '2015-06-20 19:59:12', '梅西3', null, null, null, '444444', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('8c857741-3965-47de-87a9-62851dc1f404', '2015-06-23 06:41:59', '贝克汉姆', null, null, null, '啪啪啪啪', '100', '157d1e87-274a-43fb-9ca1-550de9d40e9a', '1');
INSERT INTO `t_admin_role` VALUES ('9217ecb1-e953-4a0f-80af-6eb150645c47', '2015-06-23 05:25:37', 'AC米兰', null, null, null, '999', '100', 'a683d25e-20d4-4b18-b8df-122b9b22da52', '1');
INSERT INTO `t_admin_role` VALUES ('95c47827-f4a9-4883-b4a5-bbcbf495f4b9', '2015-06-23 06:13:03', '加奈', null, null, null, '噢噢噢噢', '100', '46edee45-b7dc-49e1-a8e9-773632c83c75', '1');
INSERT INTO `t_admin_role` VALUES ('95ffd88d-5530-45aa-ad7b-4d2598ae0499', '2015-06-19 22:43:40', '内德维德', null, null, null, '狂射狂射狂射狂射狂射狂射', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('97a1cd3f-a704-4fcf-86e2-9faab1d084e9', '2015-06-20 07:09:45', '国安', null, null, null, '3333', '100', '34230ef5-9b6f-43c0-a052-0ef464d5e751', '1');
INSERT INTO `t_admin_role` VALUES ('9ecdb25c-ce56-40ab-93cf-07e7546f5400', '2015-06-20 00:07:52', '范佩西', null, null, null, '啊啊啊啊啊啊', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('a15e734c-95a7-4e53-9f4d-6bc8ae6d1b62', '2015-06-20 18:34:46', 'test角色', null, null, null, 'sdfsdf', '100', '', '1');
INSERT INTO `t_admin_role` VALUES ('a638cd3a-792f-4c54-a530-ca803c75111b', '2015-06-20 16:59:10', '詹姆斯', null, null, null, '啊啊啊啊啊啊啊啊啊', '96', '56b82620-510c-4559-a755-4a135f89b598', '1');
INSERT INTO `t_admin_role` VALUES ('a683d25e-20d4-4b18-b8df-122b9b22da52', '2015-06-20 17:03:30', '梅西', null, null, null, '9944555444', '100', '221f8fb8-24a6-47d8-b429-44dbe8313d03', '1');
INSERT INTO `t_admin_role` VALUES ('b4116315-2d4d-49e1-a417-59bf5ed2207c', '2015-06-20 19:58:17', '梅西3', null, null, null, '333333', '100', 'a683d25e-20d4-4b18-b8df-122b9b22da52', '1');
INSERT INTO `t_admin_role` VALUES ('b6d7f282-b1c1-4a06-a119-06f3f95d6940', '2015-06-23 05:29:08', '国际米兰', null, null, null, '穆里尼奥', '100', 'a683d25e-20d4-4b18-b8df-122b9b22da52', '1');
INSERT INTO `t_admin_role` VALUES ('bcd297f2-60e3-4d9d-a6be-d9fb5065091b', '2015-06-23 05:30:07', '国际米兰', null, null, null, '国际国际', '100', 'a683d25e-20d4-4b18-b8df-122b9b22da52', '1');
INSERT INTO `t_admin_role` VALUES ('ce95855e-6e28-415d-b3a7-159de53a5cc0', '2015-06-23 06:41:22', '贝克汉姆', null, null, null, '噢噢噢噢', '100', '157d1e87-274a-43fb-9ca1-550de9d40e9a', '1');
INSERT INTO `t_admin_role` VALUES ('fa2a4509-4184-4066-ab5f-043523c77536', '2015-06-23 16:27:43', '伊布', null, null, null, '霸王举鼎', '100', 'guest', '1');
INSERT INTO `t_admin_role` VALUES ('guest', null, 'Guest', null, null, null, '只拥有只看的权限', '1', null, '1');
INSERT INTO `t_admin_role` VALUES ('jsAdmin', null, '角色管理员', null, null, null, null, '2', '0', '1');
INSERT INTO `t_admin_role` VALUES ('sjyAdmin', null, '数据源管理员', null, null, null, null, '4', '0', '1');
INSERT INTO `t_admin_role` VALUES ('yhAdmin', null, '用户管理员', null, null, null, null, '3', '0', '1');
INSERT INTO `t_admin_role` VALUES ('zyAdmin', null, '资源管理员', null, null, null, null, '1', '0', '1');

-- ----------------------------
-- Table structure for `t_admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_role_menu`;
CREATE TABLE `t_admin_role_menu` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  `menu_id` varchar(36) NOT NULL,
  `stat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_21ifosjxjf3q4121g525vip7n` (`menu_id`),
  KEY `FK_ov5dry220ymp5iplwcpw3eo38` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_role_menu
-- ----------------------------
INSERT INTO `t_admin_role_menu` VALUES ('006d9002-b99e-4744-a2ac-188594ccba27', 'a683d25e-20d4-4b18-b8df-122b9b22da52', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('02c187db-8cef-49fc-bb73-b326370331c3', 'guest', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('0543a34b-9559-4f6d-a12c-70d563379a49', '0', 'yhglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('059bdec0-4615-492a-b993-b426d8f0348a', 'guest', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('063ac96c-3c2e-482b-8b58-99c3b5ec51ec', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('07266eef-ae4c-41ce-96c6-72fee5c5cb20', '0', 'zyglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('08b10956-6730-439b-aea1-dfe06c7662df', 'guest', 'yhglDateGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('0a4f9368-5b3a-4856-bcb9-b56b24258668', '0', '472201fa-a63b-4319-893f-adef97bc3894', '1');
INSERT INTO `t_admin_role_menu` VALUES ('0a5c48b3-44dd-4ff3-b7ff-e05b9d71e8f1', '0', 'yhglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('0adb9938-7883-4e79-b566-2befe4aea8f8', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('0b005ce7-79e4-42af-ab41-31e41b339b57', 'fa2a4509-4184-4066-ab5f-043523c77536', '472201fa-a63b-4319-893f-adef97bc3894', '1');
INSERT INTO `t_admin_role_menu` VALUES ('0c96b5de-398f-49f8-80de-d65f55b86ef3', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('0d3f4f26-610e-49ed-b814-d3a4894a1406', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zyglMenu', '1');
INSERT INTO `t_admin_role_menu` VALUES ('0efa0e74-221b-48e7-aa95-64286ea05360', '221f8fb8-24a6-47d8-b429-44dbe8313d03', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('10', 'jsAdmin', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('101f5621-d562-4a18-8c24-ef83bdf27e9b', 'guest', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('11068d1f-30ad-44f5-a748-aeb6293d9b6a', 'guest', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('12', 'jsAdmin', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('12cd39fb-f433-492a-b6df-e16c74213d92', '0', 'zyglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('14', 'jsAdmin', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('16', 'jsAdmin', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('174fcbd8-a83d-408b-98c0-9714b2688074', 'bcd297f2-60e3-4d9d-a6be-d9fb5065091b', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('18', 'jsAdmin', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('19eddd08-726e-4a06-9f76-064346ca182d', 'bcd297f2-60e3-4d9d-a6be-d9fb5065091b', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1a60696b-7731-4f36-a620-17f92a51cd7a', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1b41d2b8-6876-48e3-b0f5-c05c90e45799', 'guest', 'yhglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1b536359-dcd5-4ce2-8d73-cd89e7ed6174', '0', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1b9dd724-f61a-423f-8c7a-7eabf8088ece', 'guest', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1be82b9c-af2a-4ae5-bac5-7fb689195109', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1bfb15f8-ba20-4cd9-87a6-6b355e4778a5', '0', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1c776d42-a7bd-4e83-87a5-7815f8b7591e', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1c963429-1369-40f3-8b39-5e86f7b4f6d0', 'guest', 'sjygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1cd695b7-f70f-4701-acf6-f245550a722c', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1d6f1b84-577b-44f4-a814-6f5d60d0a468', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglBatchDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1e011e56-b813-4d9f-a1cc-7c66b1eff4a9', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1e1243c7-35c4-44d5-9d36-b4007f792c0e', 'bcd297f2-60e3-4d9d-a6be-d9fb5065091b', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('1eb89f55-88c8-4e5e-a204-37f42014c423', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zyglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('21', 'jsAdmin', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('21909ddb-c6f2-4d28-bfff-daf104daf4fe', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('22f21f71-ad7b-4dba-95e0-301a27bc3510', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('23', 'sjyAdmin', 'sjygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('2301bd48-8f7f-4253-8524-e4e254db954c', '8c857741-3965-47de-87a9-62851dc1f404', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('23e0eb1b-aabc-4eb5-b519-cfd52e07d826', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'zyglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('26b152b6-564d-450c-a60d-016a9671fb74', 'guest', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('275d90cf-1fa6-4139-99e7-599f36033417', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('2794ae13-638c-4ad6-a16f-041f8617b18b', '0', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('288a5217-1de8-4144-8465-0a7201fff218', 'guest', 'yhgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('2af0ee7e-4bff-465a-be63-d4d939cfe3a0', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('2b5c4add-47e2-4385-bc8b-e66a7d3af6df', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('2b7cc7a6-76c5-4744-b5e4-b428f7b719ee', '0', '472201fa-a63b-4319-893f-adef97bc3894', '1');
INSERT INTO `t_admin_role_menu` VALUES ('2c37a1b1-fcd5-4758-abe7-f274227e395e', 'guest', 'yhglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('2d8dee98-0d96-487d-bdf0-aa46744b0ce7', '67513800-5321-410b-b1ea-b34db950c7ed', 'zyglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('306c70a8-98ff-438d-abf3-e312326e0230', '0', '9d20aa49-24ad-4114-a72d-e63b2c630f2e', '1');
INSERT INTO `t_admin_role_menu` VALUES ('307487ae-2433-405a-8a17-12844e326078', 'guest', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('315332ef-807a-4b44-99df-cdee3914621d', 'guest', 'zyglMenu', '1');
INSERT INTO `t_admin_role_menu` VALUES ('32', 'yhAdmin', 'yhgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('32bc1ec3-c105-486f-a285-9e3c1ad068be', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('34', 'yhAdmin', 'yhglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('35eefea8-19be-4929-92f3-532c7252ad1d', '0', 'yhglBatchDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('36', 'yhAdmin', 'yhglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('369a8c8c-40c7-4168-9a60-b37ed6f4c722', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('38', 'yhAdmin', 'yhglBatchDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('3870bcce-4f56-4e98-9988-0773994ce862', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'xtgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('3939c60d-05d5-4a14-89dd-11c6436ca2fc', '67513800-5321-410b-b1ea-b34db950c7ed', 'zyglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('39fc5b17-d60f-4bb4-b89b-25f41e53148f', '0', 'yhglEditPwdPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('3b2ee9c7-953f-4dbf-a442-f6aa75790992', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglEditPwd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('3b8d6d7c-f45d-48d6-b64b-9e8b2693030a', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('3e204742-c16c-4721-8fa0-5b2ab784a0f4', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zyglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('3e86bbe1-a1d5-41a2-909e-057f1747f48d', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('3e887a23-6c4a-4cca-8182-7356f24d091b', 'guest', 'xtgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('3eaa61b5-11f1-4b18-9580-548c7abbeabf', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4', 'jsAdmin', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('41', 'yhAdmin', 'yhglDateGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4183f6d8-a345-4603-91e4-48e3ed83594a', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('43', 'yhAdmin', 'yhglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4355970b-2406-4722-9f5d-ce532bbe57a4', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('43c0d9f7-3133-48d1-8c0c-3ec5c02256b5', 'bcd297f2-60e3-4d9d-a6be-d9fb5065091b', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('441369df-dd9f-4838-8577-804b96a385e1', 'guest', '1e2a00c3-0241-4257-9955-202898e8c4df', '1');
INSERT INTO `t_admin_role_menu` VALUES ('442c4640-2459-412a-ae43-ec626f6b1b1e', 'guest', 'yhglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('44b31599-9c16-45c0-a3bc-f4bb0d8ad179', 'guest', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('44cdf23a-92ac-41cb-b511-b871f79d40e9', '0', 'zyglMenu', '1');
INSERT INTO `t_admin_role_menu` VALUES ('45', 'yhAdmin', 'yhglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('46a30c07-19b9-4717-b86e-a918d36c3b36', 'guest', 'yhglBatchDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('47', 'yhAdmin', 'yhglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('48e07a6d-3f53-4960-9ebb-6491cb81dd1e', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('49', 'yhAdmin', 'yhglEditPwd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('492f1e56-f21d-4835-b70d-510334f7c113', 'guest', 'yhglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('498cdef5-2c9b-4e92-804e-8bf3145c04b0', '0', 'zyglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4c4fb024-8c7c-451f-959a-7e5356fb0103', 'guest', 'zyglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4d2ec590-75e6-498b-9308-d7ac2e78aa49', 'guest', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4d8e5133-44ff-4b1e-a3a2-0d2d9813bff7', 'a683d25e-20d4-4b18-b8df-122b9b22da52', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4db92e26-6ea4-47ae-b1ff-431272ed4bf8', 'guest', 'yhglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4dbb9e9d-23e2-46fb-85b2-c846759eeb20', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4de5eae2-752e-4392-8a0e-195470e0d9b5', '0', 'yhglEditPwd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4e51e3d2-2821-491f-ba2e-c450c3789755', 'guest', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4fa01c10-5ea6-4b1b-b1bc-2781734015e4', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('4fdf5249-84e6-40bc-ba6d-1a49de8e962b', 'guest', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('500f09d8-92e7-4c37-8493-048de5f00dfd', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('505aa101-9ea7-42b1-b730-ce8d986504e6', '8c857741-3965-47de-87a9-62851dc1f404', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('51', 'yhAdmin', 'yhglEditPwdPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('5120e5c6-8117-4f53-94e8-042f53714935', '0', 'yhglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('52448dec-ef0d-4353-8af5-31d98f279a6a', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('52c452d9-adda-4e27-9ad4-9c5ab5258aee', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('53', 'yhAdmin', 'yhglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('541e7e31-71e9-499e-9ae5-566b9dcf8783', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('55', 'yhAdmin', 'yhglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('55999248-eaeb-467e-9b46-0b1c306e0029', '0', 'yhglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('55b07116-cf3f-49b4-996b-0c5199179e1f', '0', 'sjygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('58', 'zyAdmin', 'zygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('580a975c-d346-49fd-83b4-986b7c67c09e', '0', 'yhglBatchDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('589e89e8-9b40-4f1f-9893-ac12a5cfb96b', '0', 'yhglEditPwdPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('58a15a5f-253c-4be8-90e0-8c648a3d6f2a', 'a15e734c-95a7-4e53-9f4d-6bc8ae6d1b62', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('593554dc-c540-49fc-a19c-0aa7a7a3eada', 'guest', 'yhglEditPwdPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('5958386d-5a90-4ef1-be63-d8e421744658', '0', 'yhgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('59707bb9-c405-4c88-9c8a-c9ff21e9fb03', 'guest', 'zyglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('5993d70f-7db2-4f56-b328-0c5ab1c11fcd', '0', 'yhglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('5b661fba-ee5b-4b30-8d13-bbe6e419aa40', '0', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('5b9d04b7-42e4-4995-9cfb-07f7a8d6c2a8', 'guest', 'yhglEditPwd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('5da151f2-42f5-416e-a478-ae185db2661e', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('5f41524f-bb39-4b51-9faa-5830d60f0b43', '0', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('5f928cde-3d6a-4625-9138-81417cfca222', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('6', 'jsAdmin', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('60', 'zyAdmin', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('60dac4e2-000a-4d39-b252-94414710e2ae', '67513800-5321-410b-b1ea-b34db950c7ed', 'zyglMenu', '1');
INSERT INTO `t_admin_role_menu` VALUES ('61888abf-ff02-4eb0-a343-7642192f2213', 'guest', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('62', 'zyAdmin', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('6281ac63-9ad9-417e-96fe-48f6ec0aa49a', '0', 'yhglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('63dbb5e9-a13c-49d5-8142-41efebdbfbb4', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('64', 'zyAdmin', 'zyglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('6479f63e-fb72-409f-a12d-f7e269a7dcc3', '0', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('66', 'zyAdmin', 'zyglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('67174e6f-aa18-4ee7-885a-2601bd7f2235', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('68', 'zyAdmin', 'zyglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('68d1b76f-5ed9-446b-8f57-0ae11a9cfca5', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('692c8312-2662-4591-9186-abf24571a3c5', '0', 'yhglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('6b6f9673-00bc-4123-bbec-443c6ec85f45', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('6c14e089-d985-4961-a14b-1d6a221e5e71', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('6c841b18-7d14-4942-8b26-d2f2e44855e9', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'zygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('6e7865f6-334f-4df3-8230-029e7769de35', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('6f2026fd-4167-4bb2-8f07-a9d2860d0895', '0', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('70', 'zyAdmin', 'zyglMenu', '1');
INSERT INTO `t_admin_role_menu` VALUES ('723018a0-2862-411e-aef6-6ca31b8c2727', 'guest', 'yhglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('72e3acea-1b80-4587-bb24-d499355a7ad1', 'guest', '1e2a00c3-0241-4257-9955-202898e8c4df', '1');
INSERT INTO `t_admin_role_menu` VALUES ('73', 'zyAdmin', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('734e1b35-f900-41fb-959a-0cca2fb539a8', 'guest', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('750af7be-e1f1-4abe-bbea-cc0df547ac68', 'guest', 'yhglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('75897abe-d414-438c-baf3-0a16e7f77484', 'guest', 'yhglEditPwd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('75dc610a-cf7b-44d8-b177-319bc3608fb6', '0', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('75e657a4-c8c7-42c9-850b-5dcb4651c3f0', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('7614bbbf-0ec5-45c1-9186-d2df9ba00303', 'guest', 'zyglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('77699c06-ec72-4a20-81b0-2afff0e64f9d', 'a683d25e-20d4-4b18-b8df-122b9b22da52', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('77953349-9709-4850-b2f9-385c6678fbdb', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('78ead859-9185-4920-8082-9cc40464e24e', '0', 'yhglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('7a1a4206-ef08-49bd-8f67-3c76b4ac41a4', 'guest', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('7c0bc4b1-6ffe-4121-aee0-4efb3b510c19', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('7cd8991a-9886-4359-bbb8-f9c91a8ac5e0', 'guest', 'zyglMenu', '1');
INSERT INTO `t_admin_role_menu` VALUES ('7dd3561d-0403-43c7-bae8-611ffafad3ff', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('7f0f4b7f-33ff-430e-82c6-260b34b3c7de', '0', '1e2a00c3-0241-4257-9955-202898e8c4df', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8', 'jsAdmin', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('813b55fb-3319-4e0e-81bf-c187c2659b41', 'guest', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8165e609-4d06-49fc-abb4-a71b8b5dcdad', '0', 'yhglDateGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8263bd05-5eee-4e72-8c35-925146ddba57', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'sjygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('82b21567-f633-4f75-9142-3699cb847e44', '8c857741-3965-47de-87a9-62851dc1f404', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('83953ff7-0c0a-4dbf-bb96-3fb987d9b70d', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('855fe871-4d6d-4cfd-bc9d-248ac307b8de', '0', '05b3d370-2d74-48de-aff6-65bf2f56584b', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8a910020-ac1d-4d85-8607-2b61b8af89b0', '0', 'zygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8b4a067a-eeeb-4b3d-9577-2f9027613a05', '0', '1e2a00c3-0241-4257-9955-202898e8c4df', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8d530690-b3e5-41a6-b2d1-de90338efe04', '0', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8dfbd592-3ab2-41cf-93af-89c410158a0e', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8e62f483-f8c5-4913-bade-f5b40e97857a', '56b82620-510c-4559-a755-4a135f89b598', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8e700192-bb99-48a2-9fcf-8ada89a05cfe', '0', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8ee23fe0-feb1-4f7e-96fa-c50cc1a7a3ae', '67513800-5321-410b-b1ea-b34db950c7ed', 'zyglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('8f0075dc-1d15-44ef-a97e-7c81202ac577', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('903dfe17-4651-4559-a1e9-a6ff5bd3119f', 'guest', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('90d7a253-fc06-4013-984b-c4644aec50ce', '0', 'yhglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('91099680-c1e3-4b08-8eec-6aabed5f67c2', 'bcd297f2-60e3-4d9d-a6be-d9fb5065091b', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9385611d-6f41-4755-97c5-c6508e11d13e', '8c857741-3965-47de-87a9-62851dc1f404', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('93f6e581-a674-4839-b79b-6c8b3b749b3f', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('961309b1-3fd5-4289-9e53-677d5dccfad1', '0', 'yhglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9615fbf8-231c-40e3-bf8f-5b14c0e806c5', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9640bcf9-466f-49a0-aac7-4563b85c0999', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('96a8f629-a112-47dc-9efb-4b7912e7d15a', 'fa2a4509-4184-4066-ab5f-043523c77536', '05b3d370-2d74-48de-aff6-65bf2f56584b', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9a0804d6-0979-485e-92ee-349d2f2e084a', '0', 'zyglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9a8abfbe-dced-461a-97ba-7ea8e94fbad4', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'zyglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9bf5d163-710c-4902-b3bb-82428e1733c3', '0', 'yhgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9d58bec6-6575-4bc2-8ed3-daba54b5d700', 'bcd297f2-60e3-4d9d-a6be-d9fb5065091b', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9e200e93-884b-41e4-98fb-4d5b914952f8', 'guest', 'zyglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9ed31c81-25f0-4d6a-9101-6afab4e1c3cd', 'guest', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('9eeff89f-1ccd-4642-8fd2-9d70097c57de', '0', 'zyglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a00f4e26-d2eb-4fce-8459-c4afacc52f0a', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a17856f4-0d3c-428b-a5de-9a91574c15f3', '0', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a3802c84-1449-4758-9221-c03686130678', '0', 'yhglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a4e87ace-6303-4308-87d2-e09e35f6a7d6', 'guest', 'yhglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a53237f6-fc16-4962-a846-b97515992f13', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a597d488-443e-4187-9168-fc702d927595', '0', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a6cbcedd-f636-4fc8-8c86-7b94be0ef3b5', 'guest', '9d20aa49-24ad-4114-a72d-e63b2c630f2e', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a7d40e10-96db-4dff-813e-08c40a6eef9a', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a84e2552-4515-41e2-b38e-072ffa4d8fc8', '794d1b55-ad94-40e0-8794-d5c8a34bb4a9', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a88a4204-efca-4f4c-b8b1-b10b14b347bc', '0', 'yhglDateGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a9035f63-68e6-4447-9dfb-61ed3e45638d', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'zyglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('a908db69-b2a8-4b6c-a83a-6ecbf7f6b6b4', '0', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('aaf6fe90-94e1-4744-a91f-951cb87a1eab', 'guest', 'yhglEditPwdPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('abbc2776-4f10-4534-b74a-8ecb124ad8a5', '0', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ac9f2f8c-6169-462e-af5c-710d73582135', '8c857741-3965-47de-87a9-62851dc1f404', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('acc9268a-1831-4104-82f4-481ab2b4df36', 'a683d25e-20d4-4b18-b8df-122b9b22da52', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ad7ba853-7b68-48ad-a18a-24dea062df80', '67513800-5321-410b-b1ea-b34db950c7ed', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('b025c037-ba4b-4377-a428-4b1a86afaf2e', '0', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('b25c752a-7b18-41ab-b429-87133ccb7245', '0', 'yhglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('b72fad9f-8879-4881-85d2-d0dadcdad89f', '0', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('b78fb8d9-5cfe-4ff1-8f79-ba72781a659d', 'guest', 'yhglDateGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('b7960652-e21b-4fde-9cc1-00c5c07787e7', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('b7c9a9b0-0462-49c4-90ad-e0c1d20f4f28', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('b8a42e5a-4401-4190-8840-1c6cc286b0a1', 'guest', 'jsglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ba2136cc-4265-48bb-a864-d10170e7b911', 'bcd297f2-60e3-4d9d-a6be-d9fb5065091b', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('bc30f19f-3c44-4010-bcaa-eda246c44462', 'guest', 'zyglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('bd48f703-c729-4710-8cad-94901a39d25d', 'guest', 'zyglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('bdd770bf-f99d-46c7-b01c-4e45766945f4', 'guest', 'yhglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('be2079b0-ea58-4c41-bf68-2ecdff78a863', 'guest', 'sjygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('bead001e-d3c2-4cfb-913b-6d4d842cc345', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('beed924f-13ea-4469-8616-67ec490fbd88', 'guest', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('bf72be90-1cc7-42d9-a390-3a4d69c96d5c', 'guest', 'zygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c00619c2-ef52-492e-971a-b97b80158d65', '0', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c01c7f69-4172-4f17-9d26-147e918b18fe', '67513800-5321-410b-b1ea-b34db950c7ed', 'zyglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c089ce97-f04a-4ca0-b62e-08c1c0d4d70a', '0', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c22a140b-d836-45a9-86ab-26f0bd0abd7c', 'guest', 'yhglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c246451a-8e89-41f9-9592-92ec91fab3c4', 'guest', 'yhglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c352ef7d-18e6-477a-8033-eb7053a17aa5', '221f8fb8-24a6-47d8-b429-44dbe8313d03', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c49a794e-4e04-44c2-a592-7325ee5d96c0', 'guest', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c5397c72-33ef-4d6e-88b5-52f342b20ad2', '73636a36-4c9e-4d1c-a9ea-073f1bf6cdad', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c679aae4-4951-432f-acff-402c06286acb', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglEditPwdPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c75b36bb-07d5-4472-9d3c-c57e830fb6f3', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c79cabbc-e399-47b5-8dd7-749b43ed7a26', '67513800-5321-410b-b1ea-b34db950c7ed', 'zygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c8794517-cabb-465c-bc9e-5c2ca3fdc98b', '12b04d1e-e177-41d1-aa33-4eaaf3e5b874', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('c9d85d6d-977c-492e-acb7-3a8d59b3bde7', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'zyglMenu', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ca0bfbf4-255a-47f6-8f8d-76efbcb8c1e5', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('cb40be49-134e-49ba-8570-2dac8871e880', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zyglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('cde854f4-8623-4139-8923-6c963456e2ca', '0', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('d166dde0-fb3a-4c87-a0a1-e67679108d17', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('d33fde86-b56c-4108-81a4-343585541865', '0', '05b3d370-2d74-48de-aff6-65bf2f56584b', '1');
INSERT INTO `t_admin_role_menu` VALUES ('d40b3e9c-0130-4179-a8c9-a0c3d6c16313', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('d6c2f74a-c6f7-41f0-a6ba-232b953dea70', '0', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('d6ec4456-f73f-47bc-8391-586ad4823f85', 'guest', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('d735fafe-ab17-4684-854e-1797310bc00f', 'guest', 'yhgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('d88d271d-c546-4031-b464-c695404e33c9', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('d8d692bb-1032-4cd5-935b-100ca7e501fc', '0', 'zyglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('dc12caf5-1247-4c99-84f8-8ecd3af1b998', 'guest', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ddc55a2d-0f17-4ce2-b01e-d5a6d054b051', '0', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('df3740a9-07f6-46d5-8426-114ef9d80cb4', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglDateGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('df6e7ab5-63b1-4f3a-bbb2-142e43ad9ad9', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('e1df888e-bf4c-4626-8898-acaa26b09665', '8c857741-3965-47de-87a9-62851dc1f404', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('e1fa31a8-2ec8-4868-a653-7dbacc66358a', '67513800-5321-410b-b1ea-b34db950c7ed', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('e2b5d491-b9d1-4af7-a1b1-f6681f3eb4e6', 'fa2a4509-4184-4066-ab5f-043523c77536', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('e35b5da4-60a3-4281-8131-96d6d1889590', '46edee45-b7dc-49e1-a8e9-773632c83c75', 'jsglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('e5d5e52a-f799-497a-9086-d168abf402b6', '0', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('e7c82775-d727-4d97-a053-30936e65d1cb', '0', 'zygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ec6759de-b533-457a-a5a4-ed49f920bdd7', '0', 'xtgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ecf3286d-3524-4e81-8881-8d2da88309a1', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('edfd846d-07f4-4b90-8720-84eeae1b2ead', 'guest', 'yhglBatchDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ee31f1ef-b54a-4174-b399-d617f5819d29', '0', 'sjygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ee932152-3a53-45d5-ae4c-8eab2b623060', 'guest', 'yhglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('eee09c4c-1ed1-4cf5-a6ea-c5e6b3d513a8', '0', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ef966b68-936a-4bb9-82df-158e12bc776f', '0', 'jsglTreeGrid', '1');
INSERT INTO `t_admin_role_menu` VALUES ('efc48d98-4ccd-4985-9556-a7d69e5931df', 'guest', 'jsgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f04e7836-f708-48f1-97b9-80824f1e198b', '0', 'yhglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f15dfa13-679d-4184-a9a9-a0b5a5010b45', 'guest', 'zygl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f1ba1bd1-3450-4582-a3fe-89ae1445efba', '0', 'yhglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f230cd0b-3331-4a00-9d3e-537bab686ad2', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f2fa4adf-6115-47b0-8bd9-4dbbb95dcb4d', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f30e694a-13b5-4e1c-acfa-eeb78e1136ea', 'guest', 'zyglEditPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f3a57912-4318-40e5-b9ac-e04cf70331ba', 'guest', 'yhglDelete', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f865754e-7d02-4dcc-81cf-ad0c0fd21a1c', '7a52aa90-5786-4559-ac3d-03a3591a3828', 'jsglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f896c731-76b5-4c18-a206-cadac4c3a610', '794d1b55-ad94-40e0-8794-d5c8a34bb4a9', 'jsglGrant', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f94dfcec-2538-4314-b621-147ddc859065', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('f96cdfd9-6645-4e3c-b25d-be7bed2b6ca4', '1c5ceb8f-fad9-42e9-be0a-b42625d18625', 'jsglGrantPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('fa4181ce-06e4-414e-95cb-0d51663d717c', '56b82620-510c-4559-a755-4a135f89b598', 'zyglAdd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('fb359044-5777-41e5-bd8b-827875055241', '0', 'yhglEditPwd', '1');
INSERT INTO `t_admin_role_menu` VALUES ('fc0c3d3c-d0fe-4fac-9a96-2804cd4164ac', '0', 'zyglMenu', '1');
INSERT INTO `t_admin_role_menu` VALUES ('fdf4dccf-e31d-42e3-b935-076ffb5b6125', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglEdit', '1');
INSERT INTO `t_admin_role_menu` VALUES ('feafb478-845a-4bc5-8b3f-bc0d909af087', 'guest', 'yhglAddPage', '1');
INSERT INTO `t_admin_role_menu` VALUES ('fed8ea7a-a532-4594-a3ea-575200175ce7', 'a15e734c-95a7-4e53-9f4d-6bc8ae6d1b62', 'xtgl', '1');
INSERT INTO `t_admin_role_menu` VALUES ('ffbc3f9d-73d7-4819-b444-558d003a03a4', '8827a5cb-7275-48e8-b983-7667696e8aaf', 'yhglGrantPage', '1');

-- ----------------------------
-- Table structure for `t_admin_tab`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_tab`;
CREATE TABLE `t_admin_tab` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `tab_name` varchar(50) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `stat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_tab
-- ----------------------------
INSERT INTO `t_admin_tab` VALUES ('1', '系统模块', '1', '2016-03-16 10:42:31', '2016-03-16 10:42:33', '1');
INSERT INTO `t_admin_tab` VALUES ('2', '教委模块', '2', '2016-03-16 10:41:26', '2016-03-16 10:41:29', '1');

-- ----------------------------
-- Table structure for `t_admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_users`;
CREATE TABLE `t_admin_users` (
  `id` varchar(36) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `gender` int(11) DEFAULT NULL,
  `isAdmin` int(11) DEFAULT NULL,
  `modifydatetime` datetime DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `pj_no` varchar(36) DEFAULT NULL,
  `post_no` varchar(36) DEFAULT NULL,
  `password` varchar(36) NOT NULL,
  `qjy_account` varchar(36) DEFAULT NULL,
  `user_account` varchar(36) DEFAULT NULL,
  `user_image` varchar(36) DEFAULT NULL,
  `user_no` varchar(36) DEFAULT NULL,
  `stat` int(11) DEFAULT '1' COMMENT '是否有效 1 有效 0 无效',
  `isDelete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_users
-- ----------------------------
INSERT INTO `t_admin_users` VALUES ('0', '212', '2015-06-18 10:04:10', null, '124226@qq.com', '2', null, '2015-10-30 18:05:24', '超管41111', null, null, 'e10adc3949ba59abbe56e057f20f883e', null, '超管', null, '2345', '1', null);
INSERT INTO `t_admin_users` VALUES ('071b92da-aadb-4f4c-9b74-82a7f1d110a0', null, '2015-06-19 13:45:42', '1', null, '2', '1', null, '3', null, null, 'c81e728d9d4c2f636f067f89cc14862c', 'qjy_3', '22', null, '34', '0', null);
INSERT INTO `t_admin_users` VALUES ('0b421ac0-8ef1-4ab4-831a-070a947da4ef', '321321', '2015-06-19 16:12:43', '1', '30908245192@qq.com', '1', '0', '2015-07-31 16:32:30', '1231', null, null, 'e10adc3949ba59abbe56e057f20f883e', 'qjy_1231', '1231', null, '12321', '1', null);
INSERT INTO `t_admin_users` VALUES ('1', null, '2015-06-18 10:04:10', '1', null, '2', null, null, 'admin1', null, null, 'e10adc3949ba59abbe56e057f20f883e', null, '3', null, '56', '1', null);
INSERT INTO `t_admin_users` VALUES ('19dbc9fb-dd46-4b4b-94b7-87ae959a589d', null, '2015-06-19 13:48:22', '1', null, '1', '1', null, '123', null, null, '202cb962ac59075b964b07152d234b70', 'qjy_123', '33', null, '78', '0', null);
INSERT INTO `t_admin_users` VALUES ('1da1979e-f2e9-4260-8684-9e454850e3b5', null, '2015-06-19 13:38:05', '1', null, '2', '1', null, '2', null, null, 'c81e728d9d4c2f636f067f89cc14862c', 'qjy_2', '46', null, '89', '0', null);
INSERT INTO `t_admin_users` VALUES ('2', null, '2015-06-18 10:04:10', '', null, '1', null, null, 'admin2', null, null, 'e10adc3949ba59abbe56e057f20f883e', null, '21', null, '90', '1', null);
INSERT INTO `t_admin_users` VALUES ('3', null, '2015-06-18 10:04:10', '', null, '2', null, null, 'admin3', null, null, 'e10adc3949ba59abbe56e057f20f883e', null, '89', null, '123', '1', null);
INSERT INTO `t_admin_users` VALUES ('3456f2ff-4a0b-4f4f-8c0a-11d9274d034c', '23', '2015-06-20 10:31:31', '1', '3090824ccc@qq.com', '1', '0', '2015-06-20 10:33:35', 'test', null, null, 'e10adc3949ba59abbe56e057f20f883e', 'qjy_test', 'test', null, 'test', '1', null);
INSERT INTO `t_admin_users` VALUES ('4', '23', '2015-06-18 10:04:10', '1', '33@qq.com', '2', null, '2015-06-22 22:36:43', 'admin41', null, null, 'e10adc3949ba59abbe56e057f20f883e', null, 'gfhgfd', null, '2341', '0', null);
INSERT INTO `t_admin_users` VALUES ('7e419088-957a-4df1-83e6-14d68e15115a', '224', '2015-06-20 11:52:16', '0', '122354@qq.com', '2', '0', '2015-06-20 11:54:05', '撒旦撒旦撒旦撒旦撒旦撒旦', null, null, '508df4cb2f4d8f80519256258cfb975f', 'qjy_123', 'test1', null, '1234', '0', null);
INSERT INTO `t_admin_users` VALUES ('8f91fb24-7e13-4ef3-9f04-fbe978a56234', '23', '2015-06-22 20:02:37', '1', '', '1', '0', null, '2323', null, null, '2467d3744600858cc9026d5ac6005305', 'qjy_2323', '23232', null, '232323', '0', null);
INSERT INTO `t_admin_users` VALUES ('943c1449-f015-4887-92ca-b2fa478e1d4e', null, null, '1', null, '1', '1', null, 'aaaa', null, null, '202cb962ac59075b964b07152d234b70', 'qjy_aaaa', 'er', null, '567', '0', null);
INSERT INTO `t_admin_users` VALUES ('a23c07bf-1f5a-4044-85a5-2e6c07fd8f19', '32322332', '2015-06-22 20:03:22', '', '', '1', '0', null, '3232', null, null, '727ea5586da5a8fb76cc7b12e01895cc', 'qjy_3232', '32322332', null, '2332', '1', null);
INSERT INTO `t_admin_users` VALUES ('a247b515-0118-4237-8ce8-f0bf8256e555', '2', '2015-06-19 14:52:18', '1', '30323082419@qq.com', '1', '0', null, '3', null, null, 'c81e728d9d4c2f636f067f89cc14862c', 'qjy_3', '1', null, '7865', '1', null);
INSERT INTO `t_admin_users` VALUES ('b7d94a44-4d2e-47ab-9a54-d96304ad4940', '22', '2015-06-22 22:11:09', '1', '2323@qq.com', '1', '0', null, '22222', null, null, 'e3ceb5881a0a1fdaad01296d7554868d', 'qjy_22222', '22222', null, '22222', '1', null);
INSERT INTO `t_admin_users` VALUES ('d2347139-e623-4cab-87ee-7b1e2de91b5c', '23', '2015-06-20 12:01:07', '1', '22@qq.com', '1', '0', '2015-06-20 12:01:17', '123', null, null, '508df4cb2f4d8f80519256258cfb975f', 'qjy_123', 'test1', null, '123', '1', null);
INSERT INTO `t_admin_users` VALUES ('f17a4718-daff-4b89-ac4e-412c3f0dd8bd', '23', '2015-07-27 14:36:38', null, 'dsfisz@77.com', '1', '0', '2015-07-27 14:42:03', '778', null, null, 'e10adc3949ba59abbe56e057f20f883e', 'qjy_778', '778', null, '1239', '1', null);
INSERT INTO `t_admin_users` VALUES ('fea96af5-65b1-4c8d-ae0d-62ceed5ef988', '21', '2015-06-19 23:06:52', '1', '12345dd@qq.com', '1', '0', null, 'sddasds', null, null, 'e10adc3949ba59abbe56e057f20f883e', 'qjy_sddasds', '6677', null, '121dw', '1', null);
INSERT INTO `t_admin_users` VALUES ('guest', null, '2015-06-18 10:04:10', '1', null, '1', null, null, 'guest', null, null, 'e10adc3949ba59abbe56e057f20f883e', null, 'qwq', null, '5454354', '1', null);

-- ----------------------------
-- Table structure for `t_admin_users_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_users_role`;
CREATE TABLE `t_admin_users_role` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `user_id` varchar(36) NOT NULL DEFAULT '1',
  `role_id` varchar(36) NOT NULL,
  `stat` int(11) DEFAULT '1' COMMENT '是否有效 1 有效 0失效',
  PRIMARY KEY (`id`),
  KEY `FK_cst9w4q9kmdknxckc42i1iclo` (`role_id`),
  KEY `FK_hln6xj2t05u8g67fl2v1j46o3` (`user_id`),
  CONSTRAINT `FK_cst9w4q9kmdknxckc42i1iclo` FOREIGN KEY (`role_id`) REFERENCES `t_admin_role` (`id`),
  CONSTRAINT `FK_hln6xj2t05u8g67fl2v1j46o3` FOREIGN KEY (`user_id`) REFERENCES `t_admin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_users_role
-- ----------------------------
INSERT INTO `t_admin_users_role` VALUES ('0', '0', '0', '1');
INSERT INTO `t_admin_users_role` VALUES ('010da4a0-a54a-4970-acfd-19184d063345', 'b7d94a44-4d2e-47ab-9a54-d96304ad4940', 'a15e734c-95a7-4e53-9f4d-6bc8ae6d1b62', '1');
INSERT INTO `t_admin_users_role` VALUES ('09156774-097c-418e-9180-36c2d063fd32', 'b7d94a44-4d2e-47ab-9a54-d96304ad4940', '157d1e87-274a-43fb-9ca1-550de9d40e9a', '1');
INSERT INTO `t_admin_users_role` VALUES ('1', '0', '0', '1');
INSERT INTO `t_admin_users_role` VALUES ('13', '0', 'jsAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('13f4fa01-e09b-4d39-9d8a-68495fd9802e', '0', 'jsAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('14', '0', '0', '1');
INSERT INTO `t_admin_users_role` VALUES ('17', '0', 'guest', '1');
INSERT INTO `t_admin_users_role` VALUES ('2', 'guest', 'guest', '1');
INSERT INTO `t_admin_users_role` VALUES ('221f8fb8-24a6-47d8-b429-44dbe8313d03', '0', '221f8fb8-24a6-47d8-b429-44dbe8313d03', '1');
INSERT INTO `t_admin_users_role` VALUES ('2532b9d1-ab61-4719-af7e-ed123f18d5d1', '0', '0', '1');
INSERT INTO `t_admin_users_role` VALUES ('3', '0', 'jsAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('33e0a005-7393-45c6-96a4-8643d5e88c02', 'f17a4718-daff-4b89-ac4e-412c3f0dd8bd', 'jsAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('34230ef5-9b6f-43c0-a052-0ef464d5e751', '0', 'guest', '1');
INSERT INTO `t_admin_users_role` VALUES ('4', '2', 'jsAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('46edee45-b7dc-49e1-a8e9-773632c83c75', '0', '46edee45-b7dc-49e1-a8e9-773632c83c75', '1');
INSERT INTO `t_admin_users_role` VALUES ('550acad4-bef9-4cb5-ad15-5fe1d9e57453', '3456f2ff-4a0b-4f4f-8c0a-11d9274d034c', 'jsAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('56b82620-510c-4559-a755-4a135f89b598', '0', '56b82620-510c-4559-a755-4a135f89b598', '1');
INSERT INTO `t_admin_users_role` VALUES ('67513800-5321-410b-b1ea-b34db950c7ed', '0', '67513800-5321-410b-b1ea-b34db950c7ed', '1');
INSERT INTO `t_admin_users_role` VALUES ('68166a6f-b54d-45e2-b1e9-6806b2d315b3', '1', 'fa2a4509-4184-4066-ab5f-043523c77536', '1');
INSERT INTO `t_admin_users_role` VALUES ('6f6d4e73-3ae9-4c5f-b1c4-f552508bcc8c', '0', 'jsAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('7', '4', 'sjyAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('794d1b55-ad94-40e0-8794-d5c8a34bb4a9', '0', '794d1b55-ad94-40e0-8794-d5c8a34bb4a9', '1');
INSERT INTO `t_admin_users_role` VALUES ('8', '3', 'yhAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('95ffd88d-5530-45aa-ad7b-4d2598ae0499', '0', 'guest', '1');
INSERT INTO `t_admin_users_role` VALUES ('9ecdb25c-ce56-40ab-93cf-07e7546f5400', '0', 'guest', '1');
INSERT INTO `t_admin_users_role` VALUES ('a15e734c-95a7-4e53-9f4d-6bc8ae6d1b62', '0', 'a15e734c-95a7-4e53-9f4d-6bc8ae6d1b62', '1');
INSERT INTO `t_admin_users_role` VALUES ('a331e9f9-c0dd-4d97-ba3c-88f6f554d82a', '0', '0', '1');
INSERT INTO `t_admin_users_role` VALUES ('a683d25e-20d4-4b18-b8df-122b9b22da52', '0', 'a683d25e-20d4-4b18-b8df-122b9b22da52', '1');
INSERT INTO `t_admin_users_role` VALUES ('a786c535-31ff-4fae-b00a-ce2ea630dcfa', '0', 'guest', '1');
INSERT INTO `t_admin_users_role` VALUES ('d95f9635-ee79-40ae-b00b-42882e3556f2', '0', 'guest', '1');
INSERT INTO `t_admin_users_role` VALUES ('de8e316c-efce-4a9a-9275-b7dfa779b2fd', '3456f2ff-4a0b-4f4f-8c0a-11d9274d034c', 'a15e734c-95a7-4e53-9f4d-6bc8ae6d1b62', '1');
INSERT INTO `t_admin_users_role` VALUES ('e339a9ce-aad9-491d-957e-352e2b4fdf68', '0b421ac0-8ef1-4ab4-831a-070a947da4ef', 'fa2a4509-4184-4066-ab5f-043523c77536', '1');
INSERT INTO `t_admin_users_role` VALUES ('f212d5e3-4190-4546-bd95-5c2aa61afebe', 'b7d94a44-4d2e-47ab-9a54-d96304ad4940', 'guest', '1');
INSERT INTO `t_admin_users_role` VALUES ('f8140bd1-fe9d-4031-8057-883adcf12b68', '3456f2ff-4a0b-4f4f-8c0a-11d9274d034c', 'sjyAdmin', '1');
INSERT INTO `t_admin_users_role` VALUES ('fa2a4509-4184-4066-ab5f-043523c77536', '0', 'fa2a4509-4184-4066-ab5f-043523c77536', '1');
