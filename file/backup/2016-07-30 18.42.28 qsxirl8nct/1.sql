# Destoon V6.0 R20160715 http://www.destoon.com
# 2016-07-30 18:42:28
# --------------------------------------------------------


DROP TABLE IF EXISTS `destoon_404`;
CREATE TABLE `destoon_404` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL default '',
  `refer` varchar(255) NOT NULL,
  `robot` varchar(20) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='404日志';


DROP TABLE IF EXISTS `destoon_ad`;
CREATE TABLE `destoon_ad` (
  `aid` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `pid` int(10) unsigned NOT NULL default '0',
  `typeid` tinyint(1) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `amount` float NOT NULL default '0',
  `currency` varchar(20) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `stat` tinyint(1) unsigned NOT NULL default '0',
  `note` text NOT NULL,
  `code` text NOT NULL,
  `text_name` varchar(100) NOT NULL default '',
  `text_url` varchar(255) NOT NULL default '',
  `text_title` varchar(100) NOT NULL default '',
  `text_style` varchar(50) NOT NULL default '',
  `image_src` varchar(255) NOT NULL default '',
  `image_url` varchar(255) NOT NULL default '',
  `image_alt` varchar(100) NOT NULL default '',
  `flash_src` varchar(255) NOT NULL default '',
  `flash_url` varchar(255) NOT NULL default '',
  `flash_loop` tinyint(1) unsigned NOT NULL default '1',
  `key_moduleid` smallint(6) unsigned NOT NULL default '0',
  `key_catid` smallint(6) unsigned NOT NULL default '0',
  `key_word` varchar(100) NOT NULL default '',
  `key_id` bigint(20) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='广告';

INSERT INTO `destoon_ad` VALUES('2','网站首页图片轮播1','14','5','0','0','','http://www.destoon.com/','','0','admin','1466996173','admin','1466996173','1262275200','1577894399','0','','','','','','','file/image/player_1.jpg','http://www.destoon.com/','','','','1','0','0','','0','0','3');
INSERT INTO `destoon_ad` VALUES('3','首页旗帜A1','20','3','0','0','','','','0','admin','1466996173','admin','1466996173','1262275200','1577894399','0','','','','','','','file/image/150x60.gif','','','','','1','0','0','','0','0','3');
INSERT INTO `destoon_ad` VALUES('4','首页旗帜A2','21','3','0','0','','http://idc.destoon.com/','','0','admin','1466996173','admin','1466996173','1262275200','1577894399','0','','','','','','','file/image/150x60.gif','','','','','1','0','0','','0','0','3');
INSERT INTO `destoon_ad` VALUES('5','首页旗帜A3','22','3','0','0','','http://www.destoon.com/','','0','admin','1466996173','admin','1466996173','1262275200','1577894399','0','','','','','','','file/image/150x60.gif','','','','','1','0','0','','0','0','3');
INSERT INTO `destoon_ad` VALUES('6','首页旗帜A4','23','3','0','0','','http://idc.destoon.com/','','0','admin','1466996173','admin','1466996173','1262275200','1577894399','0','','','','','','','file/image/150x60.gif','','','','','1','0','0','','0','0','3');
INSERT INTO `destoon_ad` VALUES('7','首页旗帜A5','24','3','0','0','','http://www.destoon.com/','','0','admin','1466996173','admin','1466996173','1262275200','1577894399','0','','','','','','','file/image/150x60.gif','','','','','1','0','0','','0','0','3');
INSERT INTO `destoon_ad` VALUES('8','首页旗帜A6','25','3','0','0','','http://idc.destoon.com/','','0','admin','1466996173','admin','1466996173','1262275200','1577894399','0','','','','','','','file/image/150x60.gif','','','','','1','0','0','','0','0','3');
INSERT INTO `destoon_ad` VALUES('9','网站首页图片轮播2','14','5','0','0','','http://www.destoon.com/','','104','admin','1466996173','admin','1466996173','1262275200','1577894399','0','','','','','','','file/image/player_2.jpg','http://www.destoon.com/','','','','1','0','0','','0','0','3');

DROP TABLE IF EXISTS `destoon_address`;
CREATE TABLE `destoon_address` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `truename` varchar(30) NOT NULL default '',
  `areaid` int(10) unsigned NOT NULL default '0',
  `address` varchar(255) NOT NULL default '',
  `postcode` varchar(10) NOT NULL default '',
  `telephone` varchar(30) NOT NULL default '',
  `mobile` varchar(30) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收货地址';


DROP TABLE IF EXISTS `destoon_admin`;
CREATE TABLE `destoon_admin` (
  `adminid` smallint(6) unsigned NOT NULL auto_increment,
  `userid` int(10) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `title` varchar(30) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `moduleid` smallint(6) NOT NULL default '0',
  `file` varchar(20) NOT NULL default '',
  `action` varchar(255) NOT NULL default '',
  `catid` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='管理员';

INSERT INTO `destoon_admin` VALUES('1','1','0','生成首页','?action=html','','0','','','');
INSERT INTO `destoon_admin` VALUES('2','1','0','更新缓存','?action=cache','','0','','','');
INSERT INTO `destoon_admin` VALUES('3','1','0','网站设置','?file=setting','','0','','','');
INSERT INTO `destoon_admin` VALUES('4','1','0','模块管理','?file=module','','0','','','');
INSERT INTO `destoon_admin` VALUES('5','1','0','数据维护','?file=database','','0','','','');
INSERT INTO `destoon_admin` VALUES('6','1','0','模板管理','?file=template','','0','','','');
INSERT INTO `destoon_admin` VALUES('7','1','0','会员管理','?moduleid=2','','0','','','');
INSERT INTO `destoon_admin` VALUES('8','1','0','单页管理','?moduleid=3&file=webpage','','0','','','');
INSERT INTO `destoon_admin` VALUES('9','1','0','排名推广','?moduleid=3&file=spread','','0','','','');
INSERT INTO `destoon_admin` VALUES('10','1','0','广告管理','?moduleid=3&file=ad','','0','','','');

DROP TABLE IF EXISTS `destoon_admin_log`;
CREATE TABLE `destoon_admin_log` (
  `logid` int(10) unsigned NOT NULL auto_increment,
  `qstring` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `logtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理日志';


DROP TABLE IF EXISTS `destoon_admin_online`;
CREATE TABLE `destoon_admin_online` (
  `sid` varchar(32) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `moduleid` int(10) unsigned NOT NULL default '0',
  `qstring` varchar(255) NOT NULL default '',
  `lasttime` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线管理员';

INSERT INTO `destoon_admin_online` VALUES('kgrkd9jh1btr71327n9rvmuhj3','admin','127.0.0.196','1','','1469875348');

DROP TABLE IF EXISTS `destoon_ad_place`;
CREATE TABLE `destoon_ad_place` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `typeid` tinyint(1) unsigned NOT NULL default '0',
  `open` tinyint(1) unsigned NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `code` text NOT NULL,
  `width` smallint(5) unsigned NOT NULL default '0',
  `height` smallint(5) unsigned NOT NULL default '0',
  `price` float unsigned NOT NULL default '0',
  `ads` smallint(4) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `template` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='广告位';

INSERT INTO `destoon_ad_place` VALUES('1','5','6','1','供应排名','','','','','0','0','0','0','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('2','6','6','1','求购排名','','','','','0','0','0','0','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('3','16','6','1','商城排名','','','','','0','0','0','0','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('4','4','6','1','公司排名','','','','','0','0','0','0','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('14','0','5','1','首页图片轮播','','','','','400','160','0','2','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('15','5','7','1','供应赞助商链接','','','','','0','0','0','0','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('17','4','7','1','公司赞助商链接','','','','','0','0','0','0','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('18','0','7','1','求购赞助商链接','','','','','0','0','0','0','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('19','8','7','1','展会赞助商链接','','','','','0','0','0','0','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('20','0','3','1','首页旗帜A1','','','','','150','60','0','1','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('21','0','3','1','首页旗帜A2','','','','','150','60','0','1','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('22','0','3','1','首页旗帜A3','','','','','150','60','0','1','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('23','0','3','1','首页旗帜A4','','','','','150','60','0','1','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('24','0','3','1','首页旗帜A5','','','','','150','60','0','1','0','1466996173','admin','1466996173','');
INSERT INTO `destoon_ad_place` VALUES('25','0','3','1','首页旗帜A6','','','','','150','60','0','1','0','1466996173','admin','1466996173','');

DROP TABLE IF EXISTS `destoon_alert`;
CREATE TABLE `destoon_alert` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `mid` smallint(6) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `word` varchar(100) NOT NULL default '',
  `rate` smallint(4) unsigned NOT NULL default '0',
  `email` varchar(50) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '0',
  `edittime` int(10) unsigned NOT NULL default '0',
  `sendtime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='贸易提醒';


DROP TABLE IF EXISTS `destoon_announce`;
CREATE TABLE `destoon_announce` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `typeid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `content` text NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `islink` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `template` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公告';


DROP TABLE IF EXISTS `destoon_area`;
CREATE TABLE `destoon_area` (
  `areaid` int(10) unsigned NOT NULL auto_increment,
  `areaname` varchar(50) NOT NULL default '',
  `parentid` int(10) unsigned NOT NULL default '0',
  `arrparentid` varchar(255) NOT NULL default '',
  `child` tinyint(1) NOT NULL default '0',
  `arrchildid` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='地区';

INSERT INTO `destoon_area` VALUES('1','默认地区','0','0','0','1','1');

DROP TABLE IF EXISTS `destoon_article_21`;
CREATE TABLE `destoon_article_21` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `subtitle` mediumtext NOT NULL,
  `introduce` varchar(255) NOT NULL default '',
  `tag` varchar(100) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `author` varchar(50) NOT NULL default '',
  `copyfrom` varchar(30) NOT NULL default '',
  `fromurl` varchar(255) NOT NULL default '',
  `voteid` varchar(100) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `islink` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='资讯';

INSERT INTO `destoon_article_21` VALUES('1','203','0','0','给丈母娘老丈人送啥礼物?','','0','','年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自','','给丈母娘老丈人送啥礼物?,百科资料','','','','','','10','http://127.0.0.1/destoon/file/upload/201607/23/140142291.jpg','admin','1469253118','admin','1469253704','127.0.0.1','','3','0','show.php?itemid=1','','');
INSERT INTO `destoon_article_21` VALUES('2','203','0','3','年末了，很多人都要带着自己的另一半','','0','','年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自','','年末了，很多人都要带着自己的另一半,百科资料','','','','','','29','http://127.0.0.1/destoon/file/upload/201607/23/140127211.jpg','admin','1469253450','admin','1469337590','127.0.0.1','','3','0','show.php?itemid=2','','');

DROP TABLE IF EXISTS `destoon_article_data_21`;
CREATE TABLE `destoon_article_data_21` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资讯内容';

INSERT INTO `destoon_article_data_21` VALUES('1','&nbsp;<span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span>');
INSERT INTO `destoon_article_data_21` VALUES('2','&nbsp;aaaa<span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span>');

DROP TABLE IF EXISTS `destoon_ask`;
CREATE TABLE `destoon_ask` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `typeid` int(10) unsigned NOT NULL default '0',
  `qid` bigint(20) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL,
  `edittime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `reply` mediumtext NOT NULL,
  `star` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服中心';


DROP TABLE IF EXISTS `destoon_banip`;
CREATE TABLE `destoon_banip` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `ip` varchar(50) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IP禁止';


DROP TABLE IF EXISTS `destoon_banword`;
CREATE TABLE `destoon_banword` (
  `bid` int(10) unsigned NOT NULL auto_increment,
  `replacefrom` varchar(255) NOT NULL default '',
  `replaceto` varchar(255) NOT NULL default '',
  `deny` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='词语过滤';


DROP TABLE IF EXISTS `destoon_brand_13`;
CREATE TABLE `destoon_brand_13` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `homepage` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `totime` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `fax` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `editdate` date NOT NULL default '0000-00-00',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`),
  KEY `edittime` (`edittime`),
  KEY `editdate` (`editdate`,`vip`,`edittime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='品牌';


DROP TABLE IF EXISTS `destoon_brand_data_13`;
CREATE TABLE `destoon_brand_data_13` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='品牌内容';


DROP TABLE IF EXISTS `destoon_buy_6`;
CREATE TABLE `destoon_buy_6` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `typeid` smallint(2) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `amount` varchar(10) NOT NULL default '',
  `price` varchar(10) NOT NULL default '',
  `pack` varchar(20) NOT NULL default '',
  `days` smallint(3) unsigned NOT NULL default '0',
  `tag` varchar(100) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `thumb1` varchar(255) NOT NULL default '',
  `thumb2` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `editdate` date NOT NULL default '0000-00-00',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='求购';

INSERT INTO `destoon_buy_6` VALUES('1','2','0','1','0','房屋出租','','0','房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租','房屋类型','大小','','简约','3室两厅','','1','500/月','简装','0','','房屋出租,出租,求购默认分类','','9','http://127.0.0.1/destoon/file/upload/201607/24/164044451.jpg.thumb.jpg','http://127.0.0.1/destoon/file/upload/201607/24/164047661.jpg.thumb.jpg','http://127.0.0.1/destoon/file/upload/201607/24/164051361.jpg.thumb.jpg','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1469349726','2016-07-24','1469349726','2016-07-24','127.0.0.1','','3','show.php?itemid=1','','');
INSERT INTO `destoon_buy_6` VALUES('2','2','1','1','0','床垫','','0','床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫','大小','','','180*220','','','','','','0','','床垫,求购,求购默认分类','','2','http://127.0.0.1/destoon/file/upload/201607/24/164619691.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','1470671999','admin','1469350011','2016-07-24','1469350011','2016-07-24','127.0.0.1','','3','show.php?itemid=2','','');
INSERT INTO `destoon_buy_6` VALUES('3','2','2','1','0','管理咨询服务','','0','管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务','','','','','','','','','','0','','管理咨询服务,招商,求购默认分类','','5','http://127.0.0.1/destoon/file/upload/201607/24/164724601.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1469350054','2016-07-24','1469350054','2016-07-24','127.0.0.1','','3','show.php?itemid=3','','');
INSERT INTO `destoon_buy_6` VALUES('4','2','0','1','0','出租测试','','0','出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试','','','','','','','','','','0','','出租测试,出租,求购默认分类','','3','http://127.0.0.1/destoon/file/upload/201607/24/172901261.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1469352543','2016-07-24','1469351985','2016-07-24','127.0.0.1','','3','show.php?itemid=4','','');

DROP TABLE IF EXISTS `destoon_buy_data_6`;
CREATE TABLE `destoon_buy_data_6` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='求购内容';

INSERT INTO `destoon_buy_data_6` VALUES('1','&nbsp;房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租');
INSERT INTO `destoon_buy_data_6` VALUES('2','&nbsp;床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫');
INSERT INTO `destoon_buy_data_6` VALUES('3','&nbsp;\r\n<h2 style=\"margin: 0px; padding: 0px; font-family: 微软雅黑;\"><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a><a href=\"file:///C:/Users/Administrator/Desktop/%E6%80%BB%E5%AE%9A%E9%A1%B5%E9%9D%A2/%E6%AD%A5%E6%97%97/%E5%87%BA%E7%A7%9F%E6%B1%82%E8%B4%AD%E6%8B%9B%E5%95%86%E5%88%97%E8%A1%A8%E9%A1%B5.html#\" style=\"margin: 0px; padding: 0px; text-decoration: none; color: rgb(231, 0, 18); line-height: 48px; font-size: 16px; font-weight: 500;\">管理咨询服务</a></h2>');
INSERT INTO `destoon_buy_data_6` VALUES('4','&nbsp;出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试');

DROP TABLE IF EXISTS `destoon_cache`;
CREATE TABLE `destoon_cache` (
  `cacheid` varchar(32) NOT NULL default '',
  `totime` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `cacheid` (`cacheid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文件缓存';


DROP TABLE IF EXISTS `destoon_category`;
CREATE TABLE `destoon_category` (
  `catid` int(10) unsigned NOT NULL auto_increment,
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `catname` varchar(50) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `catdir` varchar(255) NOT NULL default '',
  `linkurl` varchar(255) NOT NULL default '',
  `letter` varchar(4) NOT NULL default '',
  `level` tinyint(1) unsigned NOT NULL default '1',
  `item` bigint(20) unsigned NOT NULL default '0',
  `property` smallint(6) unsigned NOT NULL default '0',
  `parentid` int(10) unsigned NOT NULL default '0',
  `arrparentid` varchar(255) NOT NULL default '',
  `child` tinyint(1) NOT NULL default '0',
  `arrchildid` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `template` varchar(30) NOT NULL default '',
  `show_template` varchar(30) NOT NULL default '',
  `seo_title` varchar(255) NOT NULL default '',
  `seo_keywords` varchar(255) NOT NULL default '',
  `seo_description` varchar(255) NOT NULL default '',
  `group_list` varchar(255) NOT NULL default '',
  `group_show` varchar(255) NOT NULL default '',
  `group_add` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COMMENT='栏目分类';

INSERT INTO `destoon_category` VALUES('1','5','供应默认分类','','1','list.php?catid=1','','1','0','0','0','0','0','','1','','','','','','','','');
INSERT INTO `destoon_category` VALUES('2','6','求购默认分类','','1','list.php?catid=2','','1','4','0','0','0','0','','1','','','','','','','','');
INSERT INTO `destoon_category` VALUES('3','4','广告媒体','','GUANGGAO','list.php?catid=3','g','1','0','0','0','0','1','3,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191','1','','','','','','','','');
INSERT INTO `destoon_category` VALUES('4','18','原创','','4','list.php?catid=4','','1','1','0','0','0','0','4','4','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('5','18','视频','','5','list.php?catid=5','','1','0','0','0','0','0','5','5','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('6','18','图片','','6','list.php?catid=6','','1','0','0','0','0','0','6','6','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('7','18','音乐','','7','list.php?catid=7','','1','0','0','0','0','0','7','7','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('8','18','文章','','8','list.php?catid=8','','1','0','0','0','0','0','8','8','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('110','4','创意设计','','chuangyisheji','list.php?catid=110','c','1','0','0','0','0','1','110,192,193,194','110','','','','','','','','');
INSERT INTO `destoon_category` VALUES('111','4','活动策划','','huodongcehua','list.php?catid=111','h','1','0','0','0','0','1','111,195,196,197,198,199,200,201,202','111','','','','','','','','');
INSERT INTO `destoon_category` VALUES('112','4','电视/广播','','112','list.php?catid=112','d','1','0','0','3','0,3','1','112,122,123,124,125,126,127,128,129','112','','','','','','','','');
INSERT INTO `destoon_category` VALUES('113','4','电梯广告','','113','list.php?catid=113','d','1','0','0','3','0,3','1','113,130,131,132,133,134,135','113','','','','','','','','');
INSERT INTO `destoon_category` VALUES('114','4','报刊广告','','114','list.php?catid=114','b','1','0','0','3','0,3','1','114,136,137','114','','','','','','','','');
INSERT INTO `destoon_category` VALUES('115','4','公交广告','','115','list.php?catid=115','g','1','0','0','3','0,3','1','115,138,139,140,141,142,143','115','','','','','','','','');
INSERT INTO `destoon_category` VALUES('116','4','户外广告','','116','list.php?catid=116','h','1','0','0','3','0,3','1','116,144,145,146,147,148,149,150,151,152','116','','','','','','','','');
INSERT INTO `destoon_category` VALUES('117','4','机场广告','','117','list.php?catid=117','j','1','0','0','3','0,3','1','117,153,154,155,156,157,158,159,160,161,162,163','117','','','','','','','','');
INSERT INTO `destoon_category` VALUES('118','4','地铁广告','','118','list.php?catid=118','d','1','0','0','3','0,3','1','118,164,165,166,167,168,169,170,171,172,173,174','118','','','','','','','','');
INSERT INTO `destoon_category` VALUES('119','4','社区广告','','119','list.php?catid=119','s','1','0','0','3','0,3','1','119,175,176,177,178,179,180,181','119','','','','','','','','');
INSERT INTO `destoon_category` VALUES('120','4','高铁/火车站','','120','list.php?catid=120','g','1','0','0','3','0,3','1','120,182,183,184,185','120','','','','','','','','');
INSERT INTO `destoon_category` VALUES('121','4','其他广告','','121','list.php?catid=121','q','1','0','0','3','0,3','1','121,186,187,188,189,190,191','121','','','','','','','','');
INSERT INTO `destoon_category` VALUES('122','4','电视台','','122','list.php?catid=122','d','1','0','0','112','0,3,112','0','122','122','','','','','','','','');
INSERT INTO `destoon_category` VALUES('123','4','楼宇电视','','123','list.php?catid=123','l','1','0','0','112','0,3,112','0','123','123','','','','','','','','');
INSERT INTO `destoon_category` VALUES('124','4','公交车电视','','124','list.php?catid=124','g','1','0','0','112','0,3,112','0','124','124','','','','','','','','');
INSERT INTO `destoon_category` VALUES('125','4','地铁电视','','125','list.php?catid=125','d','1','0','0','112','0,3,112','0','125','125','','','','','','','','');
INSERT INTO `destoon_category` VALUES('126','4','高铁电视','','126','list.php?catid=126','g','1','0','0','112','0,3,112','0','126','126','','','','','','','','');
INSERT INTO `destoon_category` VALUES('127','4','大巴电视','','127','list.php?catid=127','d','1','0','0','112','0,3,112','0','127','127','','','','','','','','');
INSERT INTO `destoon_category` VALUES('128','4','网络电视','','128','list.php?catid=128','w','1','0','0','112','0,3,112','0','128','128','','','','','','','','');
INSERT INTO `destoon_category` VALUES('129','4','交通广播','','129','list.php?catid=129','j','1','0','0','112','0,3,112','0','129','129','','','','','','','','');
INSERT INTO `destoon_category` VALUES('130','4','看板','','130','list.php?catid=130','k','1','0','0','113','0,3,113','0','130','130','','','','','','','','');
INSERT INTO `destoon_category` VALUES('131','4','楼宇电视','','131','list.php?catid=131','l','1','0','0','113','0,3,113','0','131','131','','','','','','','','');
INSERT INTO `destoon_category` VALUES('132','4','电梯门','','132','list.php?catid=132','d','1','0','0','113','0,3,113','0','132','132','','','','','','','','');
INSERT INTO `destoon_category` VALUES('133','4','刷屏机','','133','list.php?catid=133','s','1','0','0','113','0,3,113','0','133','133','','','','','','','','');
INSERT INTO `destoon_category` VALUES('134','4','电梯按钮','','134','list.php?catid=134','d','1','0','0','113','0,3,113','0','134','134','','','','','','','','');
INSERT INTO `destoon_category` VALUES('135','4','其他','','135','list.php?catid=135','q','1','0','0','113','0,3,113','0','135','135','','','','','','','','');
INSERT INTO `destoon_category` VALUES('136','4','陕西地区','','136','list.php?catid=136','s','1','0','0','114','0,3,114','0','136','136','','','','','','','','');
INSERT INTO `destoon_category` VALUES('137','4','华商报','','137','list.php?catid=137','h','1','0','0','114','0,3,114','0','137','137','','','','','','','','');
INSERT INTO `destoon_category` VALUES('138','4','公交车体广告','','138','list.php?catid=138','g','1','0','0','115','0,3,115','0','138','138','','','','','','','','');
INSERT INTO `destoon_category` VALUES('139','4','公交车内广告','','139','list.php?catid=139','g','1','0','0','115','0,3,115','0','139','139','','','','','','','','');
INSERT INTO `destoon_category` VALUES('140','4','公交移动电视广告','','140','list.php?catid=140','g','1','0','0','115','0,3,115','0','140','140','','','','','','','','');
INSERT INTO `destoon_category` VALUES('141','4','公交车座广告','','141','list.php?catid=141','g','1','0','0','115','0,3,115','0','141','141','','','','','','','','');
INSERT INTO `destoon_category` VALUES('142','4','报站广告','','142','list.php?catid=142','b','1','0','0','115','0,3,115','0','142','142','','','','','','','','');
INSERT INTO `destoon_category` VALUES('143','4','其他','','143','list.php?catid=143','q','1','0','0','115','0,3,115','0','143','143','','','','','','','','');
INSERT INTO `destoon_category` VALUES('144','4','单立柱大牌','','144','list.php?catid=144','d','1','0','0','116','0,3,116','0','144','144','','','','','','','','');
INSERT INTO `destoon_category` VALUES('145','4','灯箱','','145','list.php?catid=145','d','1','0','0','116','0,3,116','0','145','145','','','','','','','','');
INSERT INTO `destoon_category` VALUES('146','4','三面翻','','146','list.php?catid=146','s','1','0','0','116','0,3,116','0','146','146','','','','','','','','');
INSERT INTO `destoon_category` VALUES('147','4','LED屏','','147','list.php?catid=147','L','1','0','0','116','0,3,116','0','147','147','','','','','','','','');
INSERT INTO `destoon_category` VALUES('148','4','候车亭','','148','list.php?catid=148','h','1','0','0','116','0,3,116','0','148','148','','','','','','','','');
INSERT INTO `destoon_category` VALUES('149','4','楼顶','','149','list.php?catid=149','l','1','0','0','116','0,3,116','0','149','149','','','','','','','','');
INSERT INTO `destoon_category` VALUES('150','4','桥体','','150','list.php?catid=150','q','1','0','0','116','0,3,116','0','150','150','','','','','','','','');
INSERT INTO `destoon_category` VALUES('151','4','桥墩','','151','list.php?catid=151','q','1','0','0','116','0,3,116','0','151','151','','','','','','','','');
INSERT INTO `destoon_category` VALUES('152','4','其他','','152','list.php?catid=152','q','1','0','0','116','0,3,116','0','152','152','','','','','','','','');
INSERT INTO `destoon_category` VALUES('153','4','机场大牌','','153','list.php?catid=153','j','1','0','0','117','0,3,117','0','153','153','','','','','','','','');
INSERT INTO `destoon_category` VALUES('154','4','机场LED','','154','list.php?catid=154','j','1','0','0','117','0,3,117','0','154','154','','','','','','','','');
INSERT INTO `destoon_category` VALUES('155','4','机票广告','','155','list.php?catid=155','j','1','0','0','117','0,3,117','0','155','155','','','','','','','','');
INSERT INTO `destoon_category` VALUES('156','4','飞机电视','','156','list.php?catid=156','f','1','0','0','117','0,3,117','0','156','156','','','','','','','','');
INSERT INTO `destoon_category` VALUES('157','4','机场大巴','','157','list.php?catid=157','j','1','0','0','117','0,3,117','0','157','157','','','','','','','','');
INSERT INTO `destoon_category` VALUES('158','4','机场报纸','','158','list.php?catid=158','j','1','0','0','117','0,3,117','0','158','158','','','','','','','','');
INSERT INTO `destoon_category` VALUES('159','4','立柱','','159','list.php?catid=159','l','1','0','0','117','0,3,117','0','159','159','','','','','','','','');
INSERT INTO `destoon_category` VALUES('160','4','通道看板','','160','list.php?catid=160','t','1','0','0','117','0,3,117','0','160','160','','','','','','','','');
INSERT INTO `destoon_category` VALUES('161','4','机场杂志栏','','161','list.php?catid=161','j','1','0','0','117','0,3,117','0','161','161','','','','','','','','');
INSERT INTO `destoon_category` VALUES('162','4','通道灯箱','','162','list.php?catid=162','t','1','0','0','117','0,3,117','0','162','162','','','','','','','','');
INSERT INTO `destoon_category` VALUES('163','4','其他','','163','list.php?catid=163','q','1','0','0','117','0,3,117','0','163','163','','','','','','','','');
INSERT INTO `destoon_category` VALUES('164','4','车内看板','','164','list.php?catid=164','c','1','0','0','118','0,3,118','0','164','164','','','','','','','','');
INSERT INTO `destoon_category` VALUES('165','4','电视','','165','list.php?catid=165','d','1','0','0','118','0,3,118','0','165','165','','','','','','','','');
INSERT INTO `destoon_category` VALUES('166','4','语音报站','','166','list.php?catid=166','y','1','0','0','118','0,3,118','0','166','166','','','','','','','','');
INSERT INTO `destoon_category` VALUES('167','4','刷屏机','','167','list.php?catid=167','s','1','0','0','118','0,3,118','0','167','167','','','','','','','','');
INSERT INTO `destoon_category` VALUES('168','4','手拉环','','168','list.php?catid=168','s','1','0','0','118','0,3,118','0','168','168','','','','','','','','');
INSERT INTO `destoon_category` VALUES('169','4','指示牌','','169','list.php?catid=169','z','1','0','0','118','0,3,118','0','169','169','','','','','','','','');
INSERT INTO `destoon_category` VALUES('170','4','地图','','170','list.php?catid=170','d','1','0','0','118','0,3,118','0','170','170','','','','','','','','');
INSERT INTO `destoon_category` VALUES('171','4','通道看板','','171','list.php?catid=171','t','1','0','0','118','0,3,118','0','171','171','','','','','','','','');
INSERT INTO `destoon_category` VALUES('172','4','安全门','','172','list.php?catid=172','a','1','0','0','118','0,3,118','0','172','172','','','','','','','','');
INSERT INTO `destoon_category` VALUES('173','4','站台看板','','173','list.php?catid=173','z','1','0','0','118','0,3,118','0','173','173','','','','','','','','');
INSERT INTO `destoon_category` VALUES('174','4','其他','','174','list.php?catid=174','q','1','0','0','118','0,3,118','0','174','174','','','','','','','','');
INSERT INTO `destoon_category` VALUES('175','4','道闸','','175','list.php?catid=175','d','1','0','0','119','0,3,119','0','175','175','','','','','','','','');
INSERT INTO `destoon_category` VALUES('176','4','灯箱','','176','list.php?catid=176','d','1','0','0','119','0,3,119','0','176','176','','','','','','','','');
INSERT INTO `destoon_category` VALUES('177','4','垃圾箱','','177','list.php?catid=177','l','1','0','0','119','0,3,119','0','177','177','','','','','','','','');
INSERT INTO `destoon_category` VALUES('178','4','社区接水机','','178','list.php?catid=178','s','1','0','0','119','0,3,119','0','178','178','','','','','','','','');
INSERT INTO `destoon_category` VALUES('179','4','地库','','179','list.php?catid=179','d','1','0','0','119','0,3,119','0','179','179','','','','','','','','');
INSERT INTO `destoon_category` VALUES('180','4','指示牌','','180','list.php?catid=180','z','1','0','0','119','0,3,119','0','180','180','','','','','','','','');
INSERT INTO `destoon_category` VALUES('181','4','其他','','181','list.php?catid=181','q','1','0','0','119','0,3,119','0','181','181','','','','','','','','');
INSERT INTO `destoon_category` VALUES('182','4','通道看板','','182','list.php?catid=182','t','1','0','0','120','0,3,120','0','182','182','','','','','','','','');
INSERT INTO `destoon_category` VALUES('183','4','月台/站台','','183','list.php?catid=183','y','1','0','0','120','0,3,120','0','183','183','','','','','','','','');
INSERT INTO `destoon_category` VALUES('184','4','座位','','184','list.php?catid=184','z','1','0','0','120','0,3,120','0','184','184','','','','','','','','');
INSERT INTO `destoon_category` VALUES('185','4','其他','','185','list.php?catid=185','q','1','0','0','120','0,3,120','0','185','185','','','','','','','','');
INSERT INTO `destoon_category` VALUES('186','4','平面设计','','186','list.php?catid=186','p','1','0','0','121','0,3,121','0','186','186','','','','','','','','');
INSERT INTO `destoon_category` VALUES('187','4','影视动画','','187','list.php?catid=187','y','1','0','0','121','0,3,121','0','187','187','','','','','','','','');
INSERT INTO `destoon_category` VALUES('188','4','包装设计','','188','list.php?catid=188','b','1','0','0','121','0,3,121','0','188','188','','','','','','','','');
INSERT INTO `destoon_category` VALUES('189','4','喷绘设计','','189','list.php?catid=189','p','1','0','0','121','0,3,121','0','189','189','','','','','','','','');
INSERT INTO `destoon_category` VALUES('190','4','活动设备租赁','','190','list.php?catid=190','h','1','0','0','121','0,3,121','0','190','190','','','','','','','','');
INSERT INTO `destoon_category` VALUES('191','4','其他','','191','list.php?catid=191','q','1','0','0','121','0,3,121','0','191','191','','','','','','','','');
INSERT INTO `destoon_category` VALUES('192','4','模型设计','','192','list.php?catid=192','m','1','0','0','110','0,110','0','192','192','','','','','','','','');
INSERT INTO `destoon_category` VALUES('193','4','DM设计','','193','list.php?catid=193','D','1','0','0','110','0,110','0','193','193','','','','','','','','');
INSERT INTO `destoon_category` VALUES('194','4','广告字体','','194','list.php?catid=194','g','1','0','0','110','0,110','0','194','194','','','','','','','','');
INSERT INTO `destoon_category` VALUES('195','4','广告策划创意','','195','list.php?catid=195','g','1','0','0','111','0,111','0','195','195','','','','','','','','');
INSERT INTO `destoon_category` VALUES('196','4','产品营销策划','','196','list.php?catid=196','c','1','0','0','111','0,111','0','196','196','','','','','','','','');
INSERT INTO `destoon_category` VALUES('197','4','公关活动策划','','197','list.php?catid=197','g','1','0','0','111','0,111','0','197','197','','','','','','','','');
INSERT INTO `destoon_category` VALUES('198','4','VI企业形象策划','','198','list.php?catid=198','V','1','0','0','111','0,111','0','198','198','','','','','','','','');
INSERT INTO `destoon_category` VALUES('199','4','管理培训','','199','list.php?catid=199','g','1','0','0','111','0,111','0','199','199','','','','','','','','');
INSERT INTO `destoon_category` VALUES('200','4','会展活动','','200','list.php?catid=200','h','1','0','0','111','0,111','0','200','200','','','','','','','','');
INSERT INTO `destoon_category` VALUES('201','4','地产策划','','201','list.php?catid=201','d','1','0','0','111','0,111','0','201','201','','','','','','','','');
INSERT INTO `destoon_category` VALUES('202','4','其他','','202','list.php?catid=202','q','1','0','0','111','0,111','0','202','202','','','','','','','','');
INSERT INTO `destoon_category` VALUES('203','21','百科资料','','baikeziliao','list.php?catid=203','b','1','2','0','0','0','0','203','203','','','','','','','','');
INSERT INTO `destoon_category` VALUES('204','22','分类招商','','204','list.php?catid=204','','1','1','0','0','0','0','204','204','','','','','','','','');
INSERT INTO `destoon_category` VALUES('205','22','分类一招商','','205','list.php?catid=205','','1','0','0','0','0','0','205','205','','','','','','','','');
INSERT INTO `destoon_category` VALUES('206','9','国际招标','','206','list.php?catid=206','','1','1','0','0','0','0','206','206','','','','','','','','');
INSERT INTO `destoon_category` VALUES('207','9','政府采购','','207','list.php?catid=207','','1','0','0','0','0','0','207','207','','','','','','','','');
INSERT INTO `destoon_category` VALUES('208','9','工程招标','','208','list.php?catid=208','','1','0','0','0','0','0','208','208','','','','','','','','');
INSERT INTO `destoon_category` VALUES('209','21','晒单资讯','','209','list.php?catid=209','','1','0','0','0','0','0','209','209','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('210','21','出售资讯','','210','list.php?catid=210','','1','0','0','0','0','0','210','210','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('211','27','中标信息','','zhongbiaoxinxi','list.php?catid=211','z','1','0','0','0','0','0','211','211','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('212','26','国际招标','','gjzb','list.php?catid=212','z','1','0','0','0','0','0','212','212','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('214','26','政府采购','','zfcg','list.php?catid=214','','1','0','0','0','0','0','214','214','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('213','21','招标资讯','','zbzx','list.php?catid=213','z','1','0','0','0','0','0','213','213','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('215','26','工程招标','','gczb','list.php?catid=215','','1','0','0','0','0','0','215','215','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');

DROP TABLE IF EXISTS `destoon_category_option`;
CREATE TABLE `destoon_category_option` (
  `oid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `required` tinyint(1) unsigned NOT NULL default '0',
  `search` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  `extend` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`oid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类属性';


DROP TABLE IF EXISTS `destoon_category_value`;
CREATE TABLE `destoon_category_value` (
  `oid` bigint(20) unsigned NOT NULL default '0',
  `moduleid` smallint(6) NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `value` text NOT NULL,
  KEY `moduleid` (`moduleid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类属性值';


DROP TABLE IF EXISTS `destoon_chat`;
CREATE TABLE `destoon_chat` (
  `chatid` varchar(32) NOT NULL,
  `fromuser` varchar(30) NOT NULL,
  `fgettime` int(10) unsigned NOT NULL default '0',
  `freadtime` int(10) unsigned NOT NULL default '0',
  `fnew` int(10) unsigned NOT NULL default '0',
  `touser` varchar(30) NOT NULL,
  `tgettime` int(10) unsigned NOT NULL default '0',
  `treadtime` int(10) unsigned NOT NULL default '0',
  `tnew` int(10) unsigned NOT NULL default '0',
  `lastmsg` varchar(255) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL default '0',
  `forward` varchar(255) NOT NULL,
  UNIQUE KEY `chatid` (`chatid`),
  KEY `fromuser` (`fromuser`),
  KEY `touser` (`touser`),
  KEY `lasttime` (`lasttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线聊天';


DROP TABLE IF EXISTS `destoon_city`;
CREATE TABLE `destoon_city` (
  `areaid` int(10) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `iparea` mediumtext NOT NULL,
  `domain` varchar(255) NOT NULL default '',
  `letter` varchar(4) NOT NULL default '',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `template` varchar(50) NOT NULL default '',
  `seo_title` varchar(255) NOT NULL default '',
  `seo_keywords` varchar(255) NOT NULL default '',
  `seo_description` varchar(255) NOT NULL default '',
  UNIQUE KEY `areaid` (`areaid`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='城市分站';


DROP TABLE IF EXISTS `destoon_club`;
CREATE TABLE `destoon_club` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `gid` bigint(20) unsigned NOT NULL default '0',
  `video` tinyint(1) unsigned NOT NULL default '0',
  `ontop` tinyint(1) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `message` tinyint(1) unsigned NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `reply` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `replyuser` varchar(30) NOT NULL,
  `replyer` varchar(30) NOT NULL,
  `replytime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `laizi` varchar(255) NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商圈帖子';

INSERT INTO `destoon_club` VALUES('1','4','1','9','0','0','0','11111111111111','','0','0','','11111111111111,最新视频拍摄,原创','','13','0','http://127.0.0.1/destoon/file/upload/201607/22/145130981.jpg','admin','admin','1469170277','','','0','admin','1469170902','127.0.0.1','','3','show.php?itemid=1','','','');
INSERT INTO `destoon_club` VALUES('2','4','1','9','0','0','0','名字名字名字名字名字名字名字','','0','0','','名字名字名字名字名字名字名字,最新视频拍摄,原创','','7','0','http://127.0.0.1/destoon/file/upload/201607/22/145441922.jpg','wenle123','wenle123','1469170552','','','0','admin','1469170612','127.0.0.1','','3','show.php?itemid=2','','','');

DROP TABLE IF EXISTS `destoon_club_data`;
CREATE TABLE `destoon_club_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈帖子内容';

INSERT INTO `destoon_club_data` VALUES('1','11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111');
INSERT INTO `destoon_club_data` VALUES('2','&nbsp;<span style=\"font-family: 微软雅黑; font-size: 13px; line-height: 25px;\">谢谢爱人,新婚快乐！！！</span><br />\r\n<img src=\"http://127.0.0.1/destoon/file/upload/201607/22/145510922.jpg\" style=\"margin: 10px 10px 10px 0px; padding: 0px; border: 1px solid rgb(204, 204, 204); font-family: 微软雅黑; font-size: 13px; line-height: 25px;\" width=\"249\" height=\"248\" alt=\"\" /><span style=\"font-family: 微软雅黑; font-size: 13px; line-height: 25px;\">&nbsp;</span><img src=\"http://127.0.0.1/destoon/file/upload/201607/22/145523662.jpg\" style=\"margin: 10px 10px 10px 0px; padding: 0px; border: 1px solid rgb(204, 204, 204); font-family: 微软雅黑; font-size: 13px; line-height: 25px;\" width=\"249\" height=\"248\" alt=\"\" /><span style=\"font-family: 微软雅黑; font-size: 13px; line-height: 25px;\">&nbsp;</span><img src=\"http://127.0.0.1/destoon/file/upload/201607/22/145535862.jpg\" style=\"margin: 10px 10px 10px 0px; padding: 0px; border: 1px solid rgb(204, 204, 204); font-family: 微软雅黑; font-size: 13px; line-height: 25px;\" width=\"249\" height=\"248\" alt=\"\" />');

DROP TABLE IF EXISTS `destoon_club_fans`;
CREATE TABLE `destoon_club_fans` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `gid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `reason` mediumtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `gid` (`gid`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商圈粉丝';

INSERT INTO `destoon_club_fans` VALUES('1','9','wenle123','wenle123','的顶顶顶顶顶顶顶顶顶顶','1469169952','3');
INSERT INTO `destoon_club_fans` VALUES('2','9','admin','admin','1111111','1469170037','3');

DROP TABLE IF EXISTS `destoon_club_group`;
CREATE TABLE `destoon_club_group` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `post` int(10) unsigned NOT NULL default '0',
  `fans` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL,
  `template` varchar(30) NOT NULL,
  `show_template` varchar(30) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `join_type` tinyint(1) unsigned NOT NULL default '0',
  `list_type` tinyint(1) unsigned NOT NULL default '0',
  `show_type` tinyint(1) unsigned NOT NULL default '0',
  `post_type` tinyint(1) unsigned NOT NULL default '0',
  `reply_type` tinyint(1) unsigned NOT NULL default '0',
  `reason` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商圈圈子';

INSERT INTO `destoon_club_group` VALUES('9','4','1','3','最新视频拍摄','#FF6600','2','2','http://127.0.0.1/destoon/file/upload/201607/22/144224951.jpg','','admin','admin','1469169750','admin','1469169790','','','','3','list.php?catid=9','9','最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄','0','0','0','0','0','最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄');

DROP TABLE IF EXISTS `destoon_club_manage`;
CREATE TABLE `destoon_club_manage` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `gid` bigint(20) unsigned NOT NULL default '0',
  `tid` bigint(20) unsigned NOT NULL default '0',
  `rid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `typeid` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `reason` mediumtext NOT NULL,
  `message` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈管理';


DROP TABLE IF EXISTS `destoon_club_reply`;
CREATE TABLE `destoon_club_reply` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `tid` bigint(20) unsigned NOT NULL default '0',
  `gid` bigint(20) unsigned NOT NULL default '0',
  `fid` int(10) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `tid` (`tid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈回复';


DROP TABLE IF EXISTS `destoon_comment`;
CREATE TABLE `destoon_comment` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `item_mid` smallint(6) NOT NULL default '0',
  `item_id` bigint(20) unsigned NOT NULL default '0',
  `item_title` varchar(255) NOT NULL default '',
  `item_username` varchar(30) NOT NULL default '',
  `star` tinyint(1) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `qid` bigint(20) unsigned NOT NULL default '0',
  `quotation` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `hidden` tinyint(1) NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `reply` mediumtext NOT NULL,
  `editor` varchar(30) NOT NULL default '',
  `replyer` varchar(30) NOT NULL default '',
  `replytime` int(10) unsigned NOT NULL default '0',
  `agree` int(10) unsigned NOT NULL default '0',
  `against` int(10) unsigned NOT NULL default '0',
  `quote` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `item_mid` (`item_mid`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论';


DROP TABLE IF EXISTS `destoon_comment_ban`;
CREATE TABLE `destoon_comment_ban` (
  `bid` bigint(20) unsigned NOT NULL auto_increment,
  `moduleid` smallint(6) NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论禁止';


DROP TABLE IF EXISTS `destoon_comment_stat`;
CREATE TABLE `destoon_comment_stat` (
  `sid` bigint(20) unsigned NOT NULL auto_increment,
  `moduleid` smallint(6) NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `comment` int(10) unsigned NOT NULL default '0',
  `star1` int(10) unsigned NOT NULL default '0',
  `star2` int(10) unsigned NOT NULL default '0',
  `star3` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论统计';


DROP TABLE IF EXISTS `destoon_company`;
CREATE TABLE `destoon_company` (
  `userid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `validator` varchar(100) NOT NULL default '',
  `validtime` int(10) unsigned NOT NULL default '0',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `vipt` smallint(2) unsigned NOT NULL default '0',
  `vipr` smallint(2) NOT NULL default '0',
  `type` varchar(100) NOT NULL default '',
  `catid` varchar(100) NOT NULL default '',
  `catids` varchar(100) NOT NULL default '',
  `areaid` int(10) unsigned NOT NULL default '0',
  `mode` varchar(100) NOT NULL default '',
  `capital` float unsigned NOT NULL default '0',
  `regunit` varchar(15) NOT NULL default '',
  `size` varchar(100) NOT NULL default '',
  `regyear` varchar(4) NOT NULL default '',
  `regcity` varchar(30) NOT NULL default '',
  `sell` varchar(255) NOT NULL default '',
  `buy` varchar(255) NOT NULL default '',
  `business` varchar(255) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `fax` varchar(50) NOT NULL default '',
  `mail` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `postcode` varchar(20) NOT NULL default '',
  `homepage` varchar(255) NOT NULL default '',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `styletime` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `keyword` varchar(255) NOT NULL default '',
  `template` varchar(30) NOT NULL default '',
  `skin` varchar(30) NOT NULL default '',
  `domain` varchar(100) NOT NULL default '',
  `icp` varchar(100) NOT NULL default '',
  `linkurl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`userid`),
  KEY `domain` (`domain`),
  KEY `vip` (`vip`),
  KEY `areaid` (`areaid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司';

INSERT INTO `destoon_company` VALUES('1','admin','1','DESTOON B2B网站管理系统','0','0','','0','0','0','0','企业单位','','','1','','0','人民币','','','','','','','','','','','','','0','0','0','','','3','DESTOON B2B网站管理系统默认地区','','','','','http://www.adbangbang.com/index.php?homepage=admin');
INSERT INTO `destoon_company` VALUES('2','wenle123','5','asd3','0','0','','0','0','0','0','','','','1','','0','人民币','','','','','','','','','','','','','0','0','0','','','0','asd3默认地区','','','','','http://www.adbangbang.com/index.php?homepage=wenle123');
INSERT INTO `destoon_company` VALUES('3','llkd','6','王先生','0','0','','0','0','0','0','企业单位',',3,131,',',3,113,131,','1','','0','人民币','','2006','','','','电梯广告','0377-63986698','','','卧龙路世纪广场A座1208室','','','0','0','0','','','0','王先生默认地区,电梯广告,,,','','','','','http://127.0.0.196:89/index.php?homepage=llkd');

DROP TABLE IF EXISTS `destoon_company_data`;
CREATE TABLE `destoon_company_data` (
  `userid` bigint(20) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司内容';

INSERT INTO `destoon_company_data` VALUES('1','');
INSERT INTO `destoon_company_data` VALUES('2','&nbsp;');
INSERT INTO `destoon_company_data` VALUES('3','&nbsp;欢迎您的光临，我们竭诚为您服务');

DROP TABLE IF EXISTS `destoon_company_setting`;
CREATE TABLE `destoon_company_setting` (
  `userid` bigint(20) unsigned NOT NULL default '0',
  `item_key` varchar(100) NOT NULL default '',
  `item_value` text NOT NULL,
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司设置';


DROP TABLE IF EXISTS `destoon_cron`;
CREATE TABLE `destoon_cron` (
  `itemid` smallint(6) unsigned NOT NULL auto_increment,
  `title` varchar(30) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(20) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL default '0',
  `nexttime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `note` text NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `nexttime` (`nexttime`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='计划任务';

INSERT INTO `destoon_cron` VALUES('1','更新在线状态','1','online','10','1469875334','1469875934','0','');
INSERT INTO `destoon_cron` VALUES('2','内容分表创建','1','split','0,0','1469847382','1469894400','0','');
INSERT INTO `destoon_cron` VALUES('3','清理过期文件缓存','0','cache','30','1469873799','1469875599','0','');
INSERT INTO `destoon_cron` VALUES('20','清理过期禁止IP','0','banip','0,10','1469847382','1469895000','0','');
INSERT INTO `destoon_cron` VALUES('21','清理系统临时文件','0','temp','0,20','1469847382','1469895600','0','');
INSERT INTO `destoon_cron` VALUES('40','清理3天前未付款充值记录','0','charge','1,0','1469847382','1469898000','0','');
INSERT INTO `destoon_cron` VALUES('41','清理30天前404日志','0','404','1,10','1469847382','1469898600','0','');
INSERT INTO `destoon_cron` VALUES('42','清理30天前登录日志','0','loginlog','1,20','1469847382','1469899200','0','');
INSERT INTO `destoon_cron` VALUES('43','清理30天前管理日志','0','adminlog','1,30','1469847382','1469899800','0','');
INSERT INTO `destoon_cron` VALUES('44','清理30天前站内交谈','0','chat','1,40','1469847382','1469900400','0','');
INSERT INTO `destoon_cron` VALUES('60','清理90天前已读信件','0','message','2,0','0','0','1','');
INSERT INTO `destoon_cron` VALUES('61','清理90天前资金流水','0','money','2,10','0','0','1','');
INSERT INTO `destoon_cron` VALUES('62','清理90天前积分流水','0','credit','2,20','0','0','1','');
INSERT INTO `destoon_cron` VALUES('63','清理90天前短信流水','0','sms','2,30','0','0','1','');
INSERT INTO `destoon_cron` VALUES('64','清理90天前短信记录','0','smssend','2,40','0','0','1','');
INSERT INTO `destoon_cron` VALUES('65','清理90天前邮件记录','0','maillog','2,50','0','0','1','');

DROP TABLE IF EXISTS `destoon_down_15`;
CREATE TABLE `destoon_down_15` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `tag` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `download` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `fileurl` varchar(255) NOT NULL default '',
  `fileext` varchar(10) NOT NULL default '',
  `filesize` float NOT NULL default '0',
  `unit` varchar(10) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载';


DROP TABLE IF EXISTS `destoon_down_data_15`;
CREATE TABLE `destoon_down_data_15` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载内容';


DROP TABLE IF EXISTS `destoon_exhibit`;
CREATE TABLE `destoon_exhibit` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `orders` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `city` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `postcode` varchar(20) NOT NULL default '',
  `homepage` varchar(255) NOT NULL default '',
  `hallname` varchar(100) NOT NULL default '',
  `sponsor` varchar(100) NOT NULL default '',
  `undertaker` varchar(100) NOT NULL default '',
  `truename` varchar(30) NOT NULL default '',
  `addr` varchar(255) NOT NULL default '',
  `telephone` varchar(100) NOT NULL default '',
  `mobile` varchar(20) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `remark` mediumtext NOT NULL,
  `sign` tinyint(1) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='展会';


DROP TABLE IF EXISTS `destoon_exhibit_data`;
CREATE TABLE `destoon_exhibit_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='展会内容';


DROP TABLE IF EXISTS `destoon_exhibit_order`;
CREATE TABLE `destoon_exhibit_order` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `id` bigint(20) unsigned NOT NULL default '0',
  `user` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL default '',
  `amount` int(10) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL,
  `truename` varchar(30) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `areaid` int(10) unsigned NOT NULL default '0',
  `address` varchar(255) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='展会报名';


DROP TABLE IF EXISTS `destoon_favorite`;
CREATE TABLE `destoon_favorite` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `userid` bigint(20) unsigned NOT NULL default '0',
  `typeid` bigint(20) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商机收藏';

INSERT INTO `destoon_favorite` VALUES('1','0','2','0','最新视频拍摄圈','','http://127.0.0.1/destoon/club/list.php?catid=9','1111','1469169967');

DROP TABLE IF EXISTS `destoon_fetch`;
CREATE TABLE `destoon_fetch` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `sitename` varchar(100) NOT NULL default '',
  `domain` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `encode` varchar(30) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页采编';


DROP TABLE IF EXISTS `destoon_fields`;
CREATE TABLE `destoon_fields` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `tb` varchar(30) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `type` varchar(20) NOT NULL default '',
  `length` smallint(4) unsigned NOT NULL default '0',
  `html` varchar(30) NOT NULL default '',
  `default_value` text NOT NULL,
  `option_value` text NOT NULL,
  `width` smallint(4) unsigned NOT NULL default '0',
  `height` smallint(4) unsigned NOT NULL default '0',
  `input_limit` varchar(255) NOT NULL default '',
  `addition` varchar(255) NOT NULL default '',
  `display` tinyint(1) unsigned NOT NULL default '0',
  `front` tinyint(1) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `tablename` (`tb`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='自定义字段';

INSERT INTO `destoon_fields` VALUES('1','club','laizi','来自','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('2','member','isfwjg','是否服务机构','','varchar','255','radio','否','是|是*\r\n否|否*\r\n','120','90','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('3','info_26','yzdw','业主单位','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('4','info_26','tbdq','投标地区','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('5','info_26','kbdd','开标地点','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('6','info_26','bmkssj','报名开始时间','','int','10','date','','','120','90','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('7','info_26','bmjzsj','报名截止时间','','int','10','date','','','120','90','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('8','info_26','tbjzsj','投标截止时间','','int','10','date','','','120','90','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('9','info_26','gsjgsj','公示结果时间','','int','10','date','','','120','90','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('10','info_26','isgk','联系方式是否公开','','int','10','radio','0','0|报名审核后可见*\r\n1|公开*\r\n','120','90','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('11','info_26','yqtb','邀请投标','','int','10','radio','0','0|不邀请*\r\n1|全部供应商*\r\n2|邀请特约供应商*\r\n','120','90','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('12','info_26','fujian','上传附件','','varchar','255','file','','','120','90','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('13','info_26','xmpw','项目批文','','varchar','255','thumb','','','209','249','','','1','1','0');
INSERT INTO `destoon_fields` VALUES('14','info_27','yzdw','业主单位','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('15','info_27','yzszd','所在地','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('16','info_27','zbdw','中标单位','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('17','info_27','zbje','中标金额','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('18','info_27','xmbh','项目编号','','varchar','255','text','','','120','90','','size=\"30\"','1','1','0');
INSERT INTO `destoon_fields` VALUES('19','info_27','gsjzsj','公示截止时间','','int','10','date','','','120','90','','','1','1','0');

DROP TABLE IF EXISTS `destoon_finance_card`;
CREATE TABLE `destoon_finance_card` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `number` varchar(30) NOT NULL default '',
  `password` varchar(30) NOT NULL default '',
  `amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `editor` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  UNIQUE KEY `number` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值卡';


DROP TABLE IF EXISTS `destoon_finance_cash`;
CREATE TABLE `destoon_finance_cash` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `bank` varchar(50) NOT NULL default '',
  `banktype` tinyint(1) unsigned NOT NULL default '0',
  `branch` varchar(100) NOT NULL,
  `account` varchar(30) NOT NULL default '',
  `truename` varchar(30) NOT NULL default '',
  `amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `fee` decimal(10,2) unsigned NOT NULL default '0.00',
  `addtime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `note` varchar(255) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='申请提现';


DROP TABLE IF EXISTS `destoon_finance_charge`;
CREATE TABLE `destoon_finance_charge` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `bank` varchar(20) NOT NULL default '',
  `amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `fee` decimal(10,2) unsigned NOT NULL default '0.00',
  `money` decimal(10,2) unsigned NOT NULL default '0.00',
  `sendtime` int(10) unsigned NOT NULL default '0',
  `receivetime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `reason` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线充值';


DROP TABLE IF EXISTS `destoon_finance_credit`;
CREATE TABLE `destoon_finance_credit` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `amount` int(10) NOT NULL default '0',
  `balance` int(10) NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `reason` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='积分流水';

INSERT INTO `destoon_finance_credit` VALUES('1','admin','1','1','1469066164','登录奖励','127.0.0.1','system');
INSERT INTO `destoon_finance_credit` VALUES('2','admin','1','2','1469153850','登录奖励','127.0.0.1','system');
INSERT INTO `destoon_finance_credit` VALUES('3','wenle123','20','20','1469169919','注册奖励','127.0.0.1','system');
INSERT INTO `destoon_finance_credit` VALUES('4','admin','3','5','1469170312','商圈发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('5','wenle123','3','23','1469170612','商圈发布','ID:2','system');
INSERT INTO `destoon_finance_credit` VALUES('6','admin','1','6','1469240415','登录奖励','127.0.0.1','system');
INSERT INTO `destoon_finance_credit` VALUES('7','admin','2','8','1469253450','百科资料发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('8','admin','2','10','1469253478','百科资料发布','ID:2','system');
INSERT INTO `destoon_finance_credit` VALUES('9','admin','1','11','1469326724','登录奖励','127.0.0.1','system');
INSERT INTO `destoon_finance_credit` VALUES('10','admin','2','13','1469349726','求购发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('11','admin','2','15','1469350011','求购发布','ID:2','system');
INSERT INTO `destoon_finance_credit` VALUES('12','admin','2','17','1469350054','求购发布','ID:3','system');
INSERT INTO `destoon_finance_credit` VALUES('13','admin','2','19','1469351985','求购发布','ID:4','system');
INSERT INTO `destoon_finance_credit` VALUES('14','admin','1','20','1469412155','登录奖励','127.0.0.1','system');
INSERT INTO `destoon_finance_credit` VALUES('15','admin','2','22','1469412793','招商中心发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('16','admin','2','24','1469419781','热门招标发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('17','wenle123','2','25','1469419894','简历发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('18','admin','1','25','1469515944','登录奖励','115.52.191.152','system');
INSERT INTO `destoon_finance_credit` VALUES('19','llkd','20','20','1469604582','注册奖励','127.0.0.196','system');
INSERT INTO `destoon_finance_credit` VALUES('20','admin','1','26','1469670491','登录奖励','127.0.0.196','system');
INSERT INTO `destoon_finance_credit` VALUES('21','admin','1','27','1469756518','登录奖励','127.0.0.196','system');
INSERT INTO `destoon_finance_credit` VALUES('22','admin','1','28','1469847378','登录奖励','127.0.0.196','system');

DROP TABLE IF EXISTS `destoon_finance_deposit`;
CREATE TABLE `destoon_finance_deposit` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `amount` decimal(10,2) NOT NULL default '0.00',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL,
  `reason` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='保证金';


DROP TABLE IF EXISTS `destoon_finance_pay`;
CREATE TABLE `destoon_finance_pay` (
  `pid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `fee` float unsigned NOT NULL default '0',
  `currency` varchar(20) NOT NULL default '',
  `paytime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `moduleid` smallint(6) NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录';


DROP TABLE IF EXISTS `destoon_finance_promo`;
CREATE TABLE `destoon_finance_promo` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `number` varchar(30) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `amount` float NOT NULL default '0',
  `reuse` tinyint(1) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  UNIQUE KEY `number` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠码';


DROP TABLE IF EXISTS `destoon_finance_record`;
CREATE TABLE `destoon_finance_record` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `bank` varchar(30) NOT NULL default '',
  `amount` decimal(10,2) NOT NULL default '0.00',
  `balance` decimal(10,2) NOT NULL default '0.00',
  `addtime` int(10) unsigned NOT NULL default '0',
  `reason` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财务流水';


DROP TABLE IF EXISTS `destoon_finance_sms`;
CREATE TABLE `destoon_finance_sms` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `amount` int(10) NOT NULL default '0',
  `balance` int(10) NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `reason` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信增减';


DROP TABLE IF EXISTS `destoon_form`;
CREATE TABLE `destoon_form` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `typeid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL default '0',
  `display` tinyint(1) unsigned NOT NULL default '0',
  `question` int(10) unsigned NOT NULL default '0',
  `answer` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `template` varchar(30) NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单';


DROP TABLE IF EXISTS `destoon_form_answer`;
CREATE TABLE `destoon_form_answer` (
  `aid` bigint(20) unsigned NOT NULL auto_increment,
  `fid` bigint(20) unsigned NOT NULL default '0',
  `rid` bigint(20) unsigned NOT NULL default '0',
  `qid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `other` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单回复';


DROP TABLE IF EXISTS `destoon_form_question`;
CREATE TABLE `destoon_form_question` (
  `qid` bigint(20) unsigned NOT NULL auto_increment,
  `fid` int(10) unsigned NOT NULL default '0',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `value` mediumtext NOT NULL,
  `required` varchar(30) NOT NULL,
  `extend` mediumtext NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`qid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单选项';


DROP TABLE IF EXISTS `destoon_form_record`;
CREATE TABLE `destoon_form_record` (
  `rid` bigint(20) unsigned NOT NULL auto_increment,
  `fid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `item` varchar(100) NOT NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单回复记录';


DROP TABLE IF EXISTS `destoon_friend`;
CREATE TABLE `destoon_friend` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `userid` bigint(20) unsigned NOT NULL default '0',
  `typeid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `truename` varchar(20) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `company` varchar(100) NOT NULL default '',
  `career` varchar(20) NOT NULL default '',
  `telephone` varchar(20) NOT NULL default '',
  `mobile` varchar(20) NOT NULL default '',
  `homepage` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='我的商友';


DROP TABLE IF EXISTS `destoon_gift`;
CREATE TABLE `destoon_gift` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `typeid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `credit` int(10) unsigned NOT NULL default '0',
  `amount` int(10) unsigned NOT NULL default '0',
  `groupid` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `orders` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分换礼';


DROP TABLE IF EXISTS `destoon_gift_order`;
CREATE TABLE `destoon_gift_order` (
  `oid` bigint(20) unsigned NOT NULL auto_increment,
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `credit` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `status` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`oid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分换礼订单';


DROP TABLE IF EXISTS `destoon_group`;
CREATE TABLE `destoon_group` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `price` decimal(10,2) unsigned NOT NULL default '0.00',
  `marketprice` decimal(10,2) unsigned NOT NULL default '0.00',
  `savemoney` decimal(10,2) unsigned NOT NULL default '0.00',
  `discount` float unsigned NOT NULL default '0',
  `minamount` int(10) unsigned NOT NULL default '0',
  `amount` int(10) unsigned NOT NULL default '0',
  `logistic` tinyint(1) unsigned NOT NULL default '0',
  `tag` varchar(100) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `orders` int(10) unsigned NOT NULL default '0',
  `sales` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `totime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `process` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购';


DROP TABLE IF EXISTS `destoon_group_data`;
CREATE TABLE `destoon_group_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购内容';


DROP TABLE IF EXISTS `destoon_group_order`;
CREATE TABLE `destoon_group_order` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `gid` bigint(20) unsigned NOT NULL default '0',
  `buyer` varchar(30) NOT NULL default '',
  `seller` varchar(30) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `price` decimal(10,2) unsigned NOT NULL default '0.00',
  `number` int(10) unsigned NOT NULL default '0',
  `amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `logistic` tinyint(1) unsigned NOT NULL default '0',
  `password` varchar(6) NOT NULL default '',
  `buyer_name` varchar(30) NOT NULL default '',
  `buyer_address` varchar(255) NOT NULL default '',
  `buyer_postcode` varchar(10) NOT NULL default '',
  `buyer_phone` varchar(30) NOT NULL default '',
  `buyer_mobile` varchar(30) NOT NULL default '',
  `send_type` varchar(50) NOT NULL default '',
  `send_no` varchar(50) NOT NULL default '',
  `send_status` tinyint(1) unsigned NOT NULL default '0',
  `send_time` varchar(20) NOT NULL default '',
  `send_days` int(10) unsigned NOT NULL default '0',
  `add_time` smallint(6) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `buyer_reason` mediumtext NOT NULL,
  `refund_reason` mediumtext NOT NULL,
  `note` varchar(255) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购订单';


DROP TABLE IF EXISTS `destoon_guestbook`;
CREATE TABLE `destoon_guestbook` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `areaid` int(10) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `content` text NOT NULL,
  `reply` text NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `qq` varchar(30) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言本';


DROP TABLE IF EXISTS `destoon_honor`;
CREATE TABLE `destoon_honor` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `authority` varchar(100) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='荣誉资质';


DROP TABLE IF EXISTS `destoon_info_22`;
CREATE TABLE `destoon_info_22` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `thumb1` varchar(255) NOT NULL default '',
  `thumb2` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `totime` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `fax` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `editdate` date NOT NULL default '0000-00-00',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `islink` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`),
  KEY `editdate` (`editdate`,`vip`,`edittime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='招商';

INSERT INTO `destoon_info_22` VALUES('1','204','0','招商信息测试','','0','招商信息测试,分类招商默认地区','','18','http://127.0.0.1/destoon/file/upload/201607/25/101311451.jpg.thumb.jpg','','','admin','1','1469412775','2016-07-25','0','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试','','','','','','','admin','1469412793','2016-07-25','127.0.0.1','','3','0','0','show.php?itemid=1','','');

DROP TABLE IF EXISTS `destoon_info_26`;
CREATE TABLE `destoon_info_26` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `thumb1` varchar(255) NOT NULL default '',
  `thumb2` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `totime` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `fax` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `editdate` date NOT NULL default '0000-00-00',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `islink` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `yzdw` varchar(255) NOT NULL,
  `tbdq` varchar(255) NOT NULL,
  `kbdd` varchar(255) NOT NULL,
  `bmkssj` int(10) NOT NULL,
  `bmjzsj` int(10) NOT NULL,
  `tbjzsj` int(10) NOT NULL,
  `gsjgsj` int(10) NOT NULL,
  `isgk` int(10) NOT NULL,
  `yqtb` int(10) NOT NULL,
  `fujian` varchar(255) NOT NULL,
  `xmpw` varchar(255) NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`),
  KEY `editdate` (`editdate`,`vip`,`edittime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='热门招标';


DROP TABLE IF EXISTS `destoon_info_27`;
CREATE TABLE `destoon_info_27` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `thumb1` varchar(255) NOT NULL default '',
  `thumb2` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `totime` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `fax` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `editdate` date NOT NULL default '0000-00-00',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `islink` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `yzdw` varchar(255) NOT NULL,
  `yzszd` varchar(255) NOT NULL,
  `zbdw` varchar(255) NOT NULL,
  `zbje` varchar(255) NOT NULL,
  `xmbh` varchar(255) NOT NULL,
  `gsjzsj` int(10) NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`),
  KEY `editdate` (`editdate`,`vip`,`edittime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='中标信息';


DROP TABLE IF EXISTS `destoon_info_data_22`;
CREATE TABLE `destoon_info_data_22` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招商内容';

INSERT INTO `destoon_info_data_22` VALUES('1','&nbsp;招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试招商信息测试');

DROP TABLE IF EXISTS `destoon_info_data_26`;
CREATE TABLE `destoon_info_data_26` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='热门招标内容';


DROP TABLE IF EXISTS `destoon_info_data_27`;
CREATE TABLE `destoon_info_data_27` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='中标信息内容';


DROP TABLE IF EXISTS `destoon_job`;
CREATE TABLE `destoon_job` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `department` varchar(100) NOT NULL default '',
  `total` smallint(4) unsigned NOT NULL default '0',
  `minsalary` int(10) unsigned NOT NULL default '0',
  `maxsalary` int(10) unsigned NOT NULL default '0',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `gender` tinyint(1) unsigned NOT NULL default '0',
  `marriage` tinyint(1) unsigned NOT NULL default '0',
  `education` smallint(2) unsigned NOT NULL default '0',
  `experience` smallint(2) unsigned NOT NULL default '0',
  `minage` smallint(2) unsigned NOT NULL default '0',
  `maxage` smallint(2) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL,
  `apply` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `sex` tinyint(1) unsigned NOT NULL default '1',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `editdate` date NOT NULL default '0000-00-00',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='招聘';

INSERT INTO `destoon_job` VALUES('1','206','1','0','aaa','','0','1111','aaa,,国际招标默认地区','','','1','0','0','0','1','0','0','0','18','0','9','','1','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','86564234','15686430595','','','','2442954419','','','1','0','admin','1469419781','2016-07-25','1469419781','2016-07-25','127.0.0.1','','3','show.php?itemid=1','','');

DROP TABLE IF EXISTS `destoon_job_apply`;
CREATE TABLE `destoon_job_apply` (
  `applyid` bigint(20) unsigned NOT NULL auto_increment,
  `jobid` bigint(20) unsigned NOT NULL default '0',
  `resumeid` bigint(20) unsigned NOT NULL default '0',
  `job_username` varchar(30) NOT NULL default '',
  `apply_username` varchar(30) NOT NULL default '',
  `applytime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`applyid`),
  KEY `job_username` (`job_username`),
  KEY `apply_username` (`apply_username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='应聘工作';

INSERT INTO `destoon_job_apply` VALUES('1','1','1','admin','wenle123','1469420035','0','1');

DROP TABLE IF EXISTS `destoon_job_data`;
CREATE TABLE `destoon_job_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招聘内容';

INSERT INTO `destoon_job_data` VALUES('1','&nbsp;1111');

DROP TABLE IF EXISTS `destoon_job_talent`;
CREATE TABLE `destoon_job_talent` (
  `talentid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `resumeid` bigint(20) unsigned NOT NULL default '0',
  `jointime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`talentid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人才库';


DROP TABLE IF EXISTS `destoon_keylink`;
CREATE TABLE `destoon_keylink` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `item` varchar(20) NOT NULL default '',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关联链接';


DROP TABLE IF EXISTS `destoon_keyword`;
CREATE TABLE `destoon_keyword` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `moduleid` smallint(6) NOT NULL default '0',
  `word` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `letter` varchar(255) NOT NULL default '',
  `items` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `total_search` int(10) unsigned NOT NULL default '0',
  `month_search` int(10) unsigned NOT NULL default '0',
  `week_search` int(10) unsigned NOT NULL default '0',
  `today_search` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '3',
  PRIMARY KEY  (`itemid`),
  KEY `moduleid` (`moduleid`),
  KEY `word` (`word`),
  KEY `letter` (`letter`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关键词';


DROP TABLE IF EXISTS `destoon_know`;
CREATE TABLE `destoon_know` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `credit` int(10) unsigned NOT NULL default '0',
  `aid` bigint(20) unsigned NOT NULL default '0',
  `hidden` tinyint(1) unsigned NOT NULL default '0',
  `process` tinyint(1) unsigned NOT NULL default '0',
  `message` tinyint(1) unsigned NOT NULL default '0',
  `addition` mediumtext NOT NULL,
  `comment` mediumtext NOT NULL,
  `introduce` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `raise` int(10) unsigned NOT NULL default '0',
  `agree` int(10) unsigned NOT NULL default '0',
  `against` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `answer` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `ask` varchar(30) NOT NULL,
  `expert` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道';


DROP TABLE IF EXISTS `destoon_know_answer`;
CREATE TABLE `destoon_know_answer` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `qid` bigint(20) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `vote` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `expert` tinyint(1) unsigned NOT NULL default '0',
  `hidden` tinyint(1) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道回答';


DROP TABLE IF EXISTS `destoon_know_data`;
CREATE TABLE `destoon_know_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道内容';


DROP TABLE IF EXISTS `destoon_know_expert`;
CREATE TABLE `destoon_know_expert` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `major` varchar(255) NOT NULL,
  `ask` int(10) unsigned NOT NULL default '0',
  `answer` int(10) unsigned NOT NULL default '0',
  `best` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `introduce` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道专家';


DROP TABLE IF EXISTS `destoon_know_vote`;
CREATE TABLE `destoon_know_vote` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `qid` bigint(20) unsigned NOT NULL default '0',
  `aid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道投票';


DROP TABLE IF EXISTS `destoon_link`;
CREATE TABLE `destoon_link` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `typeid` bigint(20) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `listorder` smallint(4) NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接';

INSERT INTO `destoon_link` VALUES('1','0','0','Destoon B2B','','http://static.destoon.com/logo.gif','DESTOON B2B网站管理系统','','1466996173','admin','1466996173','0','1','3','http://www.destoon.com/');

DROP TABLE IF EXISTS `destoon_login`;
CREATE TABLE `destoon_login` (
  `logid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `passsalt` varchar(8) NOT NULL,
  `admin` tinyint(1) unsigned NOT NULL default '0',
  `loginip` varchar(50) NOT NULL default '',
  `logintime` int(10) unsigned NOT NULL default '0',
  `message` varchar(255) NOT NULL default '',
  `agent` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='登录日志';


DROP TABLE IF EXISTS `destoon_mail`;
CREATE TABLE `destoon_mail` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `typeid` bigint(20) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `sendtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件订阅';


DROP TABLE IF EXISTS `destoon_mail_list`;
CREATE TABLE `destoon_mail_list` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `typeids` varchar(255) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `edittime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订阅列表';


DROP TABLE IF EXISTS `destoon_mail_log`;
CREATE TABLE `destoon_mail_log` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件记录';


DROP TABLE IF EXISTS `destoon_mall`;
CREATE TABLE `destoon_mall` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `mycatid` bigint(20) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `elite` tinyint(1) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `brand` varchar(100) NOT NULL default '',
  `price` decimal(10,2) unsigned NOT NULL default '0.00',
  `step` mediumtext NOT NULL,
  `amount` int(10) unsigned NOT NULL default '0',
  `unit` varchar(20) NOT NULL,
  `tag` varchar(100) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `orders` int(10) unsigned NOT NULL default '0',
  `sales` int(10) unsigned NOT NULL default '0',
  `comments` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `thumb1` varchar(255) NOT NULL default '',
  `thumb2` varchar(255) NOT NULL default '',
  `relate_name` varchar(100) NOT NULL,
  `relate_id` varchar(255) NOT NULL,
  `relate_title` varchar(100) NOT NULL,
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(255) NOT NULL,
  `v2` varchar(255) NOT NULL,
  `v3` varchar(255) NOT NULL,
  `express_1` int(10) unsigned NOT NULL default '0',
  `express_name_1` varchar(100) NOT NULL,
  `fee_start_1` decimal(10,2) unsigned NOT NULL,
  `fee_step_1` decimal(10,2) unsigned NOT NULL,
  `express_2` int(10) unsigned NOT NULL default '0',
  `express_name_2` varchar(100) NOT NULL,
  `fee_start_2` decimal(10,2) unsigned NOT NULL,
  `fee_step_2` decimal(10,2) unsigned NOT NULL,
  `express_3` int(10) unsigned NOT NULL default '0',
  `express_name_3` varchar(100) NOT NULL,
  `fee_start_3` decimal(10,2) unsigned NOT NULL,
  `fee_step_3` decimal(10,2) unsigned NOT NULL,
  `cod` tinyint(1) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `editdate` date NOT NULL default '0000-00-00',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商城';


DROP TABLE IF EXISTS `destoon_mall_cart`;
CREATE TABLE `destoon_mall_cart` (
  `userid` bigint(20) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `edittime` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车';


DROP TABLE IF EXISTS `destoon_mall_comment`;
CREATE TABLE `destoon_mall_comment` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `mallid` bigint(20) unsigned NOT NULL default '0',
  `buyer` varchar(30) NOT NULL default '',
  `seller` varchar(30) NOT NULL default '',
  `buyer_star` tinyint(1) unsigned NOT NULL default '0',
  `buyer_comment` text NOT NULL,
  `buyer_ctime` int(10) unsigned NOT NULL default '0',
  `buyer_reply` text NOT NULL,
  `buyer_rtime` int(10) unsigned NOT NULL default '0',
  `seller_star` tinyint(1) unsigned NOT NULL default '0',
  `seller_comment` text NOT NULL,
  `seller_ctime` int(10) unsigned NOT NULL default '0',
  `seller_reply` text NOT NULL,
  `seller_rtime` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `itemid` (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单评论';


DROP TABLE IF EXISTS `destoon_mall_data`;
CREATE TABLE `destoon_mall_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商城内容';


DROP TABLE IF EXISTS `destoon_mall_express`;
CREATE TABLE `destoon_mall_express` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `parentid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `express` varchar(30) NOT NULL,
  `fee_start` decimal(10,2) unsigned NOT NULL,
  `fee_step` decimal(10,2) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `items` int(10) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='运费模板';


DROP TABLE IF EXISTS `destoon_mall_order`;
CREATE TABLE `destoon_mall_order` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `mid` smallint(6) unsigned NOT NULL default '16',
  `mallid` bigint(20) unsigned NOT NULL default '0',
  `buyer` varchar(30) NOT NULL default '',
  `seller` varchar(30) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `price` decimal(10,2) unsigned NOT NULL default '0.00',
  `number` int(10) unsigned NOT NULL default '0',
  `amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `fee` decimal(10,2) NOT NULL default '0.00',
  `fee_name` varchar(30) NOT NULL default '',
  `buyer_name` varchar(30) NOT NULL default '',
  `buyer_address` varchar(255) NOT NULL default '',
  `buyer_postcode` varchar(10) NOT NULL default '',
  `buyer_phone` varchar(30) NOT NULL default '',
  `buyer_mobile` varchar(30) NOT NULL default '',
  `buyer_star` tinyint(1) unsigned NOT NULL default '0',
  `seller_star` tinyint(1) unsigned NOT NULL default '0',
  `send_type` varchar(50) NOT NULL default '',
  `send_no` varchar(50) NOT NULL default '',
  `send_status` tinyint(1) unsigned NOT NULL default '0',
  `send_time` varchar(20) NOT NULL default '',
  `send_days` int(10) unsigned NOT NULL default '0',
  `cod` tinyint(1) unsigned NOT NULL default '0',
  `trade_no` varchar(50) NOT NULL default '',
  `add_time` smallint(6) NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `buyer_reason` mediumtext NOT NULL,
  `refund_reason` mediumtext NOT NULL,
  `note` varchar(255) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商城订单';


DROP TABLE IF EXISTS `destoon_mall_stat`;
CREATE TABLE `destoon_mall_stat` (
  `mallid` bigint(20) unsigned NOT NULL default '0',
  `seller` varchar(30) NOT NULL default '',
  `scomment` int(10) unsigned NOT NULL default '0',
  `s1` int(10) unsigned NOT NULL default '0',
  `s2` int(10) unsigned NOT NULL default '0',
  `s3` int(10) unsigned NOT NULL default '0',
  `buyer` varchar(30) NOT NULL default '',
  `bcomment` int(10) unsigned NOT NULL default '0',
  `b1` int(10) unsigned NOT NULL default '0',
  `b2` int(10) unsigned NOT NULL default '0',
  `b3` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `mallid` (`mallid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评分统计';


DROP TABLE IF EXISTS `destoon_member`;
CREATE TABLE `destoon_member` (
  `userid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `passport` varchar(30) NOT NULL default '',
  `company` varchar(100) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `passsalt` varchar(8) NOT NULL,
  `payword` varchar(32) NOT NULL default '',
  `paysalt` varchar(8) NOT NULL,
  `email` varchar(50) NOT NULL default '',
  `message` smallint(6) unsigned NOT NULL default '0',
  `chat` smallint(6) unsigned NOT NULL default '0',
  `sound` tinyint(1) unsigned NOT NULL default '1',
  `online` tinyint(1) unsigned NOT NULL default '1',
  `avatar` tinyint(1) unsigned NOT NULL default '0',
  `gender` tinyint(1) unsigned NOT NULL default '1',
  `truename` varchar(20) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `department` varchar(30) NOT NULL default '',
  `career` varchar(30) NOT NULL default '',
  `admin` tinyint(1) unsigned NOT NULL default '0',
  `role` varchar(255) NOT NULL default '',
  `aid` int(10) unsigned NOT NULL default '0',
  `groupid` smallint(4) unsigned NOT NULL default '4',
  `regid` smallint(4) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `sms` int(10) NOT NULL default '0',
  `credit` int(10) NOT NULL default '0',
  `money` decimal(10,2) NOT NULL default '0.00',
  `deposit` decimal(10,2) unsigned NOT NULL default '0.00',
  `bank` varchar(30) NOT NULL default '',
  `banktype` tinyint(1) unsigned NOT NULL default '0',
  `branch` varchar(100) NOT NULL,
  `account` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `regip` varchar(50) NOT NULL default '',
  `regtime` int(10) unsigned NOT NULL default '0',
  `loginip` varchar(50) NOT NULL default '',
  `logintime` int(10) unsigned NOT NULL default '0',
  `logintimes` int(10) unsigned NOT NULL default '1',
  `black` varchar(255) NOT NULL default '',
  `send` tinyint(1) unsigned NOT NULL default '1',
  `auth` varchar(32) NOT NULL default '',
  `authvalue` varchar(100) NOT NULL default '',
  `authtime` int(10) unsigned NOT NULL default '0',
  `vemail` tinyint(1) unsigned NOT NULL default '0',
  `vmobile` tinyint(1) unsigned NOT NULL default '0',
  `vtruename` tinyint(1) unsigned NOT NULL default '0',
  `vbank` tinyint(1) unsigned NOT NULL default '0',
  `vcompany` tinyint(1) unsigned NOT NULL default '0',
  `vtrade` tinyint(1) unsigned NOT NULL default '0',
  `trade` varchar(50) NOT NULL default '',
  `support` varchar(50) NOT NULL default '',
  `inviter` varchar(30) NOT NULL default '',
  `note` text NOT NULL,
  `isfwjg` varchar(255) NOT NULL,
  PRIMARY KEY  (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `passport` (`passport`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员';

INSERT INTO `destoon_member` VALUES('1','admin','admin','DESTOON B2B网站管理系统','8291737ac617a6f97a5da13960f34bf4','PZdcMco2','575b6c3ddbafd5a76a7739db3dff1e9c','aDwvRISs','mail@yourdomain.com','1','0','0','1','0','1','嘉客','','','','','','','','1','','0','1','6','1','0','28','0.00','0.00','','1','','','1435770227','127.0.0.1','1466996173','127.0.0.196','1469847378','15','','1','','','1436723402','0','0','0','0','0','0','','','','','');
INSERT INTO `destoon_member` VALUES('2','wenle123','wenle123','asd3','b970f85999ebc817c8358cd2ffb6ff9a','wCdcmmPu','0dc40a3ee4b7e18f64c159c9cc04a776','KxeK3RcS','2442954419@qq.com','0','0','1','1','0','1','asd3','15686430595','','2442954419','2442954419','2442954419','技术部','php','0','','0','5','5','1','0','25','0.00','0.00','','0','','','1469169919','127.0.0.1','1469169919','127.0.0.1','1469170434','3','','1','','','0','0','0','0','0','0','0','','','wenle123','','');
INSERT INTO `destoon_member` VALUES('3','llkd','llkd','王先生','baa2b6e18807ea252396bdc58251663c','2qZq9eeV','7dd779c296663ce1366ca2f8857f0aaa','0WVEvpDN','2368669@qq.com','1','0','1','1','0','1','王先生','13203869968','','','','','','','0','','0','6','5','1','0','20','0.00','0.00','','0','','','1469609525','127.0.0.196','1469604582','127.0.0.196','1469604586','2','','1','','','0','0','0','0','0','0','0','','','','','是');

DROP TABLE IF EXISTS `destoon_member_check`;
CREATE TABLE `destoon_member_check` (
  `userid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员资料审核';


DROP TABLE IF EXISTS `destoon_member_group`;
CREATE TABLE `destoon_member_group` (
  `groupid` smallint(4) unsigned NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='会员组';

INSERT INTO `destoon_member_group` VALUES('1','管理员','0','1');
INSERT INTO `destoon_member_group` VALUES('2','禁止访问','0','2');
INSERT INTO `destoon_member_group` VALUES('3','游客','0','3');
INSERT INTO `destoon_member_group` VALUES('4','待审核会员','0','4');
INSERT INTO `destoon_member_group` VALUES('5','个人会员','0','5');
INSERT INTO `destoon_member_group` VALUES('6','企业会员','0','6');
INSERT INTO `destoon_member_group` VALUES('7','VIP会员','1','7');

DROP TABLE IF EXISTS `destoon_message`;
CREATE TABLE `destoon_message` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `typeid` tinyint(1) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `fromuser` varchar(30) NOT NULL default '',
  `touser` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `isread` tinyint(1) unsigned NOT NULL default '0',
  `issend` tinyint(1) unsigned NOT NULL default '0',
  `feedback` tinyint(1) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `groupids` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `touser` (`touser`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='站内信件';

INSERT INTO `destoon_message` VALUES('1','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://127.0.0.1/destoon/\" target=\"_blank\"><img src=\"http://127.0.0.1/destoon/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>wenle123<br/>\r\n<strong>密码：</strong>1230..<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://127.0.0.1/destoon/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','wenle123','1469169919','127.0.0.1','1','0','0','3','');
INSERT INTO `destoon_message` VALUES('2','您的招聘[aaa]收到新的简历','','4','详见:<a href=\"http://127.0.0.1/destoon/ZHAOBIAO/resume.php?itemid=1\" target=\"_blank\">http://127.0.0.1/destoon/ZHAOBIAO/resume.php?itemid=1</a>','','admin','1469420035','127.0.0.1','0','0','0','3','');
INSERT INTO `destoon_message` VALUES('3','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://127.0.0.196:89/\" target=\"_blank\"><img src=\"http://127.0.0.196:89/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>llkd<br/>\r\n<strong>密码：</strong>123456<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://127.0.0.196:89/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','llkd','1469604582','127.0.0.196','0','0','0','3','');

DROP TABLE IF EXISTS `destoon_module`;
CREATE TABLE `destoon_module` (
  `moduleid` smallint(6) unsigned NOT NULL auto_increment,
  `module` varchar(20) NOT NULL default '',
  `name` varchar(20) NOT NULL default '',
  `moduledir` varchar(20) NOT NULL default '',
  `domain` varchar(255) NOT NULL default '',
  `linkurl` varchar(255) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `islink` tinyint(1) unsigned NOT NULL default '0',
  `ismenu` tinyint(1) unsigned NOT NULL default '0',
  `isblank` tinyint(1) unsigned NOT NULL default '0',
  `logo` tinyint(1) unsigned NOT NULL default '0',
  `disabled` tinyint(1) unsigned NOT NULL default '0',
  `installtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`moduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='模型';

INSERT INTO `destoon_module` VALUES('1','destoon','核心','','http://demo.destoon.com/v6.0/','http://127.0.0.196:89/','','1','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('2','member','会员','member','','http://127.0.0.196:89/member/','','2','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('3','extend','扩展','extend','','http://127.0.0.196:89/extend/','','0','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('4','company','公司','company','','http://127.0.0.196:89/company/','','7','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('22','info','招商中心','invest','','http://127.0.0.196:89/invest/','','4','0','1','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('5','sell','产品信息','sell','','http://127.0.0.196:89/sell/','','5','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('6','buy','求购','buy','','http://127.0.0.196:89/buy/','','6','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('7','quote','行情','quote','','http://127.0.0.196:89/quote/','','9','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('8','exhibit','展会','exhibit','','http://127.0.0.196:89/exhibit/','','10','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('21','article','新闻资讯','news','','http://127.0.0.196:89/news/','','5','0','1','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('9','job','人才招聘','job','','http://127.0.0.196:89/job/','','3','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('13','brand','品牌','brand','','http://127.0.0.196:89/brand/','','13','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('24','destoon','创意设计','','http://127.0.0.1/destoon/company/list.php?catid=110/','http://127.0.0.1/destoon/company/list.php?catid=110','','1','1','1','1','0','0','1469243779');
INSERT INTO `destoon_module` VALUES('12','photo','图库','photo','','http://127.0.0.196:89/photo/','','17','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('25','destoon','活动策划','','','http://127.0.0.1/destoon/company/list.php?catid=111','','1','1','1','1','0','0','1469243797');
INSERT INTO `destoon_module` VALUES('23','destoon','广告媒体','','http://company/list.php?catid=3/','http://127.0.0.1/destoon/company/list.php?catid=3','','1','1','1','1','0','0','1469243645');
INSERT INTO `destoon_module` VALUES('18','club','自媒体','ZIMEITI','','http://127.0.0.196:89/ZIMEITI/','','2','0','1','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('26','info','热门招标','ZHAOBIAO','','http://127.0.0.196:89/ZHAOBIAO/','','26','0','1','0','0','0','1469581601');
INSERT INTO `destoon_module` VALUES('27','info','中标信息','zhongbiao','','http://127.0.0.196:89/zhongbiao/','','27','0','0','0','0','0','1469614183');

DROP TABLE IF EXISTS `destoon_news`;
CREATE TABLE `destoon_news` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `typeid` bigint(20) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `thumb` varchar(100) NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司新闻';


DROP TABLE IF EXISTS `destoon_news_data`;
CREATE TABLE `destoon_news_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司新闻内容';


DROP TABLE IF EXISTS `destoon_oauth`;
CREATE TABLE `destoon_oauth` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `site` varchar(30) NOT NULL default '',
  `openid` varchar(255) NOT NULL default '',
  `nickname` varchar(255) NOT NULL default '',
  `avatar` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `logintimes` int(10) unsigned NOT NULL default '0',
  `logintime` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `site` (`site`,`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='一键登录';


DROP TABLE IF EXISTS `destoon_online`;
CREATE TABLE `destoon_online` (
  `userid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `moduleid` int(10) unsigned NOT NULL default '0',
  `online` tinyint(1) unsigned NOT NULL default '1',
  `lasttime` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线会员';


DROP TABLE IF EXISTS `destoon_page`;
CREATE TABLE `destoon_page` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司单页';


DROP TABLE IF EXISTS `destoon_page_data`;
CREATE TABLE `destoon_page_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司单页内容';


DROP TABLE IF EXISTS `destoon_photo_12`;
CREATE TABLE `destoon_photo_12` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `items` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `open` tinyint(1) unsigned NOT NULL default '3',
  `password` varchar(30) NOT NULL default '',
  `question` varchar(30) NOT NULL default '',
  `answer` varchar(30) NOT NULL default '',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库';


DROP TABLE IF EXISTS `destoon_photo_data_12`;
CREATE TABLE `destoon_photo_data_12` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库内容';


DROP TABLE IF EXISTS `destoon_photo_item_12`;
CREATE TABLE `destoon_photo_item_12` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `item` bigint(20) unsigned NOT NULL default '0',
  `introduce` text NOT NULL,
  `thumb` varchar(255) NOT NULL default '',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `listorder` (`listorder`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库图片';


DROP TABLE IF EXISTS `destoon_poll`;
CREATE TABLE `destoon_poll` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `typeid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL default '0',
  `thumb_width` smallint(6) unsigned NOT NULL default '0',
  `thumb_height` smallint(6) unsigned NOT NULL default '0',
  `poll_max` smallint(6) unsigned NOT NULL default '0',
  `poll_page` smallint(6) unsigned NOT NULL default '0',
  `poll_cols` smallint(6) unsigned NOT NULL default '0',
  `poll_order` smallint(6) unsigned NOT NULL default '0',
  `polls` int(10) unsigned NOT NULL default '0',
  `items` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `template_poll` varchar(30) NOT NULL default '',
  `template` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选';


DROP TABLE IF EXISTS `destoon_poll_item`;
CREATE TABLE `destoon_poll_item` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `pollid` bigint(20) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `linkurl` varchar(255) NOT NULL default '',
  `polls` int(10) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `pollid` (`pollid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选选项';


DROP TABLE IF EXISTS `destoon_poll_record`;
CREATE TABLE `destoon_poll_record` (
  `rid` bigint(20) unsigned NOT NULL auto_increment,
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `pollid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `polltime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选记录';


DROP TABLE IF EXISTS `destoon_question`;
CREATE TABLE `destoon_question` (
  `qid` int(10) unsigned NOT NULL auto_increment,
  `question` varchar(255) NOT NULL default '',
  `answer` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='验证问题';

INSERT INTO `destoon_question` VALUES('1','5+6=?','11');
INSERT INTO `destoon_question` VALUES('2','7+8=?','15');
INSERT INTO `destoon_question` VALUES('3','11*11=?','121');
INSERT INTO `destoon_question` VALUES('4','12-5=?','7');
INSERT INTO `destoon_question` VALUES('5','21-9=?','12');

DROP TABLE IF EXISTS `destoon_quote`;
CREATE TABLE `destoon_quote` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `tag` varchar(100) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情';


DROP TABLE IF EXISTS `destoon_quote_data`;
CREATE TABLE `destoon_quote_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情内容';


DROP TABLE IF EXISTS `destoon_quote_price`;
CREATE TABLE `destoon_quote_price` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `pid` bigint(20) unsigned NOT NULL default '0',
  `price` decimal(10,2) NOT NULL,
  `market` smallint(6) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL,
  `areaid` int(10) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情报价';


DROP TABLE IF EXISTS `destoon_quote_product`;
CREATE TABLE `destoon_quote_product` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `unit` varchar(10) NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  `minprice` decimal(10,2) unsigned NOT NULL,
  `maxprice` decimal(10,2) unsigned NOT NULL,
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `market` varchar(255) NOT NULL,
  `item` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `seo_title` varchar(255) NOT NULL,
  `seo_keywords` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情产品';


DROP TABLE IF EXISTS `destoon_resume`;
CREATE TABLE `destoon_resume` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `truename` varchar(30) NOT NULL default '',
  `gender` tinyint(1) unsigned NOT NULL default '0',
  `birthday` date NOT NULL default '0000-00-00',
  `age` smallint(2) unsigned NOT NULL default '0',
  `marriage` tinyint(1) unsigned NOT NULL default '0',
  `height` smallint(2) unsigned NOT NULL default '0',
  `weight` smallint(2) unsigned NOT NULL default '0',
  `education` smallint(2) unsigned NOT NULL default '0',
  `school` varchar(100) NOT NULL default '',
  `major` varchar(100) NOT NULL default '',
  `skill` varchar(255) NOT NULL default '',
  `language` varchar(255) NOT NULL default '',
  `minsalary` int(10) unsigned NOT NULL default '0',
  `maxsalary` int(10) unsigned NOT NULL default '0',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `experience` smallint(2) unsigned NOT NULL default '0',
  `mobile` varchar(50) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `situation` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `open` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='简历';

INSERT INTO `destoon_resume` VALUES('1','206','1','0','科技公司','','0','科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司','科技公司,asd3,,国际招标默认地区,,,11,男士,未婚,大专','asd3','1','1993-09-01','23','1','180','65','3','11','','','','1000','0','1','1','15686430595','','','2442954419@qq.com','','2442954419','2442954419','','3','http://127.0.0.1/destoon/file/upload/201607/25/121036602.jpg','wenle123','1469419877','admin','1469419894','127.0.0.1','','0','3','3','resume.php?itemid=1','');

DROP TABLE IF EXISTS `destoon_resume_data`;
CREATE TABLE `destoon_resume_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='简历内容';

INSERT INTO `destoon_resume_data` VALUES('1','&nbsp;科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司科技公司');

DROP TABLE IF EXISTS `destoon_sell_5`;
CREATE TABLE `destoon_sell_5` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `mycatid` bigint(20) unsigned NOT NULL default '0',
  `typeid` smallint(2) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `elite` tinyint(1) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL default '',
  `unit` varchar(10) NOT NULL default '',
  `price` decimal(10,2) unsigned NOT NULL default '0.00',
  `minamount` float unsigned NOT NULL default '0',
  `amount` float unsigned NOT NULL default '0',
  `days` smallint(3) unsigned NOT NULL default '0',
  `tag` varchar(100) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `thumb1` varchar(255) NOT NULL default '',
  `thumb2` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `vip` smallint(2) unsigned NOT NULL default '0',
  `validated` tinyint(1) unsigned NOT NULL default '0',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(50) NOT NULL default '',
  `mobile` varchar(50) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `editdate` date NOT NULL default '0000-00-00',
  `addtime` int(10) unsigned NOT NULL default '0',
  `adddate` date NOT NULL default '0000-00-00',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `mycatid` (`mycatid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='供应';


DROP TABLE IF EXISTS `destoon_sell_data_5`;
CREATE TABLE `destoon_sell_data_5` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='供应内容';


DROP TABLE IF EXISTS `destoon_sell_search_5`;
CREATE TABLE `destoon_sell_search_5` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `sorttime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='供应搜索';


DROP TABLE IF EXISTS `destoon_session`;
CREATE TABLE `destoon_session` (
  `sessionid` varchar(32) NOT NULL default '',
  `data` text NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `sessionid` (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SESSION';


DROP TABLE IF EXISTS `destoon_setting`;
CREATE TABLE `destoon_setting` (
  `item` varchar(30) NOT NULL default '',
  `item_key` varchar(100) NOT NULL default '',
  `item_value` text NOT NULL,
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站设置';

INSERT INTO `destoon_setting` VALUES('1','max_image','800');
INSERT INTO `destoon_setting` VALUES('1','thumb_title','0');
INSERT INTO `destoon_setting` VALUES('1','thumb_album','1');
INSERT INTO `destoon_setting` VALUES('1','middle_h','180');
INSERT INTO `destoon_setting` VALUES('1','middle_w','240');
INSERT INTO `destoon_setting` VALUES('1','water_middle','0');
INSERT INTO `destoon_setting` VALUES('1','water_com','1');
INSERT INTO `destoon_setting` VALUES('1','gif_ani','0');
INSERT INTO `destoon_setting` VALUES('1','bmp_jpg','1');
INSERT INTO `destoon_setting` VALUES('1','water_pos','9');
INSERT INTO `destoon_setting` VALUES('1','water_min_wh','180');
INSERT INTO `destoon_setting` VALUES('1','water_margin','10');
INSERT INTO `destoon_setting` VALUES('1','water_type','0');
INSERT INTO `destoon_setting` VALUES('1','water_fontcolor','#000000');
INSERT INTO `destoon_setting` VALUES('1','water_fontsize','20');
INSERT INTO `destoon_setting` VALUES('1','water_font','simhei.ttf');
INSERT INTO `destoon_setting` VALUES('1','water_text','www.destoon.com');
INSERT INTO `destoon_setting` VALUES('1','water_jpeg_quality','90');
INSERT INTO `destoon_setting` VALUES('1','water_transition','60');
INSERT INTO `destoon_setting` VALUES('1','water_mark','watermark.png');
INSERT INTO `destoon_setting` VALUES('1','file_my','my.php');
INSERT INTO `destoon_setting` VALUES('1','file_login','login.php');
INSERT INTO `destoon_setting` VALUES('1','file_register','register.php');
INSERT INTO `destoon_setting` VALUES('1','defend_proxy','0');
INSERT INTO `destoon_setting` VALUES('1','defend_reload','0');
INSERT INTO `destoon_setting` VALUES('1','defend_cc','0');
INSERT INTO `destoon_setting` VALUES('1','safe_domain','');
INSERT INTO `destoon_setting` VALUES('1','check_referer','1');
INSERT INTO `destoon_setting` VALUES('1','uploaddir','Ym/d');
INSERT INTO `destoon_setting` VALUES('1','uploadsize','2048');
INSERT INTO `destoon_setting` VALUES('1','uploadtype','jpg|jpeg|gif|png|rar|zip|pdf|doc|xls|ppt|flv|mp4|docx|ppts|xlsx');
INSERT INTO `destoon_setting` VALUES('1','uploadlog','1');
INSERT INTO `destoon_setting` VALUES('1','anticopy','0');
INSERT INTO `destoon_setting` VALUES('1','ip_login','0');
INSERT INTO `destoon_setting` VALUES('1','login_log','0');
INSERT INTO `destoon_setting` VALUES('1','admin_log','0');
INSERT INTO `destoon_setting` VALUES('1','admin_online','1');
INSERT INTO `destoon_setting` VALUES('1','md5_pass','1');
INSERT INTO `destoon_setting` VALUES('1','captcha_admin','0');
INSERT INTO `destoon_setting` VALUES('1','captcha_cn','0');
INSERT INTO `destoon_setting` VALUES('1','captcha_chars','');
INSERT INTO `destoon_setting` VALUES('1','check_hour','');
INSERT INTO `destoon_setting` VALUES('1','admin_hour','');
INSERT INTO `destoon_setting` VALUES('1','admin_ip','');
INSERT INTO `destoon_setting` VALUES('1','admin_area','');
INSERT INTO `destoon_setting` VALUES('1','remote_url','');
INSERT INTO `destoon_setting` VALUES('1','ftp_path','');
INSERT INTO `destoon_setting` VALUES('1','ftp_save','0');
INSERT INTO `destoon_setting` VALUES('1','ftp_pasv','0');
INSERT INTO `destoon_setting` VALUES('1','ftp_ssl','0');
INSERT INTO `destoon_setting` VALUES('1','ftp_pass','');
INSERT INTO `destoon_setting` VALUES('1','ftp_user','');
INSERT INTO `destoon_setting` VALUES('1','ftp_port','21');
INSERT INTO `destoon_setting` VALUES('1','ftp_host','');
INSERT INTO `destoon_setting` VALUES('1','max_len','20000');
INSERT INTO `destoon_setting` VALUES('1','ftp_remote','0');
INSERT INTO `destoon_setting` VALUES('1','schcate_limit','10');
INSERT INTO `destoon_setting` VALUES('1','pagesize','20');
INSERT INTO `destoon_setting` VALUES('1','pushtime','0');
INSERT INTO `destoon_setting` VALUES('1','online','1200');
INSERT INTO `destoon_setting` VALUES('1','search_limit','1');
INSERT INTO `destoon_setting` VALUES('1','max_kw','30');
INSERT INTO `destoon_setting` VALUES('1','min_kw','3');
INSERT INTO `destoon_setting` VALUES('1','search_check_kw','0');
INSERT INTO `destoon_setting` VALUES('1','search_kw','1');
INSERT INTO `destoon_setting` VALUES('1','save_draft','0');
INSERT INTO `destoon_setting` VALUES('2','credit_del_credit','5');
INSERT INTO `destoon_setting` VALUES('2','credit_add_news','2');
INSERT INTO `destoon_setting` VALUES('2','credit_del_news','5');
INSERT INTO `destoon_setting` VALUES('2','credit_add_page','2');
INSERT INTO `destoon_setting` VALUES('2','credit_del_page','5');
INSERT INTO `destoon_setting` VALUES('2','credit_less','0');
INSERT INTO `destoon_setting` VALUES('2','credit_edit','10');
INSERT INTO `destoon_setting` VALUES('2','credit_login','1');
INSERT INTO `destoon_setting` VALUES('2','credit_user','20');
INSERT INTO `destoon_setting` VALUES('2','credit_ip','2');
INSERT INTO `destoon_setting` VALUES('2','credit_maxip','50');
INSERT INTO `destoon_setting` VALUES('2','credit_charge','1');
INSERT INTO `destoon_setting` VALUES('2','send_types','不需要物流|平邮|EMS|顺丰快递|申通E物流|圆通速递|中通速递|宅急送|韵达快运|天天快递|联邦快递|汇通快运|华强物流|其它');
INSERT INTO `destoon_setting` VALUES('2','cash_fee_max','50');
INSERT INTO `destoon_setting` VALUES('2','deposit','1000');
INSERT INTO `destoon_setting` VALUES('2','trade_day','10');
INSERT INTO `destoon_setting` VALUES('2','pay_banks','现金|网银在线|贝宝|支付宝|财付通|招商银行|中国工商银行|中国农业银行|中国建设银行|中国交通银行|中国银行|邮政储蓄|邮政汇款');
INSERT INTO `destoon_setting` VALUES('2','cash_fee_min','1');
INSERT INTO `destoon_setting` VALUES('2','cash_fee','1');
INSERT INTO `destoon_setting` VALUES('2','cash_max','10000');
INSERT INTO `destoon_setting` VALUES('2','cash_min','50');
INSERT INTO `destoon_setting` VALUES('2','cash_times','3');
INSERT INTO `destoon_setting` VALUES('2','cash_banks','招商银行|中国工商银行|中国农业银行|中国建设银行|中国交通银行|中国银行|邮政储蓄|贝宝|支付宝|财付通');
INSERT INTO `destoon_setting` VALUES('2','cash_enable','1');
INSERT INTO `destoon_setting` VALUES('2','pay_url','');
INSERT INTO `destoon_setting` VALUES('2','mincharge','0');
INSERT INTO `destoon_setting` VALUES('2','pay_online','1');
INSERT INTO `destoon_setting` VALUES('2','link_check','2');
INSERT INTO `destoon_setting` VALUES('2','credit_clear','0');
INSERT INTO `destoon_setting` VALUES('2','credit_save','0');
INSERT INTO `destoon_setting` VALUES('2','page_clear','0');
INSERT INTO `destoon_setting` VALUES('2','credit_check','2');
INSERT INTO `destoon_setting` VALUES('2','page_save','0');
INSERT INTO `destoon_setting` VALUES('2','news_save','0');
INSERT INTO `destoon_setting` VALUES('2','news_clear','0');
INSERT INTO `destoon_setting` VALUES('2','page_check','2');
INSERT INTO `destoon_setting` VALUES('2','news_check','2');
INSERT INTO `destoon_setting` VALUES('2','introduce_clear','0');
INSERT INTO `destoon_setting` VALUES('2','introduce_save','0');
INSERT INTO `destoon_setting` VALUES('2','introduce_length','0');
INSERT INTO `destoon_setting` VALUES('2','thumb_height','180');
INSERT INTO `destoon_setting` VALUES('2','thumb_width','180');
INSERT INTO `destoon_setting` VALUES('2','cate_max','6');
INSERT INTO `destoon_setting` VALUES('2','mode_max','2');
INSERT INTO `destoon_setting` VALUES('2','money_unit','人民币|港元|台币|美元|欧元|英镑');
INSERT INTO `destoon_setting` VALUES('2','com_mode','制造商|贸易商|服务商|其他机构');
INSERT INTO `destoon_setting` VALUES('2','com_size','1-49人|50-99人|100-499人|500-999人|1000-3000人|3000-5000人|5000-10000人|10000人以上');
INSERT INTO `destoon_setting` VALUES('2','com_type','企业单位|事业单位或社会团体|个体经营|其他');
INSERT INTO `destoon_setting` VALUES('2','login_goto','0');
INSERT INTO `destoon_setting` VALUES('2','login_remember','1');
INSERT INTO `destoon_setting` VALUES('2','captcha_login','0');
INSERT INTO `destoon_setting` VALUES('2','show_menu','1');
INSERT INTO `destoon_setting` VALUES('2','editor','Basic');
INSERT INTO `destoon_setting` VALUES('2','vfax','');
INSERT INTO `destoon_setting` VALUES('2','vcompany','1');
INSERT INTO `destoon_setting` VALUES('2','vbank','1');
INSERT INTO `destoon_setting` VALUES('2','vtruename','1');
INSERT INTO `destoon_setting` VALUES('2','vmobile','1');
INSERT INTO `destoon_setting` VALUES('2','vmember','1');
INSERT INTO `destoon_setting` VALUES('2','vemail','1');
INSERT INTO `destoon_setting` VALUES('2','chat_img','1');
INSERT INTO `destoon_setting` VALUES('2','chat_url','1');
INSERT INTO `destoon_setting` VALUES('2','chat_ext','jpg|gif|png|rar|zip|pdf|doc|xls|ppt|docx|xlsx|pptx');
INSERT INTO `destoon_setting` VALUES('2','chat_file','1');
INSERT INTO `destoon_setting` VALUES('2','chat_mintime','3');
INSERT INTO `destoon_setting` VALUES('2','chat_poll','3');
INSERT INTO `destoon_setting` VALUES('2','auth_days','3');
INSERT INTO `destoon_setting` VALUES('2','alertid','5|6|22');
INSERT INTO `destoon_setting` VALUES('2','alert_check','2');
INSERT INTO `destoon_setting` VALUES('2','chat_maxlen','300');
INSERT INTO `destoon_setting` VALUES('2','chat_timeout','600');
INSERT INTO `destoon_setting` VALUES('2','lock_hour','1');
INSERT INTO `destoon_setting` VALUES('2','login_times','10');
INSERT INTO `destoon_setting` VALUES('2','captcha_sendmessage','2');
INSERT INTO `destoon_setting` VALUES('2','maxtouser','5');
INSERT INTO `destoon_setting` VALUES('3','sitemaps_priority','0.8');
INSERT INTO `destoon_setting` VALUES('3','sitemaps_changefreq','monthly');
INSERT INTO `destoon_setting` VALUES('3','sitemaps','1');
INSERT INTO `destoon_setting` VALUES('3','feed_pagesize','50');
INSERT INTO `destoon_setting` VALUES('3','feed_domain','');
INSERT INTO `destoon_setting` VALUES('3','feed_enable','2');
INSERT INTO `destoon_setting` VALUES('3','archiver_domain','');
INSERT INTO `destoon_setting` VALUES('3','archiver_enable','1');
INSERT INTO `destoon_setting` VALUES('3','form_domain','');
INSERT INTO `destoon_setting` VALUES('3','form_enable','1');
INSERT INTO `destoon_setting` VALUES('3','poll_domain','');
INSERT INTO `destoon_setting` VALUES('3','poll_enable','1');
INSERT INTO `destoon_setting` VALUES('3','vote_domain','');
INSERT INTO `destoon_setting` VALUES('3','gift_enable','1');
INSERT INTO `destoon_setting` VALUES('3','gift_domain','');
INSERT INTO `destoon_setting` VALUES('3','vote_enable','1');
INSERT INTO `destoon_setting` VALUES('3','guestbook_captcha','1');
INSERT INTO `destoon_setting` VALUES('3','guestbook_type','业务合作|意见建议|使用问题|页面错误|不良信息|其他');
INSERT INTO `destoon_setting` VALUES('3','guestbook_domain','');
INSERT INTO `destoon_setting` VALUES('3','guestbook_enable','1');
INSERT INTO `destoon_setting` VALUES('3','comment_am','网友');
INSERT INTO `destoon_setting` VALUES('3','credit_del_comment','5');
INSERT INTO `destoon_setting` VALUES('3','credit_add_comment','2');
INSERT INTO `destoon_setting` VALUES('3','comment_limit','30');
INSERT INTO `destoon_setting` VALUES('3','comment_pagesize','10');
INSERT INTO `destoon_setting` VALUES('3','comment_time','30');
INSERT INTO `destoon_setting` VALUES('3','comment_max','500');
INSERT INTO `destoon_setting` VALUES('3','comment_min','5');
INSERT INTO `destoon_setting` VALUES('3','comment_vote','1');
INSERT INTO `destoon_setting` VALUES('3','comment_admin_del','1');
INSERT INTO `destoon_setting` VALUES('3','comment_user_del','4');
INSERT INTO `destoon_setting` VALUES('3','comment_captcha_add','2');
INSERT INTO `destoon_setting` VALUES('3','comment_check','2');
INSERT INTO `destoon_setting` VALUES('3','comment_vote_group','5,6,7');
INSERT INTO `destoon_setting` VALUES('3','comment_group','5,6,7');
INSERT INTO `destoon_setting` VALUES('3','comment_show','1');
INSERT INTO `destoon_setting` VALUES('3','comment_api_key','');
INSERT INTO `destoon_setting` VALUES('3','comment_api_id','');
INSERT INTO `destoon_setting` VALUES('3','comment_api','');
INSERT INTO `destoon_setting` VALUES('3','comment_module','5,6,4,7,8,21,22,13,9,11,12,14,15');
INSERT INTO `destoon_setting` VALUES('3','comment_domain','');
INSERT INTO `destoon_setting` VALUES('3','link_request','');
INSERT INTO `destoon_setting` VALUES('3','link_reg','1');
INSERT INTO `destoon_setting` VALUES('3','link_domain','');
INSERT INTO `destoon_setting` VALUES('3','link_enable','1');
INSERT INTO `destoon_setting` VALUES('3','announce_domain','');
INSERT INTO `destoon_setting` VALUES('3','announce_enable','1');
INSERT INTO `destoon_setting` VALUES('3','ad_currency','money');
INSERT INTO `destoon_setting` VALUES('3','ad_buy','1');
INSERT INTO `destoon_setting` VALUES('3','ad_view','1');
INSERT INTO `destoon_setting` VALUES('3','ad_domain','');
INSERT INTO `destoon_setting` VALUES('3','ad_enable','1');
INSERT INTO `destoon_setting` VALUES('3','spread_currency','money');
INSERT INTO `destoon_setting` VALUES('3','spread_list','1');
INSERT INTO `destoon_setting` VALUES('3','spread_check','1');
INSERT INTO `destoon_setting` VALUES('3','spread_max','10');
INSERT INTO `destoon_setting` VALUES('3','spread_month','6');
INSERT INTO `destoon_setting` VALUES('3','spread_step','100');
INSERT INTO `destoon_setting` VALUES('3','spread_company_price','500');
INSERT INTO `destoon_setting` VALUES('3','spread_buy_price','500');
INSERT INTO `destoon_setting` VALUES('3','spread_sell_price','500');
INSERT INTO `destoon_setting` VALUES('3','spread_domain','');
INSERT INTO `destoon_setting` VALUES('3','mobile_goto','1');
INSERT INTO `destoon_setting` VALUES('3','mobile_pagesize','30');
INSERT INTO `destoon_setting` VALUES('3','mobile_sitename','');
INSERT INTO `destoon_setting` VALUES('3','mobile_pid','14');
INSERT INTO `destoon_setting` VALUES('3','mobile_domain','');
INSERT INTO `destoon_setting` VALUES('3','mobile_enable','1');
INSERT INTO `destoon_setting` VALUES('3','mobile_ajax','1');
INSERT INTO `destoon_setting` VALUES('3','mobile_ios','');
INSERT INTO `destoon_setting` VALUES('3','mobile_adr','');
INSERT INTO `destoon_setting` VALUES('3','show_url','0');
INSERT INTO `destoon_setting` VALUES('3','list_url','0');
INSERT INTO `destoon_setting` VALUES('3','weixin','');
INSERT INTO `destoon_setting` VALUES('3','oauth','0');
INSERT INTO `destoon_setting` VALUES('3','sitemaps_module','16,5,6,4,17,7,8,21,22,13,9,10,11,12,14,15,18');
INSERT INTO `destoon_setting` VALUES('3','sitemaps_update','60');
INSERT INTO `destoon_setting` VALUES('3','sitemaps_items','10000');
INSERT INTO `destoon_setting` VALUES('3','baidunews','1');
INSERT INTO `destoon_setting` VALUES('3','baidunews_email','mail@yourdomain.com');
INSERT INTO `destoon_setting` VALUES('3','baidunews_update','60');
INSERT INTO `destoon_setting` VALUES('3','baidunews_items','90');
INSERT INTO `destoon_setting` VALUES('3','module','extend');
INSERT INTO `destoon_setting` VALUES('3','feed_url','http://127.0.0.1/des/feed/');
INSERT INTO `destoon_setting` VALUES('3','archiver_url','http://127.0.0.1/des/archiver/');
INSERT INTO `destoon_setting` VALUES('3','form_url','http://127.0.0.1/des/form/');
INSERT INTO `destoon_setting` VALUES('3','poll_url','http://127.0.0.1/des/poll/');
INSERT INTO `destoon_setting` VALUES('3','vote_url','http://127.0.0.1/des/vote/');
INSERT INTO `destoon_setting` VALUES('3','gift_url','http://127.0.0.1/des/gift/');
INSERT INTO `destoon_setting` VALUES('3','guestbook_url','http://127.0.0.1/des/guestbook/');
INSERT INTO `destoon_setting` VALUES('3','comment_url','http://127.0.0.1/des/comment/');
INSERT INTO `destoon_setting` VALUES('3','link_url','http://127.0.0.1/des/link/');
INSERT INTO `destoon_setting` VALUES('3','announce_url','http://127.0.0.1/des/announce/');
INSERT INTO `destoon_setting` VALUES('3','ad_url','http://127.0.0.1/des/ad/');
INSERT INTO `destoon_setting` VALUES('3','spread_url','http://127.0.0.1/des/spread/');
INSERT INTO `destoon_setting` VALUES('3','mobile_url','http://127.0.0.1/des/mobile/');
INSERT INTO `destoon_setting` VALUES('4','group_inquiry','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_price','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_message','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_buy','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_contact','5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('4','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('4','seo_title_show','{内容标题}{分类名称}{分类SEO标题}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('4','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('4','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('4','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('4','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('4','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('4','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('4','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('4','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('4','list_html','0');
INSERT INTO `destoon_setting` VALUES('4','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('4','index_html','0');
INSERT INTO `destoon_setting` VALUES('4','pagesize','20');
INSERT INTO `destoon_setting` VALUES('4','page_subcat','6');
INSERT INTO `destoon_setting` VALUES('4','page_inews','10');
INSERT INTO `destoon_setting` VALUES('4','page_inew','10');
INSERT INTO `destoon_setting` VALUES('4','level','推荐公司');
INSERT INTO `destoon_setting` VALUES('4','page_irec','10');
INSERT INTO `destoon_setting` VALUES('4','page_ivip','10');
INSERT INTO `destoon_setting` VALUES('4','stats','');
INSERT INTO `destoon_setting` VALUES('4','kf','');
INSERT INTO `destoon_setting` VALUES('4','vip_maxyear','5');
INSERT INTO `destoon_setting` VALUES('4','vip_honor','1');
INSERT INTO `destoon_setting` VALUES('4','map','baidu');
INSERT INTO `destoon_setting` VALUES('4','vip_maxgroupvip','3');
INSERT INTO `destoon_setting` VALUES('4','vip_cominfo','1');
INSERT INTO `destoon_setting` VALUES('4','vip_year','1');
INSERT INTO `destoon_setting` VALUES('4','openall','0');
INSERT INTO `destoon_setting` VALUES('4','delvip','1');
INSERT INTO `destoon_setting` VALUES('4','split','0');
INSERT INTO `destoon_setting` VALUES('4','comment','1');
INSERT INTO `destoon_setting` VALUES('4','homeurl','0');
INSERT INTO `destoon_setting` VALUES('4','fields','userid,username,company,linkurl,thumb,catid,areaid,vip,groupid,validated,business,mode');
INSERT INTO `destoon_setting` VALUES('4','order','vip desc,userid desc');
INSERT INTO `destoon_setting` VALUES('4','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('4','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('4','title_show','{$seo_showtitle}{$seo_catname}{$seo_cattitle}{$seo_modulename}{$seo_sitename}{$seo_sitetitle}{$seo_delimiter}');
INSERT INTO `destoon_setting` VALUES('4','keywords_index','{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES('4','keywords_list','{$seo_catname}{$seo_catkeywords}{$seo_modulename}{$seo_sitename}{$seo_sitekeywords}');
INSERT INTO `destoon_setting` VALUES('4','keywords_show','{$seo_showtitle}{$seo_catname}{$seo_catkeywords}{$seo_modulename}{$seo_sitekeywords}');
INSERT INTO `destoon_setting` VALUES('4','description_index','{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES('4','description_list','{$seo_sitedescription}{$seo_sitename}{$seo_modulename}{$seo_catdescription}{$seo_catname}');
INSERT INTO `destoon_setting` VALUES('4','description_show','{$seo_showtitle}{$seo_showintroduce}{$seo_catname}{$seo_catdescription}{$seo_modulename}{$seo_sitename}{$seo_sitedescription}');
INSERT INTO `destoon_setting` VALUES('4','module','company');
INSERT INTO `destoon_setting` VALUES('5','group_compare','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('5','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('5','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_contact','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('5','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('5','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('5','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('5','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('5','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('5','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('5','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('5','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('5','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('5','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('5','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('5','show_html','0');
INSERT INTO `destoon_setting` VALUES('5','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('5','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('5','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('5','list_html','0');
INSERT INTO `destoon_setting` VALUES('5','index_html','0');
INSERT INTO `destoon_setting` VALUES('5','page_subcat','5');
INSERT INTO `destoon_setting` VALUES('5','max_width','900');
INSERT INTO `destoon_setting` VALUES('5','pagesize','20');
INSERT INTO `destoon_setting` VALUES('5','upload_thumb','0');
INSERT INTO `destoon_setting` VALUES('5','checkorder','1');
INSERT INTO `destoon_setting` VALUES('5','swfu','2');
INSERT INTO `destoon_setting` VALUES('5','level','推荐信息');
INSERT INTO `destoon_setting` VALUES('5','fulltext','0');
INSERT INTO `destoon_setting` VALUES('5','sphinx_name','destoon,delta');
INSERT INTO `destoon_setting` VALUES('5','sphinx_port','');
INSERT INTO `destoon_setting` VALUES('5','sphinx_host','');
INSERT INTO `destoon_setting` VALUES('5','sphinx','0');
INSERT INTO `destoon_setting` VALUES('5','cat_property','0');
INSERT INTO `destoon_setting` VALUES('5','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('5','clear_link','0');
INSERT INTO `destoon_setting` VALUES('5','keylink','0');
INSERT INTO `destoon_setting` VALUES('5','split','0');
INSERT INTO `destoon_setting` VALUES('5','inquiry_ask','我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？|请您发一份比较详细的产品规格说明，谢谢！|请问贵公司产品是否可以代理？代理条件是什么？|我公司有意购买此产品，可否提供此产品的报价单和最小起订量？');
INSERT INTO `destoon_setting` VALUES('5','inquiry_type','单价|产品规格|型号|价格条款|原产地|能否提供样品|最小订货量|交货期|供货能力|销售条款及附加条件|包装方式|质量/安全认证 ');
INSERT INTO `destoon_setting` VALUES('5','type','出租|求购');
INSERT INTO `destoon_setting` VALUES('5','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,price,unit,minamount,amount');
INSERT INTO `destoon_setting` VALUES('5','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('5','order','editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES('5','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('5','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('5','template_compare','');
INSERT INTO `destoon_setting` VALUES('5','template_inquiry','');
INSERT INTO `destoon_setting` VALUES('5','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('5','template_my','');
INSERT INTO `destoon_setting` VALUES('5','template_search','');
INSERT INTO `destoon_setting` VALUES('5','template_show','');
INSERT INTO `destoon_setting` VALUES('5','template_list','');
INSERT INTO `destoon_setting` VALUES('5','template_index','');
INSERT INTO `destoon_setting` VALUES('6','fee_add','0');
INSERT INTO `destoon_setting` VALUES('6','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('6','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('6','question_add','2');
INSERT INTO `destoon_setting` VALUES('6','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('6','check_add','2');
INSERT INTO `destoon_setting` VALUES('6','question_price','2');
INSERT INTO `destoon_setting` VALUES('6','captcha_price','2');
INSERT INTO `destoon_setting` VALUES('6','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('6','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('6','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','group_contact','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('6','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('6','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('6','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('6','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('6','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('6','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('6','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('6','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('6','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('6','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('6','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('6','show_html','0');
INSERT INTO `destoon_setting` VALUES('6','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('6','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('6','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('6','list_html','0');
INSERT INTO `destoon_setting` VALUES('6','index_html','0');
INSERT INTO `destoon_setting` VALUES('6','split','0');
INSERT INTO `destoon_setting` VALUES('6','fulltext','0');
INSERT INTO `destoon_setting` VALUES('6','level','推荐信息');
INSERT INTO `destoon_setting` VALUES('6','pagesize','20');
INSERT INTO `destoon_setting` VALUES('6','max_width','900');
INSERT INTO `destoon_setting` VALUES('6','page_subcat','1');
INSERT INTO `destoon_setting` VALUES('6','keylink','0');
INSERT INTO `destoon_setting` VALUES('6','price_ask','请您发一份比较详细的产品规格说明，谢谢！|请问您对此产品是长期有需求吗？|请问您对此产品有多大的需求量？');
INSERT INTO `destoon_setting` VALUES('6','cat_property','0');
INSERT INTO `destoon_setting` VALUES('6','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('6','clear_link','0');
INSERT INTO `destoon_setting` VALUES('6','type','出租|求购|招商');
INSERT INTO `destoon_setting` VALUES('6','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,price');
INSERT INTO `destoon_setting` VALUES('6','order','editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES('6','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('6','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('6','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('7','fee_period','0');
INSERT INTO `destoon_setting` VALUES('7','fee_view','0');
INSERT INTO `destoon_setting` VALUES('7','fee_add','0');
INSERT INTO `destoon_setting` VALUES('7','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('7','question_add','2');
INSERT INTO `destoon_setting` VALUES('7','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('7','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('7','check_add','2');
INSERT INTO `destoon_setting` VALUES('7','group_add_price','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('7','group_show_price','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('7','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('7','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('7','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('7','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('7','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('7','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('7','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('7','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('7','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('7','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('7','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('7','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('7','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('7','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('7','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('7','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('7','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('7','show_html','0');
INSERT INTO `destoon_setting` VALUES('7','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('7','index_html','0');
INSERT INTO `destoon_setting` VALUES('7','list_html','0');
INSERT INTO `destoon_setting` VALUES('7','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('7','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('7','max_width','550');
INSERT INTO `destoon_setting` VALUES('7','page_child','5');
INSERT INTO `destoon_setting` VALUES('7','pagesize','20');
INSERT INTO `destoon_setting` VALUES('7','page_icat','5');
INSERT INTO `destoon_setting` VALUES('7','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('7','clear_link','0');
INSERT INTO `destoon_setting` VALUES('7','keylink','0');
INSERT INTO `destoon_setting` VALUES('7','split','0');
INSERT INTO `destoon_setting` VALUES('7','fulltext','0');
INSERT INTO `destoon_setting` VALUES('7','level','推荐行情|暂未指定|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES('7','cat_property','0');
INSERT INTO `destoon_setting` VALUES('7','fields','itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username');
INSERT INTO `destoon_setting` VALUES('7','order','addtime desc');
INSERT INTO `destoon_setting` VALUES('7','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('7','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('7','thumb_height','90');
INSERT INTO `destoon_setting` VALUES('7','thumb_width','120');
INSERT INTO `destoon_setting` VALUES('7','fee_back','0');
INSERT INTO `destoon_setting` VALUES('7','pre_view','500');
INSERT INTO `destoon_setting` VALUES('7','credit_add','2');
INSERT INTO `destoon_setting` VALUES('7','credit_del','5');
INSERT INTO `destoon_setting` VALUES('7','credit_color','100');
INSERT INTO `destoon_setting` VALUES('7','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('7','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('7','title_show','{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('7','keywords_index','');
INSERT INTO `destoon_setting` VALUES('7','keywords_list','');
INSERT INTO `destoon_setting` VALUES('7','keywords_show','');
INSERT INTO `destoon_setting` VALUES('7','description_index','');
INSERT INTO `destoon_setting` VALUES('7','description_list','');
INSERT INTO `destoon_setting` VALUES('7','description_show','');
INSERT INTO `destoon_setting` VALUES('7','module','quote');
INSERT INTO `destoon_setting` VALUES('8','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('8','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('8','question_add','2');
INSERT INTO `destoon_setting` VALUES('8','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('8','check_add','2');
INSERT INTO `destoon_setting` VALUES('8','captcha_sign','2');
INSERT INTO `destoon_setting` VALUES('8','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('8','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('8','group_contact','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('8','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('8','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('8','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('8','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('8','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('8','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('8','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('8','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('8','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('8','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('8','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('8','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('8','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('8','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('8','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('8','show_html','0');
INSERT INTO `destoon_setting` VALUES('8','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('8','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('8','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('8','list_html','0');
INSERT INTO `destoon_setting` VALUES('8','index_html','0');
INSERT INTO `destoon_setting` VALUES('8','max_width','550');
INSERT INTO `destoon_setting` VALUES('8','pagesize','10');
INSERT INTO `destoon_setting` VALUES('8','cat_hall_num','2');
INSERT INTO `destoon_setting` VALUES('8','cat_hall','0');
INSERT INTO `destoon_setting` VALUES('8','cat_service_num','8');
INSERT INTO `destoon_setting` VALUES('8','cat_service','0');
INSERT INTO `destoon_setting` VALUES('8','cat_news_num','10');
INSERT INTO `destoon_setting` VALUES('8','page_icat','10');
INSERT INTO `destoon_setting` VALUES('8','news_id','21');
INSERT INTO `destoon_setting` VALUES('8','cat_news','0');
INSERT INTO `destoon_setting` VALUES('8','page_islide','3');
INSERT INTO `destoon_setting` VALUES('8','level','推荐展会|展会幻灯');
INSERT INTO `destoon_setting` VALUES('8','fulltext','0');
INSERT INTO `destoon_setting` VALUES('8','split','0');
INSERT INTO `destoon_setting` VALUES('8','keylink','0');
INSERT INTO `destoon_setting` VALUES('8','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('8','clear_link','0');
INSERT INTO `destoon_setting` VALUES('8','cat_property','0');
INSERT INTO `destoon_setting` VALUES('8','fields','itemid,title,thumb,linkurl,style,catid,addtime,edittime,username,fromtime,totime,city,address,sponsor');
INSERT INTO `destoon_setting` VALUES('8','order','addtime desc');
INSERT INTO `destoon_setting` VALUES('8','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('8','introduce_length','0');
INSERT INTO `destoon_setting` VALUES('8','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('8','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('8','fee_add','0');
INSERT INTO `destoon_setting` VALUES('8','fee_view','0');
INSERT INTO `destoon_setting` VALUES('8','fee_period','0');
INSERT INTO `destoon_setting` VALUES('8','fee_back','0');
INSERT INTO `destoon_setting` VALUES('8','pre_view','500');
INSERT INTO `destoon_setting` VALUES('8','credit_add','2');
INSERT INTO `destoon_setting` VALUES('8','credit_del','5');
INSERT INTO `destoon_setting` VALUES('8','credit_color','100');
INSERT INTO `destoon_setting` VALUES('8','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('8','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('8','title_show','{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('8','keywords_index','');
INSERT INTO `destoon_setting` VALUES('8','keywords_list','');
INSERT INTO `destoon_setting` VALUES('8','keywords_show','');
INSERT INTO `destoon_setting` VALUES('8','description_index','');
INSERT INTO `destoon_setting` VALUES('8','description_list','');
INSERT INTO `destoon_setting` VALUES('8','description_show','');
INSERT INTO `destoon_setting` VALUES('8','module','exhibit');
INSERT INTO `destoon_setting` VALUES('9','credit_del_resume','5');
INSERT INTO `destoon_setting` VALUES('9','credit_add_resume','2');
INSERT INTO `destoon_setting` VALUES('9','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('9','credit_color','100');
INSERT INTO `destoon_setting` VALUES('9','credit_del','5');
INSERT INTO `destoon_setting` VALUES('9','credit_add','2');
INSERT INTO `destoon_setting` VALUES('9','fee_view','0');
INSERT INTO `destoon_setting` VALUES('9','fee_add_resume','0');
INSERT INTO `destoon_setting` VALUES('9','question_add_resume','2');
INSERT INTO `destoon_setting` VALUES('9','captcha_add_resume','2');
INSERT INTO `destoon_setting` VALUES('9','check_add_resume','2');
INSERT INTO `destoon_setting` VALUES('9','group_apply','5');
INSERT INTO `destoon_setting` VALUES('9','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('9','group_contact','5,6,7');
INSERT INTO `destoon_setting` VALUES('9','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('9','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('9','fee_back','0');
INSERT INTO `destoon_setting` VALUES('9','fee_period','0');
INSERT INTO `destoon_setting` VALUES('9','fee_view_resume','0');
INSERT INTO `destoon_setting` VALUES('9','fee_add','0');
INSERT INTO `destoon_setting` VALUES('9','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('9','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('9','question_add','2');
INSERT INTO `destoon_setting` VALUES('9','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('9','check_add','2');
INSERT INTO `destoon_setting` VALUES('9','group_talent','7');
INSERT INTO `destoon_setting` VALUES('9','group_search_resume','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('9','group_contact_resume','7');
INSERT INTO `destoon_setting` VALUES('9','group_show_resume','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('9','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('9','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('9','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('9','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('9','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('9','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('9','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('9','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('9','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('9','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('9','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('9','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('9','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('9','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('9','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('9','show_html','0');
INSERT INTO `destoon_setting` VALUES('9','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('9','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('9','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('9','list_html','0');
INSERT INTO `destoon_setting` VALUES('9','index_html','0');
INSERT INTO `destoon_setting` VALUES('9','max_width','550');
INSERT INTO `destoon_setting` VALUES('9','pagesize','20');
INSERT INTO `destoon_setting` VALUES('9','page_iresume','10');
INSERT INTO `destoon_setting` VALUES('9','page_ijob','10');
INSERT INTO `destoon_setting` VALUES('9','level','推荐');
INSERT INTO `destoon_setting` VALUES('9','split','0');
INSERT INTO `destoon_setting` VALUES('9','clear_link','0');
INSERT INTO `destoon_setting` VALUES('9','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('9','cat_property','0');
INSERT INTO `destoon_setting` VALUES('9','situation','目前正在找工作|观望有好机会再考虑|半年内无换工作计划');
INSERT INTO `destoon_setting` VALUES('12','fee_period','0');
INSERT INTO `destoon_setting` VALUES('12','fee_view','0');
INSERT INTO `destoon_setting` VALUES('12','fee_add','0');
INSERT INTO `destoon_setting` VALUES('12','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('12','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('12','question_add','2');
INSERT INTO `destoon_setting` VALUES('12','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('12','check_add','2');
INSERT INTO `destoon_setting` VALUES('12','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('12','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('12','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('12','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('12','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('12','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('12','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('12','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('12','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('12','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('12','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('12','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('12','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('12','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('12','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('12','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('12','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('12','show_html','0');
INSERT INTO `destoon_setting` VALUES('12','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('12','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('12','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('12','list_html','0');
INSERT INTO `destoon_setting` VALUES('12','index_html','0');
INSERT INTO `destoon_setting` VALUES('12','swfu_max','20');
INSERT INTO `destoon_setting` VALUES('12','max_width','800');
INSERT INTO `destoon_setting` VALUES('12','pagesize','18');
INSERT INTO `destoon_setting` VALUES('12','page_irec','4');
INSERT INTO `destoon_setting` VALUES('12','page_icat','2');
INSERT INTO `destoon_setting` VALUES('12','page_islide','3');
INSERT INTO `destoon_setting` VALUES('12','level','推荐图库|幻灯图片|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES('12','fulltext','0');
INSERT INTO `destoon_setting` VALUES('12','split','0');
INSERT INTO `destoon_setting` VALUES('12','keylink','0');
INSERT INTO `destoon_setting` VALUES('12','clear_link','0');
INSERT INTO `destoon_setting` VALUES('12','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('12','cat_property','0');
INSERT INTO `destoon_setting` VALUES('12','fields','itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,items,open');
INSERT INTO `destoon_setting` VALUES('12','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('12','editor','Simple');
INSERT INTO `destoon_setting` VALUES('12','order','addtime desc');
INSERT INTO `destoon_setting` VALUES('12','maxitem','30');
INSERT INTO `destoon_setting` VALUES('12','thumb_height','90');
INSERT INTO `destoon_setting` VALUES('12','thumb_width','120');
INSERT INTO `destoon_setting` VALUES('12','template_my','');
INSERT INTO `destoon_setting` VALUES('12','template_search','');
INSERT INTO `destoon_setting` VALUES('12','template_show','');
INSERT INTO `destoon_setting` VALUES('12','template_list','');
INSERT INTO `destoon_setting` VALUES('12','template_index','');
INSERT INTO `destoon_setting` VALUES('12','fee_back','0');
INSERT INTO `destoon_setting` VALUES('12','pre_view','500');
INSERT INTO `destoon_setting` VALUES('12','credit_add','2');
INSERT INTO `destoon_setting` VALUES('12','credit_del','5');
INSERT INTO `destoon_setting` VALUES('12','credit_color','100');
INSERT INTO `destoon_setting` VALUES('12','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('12','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('12','title_show','{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('12','keywords_index','');
INSERT INTO `destoon_setting` VALUES('12','keywords_list','');
INSERT INTO `destoon_setting` VALUES('12','keywords_show','');
INSERT INTO `destoon_setting` VALUES('12','description_index','');
INSERT INTO `destoon_setting` VALUES('12','description_list','');
INSERT INTO `destoon_setting` VALUES('12','description_show','');
INSERT INTO `destoon_setting` VALUES('12','module','photo');
INSERT INTO `destoon_setting` VALUES('13','fee_back','0');
INSERT INTO `destoon_setting` VALUES('13','fee_period','0');
INSERT INTO `destoon_setting` VALUES('13','fee_add','0');
INSERT INTO `destoon_setting` VALUES('13','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('13','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('13','question_add','2');
INSERT INTO `destoon_setting` VALUES('13','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('13','check_add','2');
INSERT INTO `destoon_setting` VALUES('13','question_message','2');
INSERT INTO `destoon_setting` VALUES('13','captcha_message','2');
INSERT INTO `destoon_setting` VALUES('13','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('13','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('13','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('13','group_contact','6,7');
INSERT INTO `destoon_setting` VALUES('13','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('13','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('13','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('13','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('13','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('13','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('13','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('13','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('13','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('13','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('13','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('13','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('13','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('13','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('13','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('13','show_html','0');
INSERT INTO `destoon_setting` VALUES('13','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('13','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('13','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('13','list_html','0');
INSERT INTO `destoon_setting` VALUES('13','index_html','0');
INSERT INTO `destoon_setting` VALUES('13','page_subcat','6');
INSERT INTO `destoon_setting` VALUES('13','max_width','550');
INSERT INTO `destoon_setting` VALUES('13','pagesize','20');
INSERT INTO `destoon_setting` VALUES('13','page_icat','6');
INSERT INTO `destoon_setting` VALUES('13','keylink','0');
INSERT INTO `destoon_setting` VALUES('13','split','0');
INSERT INTO `destoon_setting` VALUES('13','fulltext','0');
INSERT INTO `destoon_setting` VALUES('13','level','推荐品牌');
INSERT INTO `destoon_setting` VALUES('13','page_irec','20');
INSERT INTO `destoon_setting` VALUES('13','cat_property','0');
INSERT INTO `destoon_setting` VALUES('13','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('13','clear_link','0');
INSERT INTO `destoon_setting` VALUES('13','message_ask','请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES('13','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated');
INSERT INTO `destoon_setting` VALUES('13','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('13','order','editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES('13','thumb_height','60');
INSERT INTO `destoon_setting` VALUES('13','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('13','thumb_width','180');
INSERT INTO `destoon_setting` VALUES('13','template_message','');
INSERT INTO `destoon_setting` VALUES('13','template_my','');
INSERT INTO `destoon_setting` VALUES('13','template_search','');
INSERT INTO `destoon_setting` VALUES('13','template_product','');
INSERT INTO `destoon_setting` VALUES('13','template_show','');
INSERT INTO `destoon_setting` VALUES('13','template_list','');
INSERT INTO `destoon_setting` VALUES('13','template_index','');
INSERT INTO `destoon_setting` VALUES('13','fee_view','0');
INSERT INTO `destoon_setting` VALUES('13','credit_add','2');
INSERT INTO `destoon_setting` VALUES('13','credit_del','5');
INSERT INTO `destoon_setting` VALUES('13','credit_color','100');
INSERT INTO `destoon_setting` VALUES('13','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('13','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('13','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('13','title_show','{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('13','keywords_index','{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES('13','keywords_list','');
INSERT INTO `destoon_setting` VALUES('13','keywords_show','');
INSERT INTO `destoon_setting` VALUES('13','description_index','{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES('13','description_list','');
INSERT INTO `destoon_setting` VALUES('13','description_show','');
INSERT INTO `destoon_setting` VALUES('13','module','brand');
INSERT INTO `destoon_setting` VALUES('9','education','不限|初中|高中|大专|本科|硕士|博士');
INSERT INTO `destoon_setting` VALUES('9','fields','itemid,title,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,minsalary,maxsalary');
INSERT INTO `destoon_setting` VALUES('9','marriage','不限|未婚|已婚');
INSERT INTO `destoon_setting` VALUES('9','gender','不限|男士|女士');
INSERT INTO `destoon_setting` VALUES('9','type','不限|全职|兼职|实习');
INSERT INTO `destoon_setting` VALUES('9','order','editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES('9','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('9','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('9','thumb_height','140');
INSERT INTO `destoon_setting` VALUES('6','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('6','credit_color','100');
INSERT INTO `destoon_setting` VALUES('6','credit_del','5');
INSERT INTO `destoon_setting` VALUES('6','fee_period','0');
INSERT INTO `destoon_setting` VALUES('6','fee_back','0');
INSERT INTO `destoon_setting` VALUES('6','credit_add','2');
INSERT INTO `destoon_setting` VALUES('6','fee_view','0');
INSERT INTO `destoon_setting` VALUES('6','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('6','template_price','');
INSERT INTO `destoon_setting` VALUES('6','template_my','');
INSERT INTO `destoon_setting` VALUES('6','template_search','');
INSERT INTO `destoon_setting` VALUES('6','template_show','');
INSERT INTO `destoon_setting` VALUES('6','template_list','');
INSERT INTO `destoon_setting` VALUES('6','template_index','');
INSERT INTO `destoon_setting` VALUES('1','search_tips','1');
INSERT INTO `destoon_setting` VALUES('1','anti_spam','1');
INSERT INTO `destoon_setting` VALUES('1','log_credit','1');
INSERT INTO `destoon_setting` VALUES('1','pages_mode','0');
INSERT INTO `destoon_setting` VALUES('1','lazy','0');
INSERT INTO `destoon_setting` VALUES('1','gzip_enable','0');
INSERT INTO `destoon_setting` VALUES('1','cache_hits','0');
INSERT INTO `destoon_setting` VALUES('21','credit_color','100');
INSERT INTO `destoon_setting` VALUES('21','credit_del','5');
INSERT INTO `destoon_setting` VALUES('21','credit_add','2');
INSERT INTO `destoon_setting` VALUES('21','pre_view','500');
INSERT INTO `destoon_setting` VALUES('21','fee_back','0');
INSERT INTO `destoon_setting` VALUES('21','fee_period','0');
INSERT INTO `destoon_setting` VALUES('21','fee_view','0');
INSERT INTO `destoon_setting` VALUES('21','fee_add','0');
INSERT INTO `destoon_setting` VALUES('1','cache_search','0');
INSERT INTO `destoon_setting` VALUES('1','task_item','7200');
INSERT INTO `destoon_setting` VALUES('1','task_list','1800');
INSERT INTO `destoon_setting` VALUES('1','task_index','600');
INSERT INTO `destoon_setting` VALUES('1','log_404','0');
INSERT INTO `destoon_setting` VALUES('1','pcharset','0');
INSERT INTO `destoon_setting` VALUES('1','com_www','0');
INSERT INTO `destoon_setting` VALUES('1','rewrite','0');
INSERT INTO `destoon_setting` VALUES('1','index_html','0');
INSERT INTO `destoon_setting` VALUES('1','file_ext','html');
INSERT INTO `destoon_setting` VALUES('1','index','index');
INSERT INTO `destoon_setting` VALUES('1','seo_description','');
INSERT INTO `destoon_setting` VALUES('1','seo_keywords','');
INSERT INTO `destoon_setting` VALUES('1','seo_title','西安步旗广告文化传播有限公司');
INSERT INTO `destoon_setting` VALUES('1','seo_delimiter','_');
INSERT INTO `destoon_setting` VALUES('1','trade_nu','notify.php');
INSERT INTO `destoon_setting` VALUES('1','trade_tp','0');
INSERT INTO `destoon_setting` VALUES('1','trade_ac','');
INSERT INTO `destoon_setting` VALUES('1','trade_pw','');
INSERT INTO `destoon_setting` VALUES('1','trade_id','');
INSERT INTO `destoon_setting` VALUES('1','trade_hm','http://www.alipay.com/');
INSERT INTO `destoon_setting` VALUES('1','trade','');
INSERT INTO `destoon_setting` VALUES('1','trade_nm','支付宝');
INSERT INTO `destoon_setting` VALUES('1','im_skype','0');
INSERT INTO `destoon_setting` VALUES('1','im_msn','0');
INSERT INTO `destoon_setting` VALUES('9','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('18','credit_del','5');
INSERT INTO `destoon_setting` VALUES('18','credit_level','10');
INSERT INTO `destoon_setting` VALUES('18','credit_add','3');
INSERT INTO `destoon_setting` VALUES('18','pre_view','5');
INSERT INTO `destoon_setting` VALUES('18','fee_back','0');
INSERT INTO `destoon_setting` VALUES('18','fee_period','0');
INSERT INTO `destoon_setting` VALUES('18','fee_view','0');
INSERT INTO `destoon_setting` VALUES('18','fee_add','0');
INSERT INTO `destoon_setting` VALUES('18','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('18','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('18','question_reply','2');
INSERT INTO `destoon_setting` VALUES('18','captcha_reply','2');
INSERT INTO `destoon_setting` VALUES('18','check_reply','2');
INSERT INTO `destoon_setting` VALUES('18','question_add','2');
INSERT INTO `destoon_setting` VALUES('18','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('18','check_add','2');
INSERT INTO `destoon_setting` VALUES('18','question_group','2');
INSERT INTO `destoon_setting` VALUES('18','captcha_group','2');
INSERT INTO `destoon_setting` VALUES('18','check_group','2');
INSERT INTO `destoon_setting` VALUES('18','group_reply','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('18','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('18','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('18','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('18','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('18','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('18','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('18','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('18','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('18','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('18','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('18','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('18','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('18','seo_name','圈');
INSERT INTO `destoon_setting` VALUES('18','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('18','htm_item_urlid','4');
INSERT INTO `destoon_setting` VALUES('18','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('18','show_html','0');
INSERT INTO `destoon_setting` VALUES('18','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('18','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('18','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('18','list_html','0');
INSERT INTO `destoon_setting` VALUES('18','index_html','0');
INSERT INTO `destoon_setting` VALUES('18','max_width','750');
INSERT INTO `destoon_setting` VALUES('18','reply_pagesize','10');
INSERT INTO `destoon_setting` VALUES('18','pagesize','20');
INSERT INTO `destoon_setting` VALUES('18','maxontop','5');
INSERT INTO `destoon_setting` VALUES('18','manage_reason','1');
INSERT INTO `destoon_setting` VALUES('18','manage_message','1');
INSERT INTO `destoon_setting` VALUES('18','page_icat','8');
INSERT INTO `destoon_setting` VALUES('18','page_islide','3');
INSERT INTO `destoon_setting` VALUES('18','floor','沙发|藤椅|板凳|马扎|地板');
INSERT INTO `destoon_setting` VALUES('18','manage_reasons','广告/SPAM|恶意灌水|违规内容|文不对题|重复发帖|我很赞同|精品文章|原创内容|感谢分享');
INSERT INTO `destoon_setting` VALUES('18','swfu','2');
INSERT INTO `destoon_setting` VALUES('18','level','精华1|精华2');
INSERT INTO `destoon_setting` VALUES('18','fulltext','0');
INSERT INTO `destoon_setting` VALUES('18','split','0');
INSERT INTO `destoon_setting` VALUES('18','keylink','1');
INSERT INTO `destoon_setting` VALUES('18','clear_alink','1');
INSERT INTO `destoon_setting` VALUES('18','cat_property','0');
INSERT INTO `destoon_setting` VALUES('18','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('18','clear_link','0');
INSERT INTO `destoon_setting` VALUES('18','fields','itemid,title,ontop,video,level,thumb,linkurl,style,catid,introduce,hits,addtime,edittime,username,reply,replyer,replytime ');
INSERT INTO `destoon_setting` VALUES('18','order','addtime desc');
INSERT INTO `destoon_setting` VALUES('18','editor','Simple');
INSERT INTO `destoon_setting` VALUES('18','introduce_length','0');
INSERT INTO `destoon_setting` VALUES('18','thumb_height','90');
INSERT INTO `destoon_setting` VALUES('18','thumb_width','120');
INSERT INTO `destoon_setting` VALUES('18','credit_reply','1');
INSERT INTO `destoon_setting` VALUES('18','credit_del_reply','2');
INSERT INTO `destoon_setting` VALUES('18','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('18','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('18','keywords_index','');
INSERT INTO `destoon_setting` VALUES('18','keywords_list','');
INSERT INTO `destoon_setting` VALUES('18','keywords_show','');
INSERT INTO `destoon_setting` VALUES('18','description_index','');
INSERT INTO `destoon_setting` VALUES('18','description_list','');
INSERT INTO `destoon_setting` VALUES('18','description_show','');
INSERT INTO `destoon_setting` VALUES('18','module','club');
INSERT INTO `destoon_setting` VALUES('21','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('21','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('21','question_add','2');
INSERT INTO `destoon_setting` VALUES('21','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('21','check_add','2');
INSERT INTO `destoon_setting` VALUES('21','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('21','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('21','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('21','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('21','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('21','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('21','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('21','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('21','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('21','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('21','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('21','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('21','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('21','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('21','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('21','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('21','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('21','show_html','0');
INSERT INTO `destoon_setting` VALUES('21','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('21','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('21','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('21','list_html','0');
INSERT INTO `destoon_setting` VALUES('21','index_html','0');
INSERT INTO `destoon_setting` VALUES('21','show_np','1');
INSERT INTO `destoon_setting` VALUES('21','max_width','550');
INSERT INTO `destoon_setting` VALUES('21','page_shits','10');
INSERT INTO `destoon_setting` VALUES('21','page_srec','10');
INSERT INTO `destoon_setting` VALUES('21','page_srecimg','4');
INSERT INTO `destoon_setting` VALUES('21','page_srelate','10');
INSERT INTO `destoon_setting` VALUES('21','page_lhits','10');
INSERT INTO `destoon_setting` VALUES('21','page_lrec','10');
INSERT INTO `destoon_setting` VALUES('21','page_lrecimg','4');
INSERT INTO `destoon_setting` VALUES('21','show_lcat','1');
INSERT INTO `destoon_setting` VALUES('21','pagesize','20');
INSERT INTO `destoon_setting` VALUES('21','page_child','6');
INSERT INTO `destoon_setting` VALUES('21','page_ihits','10');
INSERT INTO `destoon_setting` VALUES('21','page_irecimg','6');
INSERT INTO `destoon_setting` VALUES('21','show_icat','1');
INSERT INTO `destoon_setting` VALUES('21','page_icat','6');
INSERT INTO `destoon_setting` VALUES('21','page_islide','3');
INSERT INTO `destoon_setting` VALUES('21','swfu','2');
INSERT INTO `destoon_setting` VALUES('21','level','推荐文章|幻灯图片|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES('21','fulltext','1');
INSERT INTO `destoon_setting` VALUES('21','split','0');
INSERT INTO `destoon_setting` VALUES('21','keylink','1');
INSERT INTO `destoon_setting` VALUES('21','clear_link','0');
INSERT INTO `destoon_setting` VALUES('21','cat_property','0');
INSERT INTO `destoon_setting` VALUES('21','save_remotepic','1');
INSERT INTO `destoon_setting` VALUES('21','fields','itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,islink');
INSERT INTO `destoon_setting` VALUES('21','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('21','editor','Default');
INSERT INTO `destoon_setting` VALUES('21','order','addtime desc');
INSERT INTO `destoon_setting` VALUES('21','thumb_height','90');
INSERT INTO `destoon_setting` VALUES('21','thumb_width','120');
INSERT INTO `destoon_setting` VALUES('21','template_my','');
INSERT INTO `destoon_setting` VALUES('21','template_search','');
INSERT INTO `destoon_setting` VALUES('21','template_show','');
INSERT INTO `destoon_setting` VALUES('21','template_list','');
INSERT INTO `destoon_setting` VALUES('21','template_index','');
INSERT INTO `destoon_setting` VALUES('22','fee_back','0');
INSERT INTO `destoon_setting` VALUES('22','fee_period','0');
INSERT INTO `destoon_setting` VALUES('22','fee_view','0');
INSERT INTO `destoon_setting` VALUES('22','fee_add','0');
INSERT INTO `destoon_setting` VALUES('22','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('22','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('22','question_add','2');
INSERT INTO `destoon_setting` VALUES('22','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('22','check_add','2');
INSERT INTO `destoon_setting` VALUES('22','question_message','2');
INSERT INTO `destoon_setting` VALUES('22','captcha_message','2');
INSERT INTO `destoon_setting` VALUES('22','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('22','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('22','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('22','group_contact','6,7');
INSERT INTO `destoon_setting` VALUES('22','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('22','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('22','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('22','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('22','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('22','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('22','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('22','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('22','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('22','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('22','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('22','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('22','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('22','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('22','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('22','show_html','0');
INSERT INTO `destoon_setting` VALUES('22','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('22','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('22','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('22','list_html','0');
INSERT INTO `destoon_setting` VALUES('22','index_html','0');
INSERT INTO `destoon_setting` VALUES('22','page_subcat','5');
INSERT INTO `destoon_setting` VALUES('22','max_width','550');
INSERT INTO `destoon_setting` VALUES('22','page_srelate','10');
INSERT INTO `destoon_setting` VALUES('22','show_message','1');
INSERT INTO `destoon_setting` VALUES('22','page_lkw','10');
INSERT INTO `destoon_setting` VALUES('22','show_larea','1');
INSERT INTO `destoon_setting` VALUES('22','show_lcat','1');
INSERT INTO `destoon_setting` VALUES('22','pagesize','20');
INSERT INTO `destoon_setting` VALUES('22','page_ihits','10');
INSERT INTO `destoon_setting` VALUES('22','show_iarea','1');
INSERT INTO `destoon_setting` VALUES('22','show_icat','1');
INSERT INTO `destoon_setting` VALUES('22','page_icat','8');
INSERT INTO `destoon_setting` VALUES('22','page_irec','8');
INSERT INTO `destoon_setting` VALUES('22','swfu','2');
INSERT INTO `destoon_setting` VALUES('22','clear_link','0');
INSERT INTO `destoon_setting` VALUES('22','keylink','0');
INSERT INTO `destoon_setting` VALUES('22','split','0');
INSERT INTO `destoon_setting` VALUES('22','fulltext','0');
INSERT INTO `destoon_setting` VALUES('22','level','推荐信息');
INSERT INTO `destoon_setting` VALUES('22','cat_property','0');
INSERT INTO `destoon_setting` VALUES('22','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('22','message_ask','请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES('22','order','edittime desc');
INSERT INTO `destoon_setting` VALUES('22','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,islink');
INSERT INTO `destoon_setting` VALUES('22','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('22','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('22','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('22','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('22','template_message','');
INSERT INTO `destoon_setting` VALUES('22','template_my','');
INSERT INTO `destoon_setting` VALUES('22','template_search','');
INSERT INTO `destoon_setting` VALUES('22','template_show','');
INSERT INTO `destoon_setting` VALUES('22','template_list','');
INSERT INTO `destoon_setting` VALUES('22','template_index','');
INSERT INTO `destoon_setting` VALUES('22','credit_add','2');
INSERT INTO `destoon_setting` VALUES('22','credit_del','5');
INSERT INTO `destoon_setting` VALUES('22','credit_color','100');
INSERT INTO `destoon_setting` VALUES('22','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('22','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('22','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('22','title_show','{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('22','keywords_index','');
INSERT INTO `destoon_setting` VALUES('22','keywords_list','');
INSERT INTO `destoon_setting` VALUES('22','keywords_show','');
INSERT INTO `destoon_setting` VALUES('22','description_index','');
INSERT INTO `destoon_setting` VALUES('22','description_list','');
INSERT INTO `destoon_setting` VALUES('22','description_show','');
INSERT INTO `destoon_setting` VALUES('22','module','info');
INSERT INTO `destoon_setting` VALUES('pay-tenpay','percent','1');
INSERT INTO `destoon_setting` VALUES('pay-tenpay','notify','');
INSERT INTO `destoon_setting` VALUES('pay-tenpay','keycode','');
INSERT INTO `destoon_setting` VALUES('pay-tenpay','partnerid','');
INSERT INTO `destoon_setting` VALUES('pay-tenpay','order','1');
INSERT INTO `destoon_setting` VALUES('pay-tenpay','name','财付通');
INSERT INTO `destoon_setting` VALUES('pay-tenpay','enable','0');
INSERT INTO `destoon_setting` VALUES('pay-weixin','notify','');
INSERT INTO `destoon_setting` VALUES('pay-weixin','keycode','');
INSERT INTO `destoon_setting` VALUES('pay-weixin','appid','');
INSERT INTO `destoon_setting` VALUES('pay-weixin','partnerid','');
INSERT INTO `destoon_setting` VALUES('pay-weixin','order','2');
INSERT INTO `destoon_setting` VALUES('pay-alipay','percent','1');
INSERT INTO `destoon_setting` VALUES('pay-alipay','notify','');
INSERT INTO `destoon_setting` VALUES('pay-alipay','keycode','');
INSERT INTO `destoon_setting` VALUES('pay-alipay','partnerid','');
INSERT INTO `destoon_setting` VALUES('pay-alipay','email','');
INSERT INTO `destoon_setting` VALUES('pay-alipay','order','3');
INSERT INTO `destoon_setting` VALUES('pay-alipay','name','支付宝');
INSERT INTO `destoon_setting` VALUES('pay-alipay','enable','0');
INSERT INTO `destoon_setting` VALUES('pay-chinabank','percent','1');
INSERT INTO `destoon_setting` VALUES('pay-chinabank','notify','');
INSERT INTO `destoon_setting` VALUES('pay-chinabank','keycode','');
INSERT INTO `destoon_setting` VALUES('pay-chinabank','partnerid','');
INSERT INTO `destoon_setting` VALUES('pay-chinabank','order','4');
INSERT INTO `destoon_setting` VALUES('pay-chinabank','name','网银在线');
INSERT INTO `destoon_setting` VALUES('pay-yeepay','percent','1');
INSERT INTO `destoon_setting` VALUES('pay-yeepay','keycode','');
INSERT INTO `destoon_setting` VALUES('pay-yeepay','partnerid','');
INSERT INTO `destoon_setting` VALUES('pay-yeepay','order','5');
INSERT INTO `destoon_setting` VALUES('pay-yeepay','name','易宝支付');
INSERT INTO `destoon_setting` VALUES('pay-yeepay','enable','0');
INSERT INTO `destoon_setting` VALUES('pay-kq99bill','percent','1');
INSERT INTO `destoon_setting` VALUES('pay-kq99bill','notify','');
INSERT INTO `destoon_setting` VALUES('pay-kq99bill','cert','');
INSERT INTO `destoon_setting` VALUES('pay-kq99bill','partnerid','');
INSERT INTO `destoon_setting` VALUES('pay-kq99bill','order','6');
INSERT INTO `destoon_setting` VALUES('pay-kq99bill','name','快钱支付');
INSERT INTO `destoon_setting` VALUES('pay-kq99bill','enable','0');
INSERT INTO `destoon_setting` VALUES('pay-chinapay','percent','1');
INSERT INTO `destoon_setting` VALUES('pay-chinapay','partnerid','');
INSERT INTO `destoon_setting` VALUES('pay-chinapay','order','7');
INSERT INTO `destoon_setting` VALUES('pay-chinapay','name','中国银联');
INSERT INTO `destoon_setting` VALUES('pay-chinapay','enable','0');
INSERT INTO `destoon_setting` VALUES('pay-paypal','percent','0');
INSERT INTO `destoon_setting` VALUES('pay-paypal','currency','USD');
INSERT INTO `destoon_setting` VALUES('pay-paypal','keycode','');
INSERT INTO `destoon_setting` VALUES('pay-paypal','notify','');
INSERT INTO `destoon_setting` VALUES('pay-paypal','partnerid','');
INSERT INTO `destoon_setting` VALUES('pay-paypal','order','8');
INSERT INTO `destoon_setting` VALUES('pay-paypal','name','贝宝');
INSERT INTO `destoon_setting` VALUES('pay-paypal','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-qq','sync','0');
INSERT INTO `destoon_setting` VALUES('oauth-qq','key','');
INSERT INTO `destoon_setting` VALUES('oauth-qq','id','');
INSERT INTO `destoon_setting` VALUES('oauth-qq','order','1');
INSERT INTO `destoon_setting` VALUES('oauth-qq','name','QQ登录');
INSERT INTO `destoon_setting` VALUES('oauth-qq','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-sina','sync','0');
INSERT INTO `destoon_setting` VALUES('oauth-sina','key','');
INSERT INTO `destoon_setting` VALUES('oauth-sina','id','');
INSERT INTO `destoon_setting` VALUES('oauth-sina','order','2');
INSERT INTO `destoon_setting` VALUES('oauth-sina','name','新浪微博');
INSERT INTO `destoon_setting` VALUES('oauth-sina','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-baidu','key','');
INSERT INTO `destoon_setting` VALUES('oauth-baidu','id','');
INSERT INTO `destoon_setting` VALUES('oauth-baidu','order','3');
INSERT INTO `destoon_setting` VALUES('oauth-baidu','name','百度');
INSERT INTO `destoon_setting` VALUES('oauth-baidu','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-netease','id','');
INSERT INTO `destoon_setting` VALUES('oauth-netease','order','4');
INSERT INTO `destoon_setting` VALUES('oauth-netease','name','网易通行证');
INSERT INTO `destoon_setting` VALUES('oauth-wechat','key','');
INSERT INTO `destoon_setting` VALUES('oauth-wechat','id','');
INSERT INTO `destoon_setting` VALUES('oauth-wechat','order','5');
INSERT INTO `destoon_setting` VALUES('oauth-wechat','name','微信');
INSERT INTO `destoon_setting` VALUES('oauth-wechat','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-taobao','id','');
INSERT INTO `destoon_setting` VALUES('oauth-taobao','order','6');
INSERT INTO `destoon_setting` VALUES('oauth-taobao','name','淘宝');
INSERT INTO `destoon_setting` VALUES('oauth-msn','key','');
INSERT INTO `destoon_setting` VALUES('oauth-msn','id','');
INSERT INTO `destoon_setting` VALUES('oauth-msn','order','7');
INSERT INTO `destoon_setting` VALUES('oauth-msn','name','MSN');
INSERT INTO `destoon_setting` VALUES('oauth-msn','enable','0');
INSERT INTO `destoon_setting` VALUES('weixin','credit','10');
INSERT INTO `destoon_setting` VALUES('weixin','bind','点击可绑定会员帐号、查看会员信息、收发站内信件、管理我的订单等服务内容');
INSERT INTO `destoon_setting` VALUES('weixin','weixin','');
INSERT INTO `destoon_setting` VALUES('weixin','welcome','感谢您的关注，请点击菜单查看相应的服务');
INSERT INTO `destoon_setting` VALUES('weixin','aeskey','');
INSERT INTO `destoon_setting` VALUES('weixin','appsecret','');
INSERT INTO `destoon_setting` VALUES('weixin','apptoken','');
INSERT INTO `destoon_setting` VALUES('weixin','appid','');
INSERT INTO `destoon_setting` VALUES('weixin-menu','menu','a:3:{i:0;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"最新\";s:3:\"key\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"资讯\";s:3:\"key\";s:7:\"V_mid21\";}i:2;a:2:{s:4:\"name\";s:6:\"供应\";s:3:\"key\";s:6:\"V_mid5\";}i:3;a:2:{s:4:\"name\";s:6:\"求购\";s:3:\"key\";s:6:\"V_mid6\";}i:4;a:2:{s:4:\"name\";s:6:\"商城\";s:3:\"key\";s:7:\"V_mid16\";}i:5;a:2:{s:4:\"name\";s:6:\"招商\";s:3:\"key\";s:7:\"V_mid22\";}}i:1;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"会员\";s:3:\"key\";s:8:\"V_member\";}i:1;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:3;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}}i:2;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"更多\";s:3:\"key\";s:28:\"http://127.0.0.1/des/mobile/\";}i:1;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:3;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}}}');
INSERT INTO `destoon_setting` VALUES('group-1','listorder','1');
INSERT INTO `destoon_setting` VALUES('group-1','reg','0');
INSERT INTO `destoon_setting` VALUES('group-1','exhibit_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','exhibit_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','group_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','group_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','mall_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','mall_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','buy_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','buy_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','sell_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','sell_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','edit_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','refresh_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','day_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','add_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','copy','1');
INSERT INTO `destoon_setting` VALUES('group-1','delete','1');
INSERT INTO `destoon_setting` VALUES('group-1','vdeposit','0');
INSERT INTO `destoon_setting` VALUES('group-1','vcompany','0');
INSERT INTO `destoon_setting` VALUES('group-1','vtruename','0');
INSERT INTO `destoon_setting` VALUES('group-1','vmobile','0');
INSERT INTO `destoon_setting` VALUES('group-1','vemail','0');
INSERT INTO `destoon_setting` VALUES('group-1','moduleids','16,5,6,17,7,8,21,22,13,9,10,12,14,15,18');
INSERT INTO `destoon_setting` VALUES('group-1','link_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','honor_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','page_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','news_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','kf','1');
INSERT INTO `destoon_setting` VALUES('group-1','stats','1');
INSERT INTO `destoon_setting` VALUES('group-1','map','1');
INSERT INTO `destoon_setting` VALUES('group-1','style','0');
INSERT INTO `destoon_setting` VALUES('group-1','main_d','1,5');
INSERT INTO `destoon_setting` VALUES('group-1','main_c','1,5');
INSERT INTO `destoon_setting` VALUES('group-1','home_main','0');
INSERT INTO `destoon_setting` VALUES('group-1','side_d','0,3,6');
INSERT INTO `destoon_setting` VALUES('group-1','side_c','0,3,6');
INSERT INTO `destoon_setting` VALUES('group-1','home_side','0');
INSERT INTO `destoon_setting` VALUES('group-1','menu_d','0,6,7,11');
INSERT INTO `destoon_setting` VALUES('group-1','menu_c','0,6,7,11');
INSERT INTO `destoon_setting` VALUES('group-1','home_menu','0');
INSERT INTO `destoon_setting` VALUES('group-1','home','0');
INSERT INTO `destoon_setting` VALUES('group-1','styleid','0');
INSERT INTO `destoon_setting` VALUES('group-1','homepage','0');
INSERT INTO `destoon_setting` VALUES('group-1','type_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','price_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','inquiry_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','message_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','express_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','address_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','alert_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','favorite_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','friend_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','inbox_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','chat','1');
INSERT INTO `destoon_setting` VALUES('group-1','ad','1');
INSERT INTO `destoon_setting` VALUES('group-1','spread','1');
INSERT INTO `destoon_setting` VALUES('group-1','trade_sell','1');
INSERT INTO `destoon_setting` VALUES('group-1','sendmail','1');
INSERT INTO `destoon_setting` VALUES('group-1','sms','1');
INSERT INTO `destoon_setting` VALUES('group-1','mail','1');
INSERT INTO `destoon_setting` VALUES('group-1','ask','1');
INSERT INTO `destoon_setting` VALUES('group-1','cash','1');
INSERT INTO `destoon_setting` VALUES('group-1','question','0');
INSERT INTO `destoon_setting` VALUES('group-1','captcha','0');
INSERT INTO `destoon_setting` VALUES('group-1','check','0');
INSERT INTO `destoon_setting` VALUES('group-1','uploadpt','0');
INSERT INTO `destoon_setting` VALUES('group-1','uploadcredit','0');
INSERT INTO `destoon_setting` VALUES('group-1','uploadday','0');
INSERT INTO `destoon_setting` VALUES('group-1','uploadlimit','0');
INSERT INTO `destoon_setting` VALUES('group-1','uploadsize','0');
INSERT INTO `destoon_setting` VALUES('group-1','uploadtype','');
INSERT INTO `destoon_setting` VALUES('group-1','upload','1');
INSERT INTO `destoon_setting` VALUES('group-1','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('group-1','grade','0');
INSERT INTO `destoon_setting` VALUES('group-1','commission','0');
INSERT INTO `destoon_setting` VALUES('group-1','discount','100');
INSERT INTO `destoon_setting` VALUES('group-1','fee','0');
INSERT INTO `destoon_setting` VALUES('group-1','fee_mode','0');
INSERT INTO `destoon_setting` VALUES('group-1','quote_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','quote_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','job_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','job_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','resume_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','resume_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','article_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','article_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','info_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','info_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','know_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','know_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','brand_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','brand_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','photo_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','photo_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','video_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','video_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','down_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','down_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-1','club_group_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','club_reply_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','club_join_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','club_limit','0');
INSERT INTO `destoon_setting` VALUES('group-1','club_free_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','listorder','2');
INSERT INTO `destoon_setting` VALUES('group-2','reg','0');
INSERT INTO `destoon_setting` VALUES('group-2','quote_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','exhibit_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','exhibit_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','group_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','group_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','mall_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','mall_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','buy_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','buy_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','sell_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','sell_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','edit_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','refresh_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','day_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','add_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','copy','0');
INSERT INTO `destoon_setting` VALUES('group-2','delete','0');
INSERT INTO `destoon_setting` VALUES('group-2','vdeposit','0');
INSERT INTO `destoon_setting` VALUES('group-2','vcompany','0');
INSERT INTO `destoon_setting` VALUES('group-2','vtruename','0');
INSERT INTO `destoon_setting` VALUES('group-2','vmobile','0');
INSERT INTO `destoon_setting` VALUES('group-2','vemail','0');
INSERT INTO `destoon_setting` VALUES('group-2','moduleids','6');
INSERT INTO `destoon_setting` VALUES('group-2','link_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','honor_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','page_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','news_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','kf','0');
INSERT INTO `destoon_setting` VALUES('group-2','stats','0');
INSERT INTO `destoon_setting` VALUES('group-2','map','0');
INSERT INTO `destoon_setting` VALUES('group-2','style','0');
INSERT INTO `destoon_setting` VALUES('group-2','main_d','5');
INSERT INTO `destoon_setting` VALUES('group-2','main_c','5');
INSERT INTO `destoon_setting` VALUES('group-2','home_main','0');
INSERT INTO `destoon_setting` VALUES('group-2','side_d','0');
INSERT INTO `destoon_setting` VALUES('group-2','side_c','0');
INSERT INTO `destoon_setting` VALUES('group-2','home_side','0');
INSERT INTO `destoon_setting` VALUES('group-2','menu_d','0');
INSERT INTO `destoon_setting` VALUES('group-2','menu_c','0');
INSERT INTO `destoon_setting` VALUES('group-2','home_menu','0');
INSERT INTO `destoon_setting` VALUES('group-2','home','0');
INSERT INTO `destoon_setting` VALUES('group-2','styleid','0');
INSERT INTO `destoon_setting` VALUES('group-2','homepage','0');
INSERT INTO `destoon_setting` VALUES('group-2','type_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','price_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','inquiry_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','message_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','express_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','address_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','alert_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','favorite_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','friend_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','inbox_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','chat','0');
INSERT INTO `destoon_setting` VALUES('group-2','ad','0');
INSERT INTO `destoon_setting` VALUES('group-2','spread','0');
INSERT INTO `destoon_setting` VALUES('group-2','trade_sell','0');
INSERT INTO `destoon_setting` VALUES('group-2','sendmail','0');
INSERT INTO `destoon_setting` VALUES('group-2','sms','0');
INSERT INTO `destoon_setting` VALUES('group-2','mail','0');
INSERT INTO `destoon_setting` VALUES('group-2','ask','0');
INSERT INTO `destoon_setting` VALUES('group-2','cash','0');
INSERT INTO `destoon_setting` VALUES('group-2','question','1');
INSERT INTO `destoon_setting` VALUES('group-2','captcha','1');
INSERT INTO `destoon_setting` VALUES('group-2','check','1');
INSERT INTO `destoon_setting` VALUES('group-2','uploadpt','1');
INSERT INTO `destoon_setting` VALUES('group-2','uploadcredit','1');
INSERT INTO `destoon_setting` VALUES('group-2','uploadday','10');
INSERT INTO `destoon_setting` VALUES('group-2','uploadlimit','2');
INSERT INTO `destoon_setting` VALUES('group-2','uploadsize','200');
INSERT INTO `destoon_setting` VALUES('group-2','uploadtype','');
INSERT INTO `destoon_setting` VALUES('group-2','upload','0');
INSERT INTO `destoon_setting` VALUES('group-2','editor','Basic');
INSERT INTO `destoon_setting` VALUES('group-2','grade','0');
INSERT INTO `destoon_setting` VALUES('group-2','commission','0');
INSERT INTO `destoon_setting` VALUES('group-2','discount','100');
INSERT INTO `destoon_setting` VALUES('group-2','fee','0');
INSERT INTO `destoon_setting` VALUES('group-2','fee_mode','0');
INSERT INTO `destoon_setting` VALUES('group-2','quote_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','job_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','job_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','resume_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','resume_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','article_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','article_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','info_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','info_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','know_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','know_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','brand_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','brand_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','photo_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','photo_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','video_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','video_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','down_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','down_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-2','club_group_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','club_reply_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','club_join_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','club_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-2','club_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','listorder','3');
INSERT INTO `destoon_setting` VALUES('group-3','reg','0');
INSERT INTO `destoon_setting` VALUES('group-3','exhibit_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','exhibit_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','group_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','group_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','mall_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','mall_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','buy_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','buy_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','sell_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','sell_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','edit_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','refresh_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','day_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','add_limit','30');
INSERT INTO `destoon_setting` VALUES('group-3','copy','0');
INSERT INTO `destoon_setting` VALUES('group-3','delete','0');
INSERT INTO `destoon_setting` VALUES('group-3','vdeposit','0');
INSERT INTO `destoon_setting` VALUES('group-3','vcompany','0');
INSERT INTO `destoon_setting` VALUES('group-3','vtruename','0');
INSERT INTO `destoon_setting` VALUES('group-3','vmobile','0');
INSERT INTO `destoon_setting` VALUES('group-3','vemail','0');
INSERT INTO `destoon_setting` VALUES('group-3','moduleids','5,6,8,22,9,-9');
INSERT INTO `destoon_setting` VALUES('group-3','link_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','honor_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','page_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','news_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','kf','0');
INSERT INTO `destoon_setting` VALUES('group-3','stats','0');
INSERT INTO `destoon_setting` VALUES('group-3','map','0');
INSERT INTO `destoon_setting` VALUES('group-3','style','0');
INSERT INTO `destoon_setting` VALUES('group-3','main_d','5');
INSERT INTO `destoon_setting` VALUES('group-3','main_c','5');
INSERT INTO `destoon_setting` VALUES('group-3','home_main','0');
INSERT INTO `destoon_setting` VALUES('group-3','side_d','0');
INSERT INTO `destoon_setting` VALUES('group-3','side_c','0');
INSERT INTO `destoon_setting` VALUES('group-3','home_side','0');
INSERT INTO `destoon_setting` VALUES('group-3','menu_d','0');
INSERT INTO `destoon_setting` VALUES('group-3','menu_c','0');
INSERT INTO `destoon_setting` VALUES('group-3','home_menu','0');
INSERT INTO `destoon_setting` VALUES('group-3','home','0');
INSERT INTO `destoon_setting` VALUES('group-3','styleid','0');
INSERT INTO `destoon_setting` VALUES('group-3','homepage','0');
INSERT INTO `destoon_setting` VALUES('group-3','type_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','price_limit','10');
INSERT INTO `destoon_setting` VALUES('group-3','inquiry_limit','30');
INSERT INTO `destoon_setting` VALUES('group-3','message_limit','30');
INSERT INTO `destoon_setting` VALUES('group-3','express_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','address_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','alert_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','favorite_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','friend_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','inbox_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','chat','1');
INSERT INTO `destoon_setting` VALUES('group-3','ad','0');
INSERT INTO `destoon_setting` VALUES('group-3','spread','0');
INSERT INTO `destoon_setting` VALUES('group-3','trade_sell','0');
INSERT INTO `destoon_setting` VALUES('group-3','sendmail','0');
INSERT INTO `destoon_setting` VALUES('group-3','sms','0');
INSERT INTO `destoon_setting` VALUES('group-3','mail','0');
INSERT INTO `destoon_setting` VALUES('group-3','ask','0');
INSERT INTO `destoon_setting` VALUES('group-3','cash','0');
INSERT INTO `destoon_setting` VALUES('group-3','question','1');
INSERT INTO `destoon_setting` VALUES('group-3','captcha','1');
INSERT INTO `destoon_setting` VALUES('group-3','check','1');
INSERT INTO `destoon_setting` VALUES('group-3','uploadpt','1');
INSERT INTO `destoon_setting` VALUES('group-3','uploadcredit','0');
INSERT INTO `destoon_setting` VALUES('group-3','uploadday','10');
INSERT INTO `destoon_setting` VALUES('group-3','uploadlimit','5');
INSERT INTO `destoon_setting` VALUES('group-3','uploadsize','500');
INSERT INTO `destoon_setting` VALUES('group-3','uploadtype','');
INSERT INTO `destoon_setting` VALUES('group-3','upload','0');
INSERT INTO `destoon_setting` VALUES('group-3','editor','Basic');
INSERT INTO `destoon_setting` VALUES('group-3','grade','0');
INSERT INTO `destoon_setting` VALUES('group-3','commission','0');
INSERT INTO `destoon_setting` VALUES('group-3','discount','100');
INSERT INTO `destoon_setting` VALUES('group-3','fee','0');
INSERT INTO `destoon_setting` VALUES('group-3','fee_mode','0');
INSERT INTO `destoon_setting` VALUES('group-3','quote_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','quote_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','job_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','job_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','resume_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','resume_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','article_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','article_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','info_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','info_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','know_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','know_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','brand_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','brand_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','photo_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','photo_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','video_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','video_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','down_limit','3');
INSERT INTO `destoon_setting` VALUES('group-3','down_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-3','club_group_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','club_reply_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','club_join_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','club_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-3','club_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','listorder','4');
INSERT INTO `destoon_setting` VALUES('group-4','reg','0');
INSERT INTO `destoon_setting` VALUES('group-4','job_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','quote_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','quote_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','exhibit_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','exhibit_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','group_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','group_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','mall_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','mall_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','buy_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','buy_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','sell_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','sell_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','edit_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','refresh_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','day_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','add_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','copy','0');
INSERT INTO `destoon_setting` VALUES('group-4','delete','0');
INSERT INTO `destoon_setting` VALUES('group-4','vdeposit','0');
INSERT INTO `destoon_setting` VALUES('group-4','vcompany','0');
INSERT INTO `destoon_setting` VALUES('group-4','vtruename','0');
INSERT INTO `destoon_setting` VALUES('group-4','vmobile','0');
INSERT INTO `destoon_setting` VALUES('group-4','vemail','0');
INSERT INTO `destoon_setting` VALUES('group-4','moduleids','6');
INSERT INTO `destoon_setting` VALUES('group-4','link_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','honor_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','page_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','news_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','kf','0');
INSERT INTO `destoon_setting` VALUES('group-4','stats','0');
INSERT INTO `destoon_setting` VALUES('group-4','map','0');
INSERT INTO `destoon_setting` VALUES('group-4','style','0');
INSERT INTO `destoon_setting` VALUES('group-4','main_d','5');
INSERT INTO `destoon_setting` VALUES('group-4','main_c','5');
INSERT INTO `destoon_setting` VALUES('group-4','home_main','0');
INSERT INTO `destoon_setting` VALUES('group-4','side_d','0');
INSERT INTO `destoon_setting` VALUES('group-4','side_c','0');
INSERT INTO `destoon_setting` VALUES('group-4','home_side','0');
INSERT INTO `destoon_setting` VALUES('group-4','menu_d','0');
INSERT INTO `destoon_setting` VALUES('group-4','menu_c','0');
INSERT INTO `destoon_setting` VALUES('group-4','home_menu','0');
INSERT INTO `destoon_setting` VALUES('group-4','home','0');
INSERT INTO `destoon_setting` VALUES('group-4','styleid','0');
INSERT INTO `destoon_setting` VALUES('group-4','homepage','0');
INSERT INTO `destoon_setting` VALUES('group-4','type_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','price_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','inquiry_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','message_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','express_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','address_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','alert_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','favorite_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','friend_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','inbox_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','chat','1');
INSERT INTO `destoon_setting` VALUES('group-4','ad','0');
INSERT INTO `destoon_setting` VALUES('group-4','spread','0');
INSERT INTO `destoon_setting` VALUES('group-4','trade_sell','0');
INSERT INTO `destoon_setting` VALUES('group-4','sendmail','0');
INSERT INTO `destoon_setting` VALUES('group-4','sms','0');
INSERT INTO `destoon_setting` VALUES('group-4','mail','0');
INSERT INTO `destoon_setting` VALUES('group-4','ask','0');
INSERT INTO `destoon_setting` VALUES('group-4','cash','0');
INSERT INTO `destoon_setting` VALUES('group-4','question','1');
INSERT INTO `destoon_setting` VALUES('group-4','captcha','1');
INSERT INTO `destoon_setting` VALUES('group-4','check','1');
INSERT INTO `destoon_setting` VALUES('group-4','uploadpt','1');
INSERT INTO `destoon_setting` VALUES('group-4','uploadcredit','0');
INSERT INTO `destoon_setting` VALUES('group-4','uploadday','10');
INSERT INTO `destoon_setting` VALUES('group-4','uploadlimit','5');
INSERT INTO `destoon_setting` VALUES('group-4','uploadsize','500');
INSERT INTO `destoon_setting` VALUES('group-4','uploadtype','');
INSERT INTO `destoon_setting` VALUES('group-4','upload','0');
INSERT INTO `destoon_setting` VALUES('group-4','editor','Basic');
INSERT INTO `destoon_setting` VALUES('group-4','grade','0');
INSERT INTO `destoon_setting` VALUES('group-4','commission','0');
INSERT INTO `destoon_setting` VALUES('group-4','discount','100');
INSERT INTO `destoon_setting` VALUES('group-4','fee','0');
INSERT INTO `destoon_setting` VALUES('group-4','fee_mode','0');
INSERT INTO `destoon_setting` VALUES('group-4','job_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','resume_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','resume_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','article_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','article_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','info_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','info_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','know_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','know_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','brand_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','brand_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','photo_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','photo_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','video_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','video_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','down_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','down_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-4','club_group_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','club_reply_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','club_join_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','club_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-4','club_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','listorder','5');
INSERT INTO `destoon_setting` VALUES('group-5','reg','1');
INSERT INTO `destoon_setting` VALUES('group-5','info_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','article_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','article_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','resume_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','resume_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','job_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','job_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','quote_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','quote_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','exhibit_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','exhibit_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','group_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','group_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','mall_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','mall_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','buy_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','buy_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','sell_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','sell_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','edit_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','refresh_limit','600');
INSERT INTO `destoon_setting` VALUES('group-5','day_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','add_limit','30');
INSERT INTO `destoon_setting` VALUES('group-5','copy','1');
INSERT INTO `destoon_setting` VALUES('group-5','delete','1');
INSERT INTO `destoon_setting` VALUES('group-5','vdeposit','0');
INSERT INTO `destoon_setting` VALUES('group-5','vcompany','0');
INSERT INTO `destoon_setting` VALUES('group-5','vtruename','0');
INSERT INTO `destoon_setting` VALUES('group-5','vmobile','0');
INSERT INTO `destoon_setting` VALUES('group-5','vemail','0');
INSERT INTO `destoon_setting` VALUES('group-5','moduleids','5,6,-9,10,12,18');
INSERT INTO `destoon_setting` VALUES('group-5','link_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','honor_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','page_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','news_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','kf','0');
INSERT INTO `destoon_setting` VALUES('group-5','stats','0');
INSERT INTO `destoon_setting` VALUES('group-5','map','0');
INSERT INTO `destoon_setting` VALUES('group-5','style','0');
INSERT INTO `destoon_setting` VALUES('group-5','main_d','5');
INSERT INTO `destoon_setting` VALUES('group-5','main_c','5');
INSERT INTO `destoon_setting` VALUES('group-5','home_main','0');
INSERT INTO `destoon_setting` VALUES('group-5','side_d','0');
INSERT INTO `destoon_setting` VALUES('group-5','side_c','0');
INSERT INTO `destoon_setting` VALUES('group-5','home_side','0');
INSERT INTO `destoon_setting` VALUES('group-5','menu_d','0');
INSERT INTO `destoon_setting` VALUES('group-5','menu_c','0');
INSERT INTO `destoon_setting` VALUES('group-5','home_menu','0');
INSERT INTO `destoon_setting` VALUES('group-5','home','0');
INSERT INTO `destoon_setting` VALUES('group-5','styleid','0');
INSERT INTO `destoon_setting` VALUES('group-5','homepage','0');
INSERT INTO `destoon_setting` VALUES('group-5','type_limit','10');
INSERT INTO `destoon_setting` VALUES('group-5','price_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','inquiry_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','message_limit','10');
INSERT INTO `destoon_setting` VALUES('group-5','express_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','address_limit','10');
INSERT INTO `destoon_setting` VALUES('group-5','alert_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','favorite_limit','20');
INSERT INTO `destoon_setting` VALUES('group-5','friend_limit','10');
INSERT INTO `destoon_setting` VALUES('group-5','inbox_limit','20');
INSERT INTO `destoon_setting` VALUES('group-5','chat','1');
INSERT INTO `destoon_setting` VALUES('group-5','ad','1');
INSERT INTO `destoon_setting` VALUES('group-5','spread','0');
INSERT INTO `destoon_setting` VALUES('group-5','trade_sell','0');
INSERT INTO `destoon_setting` VALUES('group-5','sendmail','1');
INSERT INTO `destoon_setting` VALUES('group-5','sms','1');
INSERT INTO `destoon_setting` VALUES('group-5','mail','1');
INSERT INTO `destoon_setting` VALUES('group-5','ask','0');
INSERT INTO `destoon_setting` VALUES('group-5','cash','0');
INSERT INTO `destoon_setting` VALUES('group-5','question','1');
INSERT INTO `destoon_setting` VALUES('group-5','captcha','1');
INSERT INTO `destoon_setting` VALUES('group-5','check','1');
INSERT INTO `destoon_setting` VALUES('group-5','uploadpt','1');
INSERT INTO `destoon_setting` VALUES('group-5','uploadcredit','0');
INSERT INTO `destoon_setting` VALUES('group-5','uploadday','20');
INSERT INTO `destoon_setting` VALUES('group-5','uploadlimit','5');
INSERT INTO `destoon_setting` VALUES('group-5','uploadsize','');
INSERT INTO `destoon_setting` VALUES('group-5','uploadtype','');
INSERT INTO `destoon_setting` VALUES('group-5','upload','1');
INSERT INTO `destoon_setting` VALUES('group-5','editor','Simple');
INSERT INTO `destoon_setting` VALUES('group-5','grade','1');
INSERT INTO `destoon_setting` VALUES('group-5','commission','0');
INSERT INTO `destoon_setting` VALUES('group-5','discount','100');
INSERT INTO `destoon_setting` VALUES('group-5','fee','0');
INSERT INTO `destoon_setting` VALUES('group-5','fee_mode','0');
INSERT INTO `destoon_setting` VALUES('group-5','info_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','know_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','know_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','brand_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','brand_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','photo_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','photo_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','video_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','video_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','down_limit','3');
INSERT INTO `destoon_setting` VALUES('group-5','down_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','club_group_limit','-1');
INSERT INTO `destoon_setting` VALUES('group-5','club_reply_limit','10');
INSERT INTO `destoon_setting` VALUES('group-5','club_join_limit','10');
INSERT INTO `destoon_setting` VALUES('group-5','club_limit','0');
INSERT INTO `destoon_setting` VALUES('group-5','club_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-6','listorder','6');
INSERT INTO `destoon_setting` VALUES('group-6','reg','1');
INSERT INTO `destoon_setting` VALUES('group-6','quote_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','exhibit_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','exhibit_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','group_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','group_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','mall_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','mall_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','buy_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','buy_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','sell_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','sell_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','edit_limit','0');
INSERT INTO `destoon_setting` VALUES('group-6','refresh_limit','600');
INSERT INTO `destoon_setting` VALUES('group-6','day_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','add_limit','60');
INSERT INTO `destoon_setting` VALUES('group-6','copy','1');
INSERT INTO `destoon_setting` VALUES('group-6','delete','1');
INSERT INTO `destoon_setting` VALUES('group-6','vdeposit','0');
INSERT INTO `destoon_setting` VALUES('group-6','vcompany','0');
INSERT INTO `destoon_setting` VALUES('group-6','vtruename','0');
INSERT INTO `destoon_setting` VALUES('group-6','vmobile','0');
INSERT INTO `destoon_setting` VALUES('group-6','vemail','0');
INSERT INTO `destoon_setting` VALUES('group-6','moduleids','16,5,6,17,7,8,22,13,9,10,12,18');
INSERT INTO `destoon_setting` VALUES('group-6','link_limit','20');
INSERT INTO `destoon_setting` VALUES('group-6','honor_limit','10');
INSERT INTO `destoon_setting` VALUES('group-6','page_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','news_limit','20');
INSERT INTO `destoon_setting` VALUES('group-6','kf','0');
INSERT INTO `destoon_setting` VALUES('group-6','stats','0');
INSERT INTO `destoon_setting` VALUES('group-6','map','1');
INSERT INTO `destoon_setting` VALUES('group-6','style','0');
INSERT INTO `destoon_setting` VALUES('group-6','main_d','0,1,2');
INSERT INTO `destoon_setting` VALUES('group-6','main_c','0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES('group-6','home_main','0');
INSERT INTO `destoon_setting` VALUES('group-6','side_d','0,2,4,6');
INSERT INTO `destoon_setting` VALUES('group-6','side_c','0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES('group-6','home_side','0');
INSERT INTO `destoon_setting` VALUES('group-6','menu_d','0,1,2,3,4,6,7');
INSERT INTO `destoon_setting` VALUES('group-6','menu_c','0,1,2,3,4,5,6,7,8,9,10,11');
INSERT INTO `destoon_setting` VALUES('group-6','home_menu','0');
INSERT INTO `destoon_setting` VALUES('group-6','home','0');
INSERT INTO `destoon_setting` VALUES('group-6','styleid','0');
INSERT INTO `destoon_setting` VALUES('group-6','homepage','1');
INSERT INTO `destoon_setting` VALUES('group-6','type_limit','10');
INSERT INTO `destoon_setting` VALUES('group-6','price_limit','3');
INSERT INTO `destoon_setting` VALUES('group-6','inquiry_limit','10');
INSERT INTO `destoon_setting` VALUES('group-6','message_limit','20');
INSERT INTO `destoon_setting` VALUES('group-6','express_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','address_limit','10');
INSERT INTO `destoon_setting` VALUES('group-6','alert_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','favorite_limit','50');
INSERT INTO `destoon_setting` VALUES('group-6','friend_limit','50');
INSERT INTO `destoon_setting` VALUES('group-6','inbox_limit','50');
INSERT INTO `destoon_setting` VALUES('group-6','chat','1');
INSERT INTO `destoon_setting` VALUES('group-6','ad','1');
INSERT INTO `destoon_setting` VALUES('group-6','spread','0');
INSERT INTO `destoon_setting` VALUES('group-6','trade_sell','1');
INSERT INTO `destoon_setting` VALUES('group-6','sendmail','1');
INSERT INTO `destoon_setting` VALUES('group-6','sms','1');
INSERT INTO `destoon_setting` VALUES('group-6','mail','1');
INSERT INTO `destoon_setting` VALUES('group-6','ask','1');
INSERT INTO `destoon_setting` VALUES('group-6','cash','0');
INSERT INTO `destoon_setting` VALUES('group-6','question','1');
INSERT INTO `destoon_setting` VALUES('group-6','captcha','1');
INSERT INTO `destoon_setting` VALUES('group-6','check','1');
INSERT INTO `destoon_setting` VALUES('group-6','uploadpt','0');
INSERT INTO `destoon_setting` VALUES('group-6','uploadcredit','0');
INSERT INTO `destoon_setting` VALUES('group-6','uploadday','50');
INSERT INTO `destoon_setting` VALUES('group-6','uploadlimit','5');
INSERT INTO `destoon_setting` VALUES('group-6','uploadsize','');
INSERT INTO `destoon_setting` VALUES('group-6','uploadtype','');
INSERT INTO `destoon_setting` VALUES('group-6','upload','1');
INSERT INTO `destoon_setting` VALUES('group-6','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('group-6','grade','1');
INSERT INTO `destoon_setting` VALUES('group-6','commission','0');
INSERT INTO `destoon_setting` VALUES('group-6','discount','100');
INSERT INTO `destoon_setting` VALUES('group-6','fee','0');
INSERT INTO `destoon_setting` VALUES('group-6','fee_mode','0');
INSERT INTO `destoon_setting` VALUES('group-6','quote_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','job_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','job_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','resume_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','resume_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','article_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','article_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','info_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','info_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','know_limit','0');
INSERT INTO `destoon_setting` VALUES('group-6','know_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','brand_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','brand_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','photo_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','photo_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','video_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','video_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','down_limit','5');
INSERT INTO `destoon_setting` VALUES('group-6','down_free_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','club_group_limit','1');
INSERT INTO `destoon_setting` VALUES('group-6','club_reply_limit','50');
INSERT INTO `destoon_setting` VALUES('group-6','club_join_limit','10');
INSERT INTO `destoon_setting` VALUES('group-6','club_limit','0');
INSERT INTO `destoon_setting` VALUES('group-6','club_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','listorder','7');
INSERT INTO `destoon_setting` VALUES('group-7','reg','0');
INSERT INTO `destoon_setting` VALUES('group-7','quote_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','quote_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','exhibit_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','exhibit_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','group_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','group_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','mall_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','mall_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','buy_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','buy_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','sell_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','sell_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','edit_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','refresh_limit','60');
INSERT INTO `destoon_setting` VALUES('group-7','day_limit','10');
INSERT INTO `destoon_setting` VALUES('group-7','add_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','copy','1');
INSERT INTO `destoon_setting` VALUES('group-7','delete','1');
INSERT INTO `destoon_setting` VALUES('group-7','vdeposit','0');
INSERT INTO `destoon_setting` VALUES('group-7','vcompany','0');
INSERT INTO `destoon_setting` VALUES('group-7','vtruename','0');
INSERT INTO `destoon_setting` VALUES('group-7','vmobile','0');
INSERT INTO `destoon_setting` VALUES('group-7','vemail','1');
INSERT INTO `destoon_setting` VALUES('group-7','moduleids','16,5,6,17,7,8,21,22,13,9,-9,10,12,14,15,18');
INSERT INTO `destoon_setting` VALUES('group-7','link_limit','50');
INSERT INTO `destoon_setting` VALUES('group-7','honor_limit','20');
INSERT INTO `destoon_setting` VALUES('group-7','page_limit','5');
INSERT INTO `destoon_setting` VALUES('group-7','news_limit','100');
INSERT INTO `destoon_setting` VALUES('group-7','kf','1');
INSERT INTO `destoon_setting` VALUES('group-7','stats','1');
INSERT INTO `destoon_setting` VALUES('group-7','map','1');
INSERT INTO `destoon_setting` VALUES('group-7','style','1');
INSERT INTO `destoon_setting` VALUES('group-7','main_d','0,1,2,7');
INSERT INTO `destoon_setting` VALUES('group-7','main_c','0,1,2,4,5,6,7');
INSERT INTO `destoon_setting` VALUES('group-7','home_main','1');
INSERT INTO `destoon_setting` VALUES('group-7','side_d','0,1,2,4,6');
INSERT INTO `destoon_setting` VALUES('group-7','side_c','0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES('group-7','home_side','1');
INSERT INTO `destoon_setting` VALUES('group-7','menu_d','0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `destoon_setting` VALUES('group-7','menu_c','0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `destoon_setting` VALUES('group-7','home_menu','1');
INSERT INTO `destoon_setting` VALUES('group-7','home','1');
INSERT INTO `destoon_setting` VALUES('group-7','styleid','2');
INSERT INTO `destoon_setting` VALUES('group-7','homepage','1');
INSERT INTO `destoon_setting` VALUES('group-7','type_limit','20');
INSERT INTO `destoon_setting` VALUES('group-7','price_limit','20');
INSERT INTO `destoon_setting` VALUES('group-7','inquiry_limit','50');
INSERT INTO `destoon_setting` VALUES('group-7','message_limit','100');
INSERT INTO `destoon_setting` VALUES('group-7','express_limit','10');
INSERT INTO `destoon_setting` VALUES('group-7','address_limit','10');
INSERT INTO `destoon_setting` VALUES('group-7','alert_limit','10');
INSERT INTO `destoon_setting` VALUES('group-7','favorite_limit','100');
INSERT INTO `destoon_setting` VALUES('group-7','friend_limit','200');
INSERT INTO `destoon_setting` VALUES('group-7','inbox_limit','500');
INSERT INTO `destoon_setting` VALUES('group-7','chat','1');
INSERT INTO `destoon_setting` VALUES('group-7','ad','1');
INSERT INTO `destoon_setting` VALUES('group-7','spread','1');
INSERT INTO `destoon_setting` VALUES('group-7','trade_sell','1');
INSERT INTO `destoon_setting` VALUES('group-7','sendmail','1');
INSERT INTO `destoon_setting` VALUES('group-7','sms','1');
INSERT INTO `destoon_setting` VALUES('group-7','mail','1');
INSERT INTO `destoon_setting` VALUES('group-7','ask','1');
INSERT INTO `destoon_setting` VALUES('group-7','cash','1');
INSERT INTO `destoon_setting` VALUES('group-7','question','0');
INSERT INTO `destoon_setting` VALUES('group-7','captcha','0');
INSERT INTO `destoon_setting` VALUES('group-7','check','0');
INSERT INTO `destoon_setting` VALUES('group-7','uploadpt','0');
INSERT INTO `destoon_setting` VALUES('group-7','uploadcredit','0');
INSERT INTO `destoon_setting` VALUES('group-7','uploadday','100');
INSERT INTO `destoon_setting` VALUES('group-7','uploadlimit','10');
INSERT INTO `destoon_setting` VALUES('group-7','uploadsize','');
INSERT INTO `destoon_setting` VALUES('group-7','uploadtype','');
INSERT INTO `destoon_setting` VALUES('group-7','upload','1');
INSERT INTO `destoon_setting` VALUES('group-7','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('group-7','grade','1');
INSERT INTO `destoon_setting` VALUES('group-7','commission','0');
INSERT INTO `destoon_setting` VALUES('group-7','discount','');
INSERT INTO `destoon_setting` VALUES('group-7','fee','2000');
INSERT INTO `destoon_setting` VALUES('group-7','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('group-7','job_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','job_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','resume_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','resume_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','article_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','article_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','info_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','info_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','know_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','know_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','brand_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','brand_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','photo_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','photo_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','video_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','video_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','down_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','down_free_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','club_group_limit','3');
INSERT INTO `destoon_setting` VALUES('group-7','club_reply_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','club_join_limit','50');
INSERT INTO `destoon_setting` VALUES('group-7','club_limit','0');
INSERT INTO `destoon_setting` VALUES('group-7','club_free_limit','0');
INSERT INTO `destoon_setting` VALUES('destoon','backtime','1469614521');
INSERT INTO `destoon_setting` VALUES('1','im_ali','1');
INSERT INTO `destoon_setting` VALUES('1','im_qq','1');
INSERT INTO `destoon_setting` VALUES('1','im_web','1');
INSERT INTO `destoon_setting` VALUES('1','admin_left','188');
INSERT INTO `destoon_setting` VALUES('1','credit_unit','点');
INSERT INTO `destoon_setting` VALUES('1','credit_name','积分');
INSERT INTO `destoon_setting` VALUES('1','money_sign','￥');
INSERT INTO `destoon_setting` VALUES('1','money_unit','元');
INSERT INTO `destoon_setting` VALUES('1','money_name','资金');
INSERT INTO `destoon_setting` VALUES('1','city_ip','0');
INSERT INTO `destoon_setting` VALUES('1','city','0');
INSERT INTO `destoon_setting` VALUES('1','close_reason','网站维护中，请稍候访问...');
INSERT INTO `destoon_setting` VALUES('1','close','0');
INSERT INTO `destoon_setting` VALUES('1','icpno','');
INSERT INTO `destoon_setting` VALUES('1','telephone','');
INSERT INTO `destoon_setting` VALUES('1','copyright','(c)2008-2015 DESTOON B2B SYSTEM All Rights Reserved');
INSERT INTO `destoon_setting` VALUES('1','logo','');
INSERT INTO `destoon_setting` VALUES('1','sitename','西安步旗广告文化传播有限公司');
INSERT INTO `destoon_setting` VALUES('26','fee_back','0');
INSERT INTO `destoon_setting` VALUES('26','fee_period','0');
INSERT INTO `destoon_setting` VALUES('26','fee_view','0');
INSERT INTO `destoon_setting` VALUES('26','fee_add','0');
INSERT INTO `destoon_setting` VALUES('26','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('26','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('26','question_add','2');
INSERT INTO `destoon_setting` VALUES('26','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('26','check_add','2');
INSERT INTO `destoon_setting` VALUES('26','question_message','2');
INSERT INTO `destoon_setting` VALUES('26','captcha_message','2');
INSERT INTO `destoon_setting` VALUES('26','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('26','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('26','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('26','group_contact','6,7');
INSERT INTO `destoon_setting` VALUES('26','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('26','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('26','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('26','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('26','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('26','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('26','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('26','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('26','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('26','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('26','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('26','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('26','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('26','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('26','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('26','show_html','0');
INSERT INTO `destoon_setting` VALUES('26','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('26','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('26','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('26','list_html','0');
INSERT INTO `destoon_setting` VALUES('26','index_html','0');
INSERT INTO `destoon_setting` VALUES('26','page_subcat','5');
INSERT INTO `destoon_setting` VALUES('26','max_width','550');
INSERT INTO `destoon_setting` VALUES('26','page_srelate','10');
INSERT INTO `destoon_setting` VALUES('26','show_message','1');
INSERT INTO `destoon_setting` VALUES('26','page_lkw','10');
INSERT INTO `destoon_setting` VALUES('26','show_larea','1');
INSERT INTO `destoon_setting` VALUES('26','show_lcat','1');
INSERT INTO `destoon_setting` VALUES('26','pagesize','20');
INSERT INTO `destoon_setting` VALUES('26','page_ihits','10');
INSERT INTO `destoon_setting` VALUES('26','show_iarea','1');
INSERT INTO `destoon_setting` VALUES('26','show_icat','1');
INSERT INTO `destoon_setting` VALUES('26','page_icat','8');
INSERT INTO `destoon_setting` VALUES('26','page_irec','8');
INSERT INTO `destoon_setting` VALUES('26','swfu','2');
INSERT INTO `destoon_setting` VALUES('26','clear_link','0');
INSERT INTO `destoon_setting` VALUES('26','keylink','0');
INSERT INTO `destoon_setting` VALUES('26','split','0');
INSERT INTO `destoon_setting` VALUES('26','fulltext','0');
INSERT INTO `destoon_setting` VALUES('26','level','推荐信息');
INSERT INTO `destoon_setting` VALUES('26','cat_property','0');
INSERT INTO `destoon_setting` VALUES('26','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('26','message_ask','请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES('26','order','edittime desc');
INSERT INTO `destoon_setting` VALUES('26','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,islink');
INSERT INTO `destoon_setting` VALUES('26','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('26','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('26','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('26','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('26','template_message','');
INSERT INTO `destoon_setting` VALUES('26','template_my','');
INSERT INTO `destoon_setting` VALUES('26','template_search','');
INSERT INTO `destoon_setting` VALUES('26','template_show','');
INSERT INTO `destoon_setting` VALUES('26','template_list','');
INSERT INTO `destoon_setting` VALUES('26','template_index','');
INSERT INTO `destoon_setting` VALUES('26','credit_add','2');
INSERT INTO `destoon_setting` VALUES('26','credit_del','5');
INSERT INTO `destoon_setting` VALUES('26','credit_color','100');
INSERT INTO `destoon_setting` VALUES('26','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('26','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('26','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('26','title_show','{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('26','keywords_index','');
INSERT INTO `destoon_setting` VALUES('26','keywords_list','');
INSERT INTO `destoon_setting` VALUES('26','keywords_show','');
INSERT INTO `destoon_setting` VALUES('26','description_index','');
INSERT INTO `destoon_setting` VALUES('26','description_list','');
INSERT INTO `destoon_setting` VALUES('26','description_show','');
INSERT INTO `destoon_setting` VALUES('26','moduleid','22');
INSERT INTO `destoon_setting` VALUES('26','name','招商');
INSERT INTO `destoon_setting` VALUES('26','moduledir','invest');
INSERT INTO `destoon_setting` VALUES('26','module','info');
INSERT INTO `destoon_setting` VALUES('26','ismenu','1');
INSERT INTO `destoon_setting` VALUES('26','domain','');
INSERT INTO `destoon_setting` VALUES('26','linkurl','http://demo.destoon.com/v6.0/invest/');
INSERT INTO `destoon_setting` VALUES('1','mail_type','close');
INSERT INTO `destoon_setting` VALUES('1','mail_delimiter','1');
INSERT INTO `destoon_setting` VALUES('1','smtp_host','');
INSERT INTO `destoon_setting` VALUES('1','smtp_port','25');
INSERT INTO `destoon_setting` VALUES('1','smtp_auth','1');
INSERT INTO `destoon_setting` VALUES('1','smtp_user','');
INSERT INTO `destoon_setting` VALUES('1','smtp_pass','');
INSERT INTO `destoon_setting` VALUES('1','mail_sign','');
INSERT INTO `destoon_setting` VALUES('1','mail_sender','');
INSERT INTO `destoon_setting` VALUES('1','mail_name','');
INSERT INTO `destoon_setting` VALUES('1','mail_log','1');
INSERT INTO `destoon_setting` VALUES('1','message_email','0');
INSERT INTO `destoon_setting` VALUES('1','message_group','6,7');
INSERT INTO `destoon_setting` VALUES('1','message_time','60');
INSERT INTO `destoon_setting` VALUES('1','message_type','1,2,3');
INSERT INTO `destoon_setting` VALUES('1','message_weixin','0');
INSERT INTO `destoon_setting` VALUES('1','page_bigcat','');
INSERT INTO `destoon_setting` VALUES('1','page_catalog','1');
INSERT INTO `destoon_setting` VALUES('1','page_trade','10');
INSERT INTO `destoon_setting` VALUES('1','page_com','20');
INSERT INTO `destoon_setting` VALUES('1','page_sell','10');
INSERT INTO `destoon_setting` VALUES('1','page_mall','10');
INSERT INTO `destoon_setting` VALUES('1','page_quote','5');
INSERT INTO `destoon_setting` VALUES('1','page_price','12');
INSERT INTO `destoon_setting` VALUES('1','page_group','3');
INSERT INTO `destoon_setting` VALUES('1','page_rank','5');
INSERT INTO `destoon_setting` VALUES('1','page_special','1');
INSERT INTO `destoon_setting` VALUES('1','page_comnews','5');
INSERT INTO `destoon_setting` VALUES('1','page_newsh','1');
INSERT INTO `destoon_setting` VALUES('1','page_news','5');
INSERT INTO `destoon_setting` VALUES('1','page_photo','6');
INSERT INTO `destoon_setting` VALUES('1','page_video','3');
INSERT INTO `destoon_setting` VALUES('1','page_post','8');
INSERT INTO `destoon_setting` VALUES('1','page_club','8');
INSERT INTO `destoon_setting` VALUES('1','page_know','6');
INSERT INTO `destoon_setting` VALUES('1','page_exhibit','6');
INSERT INTO `destoon_setting` VALUES('1','page_brand','4');
INSERT INTO `destoon_setting` VALUES('1','page_job','5');
INSERT INTO `destoon_setting` VALUES('1','page_down','5');
INSERT INTO `destoon_setting` VALUES('1','page_logo','18');
INSERT INTO `destoon_setting` VALUES('1','page_text','18');
INSERT INTO `destoon_setting` VALUES('1','sms','0');
INSERT INTO `destoon_setting` VALUES('1','sms_fee','0.1');
INSERT INTO `destoon_setting` VALUES('1','sms_max','');
INSERT INTO `destoon_setting` VALUES('1','sms_len','70');
INSERT INTO `destoon_setting` VALUES('1','sms_ok','成功');
INSERT INTO `destoon_setting` VALUES('1','sms_sign','【签名】');
INSERT INTO `destoon_setting` VALUES('1','cloud_express','0');
INSERT INTO `destoon_setting` VALUES('1','admin_week','');
INSERT INTO `destoon_setting` VALUES('1','check_week','');
INSERT INTO `destoon_setting` VALUES('pay-weixin','name','微信');
INSERT INTO `destoon_setting` VALUES('pay-weixin','enable','0');
INSERT INTO `destoon_setting` VALUES('pay-chinabank','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-netease','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-taobao','enable','0');
INSERT INTO `destoon_setting` VALUES('2','credit_add_credit','2');
INSERT INTO `destoon_setting` VALUES('2','edit_check','thumb,areaid,business,regyear,capital,address,telephone,content');
INSERT INTO `destoon_setting` VALUES('2','usernote','');
INSERT INTO `destoon_setting` VALUES('2','iptimeout','0');
INSERT INTO `destoon_setting` VALUES('2','banagent','');
INSERT INTO `destoon_setting` VALUES('2','defend_proxy','0');
INSERT INTO `destoon_setting` VALUES('2','sms_register','0');
INSERT INTO `destoon_setting` VALUES('2','credit_register','20');
INSERT INTO `destoon_setting` VALUES('2','money_register','0');
INSERT INTO `destoon_setting` VALUES('2','question_register','0');
INSERT INTO `destoon_setting` VALUES('2','captcha_register','0');
INSERT INTO `destoon_setting` VALUES('2','mobilecode_register','0');
INSERT INTO `destoon_setting` VALUES('2','emailcode_register','0');
INSERT INTO `destoon_setting` VALUES('2','welcome_sms','0');
INSERT INTO `destoon_setting` VALUES('2','welcome_email','0');
INSERT INTO `destoon_setting` VALUES('2','welcome_message','1');
INSERT INTO `destoon_setting` VALUES('2','checkuser','0');
INSERT INTO `destoon_setting` VALUES('2','banemail','');
INSERT INTO `destoon_setting` VALUES('2','banmodec','0');
INSERT INTO `destoon_setting` VALUES('2','bancompany','');
INSERT INTO `destoon_setting` VALUES('2','banmodeu','0');
INSERT INTO `destoon_setting` VALUES('2','banusername','admin|system|master|web|sell|buy|company|quote|job|article|info|page|bbs|club');
INSERT INTO `destoon_setting` VALUES('2','maxpassword','20');
INSERT INTO `destoon_setting` VALUES('2','minpassword','6');
INSERT INTO `destoon_setting` VALUES('2','maxusername','20');
INSERT INTO `destoon_setting` VALUES('2','minusername','4');
INSERT INTO `destoon_setting` VALUES('2','enable_register','1');
INSERT INTO `destoon_setting` VALUES('pay-weixin','percent','1');
INSERT INTO `destoon_setting` VALUES('oauth-netease','key','');
INSERT INTO `destoon_setting` VALUES('oauth-taobao','key','');
INSERT INTO `destoon_setting` VALUES('2','credit_buy','30|100|500|1000');
INSERT INTO `destoon_setting` VALUES('2','credit_price','5|10|45|85');
INSERT INTO `destoon_setting` VALUES('2','credit_exchange','0');
INSERT INTO `destoon_setting` VALUES('2','ex_type','PW');
INSERT INTO `destoon_setting` VALUES('2','ex_host','localhost');
INSERT INTO `destoon_setting` VALUES('2','ex_user','root');
INSERT INTO `destoon_setting` VALUES('2','ex_pass','');
INSERT INTO `destoon_setting` VALUES('2','ex_data','');
INSERT INTO `destoon_setting` VALUES('2','ex_prex','');
INSERT INTO `destoon_setting` VALUES('2','ex_fdnm','');
INSERT INTO `destoon_setting` VALUES('2','ex_rate','');
INSERT INTO `destoon_setting` VALUES('2','ex_name','');
INSERT INTO `destoon_setting` VALUES('2','passport','0');
INSERT INTO `destoon_setting` VALUES('2','passport_charset','gbk');
INSERT INTO `destoon_setting` VALUES('2','passport_url','');
INSERT INTO `destoon_setting` VALUES('2','passport_key','');
INSERT INTO `destoon_setting` VALUES('2','uc_api','');
INSERT INTO `destoon_setting` VALUES('2','uc_ip','');
INSERT INTO `destoon_setting` VALUES('2','uc_mysql','1');
INSERT INTO `destoon_setting` VALUES('2','uc_dbhost','localhost');
INSERT INTO `destoon_setting` VALUES('2','uc_dbuser','');
INSERT INTO `destoon_setting` VALUES('2','uc_dbpwd','');
INSERT INTO `destoon_setting` VALUES('2','uc_dbname','');
INSERT INTO `destoon_setting` VALUES('2','uc_dbpre','');
INSERT INTO `destoon_setting` VALUES('2','uc_charset','utf8');
INSERT INTO `destoon_setting` VALUES('2','uc_appid','');
INSERT INTO `destoon_setting` VALUES('2','uc_key','');
INSERT INTO `destoon_setting` VALUES('2','uc_bbs','1');
INSERT INTO `destoon_setting` VALUES('2','uc_bbspre','');
INSERT INTO `destoon_setting` VALUES('2','oauth','0');
INSERT INTO `destoon_setting` VALUES('5','group_elite','6,7');
INSERT INTO `destoon_setting` VALUES('5','captcha_inquiry','2');
INSERT INTO `destoon_setting` VALUES('5','question_inquiry','2');
INSERT INTO `destoon_setting` VALUES('5','check_add','2');
INSERT INTO `destoon_setting` VALUES('5','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('5','question_add','2');
INSERT INTO `destoon_setting` VALUES('5','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('5','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('5','fee_add','0');
INSERT INTO `destoon_setting` VALUES('5','fee_view','0');
INSERT INTO `destoon_setting` VALUES('5','fee_period','0');
INSERT INTO `destoon_setting` VALUES('5','fee_back','0');
INSERT INTO `destoon_setting` VALUES('5','credit_add','2');
INSERT INTO `destoon_setting` VALUES('5','credit_del','5');
INSERT INTO `destoon_setting` VALUES('5','credit_color','100');
INSERT INTO `destoon_setting` VALUES('5','credit_elite','100');
INSERT INTO `destoon_setting` VALUES('5','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('27','fee_back','0');
INSERT INTO `destoon_setting` VALUES('27','fee_period','0');
INSERT INTO `destoon_setting` VALUES('27','fee_view','0');
INSERT INTO `destoon_setting` VALUES('27','fee_add','0');
INSERT INTO `destoon_setting` VALUES('27','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('27','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('27','question_add','2');
INSERT INTO `destoon_setting` VALUES('27','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('27','check_add','2');
INSERT INTO `destoon_setting` VALUES('27','question_message','2');
INSERT INTO `destoon_setting` VALUES('27','captcha_message','2');
INSERT INTO `destoon_setting` VALUES('27','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('27','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('27','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('27','group_contact','6,7');
INSERT INTO `destoon_setting` VALUES('27','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('27','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('27','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('27','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('27','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('27','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('27','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('27','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('27','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('27','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('27','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('27','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('27','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('27','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('27','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('27','show_html','0');
INSERT INTO `destoon_setting` VALUES('27','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('27','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('27','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('27','list_html','0');
INSERT INTO `destoon_setting` VALUES('27','index_html','0');
INSERT INTO `destoon_setting` VALUES('27','page_subcat','5');
INSERT INTO `destoon_setting` VALUES('27','max_width','550');
INSERT INTO `destoon_setting` VALUES('27','page_srelate','10');
INSERT INTO `destoon_setting` VALUES('27','show_message','1');
INSERT INTO `destoon_setting` VALUES('27','page_lkw','10');
INSERT INTO `destoon_setting` VALUES('27','show_larea','1');
INSERT INTO `destoon_setting` VALUES('27','show_lcat','1');
INSERT INTO `destoon_setting` VALUES('27','pagesize','20');
INSERT INTO `destoon_setting` VALUES('27','page_ihits','10');
INSERT INTO `destoon_setting` VALUES('27','show_iarea','1');
INSERT INTO `destoon_setting` VALUES('27','show_icat','1');
INSERT INTO `destoon_setting` VALUES('27','page_icat','8');
INSERT INTO `destoon_setting` VALUES('27','page_irec','8');
INSERT INTO `destoon_setting` VALUES('27','swfu','2');
INSERT INTO `destoon_setting` VALUES('27','clear_link','0');
INSERT INTO `destoon_setting` VALUES('27','keylink','0');
INSERT INTO `destoon_setting` VALUES('27','split','0');
INSERT INTO `destoon_setting` VALUES('27','fulltext','0');
INSERT INTO `destoon_setting` VALUES('27','level','推荐信息');
INSERT INTO `destoon_setting` VALUES('27','cat_property','0');
INSERT INTO `destoon_setting` VALUES('27','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('27','message_ask','请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES('27','order','edittime desc');
INSERT INTO `destoon_setting` VALUES('27','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,islink');
INSERT INTO `destoon_setting` VALUES('27','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('27','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('27','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('27','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('27','template_message','');
INSERT INTO `destoon_setting` VALUES('27','template_my','');
INSERT INTO `destoon_setting` VALUES('27','template_search','');
INSERT INTO `destoon_setting` VALUES('27','template_show','');
INSERT INTO `destoon_setting` VALUES('27','template_list','');
INSERT INTO `destoon_setting` VALUES('27','template_index','');
INSERT INTO `destoon_setting` VALUES('27','credit_add','2');
INSERT INTO `destoon_setting` VALUES('27','credit_del','5');
INSERT INTO `destoon_setting` VALUES('27','credit_color','100');
INSERT INTO `destoon_setting` VALUES('27','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('27','title_index','{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('27','title_list','{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('27','title_show','{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES('27','keywords_index','');
INSERT INTO `destoon_setting` VALUES('27','keywords_list','');
INSERT INTO `destoon_setting` VALUES('27','keywords_show','');
INSERT INTO `destoon_setting` VALUES('27','description_index','');
INSERT INTO `destoon_setting` VALUES('27','description_list','');
INSERT INTO `destoon_setting` VALUES('27','description_show','');
INSERT INTO `destoon_setting` VALUES('27','moduleid','22');
INSERT INTO `destoon_setting` VALUES('27','name','招商');
INSERT INTO `destoon_setting` VALUES('27','moduledir','invest');
INSERT INTO `destoon_setting` VALUES('27','module','info');
INSERT INTO `destoon_setting` VALUES('27','ismenu','1');
INSERT INTO `destoon_setting` VALUES('27','domain','');
INSERT INTO `destoon_setting` VALUES('27','linkurl','http://demo.destoon.com/v6.0/invest/');

DROP TABLE IF EXISTS `destoon_sms`;
CREATE TABLE `destoon_sms` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `mobile` varchar(30) NOT NULL default '',
  `message` text NOT NULL,
  `word` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `sendtime` int(10) unsigned NOT NULL default '0',
  `code` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信记录';


DROP TABLE IF EXISTS `destoon_special`;
CREATE TABLE `destoon_special` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `tag` varchar(100) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `items` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `banner` varchar(255) NOT NULL default '',
  `cfg_photo` smallint(4) unsigned NOT NULL default '0',
  `cfg_video` smallint(4) unsigned NOT NULL default '0',
  `cfg_type` smallint(4) unsigned NOT NULL default '0',
  `seo_title` varchar(255) NOT NULL default '',
  `seo_keywords` varchar(255) NOT NULL default '',
  `seo_description` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `islink` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `domain` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题';


DROP TABLE IF EXISTS `destoon_special_data`;
CREATE TABLE `destoon_special_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题内容';


DROP TABLE IF EXISTS `destoon_special_item`;
CREATE TABLE `destoon_special_item` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `specialid` bigint(20) unsigned NOT NULL default '0',
  `typeid` bigint(20) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `introduce` varchar(255) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `linkurl` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `specialid` (`specialid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题信息';


DROP TABLE IF EXISTS `destoon_sphinx`;
CREATE TABLE `destoon_sphinx` (
  `moduleid` int(10) unsigned NOT NULL default '0',
  `maxid` bigint(20) unsigned NOT NULL default '0',
  UNIQUE KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Sphinx';


DROP TABLE IF EXISTS `destoon_spread`;
CREATE TABLE `destoon_spread` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `mid` smallint(6) unsigned NOT NULL default '0',
  `tid` bigint(20) unsigned NOT NULL default '0',
  `word` varchar(50) NOT NULL default '',
  `price` float NOT NULL default '0',
  `currency` varchar(30) NOT NULL default '',
  `company` varchar(100) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='排名推广';


DROP TABLE IF EXISTS `destoon_spread_price`;
CREATE TABLE `destoon_spread_price` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `word` varchar(50) NOT NULL default '',
  `sell_price` float NOT NULL default '0',
  `buy_price` float NOT NULL default '0',
  `company_price` float NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='排名起价';


DROP TABLE IF EXISTS `destoon_style`;
CREATE TABLE `destoon_style` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `typeid` bigint(20) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `skin` varchar(50) NOT NULL default '',
  `template` varchar(50) NOT NULL default '',
  `author` varchar(30) NOT NULL default '',
  `groupid` varchar(30) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `currency` varchar(20) NOT NULL default '',
  `money` float NOT NULL default '0',
  `credit` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `listorder` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公司主页模板';

INSERT INTO `destoon_style` VALUES('2','0','深蓝模板','blue','homepage','Destoon.COM',',6,7,','0','money','0','0','1','1466996173','admin','1466996173','0');
INSERT INTO `destoon_style` VALUES('3','0','绿色模板','green','homepage','Destoon.COM',',6,7,','0','money','0','0','0','1466996173','admin','1466996173','0');
INSERT INTO `destoon_style` VALUES('4','0','紫色模板','purple','homepage','Destoon.COM',',6,7,','0','credit','0','5','2','1466996173','admin','1466996173','0');
INSERT INTO `destoon_style` VALUES('5','0','橙色模板','orange','homepage','Destoon.COM',',6,7,','0','credit','120','0','1','1466996173','admin','1466996173','0');
INSERT INTO `destoon_style` VALUES('6','99','默认模板','default','homepage','Destoon.COM',',6,7,','0','money','0','0','0','1466996173','admin','1466996173','0');

DROP TABLE IF EXISTS `destoon_type`;
CREATE TABLE `destoon_type` (
  `typeid` bigint(20) unsigned NOT NULL auto_increment,
  `parentid` bigint(20) unsigned NOT NULL default '0',
  `listorder` smallint(4) NOT NULL default '0',
  `typename` varchar(255) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `item` varchar(20) NOT NULL default '',
  `cache` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`typeid`),
  KEY `listorder` (`listorder`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类';


DROP TABLE IF EXISTS `destoon_upgrade`;
CREATE TABLE `destoon_upgrade` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `userid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `groupid` smallint(4) unsigned NOT NULL default '0',
  `amount` float NOT NULL default '0',
  `message` tinyint(1) unsigned NOT NULL default '0',
  `company` varchar(100) NOT NULL default '',
  `truename` varchar(30) NOT NULL default '',
  `telephone` varchar(30) NOT NULL default '',
  `mobile` varchar(30) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `qq` varchar(30) NOT NULL default '',
  `ali` varchar(30) NOT NULL default '',
  `skype` varchar(30) NOT NULL default '',
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `promo_code` varchar(30) NOT NULL default '',
  `promo_type` tinyint(1) unsigned NOT NULL default '0',
  `promo_amount` float NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `note` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员升级';


DROP TABLE IF EXISTS `destoon_upload_0`;
CREATE TABLE `destoon_upload_0` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录0';


DROP TABLE IF EXISTS `destoon_upload_1`;
CREATE TABLE `destoon_upload_1` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='上传记录1';

INSERT INTO `destoon_upload_1` VALUES('1','eaa7613889e0e101287a1260d78aeefc','18','0','http://127.0.0.1/destoon/file/upload/201607/22/144224951.jpg','5586','jpg','thumb','128','128','1469169744','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('2','d14f8b9a9077388a03f30c05eb62408c','18','1','http://127.0.0.1/destoon/file/upload/201607/22/145130981.jpg','3566','jpg','thumb','120','90','1469170290','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('3','be0efcb966dedabcab2a37c7b34e12ab','21','2','http://127.0.0.1/destoon/file/upload/201607/23/140127211.jpg','4658','jpg','thumb','120','90','1469253687','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('4','356e1c5f343a3bd16114a2efc4112275','21','1','http://127.0.0.1/destoon/file/upload/201607/23/140142291.jpg','5188','jpg','thumb','120','90','1469253702','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('5','9d76a4c7421584ed462d694f04c04b61','6','1','http://127.0.0.1/destoon/file/upload/201607/24/164044451.jpg.thumb.jpg','32236','jpg','album','800','273','1469349644','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('6','6f11c34a0dcd315f7dbf29eace513555','6','1','http://127.0.0.1/destoon/file/upload/201607/24/164047661.jpg.thumb.jpg','43655','jpg','album','800','273','1469349647','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('7','ce11e6b1d7c376a5a370c95ed07fb40f','6','1','http://127.0.0.1/destoon/file/upload/201607/24/164051361.jpg.thumb.jpg','59905','jpg','album','800','273','1469349651','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('8','4d18b39f5e4b57d22b4141760d6e9e49','6','2','http://127.0.0.1/destoon/file/upload/201607/24/164619691.jpg.thumb.jpg','249062','jpg','album','800','230','1469349979','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('9','7a69d2a7ae5d084ff4b937f9fb42a476','6','3','http://127.0.0.1/destoon/file/upload/201607/24/164724601.jpg.thumb.jpg','14387','jpg','album','130','130','1469350044','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('10','9c76cd1087a02317346514a43d809546','6','4','http://127.0.0.1/destoon/file/upload/201607/24/172901261.jpg.thumb.jpg','14387','jpg','album','130','130','1469352541','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('11','b0a2a6bc5acd9f1a8fd86f80d80fe0bf','22','1','http://127.0.0.1/destoon/file/upload/201607/25/101311451.jpg.thumb.jpg','14387','jpg','album','130','130','1469412791','admin','127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES('26','5fbdd8ce55f8202d1398fc7705f2e335','26','0','http://127.0.0.196:89/file/upload/201607/30/181118621.jpg.thumb.jpg','16808','jpg','album','201','200','1469873478','admin','127.0.0.196');
INSERT INTO `destoon_upload_1` VALUES('25','35e7fce4de103462db2364dfa3abf34d','26','0','http://127.0.0.196:89/file/upload/201607/30/181015151.jpg','17526','jpg','thumb','209','249','1469873415','admin','127.0.0.196');

DROP TABLE IF EXISTS `destoon_upload_2`;
CREATE TABLE `destoon_upload_2` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='上传记录2';

INSERT INTO `destoon_upload_2` VALUES('1','2d457b2c510a24bd6f4fdf232e2abc93','18','2','http://127.0.0.1/destoon/file/upload/201607/22/145441922.jpg','5188','jpg','thumb','120','90','1469170481','wenle123','127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES('2','d9503d891a79eb8349c664ce7372dab9','18','2','http://127.0.0.1/destoon/file/upload/201607/22/145510922.jpg','40780','jpg','editor','249','248','1469170510','wenle123','127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES('3','338bc1c0c23acf0601b77baf8b0edb81','18','2','http://127.0.0.1/destoon/file/upload/201607/22/145523662.jpg','40780','jpg','editor','249','248','1469170523','wenle123','127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES('4','b33e31c744bcfb602274d659986f53f1','18','2','http://127.0.0.1/destoon/file/upload/201607/22/145535862.jpg','40780','jpg','editor','249','248','1469170535','wenle123','127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES('5','f591f4bf8c644d6c6d9626adc1823a5c','9','1','http://127.0.0.1/destoon/file/upload/201607/25/121036602.jpg','6278','jpg','thumb','100','140','1469419836','wenle123','127.0.0.1');

DROP TABLE IF EXISTS `destoon_upload_3`;
CREATE TABLE `destoon_upload_3` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='上传记录3';


DROP TABLE IF EXISTS `destoon_upload_4`;
CREATE TABLE `destoon_upload_4` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录4';


DROP TABLE IF EXISTS `destoon_upload_5`;
CREATE TABLE `destoon_upload_5` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录5';


DROP TABLE IF EXISTS `destoon_upload_6`;
CREATE TABLE `destoon_upload_6` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录6';


DROP TABLE IF EXISTS `destoon_upload_7`;
CREATE TABLE `destoon_upload_7` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录7';


DROP TABLE IF EXISTS `destoon_upload_8`;
CREATE TABLE `destoon_upload_8` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录8';


DROP TABLE IF EXISTS `destoon_upload_9`;
CREATE TABLE `destoon_upload_9` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(32) NOT NULL default '',
  `moduleid` smallint(6) unsigned NOT NULL default '0',
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `fileurl` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `fileext` varchar(10) NOT NULL default '',
  `upfrom` varchar(10) NOT NULL default '',
  `width` int(10) unsigned NOT NULL default '0',
  `height` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录9';


DROP TABLE IF EXISTS `destoon_validate`;
CREATE TABLE `destoon_validate` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `thumb` varchar(255) NOT NULL default '',
  `thumb1` varchar(255) NOT NULL default '',
  `thumb2` varchar(255) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资料认证';


DROP TABLE IF EXISTS `destoon_video_14`;
CREATE TABLE `destoon_video_14` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `catid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `fee` float NOT NULL default '0',
  `tag` varchar(255) NOT NULL default '',
  `keyword` varchar(255) NOT NULL default '',
  `pptword` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) NOT NULL default '',
  `video` varchar(255) NOT NULL default '',
  `mobile` tinyint(1) unsigned NOT NULL default '0',
  `width` smallint(4) unsigned NOT NULL default '0',
  `height` smallint(4) unsigned NOT NULL default '0',
  `player` tinyint(1) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `introduce` varchar(255) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(50) NOT NULL default '',
  `template` varchar(30) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频';


DROP TABLE IF EXISTS `destoon_video_data_14`;
CREATE TABLE `destoon_video_data_14` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频内容';


DROP TABLE IF EXISTS `destoon_vote`;
CREATE TABLE `destoon_vote` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `typeid` int(10) unsigned NOT NULL default '0',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL default '0',
  `choose` tinyint(1) unsigned NOT NULL default '0',
  `vote_min` smallint(2) unsigned NOT NULL default '0',
  `vote_max` smallint(2) unsigned NOT NULL default '0',
  `votes` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `fromtime` int(10) unsigned NOT NULL default '0',
  `totime` int(10) unsigned NOT NULL default '0',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `linkto` varchar(255) NOT NULL default '',
  `linkurl` varchar(255) NOT NULL default '',
  `template_vote` varchar(30) NOT NULL default '',
  `template` varchar(30) NOT NULL default '',
  `s1` varchar(255) NOT NULL default '',
  `s2` varchar(255) NOT NULL default '',
  `s3` varchar(255) NOT NULL default '',
  `s4` varchar(255) NOT NULL default '',
  `s5` varchar(255) NOT NULL default '',
  `s6` varchar(255) NOT NULL default '',
  `s7` varchar(255) NOT NULL default '',
  `s8` varchar(255) NOT NULL default '',
  `s9` varchar(255) NOT NULL default '',
  `s10` varchar(255) NOT NULL default '',
  `v1` int(10) unsigned NOT NULL default '0',
  `v2` int(10) unsigned NOT NULL default '0',
  `v3` int(10) unsigned NOT NULL default '0',
  `v4` int(10) unsigned NOT NULL default '0',
  `v5` int(10) unsigned NOT NULL default '0',
  `v6` int(10) unsigned NOT NULL default '0',
  `v7` int(10) unsigned NOT NULL default '0',
  `v8` int(10) unsigned NOT NULL default '0',
  `v9` int(10) unsigned NOT NULL default '0',
  `v10` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投票';


DROP TABLE IF EXISTS `destoon_vote_record`;
CREATE TABLE `destoon_vote_record` (
  `rid` bigint(20) unsigned NOT NULL auto_increment,
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(50) NOT NULL default '',
  `votetime` int(10) unsigned NOT NULL default '0',
  `votes` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投票记录';


DROP TABLE IF EXISTS `destoon_webpage`;
CREATE TABLE `destoon_webpage` (
  `itemid` int(10) unsigned NOT NULL auto_increment,
  `item` varchar(30) NOT NULL default '',
  `areaid` int(10) unsigned NOT NULL default '0',
  `level` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `style` varchar(50) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `seo_title` varchar(255) NOT NULL default '',
  `seo_keywords` varchar(255) NOT NULL default '',
  `seo_description` varchar(255) NOT NULL default '',
  `editor` varchar(30) NOT NULL default '',
  `edittime` int(10) unsigned NOT NULL default '0',
  `listorder` smallint(4) NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `islink` tinyint(1) unsigned NOT NULL default '0',
  `linkurl` varchar(255) NOT NULL default '',
  `domain` varchar(255) NOT NULL default '',
  `template` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='单网页';

INSERT INTO `destoon_webpage` VALUES('1','1','0','0','关于我们','','关于我们','','','','destoon','1319006891','5','0','0','about/index.html','','');
INSERT INTO `destoon_webpage` VALUES('3','1','0','0','联系方式','','联系方式','','','','destoon','1310696453','4','0','0','about/contact.html','','');
INSERT INTO `destoon_webpage` VALUES('4','1','0','0','使用协议','','使用协议','','','','destoon','1310696460','3','0','0','about/agreement.html','','');
INSERT INTO `destoon_webpage` VALUES('5','1','0','0','版权隐私','','版权隐私','','','','destoon','1310696468','2','0','0','about/copyright.html','','');

DROP TABLE IF EXISTS `destoon_weixin_bind`;
CREATE TABLE `destoon_weixin_bind` (
  `username` varchar(30) NOT NULL default '',
  `sid` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信扫码绑定';


DROP TABLE IF EXISTS `destoon_weixin_chat`;
CREATE TABLE `destoon_weixin_chat` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `editor` varchar(30) NOT NULL,
  `openid` varchar(255) NOT NULL default '',
  `type` varchar(20) NOT NULL,
  `event` tinyint(1) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `misc` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `openid` (`openid`),
  KEY `addtime` (`addtime`),
  KEY `event` (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信消息';


DROP TABLE IF EXISTS `destoon_weixin_user`;
CREATE TABLE `destoon_weixin_user` (
  `itemid` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `openid` varchar(255) NOT NULL default '',
  `nickname` varchar(255) NOT NULL default '',
  `sex` tinyint(1) unsigned NOT NULL default '0',
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `headimgurl` varchar(255) NOT NULL,
  `edittime` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `visittime` int(10) unsigned NOT NULL default '0',
  `credittime` int(10) unsigned NOT NULL default '0',
  `subscribe` tinyint(1) unsigned NOT NULL default '1',
  `push` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`itemid`),
  UNIQUE KEY `openid` (`openid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户';


