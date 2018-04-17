-- ThinkCMF SQL Dump Program
-- 
-- DATE : 2015-07-10 08:33:37
-- Vol : 1
DROP TABLE IF EXISTS `zysj_ad`;
CREATE TABLE `zysj_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL,
  `ad_content` text,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_ad ( `ad_id`, `ad_name`, `ad_content`, `status` ) VALUES  ('1','nav-ad','&lt;img src=&quot;/data/upload/navad.jpg&quot;&gt;','1');
DROP TABLE IF EXISTS `zysj_asset`;
CREATE TABLE `zysj_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) NOT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filepath` varchar(200) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `meta` text,
  `suffix` varchar(50) DEFAULT NULL,
  `download_times` int(6) NOT NULL,
  PRIMARY KEY (`aid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_auth_access`;
CREATE TABLE `zysj_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_auth_rule`;
CREATE TABLE `zysj_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('1','Admin','admin_url','admin/content/default','','内容管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('2','Api','admin_url','api/guestbookadmin/index','','所有留言','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('3','Api','admin_url','api/guestbookadmin/delete','','删除网站留言','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('4','Comment','admin_url','comment/commentadmin/index','','评论管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('5','Comment','admin_url','comment/commentadmin/delete','','删除评论','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('6','Comment','admin_url','comment/commentadmin/check','','评论审核','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('7','Portal','admin_url','portal/adminpost/index','','文章管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('8','Portal','admin_url','portal/adminpost/listorders','','文章排序','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('9','Portal','admin_url','portal/adminpost/top','','文章置顶','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('10','Portal','admin_url','portal/adminpost/recommend','','文章推荐','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('11','Portal','admin_url','portal/adminpost/move','','批量移动','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('12','Portal','admin_url','portal/adminpost/check','','文章审核','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('13','Portal','admin_url','portal/adminpost/delete','','删除文章','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('14','Portal','admin_url','portal/adminpost/edit','','编辑文章','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('15','Portal','admin_url','portal/adminpost/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('16','Portal','admin_url','portal/adminpost/add','','添加文章','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('17','Portal','admin_url','portal/adminpost/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('18','Portal','admin_url','portal/adminterm/index','','分类管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('19','Portal','admin_url','portal/adminterm/listorders','','文章分类排序','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('20','Portal','admin_url','portal/adminterm/delete','','删除分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('21','Portal','admin_url','portal/adminterm/edit','','编辑分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('22','Portal','admin_url','portal/adminterm/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('23','Portal','admin_url','portal/adminterm/add','','添加分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('24','Portal','admin_url','portal/adminterm/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('25','Portal','admin_url','portal/adminpage/index','','页面管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('26','Portal','admin_url','portal/adminpage/listorders','','页面排序','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('27','Portal','admin_url','portal/adminpage/delete','','删除页面','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('28','Portal','admin_url','portal/adminpage/edit','','编辑页面','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('29','Portal','admin_url','portal/adminpage/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('30','Portal','admin_url','portal/adminpage/add','','添加页面','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('31','Portal','admin_url','portal/adminpage/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('32','Admin','admin_url','admin/recycle/default','','回收站','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('33','Portal','admin_url','portal/adminpost/recyclebin','','文章回收','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('34','Portal','admin_url','portal/adminpost/restore','','文章还原','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('35','Portal','admin_url','portal/adminpost/clean','','彻底删除','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('36','Portal','admin_url','portal/adminpage/recyclebin','','页面回收','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('37','Portal','admin_url','portal/adminpage/clean','','彻底删除','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('38','Portal','admin_url','portal/adminpage/restore','','页面还原','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('39','Admin','admin_url','admin/extension/default','','扩展工具','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('40','Admin','admin_url','admin/backup/default','','备份管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('41','Admin','admin_url','admin/backup/restore','','数据还原','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('42','Admin','admin_url','admin/backup/index','','数据备份','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('43','Admin','admin_url','admin/backup/index_post','','提交数据备份','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('44','Admin','admin_url','admin/backup/download','','下载备份','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('45','Admin','admin_url','admin/backup/del_backup','','删除备份','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('46','Admin','admin_url','admin/backup/import','','数据备份导入','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('47','Admin','admin_url','admin/plugin/index','','插件管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('48','Admin','admin_url','admin/plugin/toggle','','插件启用切换','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('49','Admin','admin_url','admin/plugin/setting','','插件设置','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('50','Admin','admin_url','admin/plugin/setting_post','','插件设置提交','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('51','Admin','admin_url','admin/plugin/install','','插件安装','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('52','Admin','admin_url','admin/plugin/uninstall','','插件卸载','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('53','Admin','admin_url','admin/slide/default','','幻灯片','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('54','Admin','admin_url','admin/slide/index','','幻灯片管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('55','Admin','admin_url','admin/slide/listorders','','幻灯片排序','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('56','Admin','admin_url','admin/slide/toggle','','幻灯片显示切换','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('57','Admin','admin_url','admin/slide/delete','','删除幻灯片','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('58','Admin','admin_url','admin/slide/edit','','编辑幻灯片','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('59','Admin','admin_url','admin/slide/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('60','Admin','admin_url','admin/slide/add','','添加幻灯片','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('61','Admin','admin_url','admin/slide/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('62','Admin','admin_url','admin/slidecat/index','','幻灯片分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('63','Admin','admin_url','admin/slidecat/delete','','删除分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('64','Admin','admin_url','admin/slidecat/edit','','编辑分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('65','Admin','admin_url','admin/slidecat/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('66','Admin','admin_url','admin/slidecat/add','','添加分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('67','Admin','admin_url','admin/slidecat/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('68','Admin','admin_url','admin/ad/index','','网站广告','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('69','Admin','admin_url','admin/ad/toggle','','广告显示切换','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('70','Admin','admin_url','admin/ad/delete','','删除广告','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('71','Admin','admin_url','admin/ad/edit','','编辑广告','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('72','Admin','admin_url','admin/ad/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('73','Admin','admin_url','admin/ad/add','','添加广告','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('74','Admin','admin_url','admin/ad/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('75','Admin','admin_url','admin/link/index','','友情链接','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('76','Admin','admin_url','admin/link/listorders','','友情链接排序','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('77','Admin','admin_url','admin/link/toggle','','友链显示切换','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('78','Admin','admin_url','admin/link/delete','','删除友情链接','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('79','Admin','admin_url','admin/link/edit','','编辑友情链接','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('80','Admin','admin_url','admin/link/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('81','Admin','admin_url','admin/link/add','','添加友情链接','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('82','Admin','admin_url','admin/link/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('83','Api','admin_url','api/oauthadmin/setting','','第三方登陆','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('84','Api','admin_url','api/oauthadmin/setting_post','','提交设置','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('85','Admin','admin_url','admin/menu/default','','菜单管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('86','Admin','admin_url','admin/navcat/default1','','前台菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('87','Admin','admin_url','admin/nav/index','','菜单管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('88','Admin','admin_url','admin/nav/listorders','','前台导航排序','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('89','Admin','admin_url','admin/nav/delete','','删除菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('90','Admin','admin_url','admin/nav/edit','','编辑菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('91','Admin','admin_url','admin/nav/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('92','Admin','admin_url','admin/nav/add','','添加菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('93','Admin','admin_url','admin/nav/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('94','Admin','admin_url','admin/navcat/index','','菜单分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('95','Admin','admin_url','admin/navcat/delete','','删除分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('96','Admin','admin_url','admin/navcat/edit','','编辑分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('97','Admin','admin_url','admin/navcat/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('98','Admin','admin_url','admin/navcat/add','','添加分类','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('99','Admin','admin_url','admin/navcat/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('100','Admin','admin_url','admin/menu/index','','后台菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('101','Admin','admin_url','admin/menu/add','','添加菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('102','Admin','admin_url','admin/menu/add_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('103','Admin','admin_url','admin/menu/listorders','','后台菜单排序','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('104','Admin','admin_url','admin/menu/export_menu','','菜单备份','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('105','Admin','admin_url','admin/menu/edit','','编辑菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('106','Admin','admin_url','admin/menu/edit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('107','Admin','admin_url','admin/menu/delete','','删除菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('108','Admin','admin_url','admin/menu/lists','','所有菜单','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('109','Admin','admin_url','admin/setting/default','','设置','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('110','Admin','admin_url','admin/setting/userdefault','','个人信息','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('111','Admin','admin_url','admin/user/userinfo','','修改信息','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('112','Admin','admin_url','admin/user/userinfo_post','','修改信息提交','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('113','Admin','admin_url','admin/setting/password','','修改密码','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('114','Admin','admin_url','admin/setting/password_post','','提交修改','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('115','Admin','admin_url','admin/setting/site','','网站信息','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('116','Admin','admin_url','admin/setting/site_post','','提交修改','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('117','Admin','admin_url','admin/route/index','','路由列表','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('118','Admin','admin_url','admin/route/add','','路由添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('119','Admin','admin_url','admin/route/add_post','','路由添加提交','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('120','Admin','admin_url','admin/route/edit','','路由编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('121','Admin','admin_url','admin/route/edit_post','','路由编辑提交','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('122','Admin','admin_url','admin/route/delete','','路由删除','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('123','Admin','admin_url','admin/route/ban','','路由禁止','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('124','Admin','admin_url','admin/route/open','','路由启用','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('125','Admin','admin_url','admin/route/listorders','','路由排序','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('126','Admin','admin_url','admin/mailer/default','','邮箱配置','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('127','Admin','admin_url','admin/mailer/index','','SMTP配置','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('128','Admin','admin_url','admin/mailer/index_post','','提交配置','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('129','Admin','admin_url','admin/mailer/active','','邮件模板','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('130','Admin','admin_url','admin/mailer/active_post','','提交模板','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('131','Admin','admin_url','admin/setting/clearcache','','清除缓存','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('132','User','admin_url','user/indexadmin/default','','用户管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('133','User','admin_url','user/indexadmin/default1','','用户组','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('134','User','admin_url','user/indexadmin/index','','本站用户','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('135','User','admin_url','user/indexadmin/ban','','拉黑会员','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('136','User','admin_url','user/indexadmin/cancelban','','启用会员','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('137','User','admin_url','user/oauthadmin/index','','第三方用户','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('138','User','admin_url','user/oauthadmin/delete','','第三方用户解绑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('139','User','admin_url','user/indexadmin/default3','','管理组','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('140','Admin','admin_url','admin/rbac/index','','角色管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('141','Admin','admin_url','admin/rbac/member','','成员管理','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('142','Admin','admin_url','admin/rbac/authorize','','权限设置','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('143','Admin','admin_url','admin/rbac/authorize_post','','提交设置','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('144','Admin','admin_url','admin/rbac/roleedit','','编辑角色','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('145','Admin','admin_url','admin/rbac/roleedit_post','','提交编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('146','Admin','admin_url','admin/rbac/roledelete','','删除角色','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('147','Admin','admin_url','admin/rbac/roleadd','','添加角色','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('148','Admin','admin_url','admin/rbac/roleadd_post','','提交添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('149','Admin','admin_url','admin/user/index','','管理员','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('150','Admin','admin_url','admin/user/delete','','删除管理员','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('151','Admin','admin_url','admin/user/edit','','管理员编辑','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('152','Admin','admin_url','admin/user/edit_post','','编辑提交','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('153','Admin','admin_url','admin/user/add','','管理员添加','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('154','Admin','admin_url','admin/user/add_post','','添加提交','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('155','Admin','admin_url','admin/plugin/update','','插件更新','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('156','Admin','admin_url','admin/storage/index','','文件存储','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('157','Admin','admin_url','admin/storage/setting_post','','文件存储设置提交','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('158','Admin','admin_url','admin/slide/ban','','禁用幻灯片','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('159','Admin','admin_url','admin/slide/cancelban','','启用幻灯片','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('160','Admin','admin_url','admin/user/ban','','禁用管理员','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('161','Admin','admin_url','admin/user/cancelban','','启用管理员','1','');
INSERT INTO zysj_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('163','Admin','admin_url','admin/variable/index','','变量管理','1','');
DROP TABLE IF EXISTS `zysj_comments`;
CREATE TABLE `zysj_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_common_action_log`;
CREATE TABLE `zysj_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1','0','posts1','Portal-Article-index','11','1436250298','127.0.0.1');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('2','0','posts5','Portal-Article-index','5','1436366086','127.0.0.1');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('3','0','posts6','Portal-Article-index','2','1436341720','127.0.0.1');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('4','0','posts7','Portal-Article-index','2','1436372488','125.78.40.33');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('5','0','posts6','Portal-Article-index','17','1436453901','125.78.40.33');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('6','0','posts5','Portal-Article-index','1','1436375137','111.13.93.198');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('7','0','posts6','Portal-Article-index','1','1436375172','119.147.225.187');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('8','0','posts8','Portal-Article-index','1','1436408754','59.61.238.133');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('9','0','posts6','Portal-Article-index','1','1436418410','59.61.238.133');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('10','0','posts5','Portal-Article-index','2','1436437457','110.87.177.155');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('11','0','posts7','Portal-Article-index','2','1436427394','110.87.177.155');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('12','0','posts9','Portal-Article-index','59','1436452901','125.78.40.33');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('13','0','posts9','Portal-Article-index','3','1436448145','110.87.177.155');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('14','0','posts6','Portal-Article-index','1','1436444895','110.87.177.155');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('15','0','posts9','Portal-Article-index','2','1436452852','106.120.160.119');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('16','0','posts9','Portal-Article-index','1','1436448289','101.199.108.118');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('17','0','posts10','Portal-Article-index','1','1436449955','125.78.40.33');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('18','0','posts11','Portal-Article-index','1','1436450027','125.78.40.33');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('19','0','posts12','Portal-Article-index','13','1436453712','125.78.40.33');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('20','0','posts12','Portal-Article-index','1','1436450990','183.60.15.14');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('21','0','posts12','Portal-Article-index','1','1436450995','14.17.34.182');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('22','0','posts12','Portal-Article-index','2','1436451049','110.87.177.155');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('23','0','posts12','Portal-Article-index','1','1436451799','101.226.89.117');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('24','0','posts5','Portal-Article-index','1','1436452797','125.78.40.33');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('25','0','posts6','Portal-Article-index','1','1436452800','106.120.160.119');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('26','0','posts6','Portal-Article-index','1','1436452876','101.199.108.58');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('27','0','posts9','Portal-Article-index','1','1436452955','101.199.112.52');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('28','0','posts13','Portal-Article-index','1','1436453273','125.78.40.33');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('29','0','posts11','Portal-Article-index','1','1436454563','110.87.177.155');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('30','0','posts12','Portal-Article-index','1','1436454967','106.120.160.119');
INSERT INTO zysj_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('31','0','posts12','Portal-Article-index','1','1436455189','101.199.112.55');
DROP TABLE IF EXISTS `zysj_guestbook`;
CREATE TABLE `zysj_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL,
  `status` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_links`;
CREATE TABLE `zysj_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT '',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_menu`;
CREATE TABLE `zysj_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('1','0','Admin','Content','default','','0','1','内容管理','th','','30');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('2','1','Api','Guestbookadmin','index','','1','1','所有留言','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('3','2','Api','Guestbookadmin','delete','','1','0','删除网站留言','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('4','1','Comment','Commentadmin','index','','1','1','评论管理','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('5','4','Comment','Commentadmin','delete','','1','0','删除评论','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('6','4','Comment','Commentadmin','check','','1','0','评论审核','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('7','1','Portal','AdminPost','index','','1','1','文章管理','','','1');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('8','7','Portal','AdminPost','listorders','','1','0','文章排序','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('9','7','Portal','AdminPost','top','','1','0','文章置顶','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('10','7','Portal','AdminPost','recommend','','1','0','文章推荐','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('11','7','Portal','AdminPost','move','','1','0','批量移动','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('12','7','Portal','AdminPost','check','','1','0','文章审核','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('13','7','Portal','AdminPost','delete','','1','0','删除文章','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('14','7','Portal','AdminPost','edit','','1','0','编辑文章','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('15','14','Portal','AdminPost','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('16','7','Portal','AdminPost','add','','1','0','添加文章','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('17','16','Portal','AdminPost','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('18','1','Portal','AdminTerm','index','','0','1','分类管理','','','2');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('19','18','Portal','AdminTerm','listorders','','1','0','文章分类排序','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('20','18','Portal','AdminTerm','delete','','1','0','删除分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('21','18','Portal','AdminTerm','edit','','1','0','编辑分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('22','21','Portal','AdminTerm','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('23','18','Portal','AdminTerm','add','','1','0','添加分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('24','23','Portal','AdminTerm','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('25','1','Portal','AdminPage','index','','1','1','页面管理','','','3');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('26','25','Portal','AdminPage','listorders','','1','0','页面排序','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('27','25','Portal','AdminPage','delete','','1','0','删除页面','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('28','25','Portal','AdminPage','edit','','1','0','编辑页面','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('29','28','Portal','AdminPage','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('30','25','Portal','AdminPage','add','','1','0','添加页面','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('31','30','Portal','AdminPage','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('32','1','Admin','Recycle','default','','1','1','回收站','','','4');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('33','32','Portal','AdminPost','recyclebin','','1','1','文章回收','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('34','33','Portal','AdminPost','restore','','1','0','文章还原','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('35','33','Portal','AdminPost','clean','','1','0','彻底删除','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('36','32','Portal','AdminPage','recyclebin','','1','1','页面回收','','','1');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('37','36','Portal','AdminPage','clean','','1','0','彻底删除','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('38','36','Portal','AdminPage','restore','','1','0','页面还原','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('39','0','Admin','Extension','default','','0','1','扩展工具','cloud','','40');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('40','39','Admin','Backup','default','','1','1','备份管理','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('41','40','Admin','Backup','restore','','1','1','数据还原','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('42','40','Admin','Backup','index','','1','1','数据备份','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('43','42','Admin','Backup','index_post','','1','0','提交数据备份','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('44','40','Admin','Backup','download','','1','0','下载备份','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('45','40','Admin','Backup','del_backup','','1','0','删除备份','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('46','40','Admin','Backup','import','','1','0','数据备份导入','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('47','39','Admin','Plugin','index','','1','0','插件管理','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('48','47','Admin','Plugin','toggle','','1','0','插件启用切换','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('49','47','Admin','Plugin','setting','','1','0','插件设置','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('50','49','Admin','Plugin','setting_post','','1','0','插件设置提交','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('51','47','Admin','Plugin','install','','1','0','插件安装','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('52','47','Admin','Plugin','uninstall','','1','0','插件卸载','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('53','39','Admin','Slide','default','','1','1','幻灯片','','','1');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('54','53','Admin','Slide','index','','1','1','幻灯片管理','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('55','54','Admin','Slide','listorders','','1','0','幻灯片排序','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('56','54','Admin','Slide','toggle','','1','0','幻灯片显示切换','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('57','54','Admin','Slide','delete','','1','0','删除幻灯片','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('58','54','Admin','Slide','edit','','1','0','编辑幻灯片','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('59','58','Admin','Slide','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('60','54','Admin','Slide','add','','1','0','添加幻灯片','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('61','60','Admin','Slide','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('62','53','Admin','Slidecat','index','','1','1','幻灯片分类','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('63','62','Admin','Slidecat','delete','','1','0','删除分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('64','62','Admin','Slidecat','edit','','1','0','编辑分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('65','64','Admin','Slidecat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('66','62','Admin','Slidecat','add','','1','0','添加分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('67','66','Admin','Slidecat','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('68','39','Admin','Ad','index','','1','1','网站广告','','','2');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('69','68','Admin','Ad','toggle','','1','0','广告显示切换','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('70','68','Admin','Ad','delete','','1','0','删除广告','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('71','68','Admin','Ad','edit','','1','0','编辑广告','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('72','71','Admin','Ad','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('73','68','Admin','Ad','add','','1','0','添加广告','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('74','73','Admin','Ad','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('75','39','Admin','Link','index','','0','1','友情链接','','','3');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('76','75','Admin','Link','listorders','','1','0','友情链接排序','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('77','75','Admin','Link','toggle','','1','0','友链显示切换','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('78','75','Admin','Link','delete','','1','0','删除友情链接','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('79','75','Admin','Link','edit','','1','0','编辑友情链接','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('80','79','Admin','Link','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('81','75','Admin','Link','add','','1','0','添加友情链接','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('82','81','Admin','Link','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('83','39','Api','Oauthadmin','setting','','1','1','第三方登陆','leaf','','4');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('84','83','Api','Oauthadmin','setting_post','','1','0','提交设置','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('85','0','Admin','Menu','default','','1','1','菜单管理','list','','20');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('86','85','Admin','Navcat','default1','','1','1','前台菜单','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('87','86','Admin','Nav','index','','1','1','菜单管理','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('88','87','Admin','Nav','listorders','','1','0','前台导航排序','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('89','87','Admin','Nav','delete','','1','0','删除菜单','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('90','87','Admin','Nav','edit','','1','0','编辑菜单','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('91','90','Admin','Nav','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('92','87','Admin','Nav','add','','1','0','添加菜单','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('93','92','Admin','Nav','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('94','86','Admin','Navcat','index','','1','1','菜单分类','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('95','94','Admin','Navcat','delete','','1','0','删除分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('96','94','Admin','Navcat','edit','','1','0','编辑分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('97','96','Admin','Navcat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('98','94','Admin','Navcat','add','','1','0','添加分类','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('99','98','Admin','Navcat','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('100','85','Admin','Menu','index','','1','0','后台菜单','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('101','100','Admin','Menu','add','','1','0','添加菜单','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('102','101','Admin','Menu','add_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('103','100','Admin','Menu','listorders','','1','0','后台菜单排序','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('104','100','Admin','Menu','export_menu','','1','0','菜单备份','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('105','100','Admin','Menu','edit','','1','0','编辑菜单','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('106','105','Admin','Menu','edit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('107','100','Admin','Menu','delete','','1','0','删除菜单','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('108','100','Admin','Menu','lists','','1','0','所有菜单','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('109','0','Admin','Setting','default','','0','1','设置','cogs','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('110','109','Admin','Setting','userdefault','','0','1','个人信息','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('111','110','Admin','User','userinfo','','1','1','修改信息','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('112','111','Admin','User','userinfo_post','','1','0','修改信息提交','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('113','110','Admin','Setting','password','','1','1','修改密码','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('114','113','Admin','Setting','password_post','','1','0','提交修改','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('115','109','Admin','Setting','site','','1','1','网站信息','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('116','115','Admin','Setting','site_post','','1','0','提交修改','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('117','115','Admin','Route','index','','1','0','路由列表','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('118','115','Admin','Route','add','','1','0','路由添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('119','118','Admin','Route','add_post','','1','0','路由添加提交','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('120','115','Admin','Route','edit','','1','0','路由编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('121','120','Admin','Route','edit_post','','1','0','路由编辑提交','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('122','115','Admin','Route','delete','','1','0','路由删除','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('123','115','Admin','Route','ban','','1','0','路由禁止','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('124','115','Admin','Route','open','','1','0','路由启用','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('125','115','Admin','Route','listorders','','1','0','路由排序','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('126','109','Admin','Mailer','default','','1','1','邮箱配置','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('127','126','Admin','Mailer','index','','1','1','SMTP配置','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('128','127','Admin','Mailer','index_post','','1','0','提交配置','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('129','126','Admin','Mailer','active','','1','1','邮件模板','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('130','129','Admin','Mailer','active_post','','1','0','提交模板','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('131','109','Admin','Setting','clearcache','','1','1','清除缓存','','','1');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('132','0','User','Indexadmin','default','','1','1','用户管理','group','','10');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('133','132','User','Indexadmin','default1','','1','1','用户组','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('134','133','User','Indexadmin','index','','1','1','本站用户','leaf','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('135','134','User','Indexadmin','ban','','1','0','拉黑会员','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('136','134','User','Indexadmin','cancelban','','1','0','启用会员','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('137','133','User','Oauthadmin','index','','1','1','第三方用户','leaf','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('138','137','User','Oauthadmin','delete','','1','0','第三方用户解绑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('139','132','User','Indexadmin','default3','','1','1','管理组','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('140','139','Admin','Rbac','index','','1','1','角色管理','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('141','140','Admin','Rbac','member','','1','0','成员管理','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('142','140','Admin','Rbac','authorize','','1','0','权限设置','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('143','142','Admin','Rbac','authorize_post','','1','0','提交设置','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('144','140','Admin','Rbac','roleedit','','1','0','编辑角色','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('145','144','Admin','Rbac','roleedit_post','','1','0','提交编辑','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('146','140','Admin','Rbac','roledelete','','1','1','删除角色','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('147','140','Admin','Rbac','roleadd','','1','1','添加角色','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('148','147','Admin','Rbac','roleadd_post','','1','0','提交添加','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('149','139','Admin','User','index','','1','1','管理员','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('150','149','Admin','User','delete','','1','0','删除管理员','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('151','149','Admin','User','edit','','1','0','管理员编辑','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('152','151','Admin','User','edit_post','','1','0','编辑提交','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('153','149','Admin','User','add','','1','0','管理员添加','','','1000');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('154','153','Admin','User','add_post','','1','0','添加提交','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('155','47','Admin','Plugin','update','','1','0','插件更新','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('156','39','Admin','Storage','index','','1','0','文件存储','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('157','156','Admin','Storage','setting_post','','1','0','文件存储设置提交','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('158','54','Admin','Slide','ban','','1','0','禁用幻灯片','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('159','54','Admin','Slide','cancelban','','1','0','启用幻灯片','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('160','149','Admin','User','ban','','1','0','禁用管理员','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('161','149','Admin','User','cancelban','','1','0','启用管理员','','','0');
INSERT INTO zysj_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('162','1','Admin','Variable','index','','0','1','变量管理','','','0');
DROP TABLE IF EXISTS `zysj_nav`;
CREATE TABLE `zysj_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `href` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(6) DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('1','1','0','首页','','home','','1','0','0-1');
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('2','1','0','列表演示','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}','','0','0','0-2');
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('3','1','0','瀑布流','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}','','0','0','0-3');
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('4','1','0','关于我们','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}','','1','1','0-4');
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('5','1','0','服务范围','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}','','1','3','0-5');
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('6','1','0','作品展示','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','','1','2','0-6');
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('9','3','0','首页','_blank','home','','1','0','0-9');
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('10','3','0','关于我们','_blank','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}','','1','0','0-10');
INSERT INTO zysj_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('11','3','0','联系我们','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','','1','0','0-11');
DROP TABLE IF EXISTS `zysj_nav_cat`;
CREATE TABLE `zysj_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`navcid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('1','主导航','1','主导航');
INSERT INTO zysj_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('2','顶部菜单','0','顶部菜单');
INSERT INTO zysj_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('3','menu-footer','0','底部菜单');
DROP TABLE IF EXISTS `zysj_oauth_user`;
CREATE TABLE `zysj_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(60) NOT NULL,
  `expires_date` int(12) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_options`;
CREATE TABLE `zysj_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('1','member_email_active','{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}','1');
INSERT INTO zysj_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('2','site_options','{\"site_name\":\"\\u8ffd\\u5f71\\u89c6\\u89c9\",\"site_host\":\"http:\\/\\/www.zysjsys.com\\/\",\"site_tpl\":\"zysjsys\",\"site_adminstyle\":\"bluesky\",\"site_icp\":\"\\u5907\\u6848\\u53f7\\uff1a\\u95fdICP\\u590715013291\\u53f7\",\"site_admin_email\":\"317809204@qq.com\",\"site_tongji\":\"\",\"site_copyright\":\"\\u00a92015 \\u8ffd\\u5f71\\u89c6\\u89c9 \\u7248\\u6743\\u6240\\u6709\",\"site_seo_title\":\"\\u8ffd\\u5f71\\u89c6\\u89c9\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\\u8ffd\\u5f71\\u89c6\\u89c9--\\u5927\\u5b66\\u57ce\\u4e13\\u4e1a\\u7684\\u89c6\\u89c9\\u6444\\u5f71\\u673a\\u6784\\u3002\",\"urlmode\":\"2\",\"html_suffix\":\"\",\"comment_time_interval\":60}','1');
INSERT INTO zysj_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('3','cmf_settings','{\"banned_usernames\":\"\"}','1');
DROP TABLE IF EXISTS `zysj_plugins`;
CREATE TABLE `zysj_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_posts`;
CREATE TABLE `zysj_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('1','1','关于我们','追影视觉','2015-07-07 10:06:23','<p><span style=\"FONT-FAMILY: 微软雅黑,Microsoft YaHei; FONT-SIZE: 18px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;福州市青蓝文化传播有限公司创立于2011年，<span style=\"FONT-FAMILY: 微软雅黑,Microsoft YaHei\">是
由一群有梦想，有创造力的年轻人组成的一个充满活力的团队。公司致力于影视传媒领域，多年来的磨合，成就了这样一支视角独特，技术精湛，思路开阔，反应迅
速的专业精英制作团队。我们致力于商业广告、企业专题片、大型活动的拍摄及制作，我们以独到的创意视角、娴熟的影视专业技巧，来赢得客户的亲赖。为客户提
供一流的影像服务，并获得了省内外新老客户的一致好评！</span></span></p>','关于我们','​福州市青蓝文化传播有限公司创立于2011年，是 由一群有梦想，有创造力的年轻人组成的一个充满活力的团队。','1','1','2015-07-07 10:05:02','','0','','','0','{\"thumb\":\"\"}','1','0','0','1');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('2','1','关于我们','','2015-07-07 10:24:43','<p><span style=\"color: rgb(255, 0, 0); font-size: 14px;\">关于我们</span></p><p><span style=\"font-size: 14px;\">二十一世纪壹零年代五年叁月二十八日九时，在中国东南沿海地区，北纬2605，东经11918，天空突现一道灵光，闪耀在天地之间，追影视觉传媒由此诞生，取意“追求原创，打造视觉与听觉上最震撼的影视影像作品”。</span></p><p><span style=\"font-size: 14px;\">追影视觉传媒核心成员涵括“70/80/90三个年代精英”，他们以“资深拍摄经验，专业后期技术、创新创意视角”支撑企业运行，通过企业与高校合作，企业吸纳福州高校摄影摄像、后期制作、文学创作者近百名，为企业不断注入新鲜血液，完成企业的创新与发展。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p><span style=\"font-size: 14px;\">追影视觉传媒拍摄基地占地一千多平方，专业摄影摄像器材投入超百万元，保障旗下商业拍摄（服装鞋帽、皮具礼品、珠宝首饰，化妆品保健品，酒类茶类、家私家居、钟表工艺品、灯饰建材、电子产品、美食客房、写真模特、会议展览）与影视拍摄（广告片、宣传片、记录片、专题片、投标片、招商片、购物片、教学片、微电影、婚礼、会议、活动、培训、MV）。</span></p><p><span style=\"color: rgb(255, 0, 0); font-size: 14px;\"><br/></span></p><p><span style=\"color: rgb(255, 0, 0); font-size: 14px;\">联系我们</span></p><p><span style=\"font-size: 14px;\">总部：福州市仓山区红坊海峡文化创意产业园3栋</span></p><p><span style=\"font-size: 14px;\">电话：0591-23508201</span></p><p><span style=\"font-size: 14px;\">分部：福州市大学城永辉生活广场7栋2单元</span></p><p><span style=\"font-size: 14px;\">电话：0591-38659835</span></p><p><span style=\"color: rgb(255, 0, 0); font-size: 14px;\"><br/></span></p>','关于我们','      二十一世纪壹零年代五年叁月二十八日九时，在中国东南沿海地区，北纬2605，东经11918，天空突现一道灵光，闪耀在天地之间，追影视觉传媒由此诞生，取意“追求原创，打造视觉与听觉上最震撼的影视影像作品”。
      追影视觉传媒核心成员涵括“70/80/90三个年代精英”，他们以“资深拍摄经验，专业后期技术、创新创意视角”支撑企业发展，通过企业与高校合作，企业吸纳福州高校摄影摄像、后期制作、文学创作者近百名，为企业不断注入新鲜血液，完成企业的创新与发展。          
      追影视觉传媒拍摄基地占地一千多平方，专业摄影摄像器材投入超百万元，保障旗下商业拍摄（服装鞋帽、皮具礼品、珠宝首饰，化妆品保健品，酒类茶类、家私家居、钟表工艺品、灯饰建材、电子产品、美食客房、写真模特、会议展览）与影视拍摄（广告片、宣传片、记录片、专题片、投标片、招商片、购物片、教学片、微电影、婚礼、会议、活动、培训、MV）。
','1','1','2015-07-07 10:24:16','','0','2','','0','{\"thumb\":\"559e681918703.jpg\",\"template\":\"about\"}','0','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('8','1','333','333','2015-07-09 10:25:49','<p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559ddba329aa4.jpg\" title=\"001.jpg\" alt=\"001.jpg\"/></p>','333','3333','1','1','2015-07-09 10:25:08','','0','','','0','{\"thumb\":\"559ddbab90736.jpg\"}','1','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('3','1','业务范围','','2015-07-07 10:43:03','<p><span style=\"color: rgb(255, 0, 0); font-family: 宋体; font-size: 14px;\">商业拍摄</span></p><p><span style=\"font-family: 宋体; font-size: 14px;\">服装鞋帽、皮具礼品、珠宝首饰，化妆品保健品，酒类茶类、家私家居、钟表工艺品、灯饰建材、电子产品、美食客房、写真模特、会议展会</span></p><p><span style=\"font-family: 宋体; font-size: 14px;\"><br/></span></p><p><span style=\"color: rgb(255, 0, 0); font-family: 宋体; font-size: 14px;\">影视拍摄</span></p><p><span style=\"font-family: 宋体; font-size: 14px;\">广告片、宣传片、记录片、专题片、投标片、招商片、购物片、教学片、微电影、婚礼、会议、活动、培训、<span style=\"font-family: Times New Roman; font-size: 14px;\">MV</span></span></p><p>&nbsp;</p>','业务范围','商业拍摄与影视拍摄','1','1','2015-07-07 10:41:45','','0','2','','0','{\"thumb\":\"\",\"template\":\"about\"}','0','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('9','1','茶叶，茶叶摄影，摄影作品','','2015-07-09 20:23:38','<p><img alt=\"IMG_1788.JPG\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a6a1b866.JPG\" title=\"IMG_1788.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a6a1ef17.JPG\" style=\"\" title=\"IMG_1791.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a6a736aa.JPG\" style=\"\" title=\"IMG_1792.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a6bc7269.JPG\" style=\"\" title=\"IMG_1798.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a6ebd25a.JPG\" style=\"\" title=\"IMG_1795.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a6eca165.JPG\" style=\"\" title=\"IMG_1790.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a6f2607a.JPG\" style=\"\" title=\"IMG_1801.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a6fd87e1.JPG\" style=\"\" title=\"IMG_1811.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a7025c85.JPG\" style=\"\" title=\"IMG_1813.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a72d80fc.JPG\" style=\"\" title=\"IMG_1805.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a72e4373.JPG\" style=\"\" title=\"IMG_1816.JPG\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7a7305115.JPG\" style=\"\" title=\"IMG_1818.JPG\"/></p><p><br/></p>',' 茶叶摄影作品',' 茶叶摄影作品','1','1','2015-07-09 20:12:50','','0','','','0','{\"thumb\":\"559e65cd62f62.JPG\",\"photo\":[{\"url\":\"559e7a0cab505.JPG\",\"alt\":\"IMG_1771\"},{\"url\":\"559e7a151eec7.JPG\",\"alt\":\"IMG_1775\"},{\"url\":\"559e7a1d616e0.JPG\",\"alt\":\"IMG_1776\"},{\"url\":\"559e7a2b0b65f.JPG\",\"alt\":\"IMG_1776\"},{\"url\":\"559e7a3c8f400.JPG\",\"alt\":\"IMG_1788\"},{\"url\":\"559e7a48a209e.JPG\",\"alt\":\"IMG_1790\"},{\"url\":\"559e7a5275d9f.JPG\",\"alt\":\"IMG_1792\"}]}','5','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('4','1','联系我们','','2015-07-07 10:45:55','<p>总部：福州市仓山区红坊海峡文化创意产业园3栋</p><p>电话：0591-23508201</p><p>分部：福州市大学城永辉生活广场7栋2单元</p><p>电话：0591-38659835</p><p>&nbsp;</p>','联系我们','总部：福州市仓山区红坊海峡文化创意产业园3栋
分部：福州市大学城永辉生活广场7栋2单元
​

​
','1','1','2015-07-07 10:45:42','','0','2','','0','{\"thumb\":\"\",\"template\":\"about\"}','0','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('5','1','福州都市频道地方宣传片系列节目（三明将乐）','','2015-07-08 15:14:11','<p><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XNzQzNDM1MTI0/v.swf\" width=\"750\" height=\"600\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p>','福州都市频道地方宣传片系列节目（三明将乐）','福州都市频道地方宣传片系列节目（三明将乐）','1','1','2015-07-08 15:12:42','','0','','','0','{\"thumb\":\"559ccd98bc2a5.jpg\"}','4','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('6','1','福州都市频道地方宣传片系列节目（宁德福安溪桫椤保护区）','','2015-07-08 15:19:00','<p><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XODY0MzEwMTA4/v.swf\" width=\"750\" height=\"600\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p>','福州都市频道地方宣传片系列节目（宁德福安溪桫椤保护区）','福州都市频道地方宣传片系列节目（宁德福安溪桫椤保护区）','1','1','2015-07-08 15:18:04','','0','','','0','{\"thumb\":\"559ccec1e2019.jpg\"}','7','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('7','1','111','','2015-07-09 00:00:58','<p><img alt=\"552cb5f3dfe7e_16.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559d4938ce78b.jpg\" title=\"552cb5f3dfe7e_16.jpg\"/></p>','1111','111','1','1','2015-07-08 23:59:23','','0','','','0','{\"thumb\":\"559d491b07f09.jpg\",\"photo\":[{\"url\":\"559d49251cea2.jpg\",\"alt\":\"3\"}]}','2','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('10','1','菜品摄影作品','','2015-07-09 21:52:19','<p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7c7e5e0eb.jpg\" style=\"\" title=\"DSC_7275.jpg\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7c7e70065.jpg\" style=\"\" title=\"DSC_7284.jpg\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7c7eb5b43.jpg\" style=\"\" title=\"DSC_7290.jpg\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7c8068219.jpg\" style=\"\" title=\"DSC_7274.jpg\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7c80d7e2a.jpg\" style=\"\" title=\"DSC_7299.jpg\"/></p><p><img src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7c81ade46.jpg\" style=\"\" title=\"DSC_7306.jpg\"/></p><p><br/></p>','菜品摄影作品','菜品摄影作品','1','1','2015-07-09 21:51:22','','0','','','0','{\"thumb\":\"559e7c90d1883.jpg\"}','1','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('11','1','佛珠摄影作品','','2015-07-09 21:53:39','<p><img title=\"2.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7ccb4e75c.jpg\"/></p><p><img title=\"3.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7ccc2b4ba.jpg\"/></p><p><img title=\"4.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7cccd9db3.jpg\"/></p><p><img title=\"1.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7ccd0a560.jpg\"/></p><p><img title=\"5.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7cce6854b.jpg\"/></p><p><img title=\"7.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7cce6b82e.jpg\"/></p><p><img title=\"8.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7ccfc3a3f.jpg\"/></p><p><img title=\"6.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7cd14b59a.jpg\"/></p><p><img title=\"9.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e7cd160c49.jpg\"/></p><p><br/></p>','工艺品摄影作品','佛珠摄影作品','1','1','2015-07-09 21:52:51','','0','','','0','{\"thumb\":\"559e7ce095035.jpg\"}','2','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('12','1','福建长富奶品有限公司（宣传片）','','2015-07-09 22:09:03','<p><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XMTI4MTA3MDg1Mg==/v.swf?from=s1.8-1-1.2\" width=\"780\" height=\"480\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p>','福建长富奶品有限公司（宣传片）','福建长富奶品有限公司（宣传片）','0','1','2015-07-09 21:54:58','','0','','','0','{\"thumb\":\"559e806ed2cae.png\"}','7','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('13','1','首饰拍摄','','2015-07-09 22:45:54','<p><img title=\"17516457420140904180315091.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e8919a8d8a.jpg\"/></p><p><img title=\"17516457420140904180314029.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e891a17ff5.jpg\"/></p><p><img title=\"17516457420140904180310066.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e891a54600.jpg\"/></p><p><img title=\"17543568820150102232447011.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e891a78c06.jpg\"/></p><p><img title=\"519623092013121317324903.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e891b7f194.jpg\"/></p><p><img title=\"17543568820150102232447034.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e891bbb283.jpg\"/></p><p><img title=\"17543568820150102232447035.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e891c0c98c.jpg\"/></p><p><img title=\"5196230920131213173216015.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e891c2b5bd.jpg\"/></p><p><img title=\"5196230920131213173345059.jpg\" src=\"http://www.zysjsys.com/data/upload/ueditor/20150709/559e891d27f14.jpg\"/></p><p><br/></p>','首饰拍摄作品','首饰拍摄','1','1','2015-07-09 22:45:17','','0','','','0','{\"thumb\":\"559e898cb60ea.jpg\"}','1','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('14','1',' 绿美福建行——寻美三明','','2015-07-09 22:53:16','<p><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XODEzMzkwNDgw/v.swf\" width=\"750\" height=\"600\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p>','福州都市频道地方宣传片系列节目(寻美三明)','绿美福建行——寻美三明','1','1','2015-07-09 22:51:30','','0','','','0','{\"thumb\":\"559e8ad85bce4.jpg\"}','0','0','0','0');
INSERT INTO zysj_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('15','1',' 绿美福建行——寻美福安','','2015-07-09 22:54:42','<p><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XNzQ4MzE0NTU2/v.swf\" width=\"750\" height=\"600\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p>',' 福州都市频道地方宣传片系列节目(寻美福安)','绿美福建行——寻美福安','1','1','2015-07-09 22:54:04','','0','','','0','{\"thumb\":\"559e8b2e9d41d.jpg\"}','0','0','1','1');
DROP TABLE IF EXISTS `zysj_role`;
CREATE TABLE `zysj_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_role ( `id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`, `listorder` ) VALUES  ('1','超级管理员','0','1','拥有网站最高管理员权限！','1329633709','1329633709','0');
DROP TABLE IF EXISTS `zysj_role_user`;
CREATE TABLE `zysj_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_route`;
CREATE TABLE `zysj_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_slide`;
CREATE TABLE `zysj_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` bigint(20) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_pic` varchar(255) DEFAULT NULL,
  `slide_url` varchar(255) DEFAULT NULL,
  `slide_des` varchar(255) DEFAULT NULL,
  `slide_content` text,
  `slide_status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(10) DEFAULT '0',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('1','1','001','/data/upload/559f1240300ba.jpg','','','','1','0');
INSERT INTO zysj_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('2','2','广告1','/data/upload/559e92897b130.jpg','','','','1','0');
INSERT INTO zysj_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('3','3','广告图2','/data/upload/559e920760eac.jpg','','','','1','0');
INSERT INTO zysj_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('4','4','产品页面广告','/data/upload/559e87a8d7250.jpg','','','','1','0');
INSERT INTO zysj_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('5','5','业务范围广告','/data/upload/559e8f3194fd3.jpg','','','','1','0');
DROP TABLE IF EXISTS `zysj_slide_cat`;
CREATE TABLE `zysj_slide_cat` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_idname` varchar(255) NOT NULL,
  `cat_remark` text,
  `cat_status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('1','首页全屏轮播海报','slideindex','首页全屏轮播海报','1');
INSERT INTO zysj_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('2','广告图片1','gk1','关于我们和服务范围栏目广告','1');
INSERT INTO zysj_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('3','广告图片2','gk2','作品展示广告','1');
INSERT INTO zysj_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('4','产品页面广告','gk3','产品页面广告','1');
INSERT INTO zysj_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('5','业务范围广告','gk4','业务范围广告','1');
DROP TABLE IF EXISTS `zysj_term_relationships`;
CREATE TABLE `zysj_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('1','1','1','0','0');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('2','5','4','1','1');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('3','6','4','1','1');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('4','7','5','0','0');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('5','8','5','0','0');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('6','9','4','2','1');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('7','10','4','2','1');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('8','11','4','2','1');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('9','12','4','0','1');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('10','13','4','2','1');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('11','14','4','1','1');
INSERT INTO zysj_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('12','15','4','1','1');
DROP TABLE IF EXISTS `zysj_terms`;
CREATE TABLE `zysj_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('4','作品展示','','picture','','0','0','0-4','','','','mylist','myarticle','0','1');
INSERT INTO zysj_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('5','团队展示','','picture','','0','0','0-5','','','','mylist','myarticle','0','1');
DROP TABLE IF EXISTS `zysj_user_favorites`;
CREATE TABLE `zysj_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `zysj_users`;
CREATE TABLE `zysj_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；zysj_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `score`, `user_type` ) VALUES  ('1','admin','fe70caaae56b00b50d395531e7a82c298b6d876e1a0bad15','admin','317809204@qq.com','http://www.zysjsys.com','','0','0000-00-00','','59.61.238.133','2015-07-10 08:30:30','2015-07-08 08:07:06','','1','0','1');
DROP TABLE IF EXISTS `zysj_variable`;
CREATE TABLE `zysj_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '变量ID',
  `variableName` varchar(255) NOT NULL COMMENT '变量名',
  `variableValue` varchar(255) DEFAULT NULL COMMENT '变量值',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `listorder` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `variableName` (`variableName`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('1','worktime1','周一至周五：8:30-17:30','工作时间一','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('3','worktime2','周六至周日：9:00-17:00','工作时间二','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('4','dianhua','电   话：0591-23508201','电话信息','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('5','telephone','曹总监：18305983875','手机信息','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('6','qq1','317809204','QQ1','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('7','qq2','545091953','QQ2','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('8','qq3','317809204','QQ3','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('9','lianxidianhua','18305983875','联系电话','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('10','address','福建福州','联系地址（中文）','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('11','addressen','fujian','联系地址（英文）','0');
INSERT INTO zysj_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('12','telephone2','范总监：15659161339','联系方式二','0');
