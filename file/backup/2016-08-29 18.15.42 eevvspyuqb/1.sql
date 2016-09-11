# Destoon V6.0 R20160615 http://www.destoon.com
# 2016-08-29 18:15:42
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

INSERT INTO `destoon_admin_online` VALUES('olcis6h6ac2ov0ea591q6lrrs5','admin','125.45.104.148','1','','1472465742');

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
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COMMENT='地区';

INSERT INTO `destoon_area` VALUES('1','北京','0','0','0','1','1');
INSERT INTO `destoon_area` VALUES('2','上海','0','0','0','2','2');
INSERT INTO `destoon_area` VALUES('3','天津','0','0','0','3','3');
INSERT INTO `destoon_area` VALUES('4','重庆','0','0','0','4','4');
INSERT INTO `destoon_area` VALUES('5','河北','0','0','1','5,35,36,37,38,39,40,41,42,43,44,45','5');
INSERT INTO `destoon_area` VALUES('6','山西','0','0','1','6,46,47,48,49,50,51,52,53,54,55,56','6');
INSERT INTO `destoon_area` VALUES('7','内蒙古','0','0','1','7,57,58,59,60,61,62,63,64,65,66,67,68','7');
INSERT INTO `destoon_area` VALUES('8','辽宁','0','0','1','8,69,70,71,72,73,74,75,76,77,78,79,80,81,82','8');
INSERT INTO `destoon_area` VALUES('9','吉林','0','0','1','9,83,84,85,86,87,88,89,90,91','9');
INSERT INTO `destoon_area` VALUES('10','黑龙江','0','0','1','10,92,93,94,95,96,97,98,99,100,101,102,103,104','10');
INSERT INTO `destoon_area` VALUES('11','江苏','0','0','1','11,105,106,107,108,109,110,111,112,113,114,115,116,117','11');
INSERT INTO `destoon_area` VALUES('12','浙江','0','0','1','12,118,119,120,121,122,123,124,125,126,127,128','12');
INSERT INTO `destoon_area` VALUES('13','安徽','0','0','1','13,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145','13');
INSERT INTO `destoon_area` VALUES('14','福建','0','0','1','14,146,147,148,149,150,151,152,153,154','14');
INSERT INTO `destoon_area` VALUES('15','江西','0','0','1','15,155,156,157,158,159,160,161,162,163,164,165','15');
INSERT INTO `destoon_area` VALUES('16','山东','0','0','1','16,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182','16');
INSERT INTO `destoon_area` VALUES('17','河南','0','0','1','17,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199','17');
INSERT INTO `destoon_area` VALUES('18','湖北','0','0','1','18,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216','18');
INSERT INTO `destoon_area` VALUES('19','湖南','0','0','1','19,217,218,219,220,221,222,223,224,225,226,227,228,229,230','19');
INSERT INTO `destoon_area` VALUES('20','广东','0','0','1','20,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251','20');
INSERT INTO `destoon_area` VALUES('21','广西','0','0','1','21,252,253,254,255,256,257,258,259,260,261,262,263,264,265','21');
INSERT INTO `destoon_area` VALUES('22','海南','0','0','1','22,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283','22');
INSERT INTO `destoon_area` VALUES('23','四川','0','0','1','23,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304','23');
INSERT INTO `destoon_area` VALUES('24','贵州','0','0','1','24,305,306,307,308,309,310,311,312,313','24');
INSERT INTO `destoon_area` VALUES('25','云南','0','0','1','25,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329','25');
INSERT INTO `destoon_area` VALUES('26','西藏','0','0','1','26,330,331,332,333,334,335,336','26');
INSERT INTO `destoon_area` VALUES('27','陕西','0','0','1','27,337,338,339,340,341,342,343,344,345,346','27');
INSERT INTO `destoon_area` VALUES('28','甘肃','0','0','1','28,347,348,349,350,351,352,353,354,355,356,357,358,359,360','28');
INSERT INTO `destoon_area` VALUES('29','青海','0','0','1','29,361,362,363,364,365,366,367,368','29');
INSERT INTO `destoon_area` VALUES('30','宁夏','0','0','1','30,369,370,371,372,373','30');
INSERT INTO `destoon_area` VALUES('31','新疆','0','0','1','31,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391','31');
INSERT INTO `destoon_area` VALUES('32','台湾','0','0','0','32','32');
INSERT INTO `destoon_area` VALUES('33','香港','0','0','0','33','33');
INSERT INTO `destoon_area` VALUES('34','澳门','0','0','0','34','34');
INSERT INTO `destoon_area` VALUES('35','石家庄市','5','0,5','0','35','35');
INSERT INTO `destoon_area` VALUES('36','唐山市','5','0,5','0','36','36');
INSERT INTO `destoon_area` VALUES('37','秦皇岛市','5','0,5','0','37','37');
INSERT INTO `destoon_area` VALUES('38','邯郸市','5','0,5','0','38','38');
INSERT INTO `destoon_area` VALUES('39','邢台市','5','0,5','0','39','39');
INSERT INTO `destoon_area` VALUES('40','保定市','5','0,5','0','40','40');
INSERT INTO `destoon_area` VALUES('41','张家口市','5','0,5','0','41','41');
INSERT INTO `destoon_area` VALUES('42','承德市','5','0,5','0','42','42');
INSERT INTO `destoon_area` VALUES('43','沧州市','5','0,5','0','43','43');
INSERT INTO `destoon_area` VALUES('44','廊坊市','5','0,5','0','44','44');
INSERT INTO `destoon_area` VALUES('45','衡水市','5','0,5','0','45','45');
INSERT INTO `destoon_area` VALUES('46','太原市','6','0,6','0','46','46');
INSERT INTO `destoon_area` VALUES('47','大同市','6','0,6','0','47','47');
INSERT INTO `destoon_area` VALUES('48','阳泉市','6','0,6','0','48','48');
INSERT INTO `destoon_area` VALUES('49','长治市','6','0,6','0','49','49');
INSERT INTO `destoon_area` VALUES('50','晋城市','6','0,6','0','50','50');
INSERT INTO `destoon_area` VALUES('51','朔州市','6','0,6','0','51','51');
INSERT INTO `destoon_area` VALUES('52','晋中市','6','0,6','0','52','52');
INSERT INTO `destoon_area` VALUES('53','运城市','6','0,6','0','53','53');
INSERT INTO `destoon_area` VALUES('54','忻州市','6','0,6','0','54','54');
INSERT INTO `destoon_area` VALUES('55','临汾市','6','0,6','0','55','55');
INSERT INTO `destoon_area` VALUES('56','吕梁市','6','0,6','0','56','56');
INSERT INTO `destoon_area` VALUES('57','呼和浩特市','7','0,7','0','57','57');
INSERT INTO `destoon_area` VALUES('58','包头市','7','0,7','0','58','58');
INSERT INTO `destoon_area` VALUES('59','乌海市','7','0,7','0','59','59');
INSERT INTO `destoon_area` VALUES('60','赤峰市','7','0,7','0','60','60');
INSERT INTO `destoon_area` VALUES('61','通辽市','7','0,7','0','61','61');
INSERT INTO `destoon_area` VALUES('62','鄂尔多斯市','7','0,7','0','62','62');
INSERT INTO `destoon_area` VALUES('63','呼伦贝尔市','7','0,7','0','63','63');
INSERT INTO `destoon_area` VALUES('64','巴彦淖尔市','7','0,7','0','64','64');
INSERT INTO `destoon_area` VALUES('65','乌兰察布市','7','0,7','0','65','65');
INSERT INTO `destoon_area` VALUES('66','兴安盟','7','0,7','0','66','66');
INSERT INTO `destoon_area` VALUES('67','锡林郭勒盟','7','0,7','0','67','67');
INSERT INTO `destoon_area` VALUES('68','阿拉善盟','7','0,7','0','68','68');
INSERT INTO `destoon_area` VALUES('69','沈阳市','8','0,8','0','69','69');
INSERT INTO `destoon_area` VALUES('70','大连市','8','0,8','0','70','70');
INSERT INTO `destoon_area` VALUES('71','鞍山市','8','0,8','0','71','71');
INSERT INTO `destoon_area` VALUES('72','抚顺市','8','0,8','0','72','72');
INSERT INTO `destoon_area` VALUES('73','本溪市','8','0,8','0','73','73');
INSERT INTO `destoon_area` VALUES('74','丹东市','8','0,8','0','74','74');
INSERT INTO `destoon_area` VALUES('75','锦州市','8','0,8','0','75','75');
INSERT INTO `destoon_area` VALUES('76','营口市','8','0,8','0','76','76');
INSERT INTO `destoon_area` VALUES('77','阜新市','8','0,8','0','77','77');
INSERT INTO `destoon_area` VALUES('78','辽阳市','8','0,8','0','78','78');
INSERT INTO `destoon_area` VALUES('79','盘锦市','8','0,8','0','79','79');
INSERT INTO `destoon_area` VALUES('80','铁岭市','8','0,8','0','80','80');
INSERT INTO `destoon_area` VALUES('81','朝阳市','8','0,8','0','81','81');
INSERT INTO `destoon_area` VALUES('82','葫芦岛市','8','0,8','0','82','82');
INSERT INTO `destoon_area` VALUES('83','长春市','9','0,9','0','83','83');
INSERT INTO `destoon_area` VALUES('84','吉林市','9','0,9','0','84','84');
INSERT INTO `destoon_area` VALUES('85','四平市','9','0,9','0','85','85');
INSERT INTO `destoon_area` VALUES('86','辽源市','9','0,9','0','86','86');
INSERT INTO `destoon_area` VALUES('87','通化市','9','0,9','0','87','87');
INSERT INTO `destoon_area` VALUES('88','白山市','9','0,9','0','88','88');
INSERT INTO `destoon_area` VALUES('89','松原市','9','0,9','0','89','89');
INSERT INTO `destoon_area` VALUES('90','白城市','9','0,9','0','90','90');
INSERT INTO `destoon_area` VALUES('91','延边朝鲜族自治州','9','0,9','0','91','91');
INSERT INTO `destoon_area` VALUES('92','哈尔滨市','10','0,10','0','92','92');
INSERT INTO `destoon_area` VALUES('93','齐齐哈尔市','10','0,10','0','93','93');
INSERT INTO `destoon_area` VALUES('94','鸡西市','10','0,10','0','94','94');
INSERT INTO `destoon_area` VALUES('95','鹤岗市','10','0,10','0','95','95');
INSERT INTO `destoon_area` VALUES('96','双鸭山市','10','0,10','0','96','96');
INSERT INTO `destoon_area` VALUES('97','大庆市','10','0,10','0','97','97');
INSERT INTO `destoon_area` VALUES('98','伊春市','10','0,10','0','98','98');
INSERT INTO `destoon_area` VALUES('99','佳木斯市','10','0,10','0','99','99');
INSERT INTO `destoon_area` VALUES('100','七台河市','10','0,10','0','100','100');
INSERT INTO `destoon_area` VALUES('101','牡丹江市','10','0,10','0','101','101');
INSERT INTO `destoon_area` VALUES('102','黑河市','10','0,10','0','102','102');
INSERT INTO `destoon_area` VALUES('103','绥化市','10','0,10','0','103','103');
INSERT INTO `destoon_area` VALUES('104','大兴安岭地区','10','0,10','0','104','104');
INSERT INTO `destoon_area` VALUES('105','南京市','11','0,11','0','105','105');
INSERT INTO `destoon_area` VALUES('106','无锡市','11','0,11','0','106','106');
INSERT INTO `destoon_area` VALUES('107','徐州市','11','0,11','0','107','107');
INSERT INTO `destoon_area` VALUES('108','常州市','11','0,11','0','108','108');
INSERT INTO `destoon_area` VALUES('109','苏州市','11','0,11','0','109','109');
INSERT INTO `destoon_area` VALUES('110','南通市','11','0,11','0','110','110');
INSERT INTO `destoon_area` VALUES('111','连云港市','11','0,11','0','111','111');
INSERT INTO `destoon_area` VALUES('112','淮安市','11','0,11','0','112','112');
INSERT INTO `destoon_area` VALUES('113','盐城市','11','0,11','0','113','113');
INSERT INTO `destoon_area` VALUES('114','扬州市','11','0,11','0','114','114');
INSERT INTO `destoon_area` VALUES('115','镇江市','11','0,11','0','115','115');
INSERT INTO `destoon_area` VALUES('116','泰州市','11','0,11','0','116','116');
INSERT INTO `destoon_area` VALUES('117','宿迁市','11','0,11','0','117','117');
INSERT INTO `destoon_area` VALUES('118','杭州市','12','0,12','0','118','118');
INSERT INTO `destoon_area` VALUES('119','宁波市','12','0,12','0','119','119');
INSERT INTO `destoon_area` VALUES('120','温州市','12','0,12','0','120','120');
INSERT INTO `destoon_area` VALUES('121','嘉兴市','12','0,12','0','121','121');
INSERT INTO `destoon_area` VALUES('122','湖州市','12','0,12','0','122','122');
INSERT INTO `destoon_area` VALUES('123','绍兴市','12','0,12','0','123','123');
INSERT INTO `destoon_area` VALUES('124','金华市','12','0,12','0','124','124');
INSERT INTO `destoon_area` VALUES('125','衢州市','12','0,12','0','125','125');
INSERT INTO `destoon_area` VALUES('126','舟山市','12','0,12','0','126','126');
INSERT INTO `destoon_area` VALUES('127','台州市','12','0,12','0','127','127');
INSERT INTO `destoon_area` VALUES('128','丽水市','12','0,12','0','128','128');
INSERT INTO `destoon_area` VALUES('129','合肥市','13','0,13','0','129','129');
INSERT INTO `destoon_area` VALUES('130','芜湖市','13','0,13','0','130','130');
INSERT INTO `destoon_area` VALUES('131','蚌埠市','13','0,13','0','131','131');
INSERT INTO `destoon_area` VALUES('132','淮南市','13','0,13','0','132','132');
INSERT INTO `destoon_area` VALUES('133','马鞍山市','13','0,13','0','133','133');
INSERT INTO `destoon_area` VALUES('134','淮北市','13','0,13','0','134','134');
INSERT INTO `destoon_area` VALUES('135','铜陵市','13','0,13','0','135','135');
INSERT INTO `destoon_area` VALUES('136','安庆市','13','0,13','0','136','136');
INSERT INTO `destoon_area` VALUES('137','黄山市','13','0,13','0','137','137');
INSERT INTO `destoon_area` VALUES('138','滁州市','13','0,13','0','138','138');
INSERT INTO `destoon_area` VALUES('139','阜阳市','13','0,13','0','139','139');
INSERT INTO `destoon_area` VALUES('140','宿州市','13','0,13','0','140','140');
INSERT INTO `destoon_area` VALUES('141','巢湖市','13','0,13','0','141','141');
INSERT INTO `destoon_area` VALUES('142','六安市','13','0,13','0','142','142');
INSERT INTO `destoon_area` VALUES('143','亳州市','13','0,13','0','143','143');
INSERT INTO `destoon_area` VALUES('144','池州市','13','0,13','0','144','144');
INSERT INTO `destoon_area` VALUES('145','宣城市','13','0,13','0','145','145');
INSERT INTO `destoon_area` VALUES('146','福州市','14','0,14','0','146','146');
INSERT INTO `destoon_area` VALUES('147','厦门市','14','0,14','0','147','147');
INSERT INTO `destoon_area` VALUES('148','莆田市','14','0,14','0','148','148');
INSERT INTO `destoon_area` VALUES('149','三明市','14','0,14','0','149','149');
INSERT INTO `destoon_area` VALUES('150','泉州市','14','0,14','0','150','150');
INSERT INTO `destoon_area` VALUES('151','漳州市','14','0,14','0','151','151');
INSERT INTO `destoon_area` VALUES('152','南平市','14','0,14','0','152','152');
INSERT INTO `destoon_area` VALUES('153','龙岩市','14','0,14','0','153','153');
INSERT INTO `destoon_area` VALUES('154','宁德市','14','0,14','0','154','154');
INSERT INTO `destoon_area` VALUES('155','南昌市','15','0,15','0','155','155');
INSERT INTO `destoon_area` VALUES('156','景德镇市','15','0,15','0','156','156');
INSERT INTO `destoon_area` VALUES('157','萍乡市','15','0,15','0','157','157');
INSERT INTO `destoon_area` VALUES('158','九江市','15','0,15','0','158','158');
INSERT INTO `destoon_area` VALUES('159','新余市','15','0,15','0','159','159');
INSERT INTO `destoon_area` VALUES('160','鹰潭市','15','0,15','0','160','160');
INSERT INTO `destoon_area` VALUES('161','赣州市','15','0,15','0','161','161');
INSERT INTO `destoon_area` VALUES('162','吉安市','15','0,15','0','162','162');
INSERT INTO `destoon_area` VALUES('163','宜春市','15','0,15','0','163','163');
INSERT INTO `destoon_area` VALUES('164','抚州市','15','0,15','0','164','164');
INSERT INTO `destoon_area` VALUES('165','上饶市','15','0,15','0','165','165');
INSERT INTO `destoon_area` VALUES('166','济南市','16','0,16','0','166','166');
INSERT INTO `destoon_area` VALUES('167','青岛市','16','0,16','0','167','167');
INSERT INTO `destoon_area` VALUES('168','淄博市','16','0,16','0','168','168');
INSERT INTO `destoon_area` VALUES('169','枣庄市','16','0,16','0','169','169');
INSERT INTO `destoon_area` VALUES('170','东营市','16','0,16','0','170','170');
INSERT INTO `destoon_area` VALUES('171','烟台市','16','0,16','0','171','171');
INSERT INTO `destoon_area` VALUES('172','潍坊市','16','0,16','0','172','172');
INSERT INTO `destoon_area` VALUES('173','济宁市','16','0,16','0','173','173');
INSERT INTO `destoon_area` VALUES('174','泰安市','16','0,16','0','174','174');
INSERT INTO `destoon_area` VALUES('175','威海市','16','0,16','0','175','175');
INSERT INTO `destoon_area` VALUES('176','日照市','16','0,16','0','176','176');
INSERT INTO `destoon_area` VALUES('177','莱芜市','16','0,16','0','177','177');
INSERT INTO `destoon_area` VALUES('178','临沂市','16','0,16','0','178','178');
INSERT INTO `destoon_area` VALUES('179','德州市','16','0,16','0','179','179');
INSERT INTO `destoon_area` VALUES('180','聊城市','16','0,16','0','180','180');
INSERT INTO `destoon_area` VALUES('181','滨州市','16','0,16','0','181','181');
INSERT INTO `destoon_area` VALUES('182','荷泽市','16','0,16','0','182','182');
INSERT INTO `destoon_area` VALUES('183','郑州市','17','0,17','0','183','183');
INSERT INTO `destoon_area` VALUES('184','开封市','17','0,17','0','184','184');
INSERT INTO `destoon_area` VALUES('185','洛阳市','17','0,17','0','185','185');
INSERT INTO `destoon_area` VALUES('186','平顶山市','17','0,17','0','186','186');
INSERT INTO `destoon_area` VALUES('187','安阳市','17','0,17','0','187','187');
INSERT INTO `destoon_area` VALUES('188','鹤壁市','17','0,17','0','188','188');
INSERT INTO `destoon_area` VALUES('189','新乡市','17','0,17','0','189','189');
INSERT INTO `destoon_area` VALUES('190','焦作市','17','0,17','0','190','190');
INSERT INTO `destoon_area` VALUES('191','濮阳市','17','0,17','0','191','191');
INSERT INTO `destoon_area` VALUES('192','许昌市','17','0,17','0','192','192');
INSERT INTO `destoon_area` VALUES('193','漯河市','17','0,17','0','193','193');
INSERT INTO `destoon_area` VALUES('194','三门峡市','17','0,17','0','194','194');
INSERT INTO `destoon_area` VALUES('195','南阳市','17','0,17','0','195','195');
INSERT INTO `destoon_area` VALUES('196','商丘市','17','0,17','0','196','196');
INSERT INTO `destoon_area` VALUES('197','信阳市','17','0,17','0','197','197');
INSERT INTO `destoon_area` VALUES('198','周口市','17','0,17','0','198','198');
INSERT INTO `destoon_area` VALUES('199','驻马店市','17','0,17','0','199','199');
INSERT INTO `destoon_area` VALUES('200','武汉市','18','0,18','0','200','200');
INSERT INTO `destoon_area` VALUES('201','黄石市','18','0,18','0','201','201');
INSERT INTO `destoon_area` VALUES('202','十堰市','18','0,18','0','202','202');
INSERT INTO `destoon_area` VALUES('203','宜昌市','18','0,18','0','203','203');
INSERT INTO `destoon_area` VALUES('204','襄樊市','18','0,18','0','204','204');
INSERT INTO `destoon_area` VALUES('205','鄂州市','18','0,18','0','205','205');
INSERT INTO `destoon_area` VALUES('206','荆门市','18','0,18','0','206','206');
INSERT INTO `destoon_area` VALUES('207','孝感市','18','0,18','0','207','207');
INSERT INTO `destoon_area` VALUES('208','荆州市','18','0,18','0','208','208');
INSERT INTO `destoon_area` VALUES('209','黄冈市','18','0,18','0','209','209');
INSERT INTO `destoon_area` VALUES('210','咸宁市','18','0,18','0','210','210');
INSERT INTO `destoon_area` VALUES('211','随州市','18','0,18','0','211','211');
INSERT INTO `destoon_area` VALUES('212','恩施土家族苗族自治州','18','0,18','0','212','212');
INSERT INTO `destoon_area` VALUES('213','仙桃市','18','0,18','0','213','213');
INSERT INTO `destoon_area` VALUES('214','潜江市','18','0,18','0','214','214');
INSERT INTO `destoon_area` VALUES('215','天门市','18','0,18','0','215','215');
INSERT INTO `destoon_area` VALUES('216','神农架林区','18','0,18','0','216','216');
INSERT INTO `destoon_area` VALUES('217','长沙市','19','0,19','0','217','217');
INSERT INTO `destoon_area` VALUES('218','株洲市','19','0,19','0','218','218');
INSERT INTO `destoon_area` VALUES('219','湘潭市','19','0,19','0','219','219');
INSERT INTO `destoon_area` VALUES('220','衡阳市','19','0,19','0','220','220');
INSERT INTO `destoon_area` VALUES('221','邵阳市','19','0,19','0','221','221');
INSERT INTO `destoon_area` VALUES('222','岳阳市','19','0,19','0','222','222');
INSERT INTO `destoon_area` VALUES('223','常德市','19','0,19','0','223','223');
INSERT INTO `destoon_area` VALUES('224','张家界市','19','0,19','0','224','224');
INSERT INTO `destoon_area` VALUES('225','益阳市','19','0,19','0','225','225');
INSERT INTO `destoon_area` VALUES('226','郴州市','19','0,19','0','226','226');
INSERT INTO `destoon_area` VALUES('227','永州市','19','0,19','0','227','227');
INSERT INTO `destoon_area` VALUES('228','怀化市','19','0,19','0','228','228');
INSERT INTO `destoon_area` VALUES('229','娄底市','19','0,19','0','229','229');
INSERT INTO `destoon_area` VALUES('230','湘西土家族苗族自治州','19','0,19','0','230','230');
INSERT INTO `destoon_area` VALUES('231','广州市','20','0,20','0','231','231');
INSERT INTO `destoon_area` VALUES('232','韶关市','20','0,20','0','232','232');
INSERT INTO `destoon_area` VALUES('233','深圳市','20','0,20','0','233','233');
INSERT INTO `destoon_area` VALUES('234','珠海市','20','0,20','0','234','234');
INSERT INTO `destoon_area` VALUES('235','汕头市','20','0,20','0','235','235');
INSERT INTO `destoon_area` VALUES('236','佛山市','20','0,20','0','236','236');
INSERT INTO `destoon_area` VALUES('237','江门市','20','0,20','0','237','237');
INSERT INTO `destoon_area` VALUES('238','湛江市','20','0,20','0','238','238');
INSERT INTO `destoon_area` VALUES('239','茂名市','20','0,20','0','239','239');
INSERT INTO `destoon_area` VALUES('240','肇庆市','20','0,20','0','240','240');
INSERT INTO `destoon_area` VALUES('241','惠州市','20','0,20','0','241','241');
INSERT INTO `destoon_area` VALUES('242','梅州市','20','0,20','0','242','242');
INSERT INTO `destoon_area` VALUES('243','汕尾市','20','0,20','0','243','243');
INSERT INTO `destoon_area` VALUES('244','河源市','20','0,20','0','244','244');
INSERT INTO `destoon_area` VALUES('245','阳江市','20','0,20','0','245','245');
INSERT INTO `destoon_area` VALUES('246','清远市','20','0,20','0','246','246');
INSERT INTO `destoon_area` VALUES('247','东莞市','20','0,20','0','247','247');
INSERT INTO `destoon_area` VALUES('248','中山市','20','0,20','0','248','248');
INSERT INTO `destoon_area` VALUES('249','潮州市','20','0,20','0','249','249');
INSERT INTO `destoon_area` VALUES('250','揭阳市','20','0,20','0','250','250');
INSERT INTO `destoon_area` VALUES('251','云浮市','20','0,20','0','251','251');
INSERT INTO `destoon_area` VALUES('252','南宁市','21','0,21','0','252','252');
INSERT INTO `destoon_area` VALUES('253','柳州市','21','0,21','0','253','253');
INSERT INTO `destoon_area` VALUES('254','桂林市','21','0,21','0','254','254');
INSERT INTO `destoon_area` VALUES('255','梧州市','21','0,21','0','255','255');
INSERT INTO `destoon_area` VALUES('256','北海市','21','0,21','0','256','256');
INSERT INTO `destoon_area` VALUES('257','防城港市','21','0,21','0','257','257');
INSERT INTO `destoon_area` VALUES('258','钦州市','21','0,21','0','258','258');
INSERT INTO `destoon_area` VALUES('259','贵港市','21','0,21','0','259','259');
INSERT INTO `destoon_area` VALUES('260','玉林市','21','0,21','0','260','260');
INSERT INTO `destoon_area` VALUES('261','百色市','21','0,21','0','261','261');
INSERT INTO `destoon_area` VALUES('262','贺州市','21','0,21','0','262','262');
INSERT INTO `destoon_area` VALUES('263','河池市','21','0,21','0','263','263');
INSERT INTO `destoon_area` VALUES('264','来宾市','21','0,21','0','264','264');
INSERT INTO `destoon_area` VALUES('265','崇左市','21','0,21','0','265','265');
INSERT INTO `destoon_area` VALUES('266','海口市','22','0,22','0','266','266');
INSERT INTO `destoon_area` VALUES('267','三亚市','22','0,22','0','267','267');
INSERT INTO `destoon_area` VALUES('268','五指山市','22','0,22','0','268','268');
INSERT INTO `destoon_area` VALUES('269','琼海市','22','0,22','0','269','269');
INSERT INTO `destoon_area` VALUES('270','儋州市','22','0,22','0','270','270');
INSERT INTO `destoon_area` VALUES('271','文昌市','22','0,22','0','271','271');
INSERT INTO `destoon_area` VALUES('272','万宁市','22','0,22','0','272','272');
INSERT INTO `destoon_area` VALUES('273','东方市','22','0,22','0','273','273');
INSERT INTO `destoon_area` VALUES('274','定安县','22','0,22','0','274','274');
INSERT INTO `destoon_area` VALUES('275','屯昌县','22','0,22','0','275','275');
INSERT INTO `destoon_area` VALUES('276','澄迈县','22','0,22','0','276','276');
INSERT INTO `destoon_area` VALUES('277','临高县','22','0,22','0','277','277');
INSERT INTO `destoon_area` VALUES('278','白沙黎族自治县','22','0,22','0','278','278');
INSERT INTO `destoon_area` VALUES('279','昌江黎族自治县','22','0,22','0','279','279');
INSERT INTO `destoon_area` VALUES('280','乐东黎族自治县','22','0,22','0','280','280');
INSERT INTO `destoon_area` VALUES('281','陵水黎族自治县','22','0,22','0','281','281');
INSERT INTO `destoon_area` VALUES('282','保亭黎族苗族自治县','22','0,22','0','282','282');
INSERT INTO `destoon_area` VALUES('283','琼中黎族苗族自治县','22','0,22','0','283','283');
INSERT INTO `destoon_area` VALUES('284','成都市','23','0,23','0','284','284');
INSERT INTO `destoon_area` VALUES('285','自贡市','23','0,23','0','285','285');
INSERT INTO `destoon_area` VALUES('286','攀枝花市','23','0,23','0','286','286');
INSERT INTO `destoon_area` VALUES('287','泸州市','23','0,23','0','287','287');
INSERT INTO `destoon_area` VALUES('288','德阳市','23','0,23','0','288','288');
INSERT INTO `destoon_area` VALUES('289','绵阳市','23','0,23','0','289','289');
INSERT INTO `destoon_area` VALUES('290','广元市','23','0,23','0','290','290');
INSERT INTO `destoon_area` VALUES('291','遂宁市','23','0,23','0','291','291');
INSERT INTO `destoon_area` VALUES('292','内江市','23','0,23','0','292','292');
INSERT INTO `destoon_area` VALUES('293','乐山市','23','0,23','0','293','293');
INSERT INTO `destoon_area` VALUES('294','南充市','23','0,23','0','294','294');
INSERT INTO `destoon_area` VALUES('295','眉山市','23','0,23','0','295','295');
INSERT INTO `destoon_area` VALUES('296','宜宾市','23','0,23','0','296','296');
INSERT INTO `destoon_area` VALUES('297','广安市','23','0,23','0','297','297');
INSERT INTO `destoon_area` VALUES('298','达州市','23','0,23','0','298','298');
INSERT INTO `destoon_area` VALUES('299','雅安市','23','0,23','0','299','299');
INSERT INTO `destoon_area` VALUES('300','巴中市','23','0,23','0','300','300');
INSERT INTO `destoon_area` VALUES('301','资阳市','23','0,23','0','301','301');
INSERT INTO `destoon_area` VALUES('302','阿坝藏族羌族自治州','23','0,23','0','302','302');
INSERT INTO `destoon_area` VALUES('303','甘孜藏族自治州','23','0,23','0','303','303');
INSERT INTO `destoon_area` VALUES('304','凉山彝族自治州','23','0,23','0','304','304');
INSERT INTO `destoon_area` VALUES('305','贵阳市','24','0,24','0','305','305');
INSERT INTO `destoon_area` VALUES('306','六盘水市','24','0,24','0','306','306');
INSERT INTO `destoon_area` VALUES('307','遵义市','24','0,24','0','307','307');
INSERT INTO `destoon_area` VALUES('308','安顺市','24','0,24','0','308','308');
INSERT INTO `destoon_area` VALUES('309','铜仁地区','24','0,24','0','309','309');
INSERT INTO `destoon_area` VALUES('310','黔西南布依族苗族自治州','24','0,24','0','310','310');
INSERT INTO `destoon_area` VALUES('311','毕节地区','24','0,24','0','311','311');
INSERT INTO `destoon_area` VALUES('312','黔东南苗族侗族自治州','24','0,24','0','312','312');
INSERT INTO `destoon_area` VALUES('313','黔南布依族苗族自治州','24','0,24','0','313','313');
INSERT INTO `destoon_area` VALUES('314','昆明市','25','0,25','0','314','314');
INSERT INTO `destoon_area` VALUES('315','曲靖市','25','0,25','0','315','315');
INSERT INTO `destoon_area` VALUES('316','玉溪市','25','0,25','0','316','316');
INSERT INTO `destoon_area` VALUES('317','保山市','25','0,25','0','317','317');
INSERT INTO `destoon_area` VALUES('318','昭通市','25','0,25','0','318','318');
INSERT INTO `destoon_area` VALUES('319','丽江市','25','0,25','0','319','319');
INSERT INTO `destoon_area` VALUES('320','思茅市','25','0,25','0','320','320');
INSERT INTO `destoon_area` VALUES('321','临沧市','25','0,25','0','321','321');
INSERT INTO `destoon_area` VALUES('322','楚雄彝族自治州','25','0,25','0','322','322');
INSERT INTO `destoon_area` VALUES('323','红河哈尼族彝族自治州','25','0,25','0','323','323');
INSERT INTO `destoon_area` VALUES('324','文山壮族苗族自治州','25','0,25','0','324','324');
INSERT INTO `destoon_area` VALUES('325','西双版纳傣族自治州','25','0,25','0','325','325');
INSERT INTO `destoon_area` VALUES('326','大理白族自治州','25','0,25','0','326','326');
INSERT INTO `destoon_area` VALUES('327','德宏傣族景颇族自治州','25','0,25','0','327','327');
INSERT INTO `destoon_area` VALUES('328','怒江傈僳族自治州','25','0,25','0','328','328');
INSERT INTO `destoon_area` VALUES('329','迪庆藏族自治州','25','0,25','0','329','329');
INSERT INTO `destoon_area` VALUES('330','拉萨市','26','0,26','0','330','330');
INSERT INTO `destoon_area` VALUES('331','昌都地区','26','0,26','0','331','331');
INSERT INTO `destoon_area` VALUES('332','山南地区','26','0,26','0','332','332');
INSERT INTO `destoon_area` VALUES('333','日喀则地区','26','0,26','0','333','333');
INSERT INTO `destoon_area` VALUES('334','那曲地区','26','0,26','0','334','334');
INSERT INTO `destoon_area` VALUES('335','阿里地区','26','0,26','0','335','335');
INSERT INTO `destoon_area` VALUES('336','林芝地区','26','0,26','0','336','336');
INSERT INTO `destoon_area` VALUES('337','西安市','27','0,27','0','337','337');
INSERT INTO `destoon_area` VALUES('338','铜川市','27','0,27','0','338','338');
INSERT INTO `destoon_area` VALUES('339','宝鸡市','27','0,27','0','339','339');
INSERT INTO `destoon_area` VALUES('340','咸阳市','27','0,27','0','340','340');
INSERT INTO `destoon_area` VALUES('341','渭南市','27','0,27','0','341','341');
INSERT INTO `destoon_area` VALUES('342','延安市','27','0,27','0','342','342');
INSERT INTO `destoon_area` VALUES('343','汉中市','27','0,27','0','343','343');
INSERT INTO `destoon_area` VALUES('344','榆林市','27','0,27','0','344','344');
INSERT INTO `destoon_area` VALUES('345','安康市','27','0,27','0','345','345');
INSERT INTO `destoon_area` VALUES('346','商洛市','27','0,27','0','346','346');
INSERT INTO `destoon_area` VALUES('347','兰州市','28','0,28','0','347','347');
INSERT INTO `destoon_area` VALUES('348','嘉峪关市','28','0,28','0','348','348');
INSERT INTO `destoon_area` VALUES('349','金昌市','28','0,28','0','349','349');
INSERT INTO `destoon_area` VALUES('350','白银市','28','0,28','0','350','350');
INSERT INTO `destoon_area` VALUES('351','天水市','28','0,28','0','351','351');
INSERT INTO `destoon_area` VALUES('352','武威市','28','0,28','0','352','352');
INSERT INTO `destoon_area` VALUES('353','张掖市','28','0,28','0','353','353');
INSERT INTO `destoon_area` VALUES('354','平凉市','28','0,28','0','354','354');
INSERT INTO `destoon_area` VALUES('355','酒泉市','28','0,28','0','355','355');
INSERT INTO `destoon_area` VALUES('356','庆阳市','28','0,28','0','356','356');
INSERT INTO `destoon_area` VALUES('357','定西市','28','0,28','0','357','357');
INSERT INTO `destoon_area` VALUES('358','陇南市','28','0,28','0','358','358');
INSERT INTO `destoon_area` VALUES('359','临夏回族自治州','28','0,28','0','359','359');
INSERT INTO `destoon_area` VALUES('360','甘南藏族自治州','28','0,28','0','360','360');
INSERT INTO `destoon_area` VALUES('361','西宁市','29','0,29','0','361','361');
INSERT INTO `destoon_area` VALUES('362','海东地区','29','0,29','0','362','362');
INSERT INTO `destoon_area` VALUES('363','海北藏族自治州','29','0,29','0','363','363');
INSERT INTO `destoon_area` VALUES('364','黄南藏族自治州','29','0,29','0','364','364');
INSERT INTO `destoon_area` VALUES('365','海南藏族自治州','29','0,29','0','365','365');
INSERT INTO `destoon_area` VALUES('366','果洛藏族自治州','29','0,29','0','366','366');
INSERT INTO `destoon_area` VALUES('367','玉树藏族自治州','29','0,29','0','367','367');
INSERT INTO `destoon_area` VALUES('368','海西蒙古族藏族自治州','29','0,29','0','368','368');
INSERT INTO `destoon_area` VALUES('369','银川市','30','0,30','0','369','369');
INSERT INTO `destoon_area` VALUES('370','石嘴山市','30','0,30','0','370','370');
INSERT INTO `destoon_area` VALUES('371','吴忠市','30','0,30','0','371','371');
INSERT INTO `destoon_area` VALUES('372','固原市','30','0,30','0','372','372');
INSERT INTO `destoon_area` VALUES('373','中卫市','30','0,30','0','373','373');
INSERT INTO `destoon_area` VALUES('374','乌鲁木齐市','31','0,31','0','374','374');
INSERT INTO `destoon_area` VALUES('375','克拉玛依市','31','0,31','0','375','375');
INSERT INTO `destoon_area` VALUES('376','吐鲁番地区','31','0,31','0','376','376');
INSERT INTO `destoon_area` VALUES('377','哈密地区','31','0,31','0','377','377');
INSERT INTO `destoon_area` VALUES('378','昌吉回族自治州','31','0,31','0','378','378');
INSERT INTO `destoon_area` VALUES('379','博尔塔拉蒙古自治州','31','0,31','0','379','379');
INSERT INTO `destoon_area` VALUES('380','巴音郭楞蒙古自治州','31','0,31','0','380','380');
INSERT INTO `destoon_area` VALUES('381','阿克苏地区','31','0,31','0','381','381');
INSERT INTO `destoon_area` VALUES('382','克孜勒苏柯尔克孜自治州','31','0,31','0','382','382');
INSERT INTO `destoon_area` VALUES('383','喀什地区','31','0,31','0','383','383');
INSERT INTO `destoon_area` VALUES('384','和田地区','31','0,31','0','384','384');
INSERT INTO `destoon_area` VALUES('385','伊犁哈萨克自治州','31','0,31','0','385','385');
INSERT INTO `destoon_area` VALUES('386','塔城地区','31','0,31','0','386','386');
INSERT INTO `destoon_area` VALUES('387','阿勒泰地区','31','0,31','0','387','387');
INSERT INTO `destoon_area` VALUES('388','石河子市','31','0,31','0','388','388');
INSERT INTO `destoon_area` VALUES('389','阿拉尔市','31','0,31','0','389','389');
INSERT INTO `destoon_area` VALUES('390','图木舒克市','31','0,31','0','390','390');
INSERT INTO `destoon_area` VALUES('391','五家渠市','31','0,31','0','391','391');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='资讯';

INSERT INTO `destoon_article_21` VALUES('1','203','0','0','给丈母娘老丈人送啥礼物?','','0','','年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自','','给丈母娘老丈人送啥礼物?,百科资料','','','','','','10','http://127.0.0.1/destoon/file/upload/201607/23/140142291.jpg','admin','1469253118','admin','1469253704','127.0.0.1','','3','0','show.php?itemid=1','','');
INSERT INTO `destoon_article_21` VALUES('2','203','0','3','年末了，很多人都要带着自己的另一半','','0','','年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自','','年末了，很多人都要带着自己的另一半,百科资料','','','','','','35','http://127.0.0.1/destoon/file/upload/201607/23/140127211.jpg','admin','1469253450','admin','1469337590','127.0.0.1','','3','0','show.php?itemid=2','','');
INSERT INTO `destoon_article_21` VALUES('3','209','0','0','晒单信息测试','','0','','晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试','','晒单信息测试,晒单资讯','','','','','','2','','admin','1470020778','admin','1470020810','36.46.199.53','','3','0','show.php?itemid=3','','');
INSERT INTO `destoon_article_21` VALUES('4','210','0','0','出售信息测试','','0','','出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试','','出售信息测试,出售资讯','','','','','','2','','admin','1470020810','admin','1470020832','36.46.199.53','','3','0','show.php?itemid=4','','');
INSERT INTO `destoon_article_21` VALUES('5','213','0','0','招标信息测试','','0','','招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试','','招标信息测试,招标资讯','','','','','','6','','admin','1470020833','admin','1470020855','36.46.199.53','','3','0','show.php?itemid=5','','');

DROP TABLE IF EXISTS `destoon_article_data_21`;
CREATE TABLE `destoon_article_data_21` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资讯内容';

INSERT INTO `destoon_article_data_21` VALUES('1','&nbsp;<span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一</span>');
INSERT INTO `destoon_article_data_21` VALUES('2','&nbsp;aaaa<span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span><span style=\"color: rgb(75, 75, 75); font-family: 微软雅黑; font-size: 12px; line-height: 26px;\">年末了，很多人都要带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另一半带着自己的另</span>');
INSERT INTO `destoon_article_data_21` VALUES('3','&nbsp;晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试晒单信息测试');
INSERT INTO `destoon_article_data_21` VALUES('4','&nbsp;出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试出售信息测试');
INSERT INTO `destoon_article_data_21` VALUES('5','&nbsp;招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试招标信息测试');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='求购';

INSERT INTO `destoon_buy_6` VALUES('1','2','0','1','0','房屋出租','','0','房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租房屋出租','房屋类型','大小','','简约','3室两厅','','1','500/月','简装','0','','房屋出租,出租,求购默认分类','','16','http://127.0.0.1/destoon/file/upload/201607/24/164044451.jpg.thumb.jpg','http://127.0.0.1/destoon/file/upload/201607/24/164047661.jpg.thumb.jpg','http://127.0.0.1/destoon/file/upload/201607/24/164051361.jpg.thumb.jpg','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1469349726','2016-07-24','1469349726','2016-07-24','127.0.0.1','','3','show.php?itemid=1','','');
INSERT INTO `destoon_buy_6` VALUES('2','2','1','1','0','床垫','','0','床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫床垫','大小','','','180*220','','','','','','0','','床垫,求购,求购默认分类','','5','http://127.0.0.1/destoon/file/upload/201607/24/164619691.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','1470671999','admin','1469350011','2016-07-24','1469350011','2016-07-24','127.0.0.1','','4','show.php?itemid=2','','');
INSERT INTO `destoon_buy_6` VALUES('3','2','2','1','0','管理咨询服务','','0','管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务管理咨询服务','','','','','','','','','','0','','管理咨询服务,招商,求购默认分类','','9','http://127.0.0.1/destoon/file/upload/201607/24/164724601.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1469350054','2016-07-24','1469350054','2016-07-24','127.0.0.1','','3','show.php?itemid=3','','');
INSERT INTO `destoon_buy_6` VALUES('4','2','0','1','0','出租测试','','0','出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试出租测试','','','','','','','','','','0','','出租测试,出租,求购默认分类','','12','http://127.0.0.1/destoon/file/upload/201607/24/172901261.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1469352543','2016-07-24','1469351985','2016-07-24','127.0.0.1','','3','show.php?itemid=4','','');
INSERT INTO `destoon_buy_6` VALUES('5','2','1','337','0','外展求购','','0','我这块继续一个高薪永辉超市的外展场地 面积无所谓 必须要在出入口','','','','','','','','','','0','','外展求购,求购,求购默认分类','','1','http://www.adbangbang.com/file/upload/201608/02/171942128.jpg.thumb.jpg','','','396578810','5','姬振兴','0','0','姬振兴','02987871456','13379185320','陕西省西安市碑林区黄雁村十字华豪丽晶','','','','','','0','admin','1472015195','2016-08-24','1470129605','2016-08-02','113.139.82.86','','3','show.php?itemid=5','','');
INSERT INTO `destoon_buy_6` VALUES('6','2','1','337','0','户外广告媒体','','0','是对方把白娘子的烦恼烦恼哈哈对方答复哈招行发货哈就知道更好爱大家爱打哈地方回复哈地方很难找地方啊啊哈的国际化的国家打工大','','','','','','','','','','0','','户外广告媒体,求购,求购默认分类','','19','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1471850391','2016-08-22','1471850391','2016-08-22','113.138.23.221','','3','show.php?itemid=6','','');
INSERT INTO `destoon_buy_6` VALUES('7','2','0','337','0','偶偶','','0','004.jpg大大大德萨','岩土体','65464','654564','654654','654654','654645','6546','6546','65464','0','','偶偶,求租,求购默认分类','','3','http://www.adbangbang.com/file/upload/201608/22/1622323612.jpg.thumb.jpg','','','zhaoping','5','小李','0','0','小李','1234567','15094016821','黄雁村十字110号','','','','','','1472227199','admin','1472015200','2016-08-24','1471854720','2016-08-22','113.138.23.221','','4','show.php?itemid=7','','');
INSERT INTO `destoon_buy_6` VALUES('8','2','0','337','0','孩子的更好这地方还占地方和F呵呵','','0','很多孩子的或者多个孩子的招行负担和你在的孩子','','','','','','','','','','0','','孩子的更好这地方还占地方和F呵呵,求租,求购默认分类','','3','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012730','2016-08-24','1472012730','2016-08-24','113.138.20.60','','3','show.php?itemid=8','','');
INSERT INTO `destoon_buy_6` VALUES('9','2','0','337','0','这地方能找到给姐妹们','','0','发挥政府会让孩子vSF还能孩子能和你说','','','','','','','','','','0','','这地方能找到给姐妹们,求租,求购默认分类','','5','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012767','2016-08-24','1472012767','2016-08-24','113.138.20.60','','3','show.php?itemid=9','','');
INSERT INTO `destoon_buy_6` VALUES('10','2','0','337','0','外展求购','','0','王企鹅请问请问齶人人认为人放弃我而未确认去玩儿武器二','','','','','','','','','','0','','外展求购,求租,求购默认分类','','11','http://www.adbangbang.com/file/upload/201608/24/122510808.jpg.thumb.jpg','','','396578810','5','姬振兴','0','0','姬振兴','02987871456','13379185320','陕西省西安市碑林区黄雁村十字华豪丽晶','','','','','','0','admin','1472015195','2016-08-24','1472012787','2016-08-24','113.138.20.60','','3','show.php?itemid=10','','');
INSERT INTO `destoon_buy_6` VALUES('11','2','0','337','0','饭否复活弟弟的决定减肥拒绝','','0','dxccccc','','','','','','','','','','0','','饭否复活弟弟的决定减肥拒绝,求租,求购默认分类','','0','http://www.adbangbang.com/file/upload/201608/29/143117978.jpg.thumb.jpg','','','396578810','5','姬振兴','0','0','姬振兴','02987871456','13379185320','陕西省西安市碑林区黄雁村十字华豪丽晶','','','','','','1472572799','396578810','1472452366','2016-08-29','1472452366','2016-08-29','113.138.16.219','','2','show.php?itemid=11','','');

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
INSERT INTO `destoon_buy_data_6` VALUES('5','我这块继续一个高薪永辉超市的外展场地 面积无所谓 必须要在出入口');
INSERT INTO `destoon_buy_data_6` VALUES('6','&nbsp;是对方把白娘子的烦恼烦恼哈哈对方答复哈招行发货哈就知道更好爱大家爱打哈地方回复哈地方很难找地方啊啊哈的国际化的国家打工大会在搞活动爱的哈哈哈的孩子的好的好的是等哈哈的爱好的都发话的哈');
INSERT INTO `destoon_buy_data_6` VALUES('7','<div style=\"text-align: center;\">&nbsp;&nbsp;<img src=\"http://www.adbangbang.com/member/editor/fckeditor/editor/images/ext/img.gif\" width=\"16\" height=\"16\" border=\"0\" alt=\"\" align=\"absmiddle\" /> <a href=\"http://www.adbangbang.com/api/attach.php?url=http://www.adbangbang.com/file/upload/201608/22/1628422912.jpg&amp;name=004.jpg\" class=\"attach\" rel=\"nofollow\">004.jpg</a></div>\r\n大大大德萨');
INSERT INTO `destoon_buy_data_6` VALUES('8','&nbsp;很多孩子的或者多个孩子的招行负担和你在的孩子');
INSERT INTO `destoon_buy_data_6` VALUES('9','&nbsp;发挥政府会让孩子vSF还能孩子能和你说&nbsp;');
INSERT INTO `destoon_buy_data_6` VALUES('10','&nbsp;王企鹅请问请问齶人人认为人放弃我而未确认去玩儿武器二');
INSERT INTO `destoon_buy_data_6` VALUES('11','&nbsp;dxccccc<br />\r\n<br type=\"_moz\" />');

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
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 COMMENT='栏目分类';

INSERT INTO `destoon_category` VALUES('1','5','供应默认分类','','1','list.php?catid=1','','1','0','0','0','0','0','1','1','','','','','','','','');
INSERT INTO `destoon_category` VALUES('2','6','求购默认分类','','1','list.php?catid=2','','1','9','0','0','0','0','','1','','','','','','','','');
INSERT INTO `destoon_category` VALUES('3','4','广告媒体','','GUANGGAO','list.php?catid=3','g','1','2','0','0','0','1','3,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191','1','','','','','','','','');
INSERT INTO `destoon_category` VALUES('4','18','原创','','4','list.php?catid=4','','1','3','0','0','0','0','4','4','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('5','18','视频','','5','list.php?catid=5','','1','0','0','0','0','0','5','5','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('6','18','图片','','6','list.php?catid=6','','1','0','0','0','0','0','6','6','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('7','18','音乐','','7','list.php?catid=7','','1','0','0','0','0','0','7','7','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('8','18','文章','','8','list.php?catid=8','','1','0','0','0','0','0','8','8','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('110','4','创意设计','','chuangyisheji','list.php?catid=110','c','1','0','0','0','0','1','110,192,193,194','110','','','','','','','','');
INSERT INTO `destoon_category` VALUES('111','4','活动策划','','huodongcehua','list.php?catid=111','h','1','0','0','0','0','1','111,195,196,197,198,199,200,201,202','111','','','','','','','','');
INSERT INTO `destoon_category` VALUES('112','4','电视/广播','','112','list.php?catid=112','d','1','1','0','3','0,3','1','112,122,123,124,125,126,127,128,129','112','','','','','','','','');
INSERT INTO `destoon_category` VALUES('113','4','电梯广告','','113','list.php?catid=113','d','1','1','0','3','0,3','1','113,130,131,132,133,134,135','113','','','','','','','','');
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
INSERT INTO `destoon_category` VALUES('124','4','公交车电视','','124','list.php?catid=124','g','1','1','0','112','0,3,112','0','124','124','','','','','','','','');
INSERT INTO `destoon_category` VALUES('125','4','地铁电视','','125','list.php?catid=125','d','1','0','0','112','0,3,112','0','125','125','','','','','','','','');
INSERT INTO `destoon_category` VALUES('126','4','高铁电视','','126','list.php?catid=126','g','1','0','0','112','0,3,112','0','126','126','','','','','','','','');
INSERT INTO `destoon_category` VALUES('127','4','大巴电视','','127','list.php?catid=127','d','1','0','0','112','0,3,112','0','127','127','','','','','','','','');
INSERT INTO `destoon_category` VALUES('128','4','网络电视','','128','list.php?catid=128','w','1','0','0','112','0,3,112','0','128','128','','','','','','','','');
INSERT INTO `destoon_category` VALUES('129','4','交通广播','','129','list.php?catid=129','j','1','0','0','112','0,3,112','0','129','129','','','','','','','','');
INSERT INTO `destoon_category` VALUES('130','4','看板','','130','list.php?catid=130','k','1','0','0','113','0,3,113','0','130','130','','','','','','','','');
INSERT INTO `destoon_category` VALUES('131','4','楼宇电视','','131','list.php?catid=131','l','1','1','0','113','0,3,113','0','131','131','','','','','','','','');
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
INSERT INTO `destoon_category` VALUES('204','22','分类招商','','204','list.php?catid=204','','1','6','0','0','0','0','204','204','','','','','','','','');
INSERT INTO `destoon_category` VALUES('205','22','分类一招商','','205','list.php?catid=205','','1','0','0','0','0','0','205','205','','','','','','','','');
INSERT INTO `destoon_category` VALUES('206','9','国际招标','','206','list.php?catid=206','','1','1','0','0','0','0','206','206','','','','','','','','');
INSERT INTO `destoon_category` VALUES('207','9','政府采购','','207','list.php?catid=207','','1','0','0','0','0','0','207','207','','','','','','','','');
INSERT INTO `destoon_category` VALUES('208','9','工程招标','','208','list.php?catid=208','','1','0','0','0','0','0','208','208','','','','','','','','');
INSERT INTO `destoon_category` VALUES('209','21','晒单资讯','','209','list.php?catid=209','','1','1','0','0','0','0','209','209','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('210','21','出售资讯','','210','list.php?catid=210','','1','1','0','0','0','0','210','210','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('211','27','中标信息','','zhongbiaoxinxi','list.php?catid=211','z','1','0','0','0','0','0','211','211','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('212','26','国际招标','','gjzb','list.php?catid=212','z','1','0','0','0','0','0','212','212','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('214','26','政府采购','','zfcg','list.php?catid=214','','1','1','0','0','0','0','214','214','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('213','21','招标资讯','','zbzx','list.php?catid=213','z','1','0','0','0','0','0','213','213','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('215','26','工程招标','','gczb','list.php?catid=215','','1','0','0','0','0','0','215','215','','','','','','3,5,6,7','3,5,6,7','3,5,6,7');
INSERT INTO `destoon_category` VALUES('216','5','广告媒体','','GUANGGAO','list.php?catid=216','g','1','13','0','0','0','1','216,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298','1','','','','','','','','');
INSERT INTO `destoon_category` VALUES('217','5','创意设计','','chuangyisheji','list.php?catid=217','c','1','2','0','0','0','1','217,299,300,301','110','','','','','','','','');
INSERT INTO `destoon_category` VALUES('218','5','活动策划','','huodongcehua','list.php?catid=218','h','1','1','0','0','0','1','218,302,303,304,305,306,307,308,309','111','','','','','','','','');
INSERT INTO `destoon_category` VALUES('219','5','电视/广播','','112','list.php?catid=219','d','1','0','0','216','0,216','1','219,229,230,231,232,233,234,235,236','112','','','','','','','','');
INSERT INTO `destoon_category` VALUES('220','5','电梯广告','','113','list.php?catid=220','d','1','0','0','216','0,216','1','220,237,238,239,240,241,242','113','','','','','','','','');
INSERT INTO `destoon_category` VALUES('221','5','报刊广告','','114','list.php?catid=221','b','1','0','0','216','0,216','1','221,243,244','114','','','','','','','','');
INSERT INTO `destoon_category` VALUES('222','5','公交广告','','115','list.php?catid=222','g','1','0','0','216','0,216','1','222,245,246,247,248,249,250','115','','','','','','','','');
INSERT INTO `destoon_category` VALUES('223','5','户外广告','','116','list.php?catid=223','h','1','0','0','216','0,216','1','223,251,252,253,254,255,256,257,258,259','116','','','','','','','','');
INSERT INTO `destoon_category` VALUES('224','5','机场广告','','117','list.php?catid=224','j','1','0','0','216','0,216','1','224,260,261,262,263,264,265,266,267,268,269,270','117','','','','','','','','');
INSERT INTO `destoon_category` VALUES('225','5','地铁广告','','118','list.php?catid=225','d','1','0','0','216','0,216','1','225,271,272,273,274,275,276,277,278,279,280,281','118','','','','','','','','');
INSERT INTO `destoon_category` VALUES('226','5','社区广告','','119','list.php?catid=226','s','1','0','0','216','0,216','1','226,282,283,284,285,286,287,288','119','','','','','','','','');
INSERT INTO `destoon_category` VALUES('227','5','高铁/火车站','','120','list.php?catid=227','g','1','0','0','216','0,216','1','227,289,290,291,292','120','','','','','','','','');
INSERT INTO `destoon_category` VALUES('228','5','其他广告','','121','list.php?catid=228','q','1','0','0','216','0,216','1','228,293,294,295,296,297,298','121','','','','','','','','');
INSERT INTO `destoon_category` VALUES('229','5','电视台','','122','list.php?catid=229','d','1','0','0','219','0,216,219','0','229','122','','','','','','','','');
INSERT INTO `destoon_category` VALUES('230','5','楼宇电视','','123','list.php?catid=230','l','1','0','0','219','0,216,219','0','230','123','','','','','','','','');
INSERT INTO `destoon_category` VALUES('231','5','公交车电视','','124','list.php?catid=231','g','1','0','0','219','0,216,219','0','231','124','','','','','','','','');
INSERT INTO `destoon_category` VALUES('232','5','地铁电视','','125','list.php?catid=232','d','1','0','0','219','0,216,219','0','232','125','','','','','','','','');
INSERT INTO `destoon_category` VALUES('233','5','高铁电视','','126','list.php?catid=233','g','1','0','0','219','0,216,219','0','233','126','','','','','','','','');
INSERT INTO `destoon_category` VALUES('234','5','大巴电视','','127','list.php?catid=234','d','1','0','0','219','0,216,219','0','234','127','','','','','','','','');
INSERT INTO `destoon_category` VALUES('235','5','网络电视','','128','list.php?catid=235','w','1','0','0','219','0,216,219','0','235','128','','','','','','','','');
INSERT INTO `destoon_category` VALUES('236','5','交通广播','','129','list.php?catid=236','j','1','0','0','219','0,216,219','0','236','129','','','','','','','','');
INSERT INTO `destoon_category` VALUES('237','5','看板','','130','list.php?catid=237','k','1','0','0','220','0,216,220','0','237','130','','','','','','','','');
INSERT INTO `destoon_category` VALUES('238','5','楼宇电视','','131','list.php?catid=238','l','1','0','0','220','0,216,220','0','238','131','','','','','','','','');
INSERT INTO `destoon_category` VALUES('239','5','电梯门','','132','list.php?catid=239','d','1','0','0','220','0,216,220','0','239','132','','','','','','','','');
INSERT INTO `destoon_category` VALUES('240','5','刷屏机','','133','list.php?catid=240','s','1','0','0','220','0,216,220','0','240','133','','','','','','','','');
INSERT INTO `destoon_category` VALUES('241','5','电梯按钮','','134','list.php?catid=241','d','1','0','0','220','0,216,220','0','241','134','','','','','','','','');
INSERT INTO `destoon_category` VALUES('242','5','其他','','135','list.php?catid=242','q','1','0','0','220','0,216,220','0','242','135','','','','','','','','');
INSERT INTO `destoon_category` VALUES('243','5','陕西地区','','136','list.php?catid=243','s','1','1','0','221','0,216,221','0','243','136','','','','','','','','');
INSERT INTO `destoon_category` VALUES('244','5','华商报','','137','list.php?catid=244','h','1','0','0','221','0,216,221','0','244','137','','','','','','','','');
INSERT INTO `destoon_category` VALUES('245','5','公交车体广告','','138','list.php?catid=245','g','1','0','0','222','0,216,222','0','245','138','','','','','','','','');
INSERT INTO `destoon_category` VALUES('246','5','公交车内广告','','139','list.php?catid=246','g','1','0','0','222','0,216,222','0','246','139','','','','','','','','');
INSERT INTO `destoon_category` VALUES('247','5','公交移动电视广告','','140','list.php?catid=247','g','1','0','0','222','0,216,222','0','247','140','','','','','','','','');
INSERT INTO `destoon_category` VALUES('248','5','公交车座广告','','141','list.php?catid=248','g','1','0','0','222','0,216,222','0','248','141','','','','','','','','');
INSERT INTO `destoon_category` VALUES('249','5','报站广告','','142','list.php?catid=249','b','1','0','0','222','0,216,222','0','249','142','','','','','','','','');
INSERT INTO `destoon_category` VALUES('250','5','其他','','143','list.php?catid=250','q','1','0','0','222','0,216,222','0','250','143','','','','','','','','');
INSERT INTO `destoon_category` VALUES('251','5','单立柱大牌','','144','list.php?catid=251','d','1','0','0','223','0,216,223','0','251','144','','','','','','','','');
INSERT INTO `destoon_category` VALUES('252','5','灯箱','','145','list.php?catid=252','d','1','0','0','223','0,216,223','0','252','145','','','','','','','','');
INSERT INTO `destoon_category` VALUES('253','5','三面翻','','146','list.php?catid=253','s','1','0','0','223','0,216,223','0','253','146','','','','','','','','');
INSERT INTO `destoon_category` VALUES('254','5','LED屏','','147','list.php?catid=254','L','1','0','0','223','0,216,223','0','254','147','','','','','','','','');
INSERT INTO `destoon_category` VALUES('255','5','候车亭','','148','list.php?catid=255','h','1','0','0','223','0,216,223','0','255','148','','','','','','','','');
INSERT INTO `destoon_category` VALUES('256','5','楼顶','','149','list.php?catid=256','l','1','0','0','223','0,216,223','0','256','149','','','','','','','','');
INSERT INTO `destoon_category` VALUES('257','5','桥体','','150','list.php?catid=257','q','1','0','0','223','0,216,223','0','257','150','','','','','','','','');
INSERT INTO `destoon_category` VALUES('258','5','桥墩','','151','list.php?catid=258','q','1','0','0','223','0,216,223','0','258','151','','','','','','','','');
INSERT INTO `destoon_category` VALUES('259','5','其他','','152','list.php?catid=259','q','1','0','0','223','0,216,223','0','259','152','','','','','','','','');
INSERT INTO `destoon_category` VALUES('260','5','机场大牌','','153','list.php?catid=260','j','1','0','0','224','0,216,224','0','260','153','','','','','','','','');
INSERT INTO `destoon_category` VALUES('261','5','机场LED','','154','list.php?catid=261','j','1','0','0','224','0,216,224','0','261','154','','','','','','','','');
INSERT INTO `destoon_category` VALUES('262','5','机票广告','','155','list.php?catid=262','j','1','0','0','224','0,216,224','0','262','155','','','','','','','','');
INSERT INTO `destoon_category` VALUES('263','5','飞机电视','','156','list.php?catid=263','f','1','0','0','224','0,216,224','0','263','156','','','','','','','','');
INSERT INTO `destoon_category` VALUES('264','5','机场大巴','','157','list.php?catid=264','j','1','0','0','224','0,216,224','0','264','157','','','','','','','','');
INSERT INTO `destoon_category` VALUES('265','5','机场报纸','','158','list.php?catid=265','j','1','0','0','224','0,216,224','0','265','158','','','','','','','','');
INSERT INTO `destoon_category` VALUES('266','5','立柱','','159','list.php?catid=266','l','1','0','0','224','0,216,224','0','266','159','','','','','','','','');
INSERT INTO `destoon_category` VALUES('267','5','通道看板','','160','list.php?catid=267','t','1','0','0','224','0,216,224','0','267','160','','','','','','','','');
INSERT INTO `destoon_category` VALUES('268','5','机场杂志栏','','161','list.php?catid=268','j','1','0','0','224','0,216,224','0','268','161','','','','','','','','');
INSERT INTO `destoon_category` VALUES('269','5','通道灯箱','','162','list.php?catid=269','t','1','0','0','224','0,216,224','0','269','162','','','','','','','','');
INSERT INTO `destoon_category` VALUES('270','5','其他','','163','list.php?catid=270','q','1','0','0','224','0,216,224','0','270','163','','','','','','','','');
INSERT INTO `destoon_category` VALUES('271','5','车内看板','','164','list.php?catid=271','c','1','0','0','225','0,216,225','0','271','164','','','','','','','','');
INSERT INTO `destoon_category` VALUES('272','5','电视','','165','list.php?catid=272','d','1','0','0','225','0,216,225','0','272','165','','','','','','','','');
INSERT INTO `destoon_category` VALUES('273','5','语音报站','','166','list.php?catid=273','y','1','0','0','225','0,216,225','0','273','166','','','','','','','','');
INSERT INTO `destoon_category` VALUES('274','5','刷屏机','','167','list.php?catid=274','s','1','0','0','225','0,216,225','0','274','167','','','','','','','','');
INSERT INTO `destoon_category` VALUES('275','5','手拉环','','168','list.php?catid=275','s','1','0','0','225','0,216,225','0','275','168','','','','','','','','');
INSERT INTO `destoon_category` VALUES('276','5','指示牌','','169','list.php?catid=276','z','1','0','0','225','0,216,225','0','276','169','','','','','','','','');
INSERT INTO `destoon_category` VALUES('277','5','地图','','170','list.php?catid=277','d','1','0','0','225','0,216,225','0','277','170','','','','','','','','');
INSERT INTO `destoon_category` VALUES('278','5','通道看板','','171','list.php?catid=278','t','1','0','0','225','0,216,225','0','278','171','','','','','','','','');
INSERT INTO `destoon_category` VALUES('279','5','安全门','','172','list.php?catid=279','a','1','0','0','225','0,216,225','0','279','172','','','','','','','','');
INSERT INTO `destoon_category` VALUES('280','5','站台看板','','173','list.php?catid=280','z','1','0','0','225','0,216,225','0','280','173','','','','','','','','');
INSERT INTO `destoon_category` VALUES('281','5','其他','','174','list.php?catid=281','q','1','0','0','225','0,216,225','0','281','174','','','','','','','','');
INSERT INTO `destoon_category` VALUES('282','5','道闸','','175','list.php?catid=282','d','1','0','0','226','0,216,226','0','282','175','','','','','','','','');
INSERT INTO `destoon_category` VALUES('283','5','灯箱','','176','list.php?catid=283','d','1','0','0','226','0,216,226','0','283','176','','','','','','','','');
INSERT INTO `destoon_category` VALUES('284','5','垃圾箱','','177','list.php?catid=284','l','1','0','0','226','0,216,226','0','284','177','','','','','','','','');
INSERT INTO `destoon_category` VALUES('285','5','社区接水机','','178','list.php?catid=285','s','1','0','0','226','0,216,226','0','285','178','','','','','','','','');
INSERT INTO `destoon_category` VALUES('286','5','地库','','179','list.php?catid=286','d','1','0','0','226','0,216,226','0','286','179','','','','','','','','');
INSERT INTO `destoon_category` VALUES('287','5','指示牌','','180','list.php?catid=287','z','1','0','0','226','0,216,226','0','287','180','','','','','','','','');
INSERT INTO `destoon_category` VALUES('288','5','其他','','181','list.php?catid=288','q','1','0','0','226','0,216,226','0','288','181','','','','','','','','');
INSERT INTO `destoon_category` VALUES('289','5','通道看板','','182','list.php?catid=289','t','1','0','0','227','0,216,227','0','289','182','','','','','','','','');
INSERT INTO `destoon_category` VALUES('290','5','月台/站台','','183','list.php?catid=290','y','1','0','0','227','0,216,227','0','290','183','','','','','','','','');
INSERT INTO `destoon_category` VALUES('291','5','座位','','184','list.php?catid=291','z','1','0','0','227','0,216,227','0','291','184','','','','','','','','');
INSERT INTO `destoon_category` VALUES('292','5','其他','','185','list.php?catid=292','q','1','0','0','227','0,216,227','0','292','185','','','','','','','','');
INSERT INTO `destoon_category` VALUES('293','5','平面设计','','186','list.php?catid=293','p','1','0','0','228','0,216,228','0','293','186','','','','','','','','');
INSERT INTO `destoon_category` VALUES('294','5','影视动画','','187','list.php?catid=294','y','1','0','0','228','0,216,228','0','294','187','','','','','','','','');
INSERT INTO `destoon_category` VALUES('295','5','包装设计','','188','list.php?catid=295','b','1','0','0','228','0,216,228','0','295','188','','','','','','','','');
INSERT INTO `destoon_category` VALUES('296','5','喷绘设计','','189','list.php?catid=296','p','1','0','0','228','0,216,228','0','296','189','','','','','','','','');
INSERT INTO `destoon_category` VALUES('297','5','活动设备租赁','','190','list.php?catid=297','h','1','0','0','228','0,216,228','0','297','190','','','','','','','','');
INSERT INTO `destoon_category` VALUES('298','5','其他','','191','list.php?catid=298','q','1','0','0','228','0,216,228','0','298','191','','','','','','','','');
INSERT INTO `destoon_category` VALUES('299','5','模型设计','','192','list.php?catid=299','m','1','0','0','217','0,217','0','299','192','','','','','','','','');
INSERT INTO `destoon_category` VALUES('300','5','DM设计','','193','list.php?catid=300','D','1','0','0','217','0,217','0','300','193','','','','','','','','');
INSERT INTO `destoon_category` VALUES('301','5','广告字体','','194','list.php?catid=301','g','1','0','0','217','0,217','0','301','194','','','','','','','','');
INSERT INTO `destoon_category` VALUES('302','5','广告策划创意','','195','list.php?catid=302','g','1','0','0','218','0,218','0','302','195','','','','','','','','');
INSERT INTO `destoon_category` VALUES('303','5','产品营销策划','','196','list.php?catid=303','c','1','0','0','218','0,218','0','303','196','','','','','','','','');
INSERT INTO `destoon_category` VALUES('304','5','公关活动策划','','197','list.php?catid=304','g','1','1','0','218','0,218','0','304','197','','','','','','','','');
INSERT INTO `destoon_category` VALUES('305','5','VI企业形象策划','','198','list.php?catid=305','V','1','0','0','218','0,218','0','305','198','','','','','','','','');
INSERT INTO `destoon_category` VALUES('306','5','管理培训','','199','list.php?catid=306','g','1','0','0','218','0,218','0','306','199','','','','','','','','');
INSERT INTO `destoon_category` VALUES('307','5','会展活动','','200','list.php?catid=307','h','1','0','0','218','0,218','0','307','200','','','','','','','','');
INSERT INTO `destoon_category` VALUES('308','5','地产策划','','201','list.php?catid=308','d','1','0','0','218','0,218','0','308','201','','','','','','','','');
INSERT INTO `destoon_category` VALUES('309','5','其他','','202','list.php?catid=309','q','1','0','0','218','0,218','0','309','202','','','','','','','','');

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

INSERT INTO `destoon_chat` VALUES('aaa0d5c54e86c90d842e338c249768c1','xabq','0','1471404689','0','ceshi1','1471401368','0','1','你好','1471401368','');

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

INSERT INTO `destoon_city` VALUES('337','西安市','','','','x','0','','','','');
INSERT INTO `destoon_city` VALUES('338','铜川市','','','','t','0','','','','');
INSERT INTO `destoon_city` VALUES('340','咸阳市','','','','x','0','','','','');

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

INSERT INTO `destoon_club` VALUES('1','4','1','9','0','0','0','11111111111111','','0','0','','11111111111111,最新视频拍摄,原创','','30','0','http://www.adbangbang.com/file/upload/201607/22/145130981.jpg','admin','admin','1469170277','','','0','admin','1469170902','127.0.0.1','','3','show.php?itemid=1','','','');

DROP TABLE IF EXISTS `destoon_club_data`;
CREATE TABLE `destoon_club_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈帖子内容';

INSERT INTO `destoon_club_data` VALUES('1','11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商圈圈子';

INSERT INTO `destoon_club_group` VALUES('9','4','1','3','最新视频拍摄','#FF6600','1','2','http://www.adbangbang.com/file/upload/201607/22/144224951.jpg','','admin','admin','1469169750','admin','1470022032','','','','3','list.php?catid=9','9','最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄','0','0','0','0','0','最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄最新视频拍摄');
INSERT INTO `destoon_club_group` VALUES('11','4','0','0','林心如婚礼还珠三美再同框','','0','0','http://www.adbangbang.com/file/upload/201608/01/112832461.jpg','','admin','admin','1470022090','','1470022126','','','','3','list.php?catid=11','11','林心如霍建华婚礼正在进行，赵薇、范冰冰等好友出席婚礼，继1997年《还珠格格》后，三人再次同框合影，闺蜜情不减当年。','0','0','0','0','0','');
INSERT INTO `destoon_club_group` VALUES('12','4','337','0','dvsdfdvasd','','0','0','http://www.adbangbang.com/file/upload/201608/22/1527234411.jpeg','','lihang5218','lihang5218','1471850856','','1471850856','','','','3','list.php?catid=12','12','dkjvDVJAdvjkbdvjlbnCJLBNJLVDLN LSDNVKLCNVKBNBNK','0','0','0','0','0','ASFBAFBNAVN ADFNAFAENN');
INSERT INTO `destoon_club_group` VALUES('13','5','337','0','SFH这你就直接','','0','0','http://www.adbangbang.com/file/upload/201608/24/1220348911.jpeg','','lihang5218','lihang5218','1472012443','','1472012443','','','','3','list.php?catid=13','13','注册报名明星经济性非国家信访局','0','0','0','0','0','附件幸福就像家人以及明星梦想');
INSERT INTO `destoon_club_group` VALUES('14','4','337','0','在VDVDV','','0','0','http://www.adbangbang.com/file/upload/201608/29/1426532111.jpeg','','lihang5218','lihang5218','1472452017','','1472452017','','','','3','list.php?catid=14','14','十多个RGB 发放表','0','0','0','0','0','sgbsGBgbvbgSGSGSGSH');

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
INSERT INTO `destoon_company` VALUES('3','llkd','7','陕西正觉电子','9','0','','1470672000','1','1','0','企业单位',',3,131,',',3,113,131,','1','','0','人民币','','2006','','','','电梯广告','0377-63986698','','','卧龙路世纪广场A座1208室','','','1470672000','1502294399','0','http://www.adbangbang.com/file/upload/201608/01/105540181.jpg','欢迎您的光临，我们竭诚为您服务','33','陕西正觉电子北京,电梯广告,,,','','','','','http://www.adbangbang.com/index.php?homepage=llkd');
INSERT INTO `destoon_company` VALUES('4','wuyou16','5',' 二康','0','0','','0','0','0','0','个体经营','','','1','','0','','','','','','','','','','','西安市高新二路','','','0','0','0','','','0',' 二康','','','','','http://www.adbangbang.com/index.php?homepage=wuyou16');
INSERT INTO `destoon_company` VALUES('5','wang123456','5','王刚','0','0','','0','0','0','0','个体经营','','','337','','0','','','','','','','','','','','陕西省西安市南二环东段','','','0','0','0','','','0','王刚陕西,西安市,,,,','','','','','http://www.adbangbang.com/index.php?homepage=wang123456');
INSERT INTO `destoon_company` VALUES('7','ceshi1','7','陕西正觉','9','0','','1470672000','1','1','0','企业单位',',124,',',3,112,124,','337','','0','人民币','','2012','','','','广告媒体','12345678911','','','未央区凤城九路','','','1470672000','1502294399','0','','公司介绍公司介绍公司介绍公司介绍公司介绍公司介绍公司介绍公司介绍公司介绍公司介绍公司介绍公司介绍公司','36','陕西正觉陕西,西安市,广告媒体,,,','','','','','http://www.adbangbang.com/index.php?homepage=ceshi1');
INSERT INTO `destoon_company` VALUES('8','396578810','5','姬振兴','0','0','','0','0','0','0','个体经营','','','337','','0','','','','','','','','02987871456','','','陕西省西安市碑林区黄雁村十字华豪丽晶','710068','','0','0','0','','','0','姬振兴','','','','','http://www.adbangbang.com/index.php?homepage=396578810');
INSERT INTO `destoon_company` VALUES('9','xabq','7','西安歩旗广告文化传播有限公司','9','0','','1470672000','1','1','0','个体经营','','','27','','0','','','','','','','','02987871456','','','陕西省西安市碑林区黄雁村十字华豪丽晶','710068','','1470672000','1502294399','0','','','0','西安歩旗广告文化传播有限公司','','','','','http://www.adbangbang.com/index.php?homepage=xabq');
INSERT INTO `destoon_company` VALUES('10','12345','7','陕西正觉erkabng','3','0','','1470672000','1','1','0','企业单位','','','1','','0','','','','','','','','','','','西安市高新二路','','','1470672000','1502294399','0','','','0','陕西正觉erkabng','homepage','blue','','','http://www.adbangbang.com/index.php?homepage=12345');
INSERT INTO `destoon_company` VALUES('11','lihang5218','7','西安步旗广告文化传播有限公司','4','0','','1470672000','1','1','0','个体经营',',176,177,176,',',3,119,176,177,','337','服务商','100','人民币','1-49人','2010','','','','广告设计制作 企业咨询管理','02987871456','','','陕西省西安市碑林区友谊西路','','','1470672000','1502294399','0','http://www.adbangbang.com/file/upload/201608/22/1507573711.jpeg','西安步旗广告文化传播有限公司是一个集广告策划、媒介经营、房产代理等业务的专业性广告公司。公司有三大优','25','西安步旗广告文化传播有限公司陕西,西安市,广告设计制作 企业咨询管理,,,服务商','','','','','http://www.adbangbang.com/index.php?homepage=lihang5218');
INSERT INTO `destoon_company` VALUES('12','zhaoping','5','小李','0','0','','0','0','0','0','个体经营','','','337','','0','','','','','','','','1234567','','','黄雁村十字110号','','','0','0','0','','','0','小李','','','','','http://www.adbangbang.com/index.php?homepage=zhaoping');
INSERT INTO `destoon_company` VALUES('13','jjfghf','6','西安瑞凤婚庆公司','0','0','','0','0','0','0','企业单位','','','337','','0','','','','','','','','','','','金昌南路101号','','','0','0','0','','','0','西安瑞凤婚庆公司','','','','','http://www.adbangbang.com/index.php?homepage=jjfghf');
INSERT INTO `destoon_company` VALUES('14','sdfsdf','6','西安凤岭广告公司','0','0','','0','0','0','0','企业单位','','','337','','0','','','','','','','','','','','金昌南路108号','','','0','0','0','','','0','西安凤岭广告公司','','','','','http://www.adbangbang.com/index.php?homepage=sdfsdf');

DROP TABLE IF EXISTS `destoon_company_data`;
CREATE TABLE `destoon_company_data` (
  `userid` bigint(20) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司内容';

INSERT INTO `destoon_company_data` VALUES('1','');
INSERT INTO `destoon_company_data` VALUES('7','&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍&nbsp;公司介绍');
INSERT INTO `destoon_company_data` VALUES('3','&nbsp;欢迎您的光临，我们竭诚为您服务');
INSERT INTO `destoon_company_data` VALUES('4','');
INSERT INTO `destoon_company_data` VALUES('5','');
INSERT INTO `destoon_company_data` VALUES('8','');
INSERT INTO `destoon_company_data` VALUES('9','');
INSERT INTO `destoon_company_data` VALUES('10','');
INSERT INTO `destoon_company_data` VALUES('11','&nbsp;<span style=\"color: rgb(40, 40, 40); font-family: Arial, simsun, sans-serif, 宋体; font-size: 14px; line-height: 28px;\">西安步旗广告文化传播有限公司是一个集广告策划、媒介经营、房产代理等业务的专业性广告公司。公司有三大优势媒体:手机短信、写字楼巡展、户外路牌。西安步旗广告文化传播有限公司专业从事手机短信广告、写字楼巡展、商场超市巡展、写字楼酒店资料展架展示等业务活动的广告公司。因拥有良好的职业道德、强大稳固的写字楼、商场超市、校园网络等巡展经验和完善的服务体系，而博得诸多客户的信任，也因此，在业内有较好信誉度和较高的知名度。</span>');
INSERT INTO `destoon_company_data` VALUES('12','');
INSERT INTO `destoon_company_data` VALUES('13','');
INSERT INTO `destoon_company_data` VALUES('14','');

DROP TABLE IF EXISTS `destoon_company_setting`;
CREATE TABLE `destoon_company_setting` (
  `userid` bigint(20) unsigned NOT NULL default '0',
  `item_key` varchar(100) NOT NULL default '',
  `item_value` text NOT NULL,
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司设置';

INSERT INTO `destoon_company_setting` VALUES('11','bgcolor','');
INSERT INTO `destoon_company_setting` VALUES('11','background','');
INSERT INTO `destoon_company_setting` VALUES('11','logo','');
INSERT INTO `destoon_company_setting` VALUES('11','css','');
INSERT INTO `destoon_company_setting` VALUES('11','bannerw','960');
INSERT INTO `destoon_company_setting` VALUES('11','bannerh','200');
INSERT INTO `destoon_company_setting` VALUES('11','bannert','0');
INSERT INTO `destoon_company_setting` VALUES('11','banner','');
INSERT INTO `destoon_company_setting` VALUES('11','bannerf','');
INSERT INTO `destoon_company_setting` VALUES('11','banner1','');
INSERT INTO `destoon_company_setting` VALUES('11','banner2','');
INSERT INTO `destoon_company_setting` VALUES('11','banner3','');
INSERT INTO `destoon_company_setting` VALUES('11','banner4','');
INSERT INTO `destoon_company_setting` VALUES('11','banner5','');
INSERT INTO `destoon_company_setting` VALUES('11','video','');
INSERT INTO `destoon_company_setting` VALUES('11','show_stats','1');
INSERT INTO `destoon_company_setting` VALUES('11','menu_show','1,1,1,1,1,1,1,1,1,1,1,1,1,1');
INSERT INTO `destoon_company_setting` VALUES('11','menu_order','0,10,20,30,40,50,60,70,80,90,100,110,120,130');
INSERT INTO `destoon_company_setting` VALUES('11','menu_name','公司介绍,供应产品,采购清单,新闻中心,荣誉资质,人才招聘,联系方式,公司相册,招商代理,品牌展示,公司视频,友情链接,商城,诚信档案');
INSERT INTO `destoon_company_setting` VALUES('11','menu_num','1,16,30,30,10,30,1,12,12,12,12,30,12,1');
INSERT INTO `destoon_company_setting` VALUES('11','menu_file','introduce,sell,buy,news,honor,job,contact,photo,info,brand,video,link,mall,credit');
INSERT INTO `destoon_company_setting` VALUES('11','side_width','500');
INSERT INTO `destoon_company_setting` VALUES('11','side_pos','0');
INSERT INTO `destoon_company_setting` VALUES('11','side_show','1,1,1,0,1,0,1');
INSERT INTO `destoon_company_setting` VALUES('11','side_order','0,10,20,30,40,50,60');
INSERT INTO `destoon_company_setting` VALUES('11','side_name','网站公告,新闻中心,产品分类,联系方式,站内搜索,荣誉资质,友情链接');
INSERT INTO `destoon_company_setting` VALUES('11','side_num','1,5,10,1,1,5,5');
INSERT INTO `destoon_company_setting` VALUES('11','side_file','announce,news,type,contact,search,honor,link');
INSERT INTO `destoon_company_setting` VALUES('11','main_show','1,1,1,0,0,0,0,1');
INSERT INTO `destoon_company_setting` VALUES('11','main_order','0,10,20,30,40,50,60,70');
INSERT INTO `destoon_company_setting` VALUES('11','main_name','推荐产品,公司介绍,最新供应,招商代理,品牌展示,公司相册,公司视频,热卖商品');
INSERT INTO `destoon_company_setting` VALUES('11','main_num','10,1,10,5,3,4,4,5');
INSERT INTO `destoon_company_setting` VALUES('11','main_file','elite,introduce,sell,info,brand,photo,video,mall');
INSERT INTO `destoon_company_setting` VALUES('11','intro_length','1000');
INSERT INTO `destoon_company_setting` VALUES('11','seo_title','');
INSERT INTO `destoon_company_setting` VALUES('11','seo_keywords','');
INSERT INTO `destoon_company_setting` VALUES('11','seo_description','');
INSERT INTO `destoon_company_setting` VALUES('11','map','');
INSERT INTO `destoon_company_setting` VALUES('11','stats','');
INSERT INTO `destoon_company_setting` VALUES('11','kf','');
INSERT INTO `destoon_company_setting` VALUES('11','announce','');

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

INSERT INTO `destoon_cron` VALUES('1','更新在线状态','1','online','10','1472463931','1472464531','0','');
INSERT INTO `destoon_cron` VALUES('2','内容分表创建','1','split','0,0','1472436842','1472486400','0','');
INSERT INTO `destoon_cron` VALUES('3','清理过期文件缓存','0','cache','30','1472463931','1472465731','0','');
INSERT INTO `destoon_cron` VALUES('20','清理过期禁止IP','0','banip','0,10','1472436842','1472487000','0','');
INSERT INTO `destoon_cron` VALUES('21','清理系统临时文件','0','temp','0,20','1472436842','1472487600','0','');
INSERT INTO `destoon_cron` VALUES('40','清理3天前未付款充值记录','0','charge','1,0','1472436842','1472490000','0','');
INSERT INTO `destoon_cron` VALUES('41','清理30天前404日志','0','404','1,10','1472436842','1472490600','0','');
INSERT INTO `destoon_cron` VALUES('42','清理30天前登录日志','0','loginlog','1,20','1472436842','1472491200','0','');
INSERT INTO `destoon_cron` VALUES('43','清理30天前管理日志','0','adminlog','1,30','1472436842','1472491800','0','');
INSERT INTO `destoon_cron` VALUES('44','清理30天前站内交谈','0','chat','1,40','1472436842','1472492400','0','');
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
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='积分流水';

INSERT INTO `destoon_finance_credit` VALUES('1','admin','1','1','1469066164','登录奖励','127.0.0.1','system');
INSERT INTO `destoon_finance_credit` VALUES('2','admin','1','2','1469153850','登录奖励','127.0.0.1','system');
INSERT INTO `destoon_finance_credit` VALUES('4','admin','3','5','1469170312','商圈发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('28','admin','2','33','1470020684','招商中心发布','ID:3','system');
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
INSERT INTO `destoon_finance_credit` VALUES('27','admin','2','31','1470020638','招商中心发布','ID:2','system');
INSERT INTO `destoon_finance_credit` VALUES('18','admin','1','25','1469515944','登录奖励','115.52.191.152','system');
INSERT INTO `destoon_finance_credit` VALUES('19','llkd','20','20','1469604582','注册奖励','127.0.0.196','system');
INSERT INTO `destoon_finance_credit` VALUES('20','admin','1','26','1469670491','登录奖励','127.0.0.196','system');
INSERT INTO `destoon_finance_credit` VALUES('21','admin','1','27','1469756518','登录奖励','127.0.0.196','system');
INSERT INTO `destoon_finance_credit` VALUES('22','admin','1','28','1469847378','登录奖励','127.0.0.196','system');
INSERT INTO `destoon_finance_credit` VALUES('23','admin','1','29','1470016474','登录奖励','42.228.200.184','system');
INSERT INTO `destoon_finance_credit` VALUES('24','wuyou16','20','20','1470016813','注册奖励','113.135.251.106','system');
INSERT INTO `destoon_finance_credit` VALUES('25','wang123456','20','20','1470017066','注册奖励','113.139.82.86','system');
INSERT INTO `destoon_finance_credit` VALUES('29','admin','2','35','1470020720','招商中心发布','ID:4','system');
INSERT INTO `destoon_finance_credit` VALUES('30','admin','2','37','1470020810','新闻资讯发布','ID:3','system');
INSERT INTO `destoon_finance_credit` VALUES('31','admin','2','39','1470020832','新闻资讯发布','ID:4','system');
INSERT INTO `destoon_finance_credit` VALUES('32','admin','2','41','1470020855','新闻资讯发布','ID:5','system');
INSERT INTO `destoon_finance_credit` VALUES('33','admin','2','43','1470021025','产品信息发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('34','admin','2','45','1470022379','人才招聘发布','ID:2','system');
INSERT INTO `destoon_finance_credit` VALUES('35','admin','-5','40','1470028871','人才招聘删除','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('36','admin','2','42','1470029065','产品信息发布','ID:2','system');
INSERT INTO `destoon_finance_credit` VALUES('37','admin','2','44','1470029128','产品信息发布','ID:3','system');
INSERT INTO `destoon_finance_credit` VALUES('38','admin','2','46','1470029288','产品信息发布','ID:4','system');
INSERT INTO `destoon_finance_credit` VALUES('39','admin','2','48','1470029405','热门招标发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('40','admin','2','50','1470029429','热门招标发布','ID:2','system');
INSERT INTO `destoon_finance_credit` VALUES('41','admin','2','52','1470029460','热门招标发布','ID:3','system');
INSERT INTO `destoon_finance_credit` VALUES('42','admin','2','54','1470029483','中标信息发布','ID:1','system');
INSERT INTO `destoon_finance_credit` VALUES('43','admin','2','56','1470029547','中标信息发布','ID:2','system');
INSERT INTO `destoon_finance_credit` VALUES('44','admin','2','58','1470029568','中标信息发布','ID:3','system');
INSERT INTO `destoon_finance_credit` VALUES('45','admin','2','60','1470029682','产品信息发布','ID:5','system');
INSERT INTO `destoon_finance_credit` VALUES('46','admin','2','62','1470029712','产品信息发布','ID:6','system');
INSERT INTO `destoon_finance_credit` VALUES('47','ceshi1','20','20','1470103659','注册奖励','124.114.47.161','system');
INSERT INTO `destoon_finance_credit` VALUES('48','admin','1','63','1470103705','登录奖励','124.114.47.161','system');
INSERT INTO `destoon_finance_credit` VALUES('49','ceshi1','10','30','1470106824','完善资料','113.138.26.237','system');
INSERT INTO `destoon_finance_credit` VALUES('50','396578810','20','20','1470125429','注册奖励','113.139.82.86','system');
INSERT INTO `destoon_finance_credit` VALUES('51','xabq','20','20','1470129797','注册奖励','113.139.82.86','system');
INSERT INTO `destoon_finance_credit` VALUES('52','wang123456','1','21','1470189434','登录奖励','1.83.220.127','system');
INSERT INTO `destoon_finance_credit` VALUES('53','396578810','1','21','1470190351','登录奖励','1.83.220.127','system');
INSERT INTO `destoon_finance_credit` VALUES('54','wang123456','1','22','1470271370','登录奖励','36.40.39.85','system');
INSERT INTO `destoon_finance_credit` VALUES('55','wang123456','10','32','1470271520','完善资料','36.40.39.85','system');
INSERT INTO `destoon_finance_credit` VALUES('56','12345','20','20','1470276516','注册奖励','113.135.250.69','system');
INSERT INTO `destoon_finance_credit` VALUES('57','lihang5218','20','20','1470276745','注册奖励','113.138.16.53','system');
INSERT INTO `destoon_finance_credit` VALUES('58','wuyou16','1','21','1470276794','登录奖励','113.135.250.69','system');
INSERT INTO `destoon_finance_credit` VALUES('59','admin','1','64','1470282854','登录奖励','113.135.250.69','system');
INSERT INTO `destoon_finance_credit` VALUES('60','admin','1','65','1470383023','登录奖励','117.32.196.254','system');
INSERT INTO `destoon_finance_credit` VALUES('61','wuyou16','1','22','1470384175','登录奖励','117.32.196.254','system');
INSERT INTO `destoon_finance_credit` VALUES('62','admin','1','66','1470705786','登录奖励','125.45.105.167','system');
INSERT INTO `destoon_finance_credit` VALUES('63','admin','1','67','1470920981','登录奖励','183.205.0.170','system');
INSERT INTO `destoon_finance_credit` VALUES('64','lihang5218','1','21','1470972703','登录奖励','113.138.20.228','system');
INSERT INTO `destoon_finance_credit` VALUES('65','396578810','1','22','1470977988','登录奖励','113.138.20.228','system');
INSERT INTO `destoon_finance_credit` VALUES('66','admin','1','68','1470983269','登录奖励','1.81.75.102','system');
INSERT INTO `destoon_finance_credit` VALUES('67','wuyou16','1','23','1470983465','登录奖励','1.81.75.102','system');
INSERT INTO `destoon_finance_credit` VALUES('68','admin','1','69','1471400732','登录奖励','123.4.40.204','system');
INSERT INTO `destoon_finance_credit` VALUES('69','lihang5218','1','22','1471445481','登录奖励','113.138.16.10','system');
INSERT INTO `destoon_finance_credit` VALUES('70','lihang5218','1','23','1471554676','登录奖励','223.104.11.116','system');
INSERT INTO `destoon_finance_credit` VALUES('71','admin','1','70','1471574961','登录奖励','123.4.41.246','system');
INSERT INTO `destoon_finance_credit` VALUES('72','admin','1','71','1471658003','登录奖励','183.205.0.38','system');
INSERT INTO `destoon_finance_credit` VALUES('73','lihang5218','1','24','1471749887','登录奖励','223.104.11.117','system');
INSERT INTO `destoon_finance_credit` VALUES('74','lihang5218','10','34','1471849875','完善资料','113.138.23.221','system');
INSERT INTO `destoon_finance_credit` VALUES('75','lihang5218','1','35','1471849876','登录奖励','113.138.23.221','system');
INSERT INTO `destoon_finance_credit` VALUES('76','lihang5218','2','37','1471850229','人才招聘发布','ID:4','system');
INSERT INTO `destoon_finance_credit` VALUES('77','lihang5218','2','39','1471850391','求购求租发布','ID:6','system');
INSERT INTO `destoon_finance_credit` VALUES('78','396578810','1','23','1471850447','登录奖励','113.138.23.221','system');
INSERT INTO `destoon_finance_credit` VALUES('79','zhaoping','20','20','1471853096','注册奖励','113.138.23.221','system');
INSERT INTO `destoon_finance_credit` VALUES('80','lihang5218','2','41','1471856111','招商中心发布','ID:5','system');
INSERT INTO `destoon_finance_credit` VALUES('81','wuyou16','1','24','1471862523','登录奖励','117.38.201.156','system');
INSERT INTO `destoon_finance_credit` VALUES('82','zhaoping','1','21','1471919791','登录奖励','113.138.20.60','system');
INSERT INTO `destoon_finance_credit` VALUES('83','admin','1','72','1471960541','登录奖励','183.205.0.17','system');
INSERT INTO `destoon_finance_credit` VALUES('84','jjfghf','20','20','1471960963','注册奖励','183.205.0.17','system');
INSERT INTO `destoon_finance_credit` VALUES('85','sdfsdf','20','20','1471961566','注册奖励','183.205.0.17','system');
INSERT INTO `destoon_finance_credit` VALUES('86','lihang5218','2','43','1472012328','招商中心发布','ID:6','system');
INSERT INTO `destoon_finance_credit` VALUES('87','396578810','1','24','1472012442','登录奖励','113.138.20.60','system');
INSERT INTO `destoon_finance_credit` VALUES('88','lihang5218','2','45','1472012572','广告资源发布','ID:8','system');
INSERT INTO `destoon_finance_credit` VALUES('89','lihang5218','2','47','1472012623','广告资源发布','ID:9','system');
INSERT INTO `destoon_finance_credit` VALUES('90','lihang5218','2','49','1472012677','广告资源发布','ID:10','system');
INSERT INTO `destoon_finance_credit` VALUES('91','lihang5218','2','51','1472012730','求购求租发布','ID:8','system');
INSERT INTO `destoon_finance_credit` VALUES('92','lihang5218','2','53','1472012767','求购求租发布','ID:9','system');
INSERT INTO `destoon_finance_credit` VALUES('93','lihang5218','2','55','1472012810','广告资源发布','ID:11','system');
INSERT INTO `destoon_finance_credit` VALUES('94','lihang5218','2','57','1472012835','广告资源发布','ID:12','system');
INSERT INTO `destoon_finance_credit` VALUES('95','lihang5218','2','59','1472012855','广告资源发布','ID:13','system');
INSERT INTO `destoon_finance_credit` VALUES('96','lihang5218','2','61','1472012901','广告资源发布','ID:14','system');
INSERT INTO `destoon_finance_credit` VALUES('97','lihang5218','2','63','1472012925','广告资源发布','ID:15','system');
INSERT INTO `destoon_finance_credit` VALUES('98','lihang5218','2','65','1472012962','广告资源发布','ID:16','system');
INSERT INTO `destoon_finance_credit` VALUES('99','admin','1','73','1472014323','登录奖励','113.135.249.102','system');
INSERT INTO `destoon_finance_credit` VALUES('100','396578810','2','26','1472015195','求购求租发布','ID:10','system');
INSERT INTO `destoon_finance_credit` VALUES('101','396578810','2','28','1472015195','求购求租发布','ID:5','system');
INSERT INTO `destoon_finance_credit` VALUES('102','zhaoping','2','23','1472015200','求购求租发布','ID:7','system');
INSERT INTO `destoon_finance_credit` VALUES('103','lihang5218','1','66','1472015784','登录奖励','113.138.20.60','system');
INSERT INTO `destoon_finance_credit` VALUES('104','lihang5218','2','68','1472035728','广告资源发布','ID:17','system');
INSERT INTO `destoon_finance_credit` VALUES('105','wang123456','1','33','1472093539','登录奖励','36.40.52.138','system');
INSERT INTO `destoon_finance_credit` VALUES('106','admin','1','74','1472108579','登录奖励','36.40.52.138','system');
INSERT INTO `destoon_finance_credit` VALUES('107','admin','1','75','1472189589','登录奖励','125.42.251.185','system');
INSERT INTO `destoon_finance_credit` VALUES('108','lihang5218','1','69','1472305085','登录奖励','113.138.74.136','system');
INSERT INTO `destoon_finance_credit` VALUES('109','396578810','1','29','1472355893','登录奖励','36.47.73.158','system');
INSERT INTO `destoon_finance_credit` VALUES('110','lihang5218','1','70','1472355900','登录奖励','111.20.241.241','system');
INSERT INTO `destoon_finance_credit` VALUES('111','lihang5218','1','71','1472436978','登录奖励','113.138.16.219','system');
INSERT INTO `destoon_finance_credit` VALUES('112','396578810','1','30','1472445280','登录奖励','113.138.16.219','system');
INSERT INTO `destoon_finance_credit` VALUES('113','admin','1','76','1472450228','登录奖励','124.114.47.79','system');
INSERT INTO `destoon_finance_credit` VALUES('114','ceshi1','2','32','1472451598','人才招聘发布','ID:3','system');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='我的商友';

INSERT INTO `destoon_friend` VALUES('1','0','11','0','','zhaopin','','','','','','','','','','','','','1471854594');
INSERT INTO `destoon_friend` VALUES('2','0','1','0','','姬振兴','','想 都是vad','','','123456','','','','123456879','','','','1472015564');
INSERT INTO `destoon_friend` VALUES('3','0','11','0','','姬振兴','','','','','','','','','','','','','1472015817');
INSERT INTO `destoon_friend` VALUES('4','0','5','0','lihang5218','李航','','西安步旗广告文化传播有限公司','','02987871456','','http://www.adbangbang.com/index.php?homepage=lihang5218','','','','lihang5218','','','1472093908');
INSERT INTO `destoon_friend` VALUES('5','0','11','0','lihang5218','李航','','西安步旗广告文化传播有限公司','','02987871456','','http://www.adbangbang.com/index.php?homepage=lihang5218','','','','lihang5218','','','1472446266');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='招商';

INSERT INTO `destoon_info_22` VALUES('1','204','1','总建筑面积9127.0平方米食堂等2项工程','','0','总建筑面积9127.0平方米食堂等2项工程,分类招商北京','','39','http://www.adbangbang.com/file/upload/201608/01/105857731.jpg.thumb.jpg','','','admin','1','1469412775','2016-07-25','0','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','中国采购招标网是为配合中国政府实施《中华人民共和国招标投标法》以及规范公共采购市场的需要；现将＂总建筑面积9127.0平方米食','','','','','','','admin','1470020755','2016-08-01','127.0.0.1','','3','0','0','show.php?itemid=1','','');
INSERT INTO `destoon_info_22` VALUES('2','204','0','总建筑面积9471.0平方米实验区基础设施改造','','0','总建筑面积9471.0平方米实验区基础设施改造,分类招商全国','','2','','','','admin','1','1470020573','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','中国采购招标网是为配合中国政府实施《中华人民共和国招标投标法》以及规范公共采购市场的需要；现将＂总建筑面积9471.0平方米实','','','','','','','admin','1470020638','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=2','','');
INSERT INTO `destoon_info_22` VALUES('3','204','0','总建筑面积5419.0平方米机关大楼整体修缮项目','','0','总建筑面积5419.0平方米机关大楼整体修缮项目,分类招商全国','','6','','','','admin','1','1470020638','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','中国采购招标网是为配合中国政府实施《中华人民共和国招标投标法》以及规范公共采购市场的需要；现将＂总建筑面积5419.0平方米机','','','','','','','admin','1470020684','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=3','','');
INSERT INTO `destoon_info_22` VALUES('4','204','0','安钢森德斯线材打包机采购招标预告','','0','安钢森德斯线材打包机采购招标预告,分类招商全国','','17','','','','admin','1','1470020685','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','中国采购招标网是为配合中国政府实施《中华人民共和国招标投标法》以及规范公共采购市场的需要；现将＂安钢森德斯线材打包机采购','','','','','','','admin','1470020720','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=4','','');
INSERT INTO `destoon_info_22` VALUES('5','204','0','sfhndzdgjmzjzdgz','','0','sfhndzdgjmzjzdgz,分类招商全国','','6','','','','lihang5218','7','1471856111','2016-08-22','0','0','西安步旗广告文化传播有限公司','1','0','李航','02987871456','','18291849687','陕西省西安市碑林区友谊西路','','','lihang5218','','','SFnbmzbnmzdgnzz 大国家非国家法规技术附件是放假时间空间日月潭哈尔套合塔尔图计划啊','','','','','','','lihang5218','1471856111','2016-08-22','113.138.23.221','','3','0','0','show.php?itemid=5','','');
INSERT INTO `destoon_info_22` VALUES('6','204','0','地址在车站等你回家这','','0','地址在车站等你回家这,分类招商陕西','','2','','','','lihang5218','7','1472012328','2016-08-24','0','27','西安步旗广告文化传播有限公司','1','0','李航','02987871456','','18291849687','陕西省西安市碑林区友谊西路','','','lihang5218','','','副会长等你电话的合作关系和规划在电话中对孩子转的行电话这他好像','','','','','','','lihang5218','1472012328','2016-08-24','113.138.20.60','','3','0','0','show.php?itemid=6','','');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='热门招标';

INSERT INTO `destoon_info_26` VALUES('1','212','0','国际招标测试','','0','国际招标测试,国际招标全国','','4','','','','admin','1','1470029368','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试','','','','','','','admin','1470029405','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=1','','','','','','0','0','0','0','0','0','','');
INSERT INTO `destoon_info_26` VALUES('2','214','0','政府采购测试','','0','政府采购测试,政府采购全国','','4','','','','admin','1','1470029416','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试','','','','','','','admin','1470029429','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=2','','','','','','0','0','0','0','0','0','','');
INSERT INTO `destoon_info_26` VALUES('3','215','0','工程招标测试','','0','工程招标测试,工程招标全国','','18','','','','admin','1','1470029443','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试','','','','','','','admin','1470029460','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=3','','','','','','0','0','0','0','0','0','','');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='中标信息';

INSERT INTO `destoon_info_27` VALUES('1','211','0','中标信息测试','','0','中标信息测试,中标信息全国','','1','','','','admin','1','1470029469','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试','','','','','','','admin','1470029483','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=1','','','','','','','','0');
INSERT INTO `destoon_info_27` VALUES('2','211','0','发动机台架标定匹配设备中标结果公告','','0','发动机台架标定匹配设备中标结果公告,中标信息全国','','1','','','','admin','1','1470029483','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','项目名称：发动机台架标定匹配设备项目编号：*招标范围：招标设备名称： 发动机台架标定匹配设备 数 量：* 套招标机构：重庆国际','','','','','','','admin','1470029547','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=2','','','','','','','','0');
INSERT INTO `destoon_info_27` VALUES('3','211','0','晋州市司法局业务装备采购项目中标公告','','0','晋州市司法局业务装备采购项目中标公告,中标信息全国','','2','','','','admin','1','1470029547','2016-08-01','0','0','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','','项目名称：晋州市司法局业务装备采购项目项目编码：HB2016053150020005项目联系人：程信项目联系电话：0311-84330186采购人：晋','','','','','','','admin','1470029568','2016-08-01','36.46.199.53','','3','0','0','show.php?itemid=3','','','','','','','','0');

DROP TABLE IF EXISTS `destoon_info_data_22`;
CREATE TABLE `destoon_info_data_22` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招商内容';

INSERT INTO `destoon_info_data_22` VALUES('1','中国采购招标网是为配合中国政府实施《中华人民共和国招标投标法》以及规范公共采购市场的需要；现将＂总建筑面积9127.0平方米食堂等2项工程＂于中国采购招标网（http://www.chinabidding.cc/）发布招标公告；以招标公告的方式邀请不特定的法人或其他组织参与投标，并向符合条件的投标人中择优选择中标人。');
INSERT INTO `destoon_info_data_22` VALUES('2','&nbsp;<span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px;\">中国采购招标网是为配合中国政府实施《中华人民共和国招标投标法》以及规范公共采购市场的需要；现将</span><span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px; color: rgb(0, 0, 204);\">＂总建筑面积9471.0平方米实验区基础设施改造...＂</span><span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px;\">于中国采购招标网（http://www.chinabidding.cc/）发布招标公告；以招标公告的方式邀请不特定的法人或其他组织参与投标，并向符合条件的投标人中择优选择中标人。</span>');
INSERT INTO `destoon_info_data_22` VALUES('3','&nbsp;<span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px;\">中国采购招标网是为配合中国政府实施《中华人民共和国招标投标法》以及规范公共采购市场的需要；现将</span><span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px; color: rgb(0, 0, 204);\">＂总建筑面积5419.0平方米机关大楼整体修缮项目＂</span><span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px;\">于中国采购招标网（http://www.chinabidding.cc/）发布招标公告；以招标公告的方式邀请不特定的法人或其他组织参与投标，并向符合条件的投标人中择优选择中标人。</span>');
INSERT INTO `destoon_info_data_22` VALUES('4','&nbsp;<span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px;\">中国采购招标网是为配合中国政府实施《中华人民共和国招标投标法》以及规范公共采购市场的需要；现将</span><span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px; color: rgb(0, 0, 204);\">＂安钢森德斯线材打包机采购招标预告＂</span><span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 22px;\">于中国采购招标网（http://www.chinabidding.cc/）发布招标公告；以招标公告的方式邀请不特定的法人或其他组织参与投标，并向符合条件的投标人中择优选择中标人。</span>');
INSERT INTO `destoon_info_data_22` VALUES('5','&nbsp;SFnbmzbnmzdgnzz 大国家非国家法规技术附件是放假时间空间日月潭哈尔套合塔尔图计划啊');
INSERT INTO `destoon_info_data_22` VALUES('6','&nbsp;副会长等你电话的合作关系和规划在电话中对孩子转的行电话这他好像');

DROP TABLE IF EXISTS `destoon_info_data_26`;
CREATE TABLE `destoon_info_data_26` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='热门招标内容';

INSERT INTO `destoon_info_data_26` VALUES('1','&nbsp;国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试国际招标测试');
INSERT INTO `destoon_info_data_26` VALUES('2','&nbsp;政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试政府采购测试');
INSERT INTO `destoon_info_data_26` VALUES('3','&nbsp;工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试工程招标测试');

DROP TABLE IF EXISTS `destoon_info_data_27`;
CREATE TABLE `destoon_info_data_27` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='中标信息内容';

INSERT INTO `destoon_info_data_27` VALUES('1','&nbsp;中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试中标信息测试');
INSERT INTO `destoon_info_data_27` VALUES('2','&nbsp;<span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px;\">项目名称：发动机台架标定匹配设备</span><br style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px;\" />\r\n<span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px;\">项目编号：*</span><br style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px;\" />\r\n<span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px;\">招标范围：招标设备名称： 发动机台架标定匹配设备 数 量：* 套&nbsp;</span><br style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px;\" />\r\n<span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px;\">招标机构：重庆国际投资咨</span>');
INSERT INTO `destoon_info_data_27` VALUES('3','&nbsp;<span style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px;\">项目名称：晋州市司法局业务装备采购项目</span>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">项目编码：HB2016053150020005</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">项目联系人：程信</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">项目联系电话：0311-84330186</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">采购人：晋州市司法局</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">采购人地址：晋州市中兴路</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">采购人联系方式：0311-84330186</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">代理机构：晋州市采购中心</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">代理机构地址：晋州市向阳街</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">代理机构联系方式：13081008459</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">本项目招标公告日期：2016-07-04</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">定标日期：2016-07-26</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">总中标金额：27.8万元</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">合同履行日期：5</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">采购数量：一批</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">评审委员会成员名单：曹兰斌 尚永福、韩登科、贾桂平、程信</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">供货商信息：</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">中标供应商名称：晋州市诚信办公设备有限公司</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">中标供应商地址：晋州市向阳路31号</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">中标供货商金额：27.8万元</p>\r\n<p style=\"font-family: 宋体, serif; font-size: 12px; line-height: 19.2px; text-indent: 0px;\">备注：本采购项目编号为JZCG2016-GK011</p>');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='招聘';

INSERT INTO `destoon_job` VALUES('3','206','337','0','招聘信息测试','','0','招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容招聘内容','招聘信息测试,,国际招标陕西,西安市','','','1','0','0','0','1','0','0','0','18','0','1','','0','ceshi1','6','陕西正觉','0','0','王静','12345678911','18091858838','未央区凤城九路','','','','','','1','0','admin','1472451598','2016-08-29','1470106917','2016-08-02','113.138.26.237','','3','show.php?itemid=3','','');
INSERT INTO `destoon_job` VALUES('2','206','4','0','国际招标测试','','0','国际招标测试国际招标测试国际招标测试','国际招标测试,,国际招标重庆','','','0','0','0','0','0','0','0','0','0','0','0','','0','admin','1','DESTOON B2B网站管理系统','0','0','王静','12345678911','','','','','','','','1','0','admin','1470022379','2016-08-01','1470022285','2016-08-01','36.46.199.53','','3','show.php?itemid=2','','');
INSERT INTO `destoon_job` VALUES('4','206','337','0','招聘','','0','XCB小南浔的购买者F 人工湖ＳＦＨｆｈｈｈｈｈｊｈ　　ｈａｄｈｄａｊｈａｊｎａｄｇｈＲＨＨ　ｊｓｆｊｓｊ　人家还是人家今天','招聘,销售,国际招标陕西,西安市','','销售','1','2001','4001','1','1','1','0','2','18','35','2','','0','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','1','1472313599','lihang5218','1471850229','2016-08-22','1471850229','2016-08-22','113.138.23.221','','3','show.php?itemid=4','','');

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


DROP TABLE IF EXISTS `destoon_job_data`;
CREATE TABLE `destoon_job_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招聘内容';

INSERT INTO `destoon_job_data` VALUES('3','&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容&nbsp;招聘内容');
INSERT INTO `destoon_job_data` VALUES('2','&nbsp;国际招标测试国际招标测试国际招标测试');
INSERT INTO `destoon_job_data` VALUES('4','&nbsp;XCB小南浔的购买者F 人工湖ＳＦＨｆｈｈｈｈｈｊｈ　　ｈａｄｈｄａｊｈａｊｎａｄｇｈＲＨＨ　ｊｓｆｊｓｊ　人家还是人家今天　时间是计算机技术附件是新疆时间数学教学风格就是时间显示该技术时间向国家设计上进行分解下飞机分局向国家法规法进行后续');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关键词';

INSERT INTO `destoon_keyword` VALUES('1','5','户外','户外','huwai','2','1472456376','1','1','1','1','3');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='会员';

INSERT INTO `destoon_member` VALUES('1','admin','admin','DESTOON B2B网站管理系统','8291737ac617a6f97a5da13960f34bf4','PZdcMco2','575b6c3ddbafd5a76a7739db3dff1e9c','aDwvRISs','mail@yourdomain.com','0','0','0','1','0','1','嘉客','','','','','','','','1','','0','1','6','1','0','76','0.00','0.00','','1','','','1435770227','127.0.0.1','1466996173','113.138.16.219','1472459734','47','','1','','','1436723402','0','0','0','0','0','0','','','','','');
INSERT INTO `destoon_member` VALUES('7','ceshi1','ceshi1','陕西正觉','9be4450bc52a2d208f98d5294702af70','aD1Jj2Bh','0c4b620d56f75dcd077b5032eeddfd66','0m1f9tfZ','512297003@qq.com','0','1','1','1','0','1','王静','18091858838','','','','','','','0','','0','7','6','337','0','32','0.00','0.00','','0','','','1470106824','124.114.47.161','1470103659','113.138.26.237','1470106703','2','','1','','','0','0','0','0','0','0','0','','','','','否');
INSERT INTO `destoon_member` VALUES('3','llkd','llkd','陕西正觉电子','baa2b6e18807ea252396bdc58251663c','2qZq9eeV','7dd779c296663ce1366ca2f8857f0aaa','0WVEvpDN','2368669@qq.com','1','0','1','1','0','1','王先生','13203869968','','','','','','','0','','0','7','5','1','0','20','0.00','0.00','','0','','','1470056637','127.0.0.196','1469604582','127.0.0.196','1469604586','2','','1','','','0','0','0','0','0','0','0','','','','','是');
INSERT INTO `destoon_member` VALUES('4','wuyou16','wuyou16',' 二康','80723ca4a9f60c160ce2954570a2d69e','uxigebDx','7af9551df5153241ca273fcd4f8b7b72','0LwAxJ0I','wuyou16@qq.com','0','0','1','1','0','1',' 二康','13259955677','','','','','','','0','','0','5','5','1','0','24','0.00','0.00','','0','','','0','113.135.251.106','1470016813','117.38.201.156','1471862523','12','','1','','','0','0','0','0','0','0','0','','','','','否');
INSERT INTO `destoon_member` VALUES('5','wang123456','wang123456','王刚','7f48267c035bf1e1f050a3e606548b24','ZQPtzrS9','5d5ea7ed21778345a06df321364ce4b2','2Kr9LKah','1838808216@qq.com','0','0','1','1','0','1','王刚','15109265989','','','wang123456','','销售','销售经理','0','','0','5','5','337','0','33','0.00','0.00','','0','','','1472093816','113.139.82.86','1470017066','36.40.52.138','1472093817','8','','1','','','0','0','0','0','0','0','0','','','','','是');
INSERT INTO `destoon_member` VALUES('8','396578810','396578810','姬振兴','378cfbae2d73ca51b6bbe1723c9b0860','8H6jsnJ7','f29544f9919055bd0a1ae16894268e33','GpztNGAi','396578810@qq.com','0','0','1','1','0','1','姬振兴','13379185320','','','','','','','0','','0','5','5','337','0','30','0.00','0.00','','0','','','0','113.139.82.86','1470125429','113.138.16.219','1472452187','18','','1','','','0','0','0','0','0','0','0','','','','','否');
INSERT INTO `destoon_member` VALUES('9','xabq','xabq','西安歩旗广告文化传播有限公司','1de10fa9de7b9242dfd72ae1834d9cb4','0FlVkPsA','25748e8fbd54e7b1d99b9bf0362288e9','rDrcMoqQ','1525228179@qq.com','1','0','1','1','0','1','姬振兴','13379185320','','','','','','','0','','0','7','6','27','0','20','0.00','0.00','','0','','','0','113.139.82.86','1470129797','113.139.82.86','1470129797','1','','1','','','0','0','0','0','0','0','0','','','','','否');
INSERT INTO `destoon_member` VALUES('10','12345','12345','陕西正觉erkabng','d842b4aebb9f974d702843d380c829e8','Rq6IXCOG','6887089b8738d7d755c48a0f37e42f81','YozH59kw','wuyou16@qwe.com','0','0','1','1','0','1',' 二康','13259955677','','','','','','','0','','0','7','6','1','0','20','0.00','0.00','','0','','','0','113.135.250.69','1470276516','113.135.250.69','1470285952','3','','1','','','0','0','0','0','0','0','0','','','','','否');
INSERT INTO `destoon_member` VALUES('11','lihang5218','lihang5218','西安步旗广告文化传播有限公司','580f61f9a30ff4ef5c71d083d983672c','qgs6AKze','d88597f60c8e284e6155c44b742c5e9b','IR83J2pY','429201545@qq.com','0','0','1','1','0','1','李航','18291849687','','','lihang5218','','','','0','','0','7','6','337','0','71','0.00','0.00','','0','','','1471850053','113.138.16.53','1470276745','113.138.16.219','1472436978','20','','1','','','0','0','0','0','0','0','0','','','','','是');
INSERT INTO `destoon_member` VALUES('12','zhaoping','zhaoping','小李','4e2d7678f11c65cfb9b4f9997d84e0f4','z18QR2aJ','ebb049fb7d8d1e7a7c89bf311aab6442','SkfkImFY','65@65.com','1','0','1','1','0','1','小李','15094016821','','','','','','','0','','0','5','5','337','0','23','0.00','0.00','','0','','','0','113.138.23.221','1471853096','113.138.20.60','1471923171','9','','1','','','0','0','0','0','0','0','0','','','','','是');
INSERT INTO `destoon_member` VALUES('13','jjfghf','jjfghf','西安瑞凤婚庆公司','9e25c4607e7af3c71072c36e198897ca','LC7DrmEC','ad9c8b840ca8b90f2c68201396e2ec79','M3qXvLgh','dsffs@163.com','1','0','1','1','0','1','李先生','13203689986','','','','','','','0','','0','6','6','337','0','20','0.00','0.00','','0','','','0','183.205.0.17','1471960963','183.205.0.17','1471960963','1','','1','','','0','0','0','0','0','0','0','','','','','是');
INSERT INTO `destoon_member` VALUES('14','sdfsdf','sdfsdf','西安凤岭广告公司','1f8556d71b4335448e471d07e5cbf8eb','QAK8l5gA','b13432028b5d02bd32cd040494bee064','oV3RyUQu','sdfd@163.com','1','0','1','1','0','1','李先生','13103689986','','','','','','','0','','0','6','6','337','0','20','0.00','0.00','','0','','','0','183.205.0.17','1471961566','183.205.0.17','1471961566','1','','1','','','0','0','0','0','0','0','0','','','','','是');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='站内信件';

INSERT INTO `destoon_message` VALUES('7','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"http://www.adbangbang.com/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>ceshi1<br/>\r\n<strong>密码：</strong>123456<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','ceshi1','1470103659','124.114.47.161','1','0','0','3','');
INSERT INTO `destoon_message` VALUES('2','您的招聘[aaa]收到新的简历','','4','详见:<a href=\"http://127.0.0.1/destoon/ZHAOBIAO/resume.php?itemid=1\" target=\"_blank\">http://127.0.0.1/destoon/ZHAOBIAO/resume.php?itemid=1</a>','','admin','1469420035','127.0.0.1','1','0','0','3','');
INSERT INTO `destoon_message` VALUES('3','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://127.0.0.196:89/\" target=\"_blank\"><img src=\"http://127.0.0.196:89/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>llkd<br/>\r\n<strong>密码：</strong>123456<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://127.0.0.196:89/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','llkd','1469604582','127.0.0.196','0','0','0','3','');
INSERT INTO `destoon_message` VALUES('4','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"http://www.adbangbang.com/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>wuyou16<br/>\r\n<strong>密码：</strong>88552766<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','wuyou16','1470016813','113.135.251.106','1','0','0','3','');
INSERT INTO `destoon_message` VALUES('5','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"http://www.adbangbang.com/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>wang123456<br/>\r\n<strong>密码：</strong>429201545<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','wang123456','1470017066','113.139.82.86','1','0','0','3','');
INSERT INTO `destoon_message` VALUES('8','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"http://www.adbangbang.com/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>396578810<br/>\r\n<strong>密码：</strong>19881014<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','396578810','1470125429','113.139.82.86','1','0','0','3','');
INSERT INTO `destoon_message` VALUES('9','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"http://www.adbangbang.com/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>xabq<br/>\r\n<strong>密码：</strong>19881014<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','xabq','1470129797','113.139.82.86','0','0','0','3','');
INSERT INTO `destoon_message` VALUES('10','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"http://www.adbangbang.com/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>12345<br/>\r\n<strong>密码：</strong>88552766<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','12345','1470276516','113.135.250.69','1','0','0','3','');
INSERT INTO `destoon_message` VALUES('11','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"http://www.adbangbang.com/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>lihang5218<br/>\r\n<strong>密码：</strong>429201545<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','lihang5218','1470276745','113.138.16.53','1','0','0','3','');
INSERT INTO `destoon_message` VALUES('12','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"/file/images/logo.jpg\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>zhaoping<br/>\r\n<strong>密码：</strong>123456<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','zhaoping','1471853096','113.138.23.221','0','0','0','3','');
INSERT INTO `destoon_message` VALUES('13','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"/file/images/logo.jpg\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>jjfghf<br/>\r\n<strong>密码：</strong>123456<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','jjfghf','1471960963','183.205.0.17','0','0','0','3','');
INSERT INTO `destoon_message` VALUES('14','欢迎加入西安步旗广告文化传播有限公司','','4','<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://www.adbangbang.com/\" target=\"_blank\"><img src=\"/file/images/logo.jpg\" style=\"margin:10px 0;border:none;\" alt=\"西安步旗广告文化传播有限公司 LOGO\" title=\"西安步旗广告文化传播有限公司\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为西安步旗广告文化传播有限公司会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>sdfsdf<br/>\r\n<strong>密码：</strong>123456<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://www.adbangbang.com/\" target=\"_blank\" style=\"color:#005590;\">西安步旗广告文化传播有限公司</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>','','sdfsdf','1471961566','183.205.0.17','0','0','0','3','');

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

INSERT INTO `destoon_module` VALUES('1','destoon','核心','','http://demo.destoon.com/v6.0/','http://www.adbangbang.com/','','1','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('2','member','会员','member','','http://www.adbangbang.com/member/','','2','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('3','extend','扩展','extend','','http://www.adbangbang.com/extend/','','0','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('4','company','公司','company','','http://www.adbangbang.com/company/','','7','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('22','info','招商中心','invest','','http://www.adbangbang.com/invest/','','4','0','1','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('5','sell','广告资源','sell','','http://www.adbangbang.com/sell/','','5','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('6','buy','求购求租','buy','','http://www.adbangbang.com/buy/','','6','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('7','quote','行情','quote','','http://127.0.0.196:89/quote/','','9','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('8','exhibit','展会','exhibit','','http://127.0.0.196:89/exhibit/','','10','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('21','article','新闻资讯','news','','http://www.adbangbang.com/news/','','5','0','1','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('9','job','人才招聘','job','','http://www.adbangbang.com/job/','','3','0','0','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('13','brand','品牌','brand','','http://127.0.0.196:89/brand/','','13','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('24','destoon','创意设计','','http://127.0.0.1/destoon/company/list.php?catid=110/','http://127.0.0.1/destoon/company/list.php?catid=110','','1','1','1','1','0','0','1469243779');
INSERT INTO `destoon_module` VALUES('12','photo','图库','photo','','http://127.0.0.196:89/photo/','','17','0','0','0','0','1','1466996173');
INSERT INTO `destoon_module` VALUES('25','destoon','活动策划','','','/sell/list.php?catid=218','','1','1','1','1','0','0','1469243797');
INSERT INTO `destoon_module` VALUES('23','destoon','广告媒体','','http://company/list.php?catid=3/','http://127.0.0.1/destoon/company/list.php?catid=3','','1','1','1','1','0','0','1469243645');
INSERT INTO `destoon_module` VALUES('18','club','自媒体','ZIMEITI','','http://www.adbangbang.com/ZIMEITI/','','2','0','1','0','0','0','1466996173');
INSERT INTO `destoon_module` VALUES('26','info','热门招标','ZHAOBIAO','','http://www.adbangbang.com/ZHAOBIAO/','','26','0','1','0','0','0','1469581601');
INSERT INTO `destoon_module` VALUES('27','info','中标信息','zhongbiao','','http://www.adbangbang.com/zhongbiao/','','27','0','0','0','0','0','1469614183');

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

INSERT INTO `destoon_online` VALUES('1','admin','113.138.16.219','1','1','1472463941');
INSERT INTO `destoon_online` VALUES('8','396578810','113.138.16.219','1','1','1472464470');

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


DROP TABLE IF EXISTS `destoon_resume_data`;
CREATE TABLE `destoon_resume_data` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='简历内容';


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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='供应';

INSERT INTO `destoon_sell_5` VALUES('1','216','0','0','1','0','0','出租产品测试','','0','出租产品测试出租产品测试出租产品测试出租产品测试出租产品测试出租产品测试出租产品测试出租产品测试','','','','','','','','','0.00','0','0','0','','出租产品测试,出租,供应默认分类','','5','http://www.adbangbang.com/file/upload/201608/01/111010391.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1470021025','2016-08-01','1470020970','2016-08-01','36.46.199.53','','3','show.php?itemid=1','','');
INSERT INTO `destoon_sell_5` VALUES('2','216','0','0','1','0','0','出租','','0','出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息','','','','','','','','','0.00','0','0','0','','出租,出租,供应默认分类','','7','http://www.adbangbang.com/file/upload/201608/01/132409301.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1470029065','2016-08-01','1470029001','2016-08-01','36.46.199.53','','3','show.php?itemid=2','','');
INSERT INTO `destoon_sell_5` VALUES('3','216','0','1','1','0','0','求购','','0','出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息','','','','','','','','','0.00','0','0','0','','求购,求购,供应默认分类','','3','http://www.adbangbang.com/file/upload/201608/01/132513381.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1470029324','2016-08-01','1470029097','2016-08-01','36.46.199.53','','3','show.php?itemid=3','','');
INSERT INTO `destoon_sell_5` VALUES('4','216','0','1','1','0','0','求购','','0','出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息','','','','','','','','','0.00','0','0','0','','求购,求购,供应默认分类','','2','http://www.adbangbang.com/file/upload/201608/01/132806341.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1470029311','2016-08-01','1470029264','2016-08-01','36.46.199.53','','3','show.php?itemid=4','','');
INSERT INTO `destoon_sell_5` VALUES('5','216','0','0','1','0','0','出租','','0','出租信息介绍出租信息介绍出租信息介绍出租信息介绍出租信息介绍出租信息介绍出租信息介绍出租信息介绍出租信息介绍出租信息介绍','','','','','','','','','0.00','0','0','0','','出租,出租,供应默认分类','','8','http://www.adbangbang.com/file/upload/201608/01/133440101.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1470029682','2016-08-01','1470029655','2016-08-01','117.38.202.33','','3','show.php?itemid=5','','');
INSERT INTO `destoon_sell_5` VALUES('6','216','0','1','1','0','0','求购','','0','求购信息介绍求购信息介绍求购信息介绍求购信息介绍求购信息介绍求购信息介绍求购信息介绍求购信息介绍求购信息介绍求购信息介绍','','','','','','','','','0.00','0','0','0','','求购,求购,供应默认分类','','27','http://www.adbangbang.com/file/upload/201608/01/133505751.jpg.thumb.jpg','','','admin','1','DESTOON B2B网站管理系统','0','0','嘉客','','','','','','','','','0','admin','1470029712','2016-08-01','1470029682','2016-08-01','117.38.202.33','','3','show.php?itemid=6','','');
INSERT INTO `destoon_sell_5` VALUES('7','1','0','0','27','0','0','旭化成的回报vcghvvdd','','0','共产党对彼此都是在为我好喜欢这个颜色好漂亮哦！','','','','','','','孤独的处处','','0.00','0','0','3','','旭化成的回报vcghvvdd,出租,供应默认分类','','0','','','','wang123456','5','王刚','0','0','王刚','','15109265989','陕西省西安市南二环东段','','','','','','0','wang123456','1470271655','2016-08-04','1470271655','2016-08-04','36.40.39.85','','2','show.php?itemid=7','','');
INSERT INTO `destoon_sell_5` VALUES('8','230','0','1','337','0','0','排名排名排名排名欧豪','','0','在水都不关系你还是你 生日过后S股和GH是如何ZFH','','','','','','','u那边hbubiouhu9n','','0.00','0','0','3','','排名排名排名排名欧豪,出售,广告媒体,电视/广播,楼宇电视','','0','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012572','2016-08-24','1472012572','2016-08-24','113.138.20.60','','3','show.php?itemid=8','','');
INSERT INTO `destoon_sell_5` VALUES('9','243','0','0','337','0','0','D个SFH转发或者返回状态','','0','在电话中对节奏的国家法规化妆行动计划就继续继续讲就就在他就在大家在向大家','','','','','','','身份证在大家早到家','','0.00','0','0','3','','D个SFH转发或者返回状态,出租,广告媒体,报刊广告,陕西地区','','0','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012623','2016-08-24','1472012623','2016-08-24','113.138.20.60','','3','show.php?itemid=9','','');
INSERT INTO `destoon_sell_5` VALUES('10','304','0','0','337','0','0','SFH自动关机化妆','','0','的就知道他还能发货真的很热门推荐好土豪做','','','','','','','HDF这种地方合作的条件和自动关机照相机','','0.00','0','0','3','','SFH自动关机化妆,出租,活动策划,公关活动策划','','0','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012677','2016-08-24','1472012677','2016-08-24','113.138.20.60','','3','show.php?itemid=10','','');
INSERT INTO `destoon_sell_5` VALUES('11','239','0','0','337','0','0','阿尔高SGS股SG好','','0','估计方法很好的发挥经济国家，好看了就好发给你个孩子都会','','','','','','','S师范SF个 SGSGhost','','0.00','0','0','3','','阿尔高SGS股SG好,出租,广告媒体,电梯广告,电梯门','','0','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012810','2016-08-24','1472012810','2016-08-24','113.138.20.60','','3','show.php?itemid=11','','');
INSERT INTO `destoon_sell_5` VALUES('12','299','0','0','337','0','0','是F会自动返回的返回值的感觉自己家  它会自动回','','0','好地方合作的符号积分估计这仍然还在等符号都会的合作电话号','','','','','','','多好的好的孩子的','','0.00','0','0','3','','是F会自动返回的返回值的感觉自己家  它会自动回,出租,创意设计,模型设计','','3','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012835','2016-08-24','1472012835','2016-08-24','113.138.20.60','','3','show.php?itemid=12','','');
INSERT INTO `destoon_sell_5` VALUES('13','240','0','0','337','0','0','F你在挂机的国家统计局','','0','dhDhdhh计划在当天回天津中添加字体及整体经济土家族的孩子的工作过 HSR和WH','','','','','','','','','0.00','0','0','3','','F你在挂机的国家统计局,出租,广告媒体,电梯广告,刷屏机','','0','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012855','2016-08-24','1472012855','2016-08-24','113.138.20.60','','3','show.php?itemid=13','','');
INSERT INTO `destoon_sell_5` VALUES('14','253','0','0','337','0','0','分行副行长的感觉卖家则替换','','0','gSDbjjjkhsfgyetjj hdfzdfhdh添加附件的附件实际上就知道时间是国家关系飞机非关系下飞机就发现发过节费','','','','','','','赶紧发过节费','','0.00','0','0','3','','分行副行长的感觉卖家则替换,出租,广告媒体,户外广告,三面翻','','0','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012901','2016-08-24','1472012901','2016-08-24','113.138.20.60','','3','show.php?itemid=14','','');
INSERT INTO `destoon_sell_5` VALUES('15','301','0','0','337','0','0','电话能否根据这份感觉W活动图就知道该自己的继续挂机','','0','的赶紧回家孩子都很好就他或多或少艾特他很听话俺天天在','','','','','','','的活动','','0.00','0','0','3','','电话能否根据这份感觉W活动图就知道该自己的继续挂机,出租,创意设计,广告字体','','3','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012925','2016-08-24','1472012925','2016-08-24','113.138.20.60','','3','show.php?itemid=15','','');
INSERT INTO `destoon_sell_5` VALUES('16','241','0','0','337','0','0','是H符号HR哈尔一','','0','孩子的活动房合同号一天的活动和','','','','','','','挺好的天天','','0.00','0','0','3','','是H符号HR哈尔一,出租,广告媒体,电梯广告,电梯按钮','','4','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472012962','2016-08-24','1472012962','2016-08-24','113.138.20.60','','3','show.php?itemid=16','','');
INSERT INTO `destoon_sell_5` VALUES('17','254','0','0','337','0','0','是大概是个好听话','','0','sgdfhgfghjhhagjjsfk hadhdha','','','','','','','sGSGG','','0.00','0','0','3','','是大概是个好听话,出租,广告媒体,户外广告,LED屏','','7','','','','lihang5218','7','西安步旗广告文化传播有限公司','1','0','李航','02987871456','18291849687','陕西省西安市碑林区友谊西路','','','','lihang5218','','0','lihang5218','1472035728','2016-08-24','1472035728','2016-08-24','113.138.20.60','','3','show.php?itemid=17','','');

DROP TABLE IF EXISTS `destoon_sell_data_5`;
CREATE TABLE `destoon_sell_data_5` (
  `itemid` bigint(20) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='供应内容';

INSERT INTO `destoon_sell_data_5` VALUES('1','&nbsp;出租产品测试出租产品测试出租产品测试出租产品测试出租产品测试出租产品测试出租产品测试出租产品测试');
INSERT INTO `destoon_sell_data_5` VALUES('2','&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息');
INSERT INTO `destoon_sell_data_5` VALUES('3','&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息&nbsp;出租信息');
INSERT INTO `destoon_sell_data_5` VALUES('4','&nbsp;出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息出租信息');
INSERT INTO `destoon_sell_data_5` VALUES('5','&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍&nbsp;出租信息介绍');
INSERT INTO `destoon_sell_data_5` VALUES('6','&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍&nbsp;求购信息介绍');
INSERT INTO `destoon_sell_data_5` VALUES('7','&nbsp;共产党对彼此都是在为我好喜欢这个颜色好漂亮哦！');
INSERT INTO `destoon_sell_data_5` VALUES('8','&nbsp;在水都不关系你还是你 生日过后S股和GH是如何ZFH');
INSERT INTO `destoon_sell_data_5` VALUES('9','&nbsp;在电话中对节奏的国家法规化妆行动计划就继续继续讲就就在他就在大家在向大家');
INSERT INTO `destoon_sell_data_5` VALUES('10','&nbsp;的就知道他还能发货真的很热门推荐好土豪做');
INSERT INTO `destoon_sell_data_5` VALUES('11','&nbsp;估计方法很好的发挥经济国家，好看了就好发给你个孩子都会');
INSERT INTO `destoon_sell_data_5` VALUES('12','&nbsp;好地方合作的符号积分估计这仍然还在等符号都会的合作电话号');
INSERT INTO `destoon_sell_data_5` VALUES('13','&nbsp;dhDhdhh计划在当天回天津中添加字体及整体经济土家族的孩子的工作过 HSR和WH');
INSERT INTO `destoon_sell_data_5` VALUES('14','&nbsp;gSDbjjjkhsfgyetjj hdfzdfhdh添加附件的附件实际上就知道时间是国家关系飞机非关系下飞机就发现发过节费');
INSERT INTO `destoon_sell_data_5` VALUES('15','&nbsp;的赶紧回家孩子都很好就他或多或少艾特他很听话俺天天在');
INSERT INTO `destoon_sell_data_5` VALUES('16','&nbsp;孩子的活动房合同号一天的活动和');
INSERT INTO `destoon_sell_data_5` VALUES('17','&nbsp;sgdfhgfghjhhagjjsfk hadhdha&nbsp;');

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='供应搜索';

INSERT INTO `destoon_sell_search_5` VALUES('1','216','0','出租产品测试,出租,供应默认分类','3','1469981470');
INSERT INTO `destoon_sell_search_5` VALUES('2','216','0','出租,出租,供应默认分类','3','1469981604');
INSERT INTO `destoon_sell_search_5` VALUES('3','216','1','求购,求购,供应默认分类','3','1469981608');
INSERT INTO `destoon_sell_search_5` VALUES('4','216','1','求购,求购,供应默认分类','3','1469981608');
INSERT INTO `destoon_sell_search_5` VALUES('5','216','0','出租,出租,供应默认分类','3','1469981614');
INSERT INTO `destoon_sell_search_5` VALUES('6','216','0','求购,求购,供应默认分类','3','1469981615');
INSERT INTO `destoon_sell_search_5` VALUES('7','1','0','旭化成的回报vcghvvdd,出租,供应默认分类','2','1470240527');
INSERT INTO `destoon_sell_search_5` VALUES('8','230','0','排名排名排名排名欧豪,出售,广告媒体,电视/广播,楼宇电视','3','1471968742');
INSERT INTO `destoon_sell_search_5` VALUES('9','243','0','D个SFH转发或者返回状态,出租,广告媒体,报刊广告,陕西地区','3','1471968743');
INSERT INTO `destoon_sell_search_5` VALUES('10','304','0','SFH自动关机化妆,出租,活动策划,公关活动策划','3','1471968744');
INSERT INTO `destoon_sell_search_5` VALUES('11','239','0','阿尔高SGS股SG好,出租,广告媒体,电梯广告,电梯门','3','1471968746');
INSERT INTO `destoon_sell_search_5` VALUES('12','299','0','是F会自动返回的返回值的感觉自己家  它会自动回,出租,创意设计,模型设计','3','1471968747');
INSERT INTO `destoon_sell_search_5` VALUES('13','240','0','F你在挂机的国家统计局,出租,广告媒体,电梯广告,刷屏机','3','1471968747');
INSERT INTO `destoon_sell_search_5` VALUES('14','253','0','分行副行长的感觉卖家则替换,出租,广告媒体,户外广告,三面翻','3','1471968748');
INSERT INTO `destoon_sell_search_5` VALUES('15','301','0','电话能否根据这份感觉W活动图就知道该自己的继续挂机,出租,创意设计,广告字体','3','1471968748');
INSERT INTO `destoon_sell_search_5` VALUES('16','241','0','是H符号HR哈尔一,出租,广告媒体,电梯广告,电梯按钮','3','1471968749');
INSERT INTO `destoon_sell_search_5` VALUES('17','254','0','是大概是个好听话,出租,广告媒体,户外广告,LED屏','3','1471969128');

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

INSERT INTO `destoon_setting` VALUES('1','page_group','3');
INSERT INTO `destoon_setting` VALUES('1','page_price','12');
INSERT INTO `destoon_setting` VALUES('1','page_quote','5');
INSERT INTO `destoon_setting` VALUES('1','page_mall','10');
INSERT INTO `destoon_setting` VALUES('1','page_sell','10');
INSERT INTO `destoon_setting` VALUES('1','page_com','20');
INSERT INTO `destoon_setting` VALUES('1','page_trade','10');
INSERT INTO `destoon_setting` VALUES('1','page_catalog','1');
INSERT INTO `destoon_setting` VALUES('1','page_bigcat','');
INSERT INTO `destoon_setting` VALUES('1','message_weixin','0');
INSERT INTO `destoon_setting` VALUES('1','message_type','1,2,3');
INSERT INTO `destoon_setting` VALUES('1','message_time','60');
INSERT INTO `destoon_setting` VALUES('1','message_group','6,7');
INSERT INTO `destoon_setting` VALUES('1','message_email','0');
INSERT INTO `destoon_setting` VALUES('1','mail_log','1');
INSERT INTO `destoon_setting` VALUES('1','mail_name','');
INSERT INTO `destoon_setting` VALUES('1','mail_sender','');
INSERT INTO `destoon_setting` VALUES('1','mail_sign','');
INSERT INTO `destoon_setting` VALUES('1','smtp_user','');
INSERT INTO `destoon_setting` VALUES('1','smtp_pass','');
INSERT INTO `destoon_setting` VALUES('1','smtp_auth','1');
INSERT INTO `destoon_setting` VALUES('1','smtp_port','25');
INSERT INTO `destoon_setting` VALUES('1','smtp_host','');
INSERT INTO `destoon_setting` VALUES('1','mail_delimiter','1');
INSERT INTO `destoon_setting` VALUES('1','mail_type','close');
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
INSERT INTO `destoon_setting` VALUES('2','send_types','不需要物流|平邮|EMS|顺丰快递|申通E物流|圆通速递|中通速递|宅急送|韵达快运|天天快递|联邦快递|汇通快运|华强物流|其它');
INSERT INTO `destoon_setting` VALUES('2','deposit','1000');
INSERT INTO `destoon_setting` VALUES('2','trade_day','10');
INSERT INTO `destoon_setting` VALUES('2','pay_banks','现金|网银在线|贝宝|支付宝|财付通|招商银行|中国工商银行|中国农业银行|中国建设银行|中国交通银行|中国银行|邮政储蓄|邮政汇款');
INSERT INTO `destoon_setting` VALUES('2','cash_fee_max','50');
INSERT INTO `destoon_setting` VALUES('2','cash_fee_min','1');
INSERT INTO `destoon_setting` VALUES('2','cash_times','3');
INSERT INTO `destoon_setting` VALUES('2','cash_min','50');
INSERT INTO `destoon_setting` VALUES('2','cash_max','10000');
INSERT INTO `destoon_setting` VALUES('2','cash_fee','1');
INSERT INTO `destoon_setting` VALUES('2','pay_url','');
INSERT INTO `destoon_setting` VALUES('2','cash_enable','1');
INSERT INTO `destoon_setting` VALUES('2','cash_banks','招商银行|中国工商银行|中国农业银行|中国建设银行|中国交通银行|中国银行|邮政储蓄|贝宝|支付宝|财付通');
INSERT INTO `destoon_setting` VALUES('2','mincharge','0');
INSERT INTO `destoon_setting` VALUES('2','pay_online','1');
INSERT INTO `destoon_setting` VALUES('2','link_check','2');
INSERT INTO `destoon_setting` VALUES('2','credit_clear','0');
INSERT INTO `destoon_setting` VALUES('2','credit_save','0');
INSERT INTO `destoon_setting` VALUES('2','credit_check','2');
INSERT INTO `destoon_setting` VALUES('2','page_clear','0');
INSERT INTO `destoon_setting` VALUES('2','page_save','0');
INSERT INTO `destoon_setting` VALUES('2','page_check','2');
INSERT INTO `destoon_setting` VALUES('2','news_clear','0');
INSERT INTO `destoon_setting` VALUES('2','news_save','0');
INSERT INTO `destoon_setting` VALUES('2','news_check','2');
INSERT INTO `destoon_setting` VALUES('2','introduce_clear','0');
INSERT INTO `destoon_setting` VALUES('2','introduce_save','0');
INSERT INTO `destoon_setting` VALUES('2','introduce_length','100');
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
INSERT INTO `destoon_setting` VALUES('2','vmobile','1');
INSERT INTO `destoon_setting` VALUES('2','vtruename','1');
INSERT INTO `destoon_setting` VALUES('2','vemail','1');
INSERT INTO `destoon_setting` VALUES('2','vmember','1');
INSERT INTO `destoon_setting` VALUES('2','chat_img','1');
INSERT INTO `destoon_setting` VALUES('2','chat_url','1');
INSERT INTO `destoon_setting` VALUES('2','chat_ext','jpg|gif|png|rar|zip|pdf|doc|xls|ppt|docx|xlsx|pptx');
INSERT INTO `destoon_setting` VALUES('2','chat_file','1');
INSERT INTO `destoon_setting` VALUES('2','chat_mintime','3');
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
INSERT INTO `destoon_setting` VALUES('oauth-taobao','key','');
INSERT INTO `destoon_setting` VALUES('oauth-netease','key','');
INSERT INTO `destoon_setting` VALUES('pay-weixin','percent','1');
INSERT INTO `destoon_setting` VALUES('4','group_price','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_inquiry','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_message','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_buy','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_contact','5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('4','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('4','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('4','seo_title_show','{内容标题}{分类名称}{分类SEO标题}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('4','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('4','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('4','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('4','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('4','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('4','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('4','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('4','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('4','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('4','list_html','0');
INSERT INTO `destoon_setting` VALUES('4','index_html','0');
INSERT INTO `destoon_setting` VALUES('4','page_subcat','6');
INSERT INTO `destoon_setting` VALUES('4','pagesize','20');
INSERT INTO `destoon_setting` VALUES('4','page_inew','10');
INSERT INTO `destoon_setting` VALUES('4','page_inews','10');
INSERT INTO `destoon_setting` VALUES('4','page_ivip','10');
INSERT INTO `destoon_setting` VALUES('4','page_irec','10');
INSERT INTO `destoon_setting` VALUES('4','level','推荐公司');
INSERT INTO `destoon_setting` VALUES('4','map','baidu');
INSERT INTO `destoon_setting` VALUES('4','vip_honor','1');
INSERT INTO `destoon_setting` VALUES('4','vip_maxyear','5');
INSERT INTO `destoon_setting` VALUES('4','vip_year','1');
INSERT INTO `destoon_setting` VALUES('4','vip_cominfo','1');
INSERT INTO `destoon_setting` VALUES('4','vip_maxgroupvip','3');
INSERT INTO `destoon_setting` VALUES('4','delvip','1');
INSERT INTO `destoon_setting` VALUES('4','openall','0');
INSERT INTO `destoon_setting` VALUES('4','homeurl','0');
INSERT INTO `destoon_setting` VALUES('4','comment','1');
INSERT INTO `destoon_setting` VALUES('4','split','0');
INSERT INTO `destoon_setting` VALUES('4','order','vip desc,userid desc');
INSERT INTO `destoon_setting` VALUES('4','fields','userid,username,company,linkurl,thumb,catid,areaid,vip,groupid,validated,introduce,business,mode');
INSERT INTO `destoon_setting` VALUES('5','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('5','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('5','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('5','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('5','seo_description_list','');
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
INSERT INTO `destoon_setting` VALUES('5','split','0');
INSERT INTO `destoon_setting` VALUES('5','keylink','0');
INSERT INTO `destoon_setting` VALUES('5','clear_link','0');
INSERT INTO `destoon_setting` VALUES('5','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('5','cat_property','0');
INSERT INTO `destoon_setting` VALUES('5','inquiry_ask','我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？|请您发一份比较详细的产品规格说明，谢谢！|请问贵公司产品是否可以代理？代理条件是什么？|我公司有意购买此产品，可否提供此产品的报价单和最小起订量？');
INSERT INTO `destoon_setting` VALUES('5','type','出租|出售');
INSERT INTO `destoon_setting` VALUES('5','inquiry_type','单价|产品规格|型号|价格条款|原产地|能否提供样品|最小订货量|交货期|供货能力|销售条款及附加条件|包装方式|质量/安全认证 ');
INSERT INTO `destoon_setting` VALUES('5','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,price,unit,minamount,amount');
INSERT INTO `destoon_setting` VALUES('6','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','group_index','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','seo_description_show','');
INSERT INTO `destoon_setting` VALUES('6','seo_keywords_show','');
INSERT INTO `destoon_setting` VALUES('6','seo_title_show','{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('6','seo_description_list','');
INSERT INTO `destoon_setting` VALUES('6','seo_keywords_list','');
INSERT INTO `destoon_setting` VALUES('6','seo_description_index','');
INSERT INTO `destoon_setting` VALUES('6','seo_title_list','{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES('6','seo_keywords_index','');
INSERT INTO `destoon_setting` VALUES('6','seo_title_index','{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES('6','php_item_urlid','0');
INSERT INTO `destoon_setting` VALUES('6','htm_item_urlid','1');
INSERT INTO `destoon_setting` VALUES('6','show_html','0');
INSERT INTO `destoon_setting` VALUES('6','htm_item_prefix','');
INSERT INTO `destoon_setting` VALUES('6','php_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('6','htm_list_urlid','0');
INSERT INTO `destoon_setting` VALUES('6','htm_list_prefix','');
INSERT INTO `destoon_setting` VALUES('6','list_html','0');
INSERT INTO `destoon_setting` VALUES('6','index_html','0');
INSERT INTO `destoon_setting` VALUES('6','page_subcat','1');
INSERT INTO `destoon_setting` VALUES('6','max_width','900');
INSERT INTO `destoon_setting` VALUES('6','pagesize','20');
INSERT INTO `destoon_setting` VALUES('6','level','推荐信息');
INSERT INTO `destoon_setting` VALUES('6','fulltext','0');
INSERT INTO `destoon_setting` VALUES('6','split','0');
INSERT INTO `destoon_setting` VALUES('6','keylink','0');
INSERT INTO `destoon_setting` VALUES('6','clear_link','0');
INSERT INTO `destoon_setting` VALUES('6','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('6','cat_property','0');
INSERT INTO `destoon_setting` VALUES('6','price_ask','请您发一份比较详细的产品规格说明，谢谢！|请问您对此产品是长期有需求吗？|请问您对此产品有多大的需求量？');
INSERT INTO `destoon_setting` VALUES('6','type','求租|求购');
INSERT INTO `destoon_setting` VALUES('6','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,price');
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
INSERT INTO `destoon_setting` VALUES('6','order','editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES('6','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('6','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('6','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('6','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('6','template_price','');
INSERT INTO `destoon_setting` VALUES('6','template_my','');
INSERT INTO `destoon_setting` VALUES('6','template_search','');
INSERT INTO `destoon_setting` VALUES('6','template_show','');
INSERT INTO `destoon_setting` VALUES('6','template_list','');
INSERT INTO `destoon_setting` VALUES('6','template_index','');
INSERT INTO `destoon_setting` VALUES('1','water_text','www.destoon.com');
INSERT INTO `destoon_setting` VALUES('1','water_jpeg_quality','90');
INSERT INTO `destoon_setting` VALUES('21','credit_color','100');
INSERT INTO `destoon_setting` VALUES('21','credit_del','5');
INSERT INTO `destoon_setting` VALUES('21','credit_add','2');
INSERT INTO `destoon_setting` VALUES('21','pre_view','500');
INSERT INTO `destoon_setting` VALUES('21','fee_back','0');
INSERT INTO `destoon_setting` VALUES('21','fee_period','0');
INSERT INTO `destoon_setting` VALUES('21','fee_view','0');
INSERT INTO `destoon_setting` VALUES('21','fee_add','0');
INSERT INTO `destoon_setting` VALUES('1','water_transition','60');
INSERT INTO `destoon_setting` VALUES('1','file_my','my.php');
INSERT INTO `destoon_setting` VALUES('1','water_mark','watermark.png');
INSERT INTO `destoon_setting` VALUES('1','file_login','login.php');
INSERT INTO `destoon_setting` VALUES('1','file_register','register.php');
INSERT INTO `destoon_setting` VALUES('1','defend_proxy','0');
INSERT INTO `destoon_setting` VALUES('1','defend_reload','0');
INSERT INTO `destoon_setting` VALUES('1','defend_cc','0');
INSERT INTO `destoon_setting` VALUES('1','safe_domain','');
INSERT INTO `destoon_setting` VALUES('1','check_referer','1');
INSERT INTO `destoon_setting` VALUES('1','uploaddir','Ym/d');
INSERT INTO `destoon_setting` VALUES('1','uploadsize','2048');
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
INSERT INTO `destoon_setting` VALUES('22','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('22','question_add','2');
INSERT INTO `destoon_setting` VALUES('22','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('22','check_add','2');
INSERT INTO `destoon_setting` VALUES('22','question_message','2');
INSERT INTO `destoon_setting` VALUES('22','captcha_message','2');
INSERT INTO `destoon_setting` VALUES('22','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('22','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('22','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('22','group_contact','3,5,6,7');
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
INSERT INTO `destoon_setting` VALUES('22','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('22','clear_link','0');
INSERT INTO `destoon_setting` VALUES('22','keylink','0');
INSERT INTO `destoon_setting` VALUES('22','split','0');
INSERT INTO `destoon_setting` VALUES('22','fulltext','0');
INSERT INTO `destoon_setting` VALUES('22','level','推荐信息');
INSERT INTO `destoon_setting` VALUES('22','swfu','2');
INSERT INTO `destoon_setting` VALUES('22','cat_property','0');
INSERT INTO `destoon_setting` VALUES('22','message_ask','请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES('22','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,islink');
INSERT INTO `destoon_setting` VALUES('22','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('22','order','edittime desc');
INSERT INTO `destoon_setting` VALUES('22','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('22','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('22','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('22','template_message','');
INSERT INTO `destoon_setting` VALUES('22','template_my','');
INSERT INTO `destoon_setting` VALUES('22','template_search','');
INSERT INTO `destoon_setting` VALUES('22','template_show','');
INSERT INTO `destoon_setting` VALUES('22','template_list','');
INSERT INTO `destoon_setting` VALUES('22','template_index','');
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
INSERT INTO `destoon_setting` VALUES('group-7','job_limit','0');
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
INSERT INTO `destoon_setting` VALUES('group-7','moduleids','18,9,22,21,5,6');
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
INSERT INTO `destoon_setting` VALUES('group-7','reg','0');
INSERT INTO `destoon_setting` VALUES('group-7','grade','1');
INSERT INTO `destoon_setting` VALUES('group-7','commission','0');
INSERT INTO `destoon_setting` VALUES('group-7','discount','');
INSERT INTO `destoon_setting` VALUES('group-7','fee','2000');
INSERT INTO `destoon_setting` VALUES('group-7','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('destoon','backtime','1470705800');
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
INSERT INTO `destoon_setting` VALUES('26','clear_link','0');
INSERT INTO `destoon_setting` VALUES('26','keylink','0');
INSERT INTO `destoon_setting` VALUES('26','split','0');
INSERT INTO `destoon_setting` VALUES('26','fulltext','0');
INSERT INTO `destoon_setting` VALUES('26','level','推荐信息');
INSERT INTO `destoon_setting` VALUES('26','swfu','2');
INSERT INTO `destoon_setting` VALUES('26','page_irec','8');
INSERT INTO `destoon_setting` VALUES('26','save_remotepic','0');
INSERT INTO `destoon_setting` VALUES('26','cat_property','0');
INSERT INTO `destoon_setting` VALUES('26','message_ask','请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES('26','fields','itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,msn,ali,skype,validated,islink');
INSERT INTO `destoon_setting` VALUES('26','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('26','order','edittime desc');
INSERT INTO `destoon_setting` VALUES('26','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('26','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('26','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('26','template_message','');
INSERT INTO `destoon_setting` VALUES('26','template_my','');
INSERT INTO `destoon_setting` VALUES('26','template_search','');
INSERT INTO `destoon_setting` VALUES('26','template_show','');
INSERT INTO `destoon_setting` VALUES('26','template_list','');
INSERT INTO `destoon_setting` VALUES('26','template_index','index-zbxx');
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
INSERT INTO `destoon_setting` VALUES('1','ftp_remote','0');
INSERT INTO `destoon_setting` VALUES('1','max_len','20000');
INSERT INTO `destoon_setting` VALUES('1','schcate_limit','10');
INSERT INTO `destoon_setting` VALUES('1','pagesize','20');
INSERT INTO `destoon_setting` VALUES('1','pushtime','0');
INSERT INTO `destoon_setting` VALUES('1','online','1200');
INSERT INTO `destoon_setting` VALUES('1','search_limit','1');
INSERT INTO `destoon_setting` VALUES('1','max_kw','30');
INSERT INTO `destoon_setting` VALUES('1','min_kw','3');
INSERT INTO `destoon_setting` VALUES('1','search_check_kw','0');
INSERT INTO `destoon_setting` VALUES('1','save_draft','0');
INSERT INTO `destoon_setting` VALUES('1','search_kw','1');
INSERT INTO `destoon_setting` VALUES('1','search_tips','1');
INSERT INTO `destoon_setting` VALUES('1','anti_spam','1');
INSERT INTO `destoon_setting` VALUES('1','log_credit','1');
INSERT INTO `destoon_setting` VALUES('1','pages_mode','0');
INSERT INTO `destoon_setting` VALUES('1','lazy','0');
INSERT INTO `destoon_setting` VALUES('1','gzip_enable','0');
INSERT INTO `destoon_setting` VALUES('1','cache_hits','0');
INSERT INTO `destoon_setting` VALUES('pay-weixin','order','2');
INSERT INTO `destoon_setting` VALUES('pay-weixin','name','微信');
INSERT INTO `destoon_setting` VALUES('pay-chinabank','enable','0');
INSERT INTO `destoon_setting` VALUES('2','chat_poll','3');
INSERT INTO `destoon_setting` VALUES('2','chat_timeout','600');
INSERT INTO `destoon_setting` VALUES('2','chat_maxlen','300');
INSERT INTO `destoon_setting` VALUES('2','alert_check','2');
INSERT INTO `destoon_setting` VALUES('2','alertid','5|6|22');
INSERT INTO `destoon_setting` VALUES('2','auth_days','3');
INSERT INTO `destoon_setting` VALUES('2','lock_hour','1');
INSERT INTO `destoon_setting` VALUES('2','login_times','10');
INSERT INTO `destoon_setting` VALUES('2','captcha_sendmessage','2');
INSERT INTO `destoon_setting` VALUES('2','maxtouser','5');
INSERT INTO `destoon_setting` VALUES('2','edit_check','thumb,areaid,business,regyear,capital,address,telephone,content');
INSERT INTO `destoon_setting` VALUES('2','usernote','');
INSERT INTO `destoon_setting` VALUES('2','iptimeout','0');
INSERT INTO `destoon_setting` VALUES('2','banagent','');
INSERT INTO `destoon_setting` VALUES('2','sms_register','0');
INSERT INTO `destoon_setting` VALUES('2','defend_proxy','0');
INSERT INTO `destoon_setting` VALUES('2','credit_register','20');
INSERT INTO `destoon_setting` VALUES('2','money_register','0');
INSERT INTO `destoon_setting` VALUES('2','question_register','0');
INSERT INTO `destoon_setting` VALUES('2','captcha_register','0');
INSERT INTO `destoon_setting` VALUES('pay-weixin','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-netease','enable','0');
INSERT INTO `destoon_setting` VALUES('oauth-taobao','enable','0');
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
INSERT INTO `destoon_setting` VALUES('5','order','editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES('5','editor','Destoon');
INSERT INTO `destoon_setting` VALUES('5','introduce_length','120');
INSERT INTO `destoon_setting` VALUES('5','thumb_height','100');
INSERT INTO `destoon_setting` VALUES('5','thumb_width','100');
INSERT INTO `destoon_setting` VALUES('5','template_inquiry','');
INSERT INTO `destoon_setting` VALUES('5','template_compare','');
INSERT INTO `destoon_setting` VALUES('5','template_my','');
INSERT INTO `destoon_setting` VALUES('5','template_search','');
INSERT INTO `destoon_setting` VALUES('5','template_show','');
INSERT INTO `destoon_setting` VALUES('5','template_list','');
INSERT INTO `destoon_setting` VALUES('5','template_index','');
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
INSERT INTO `destoon_setting` VALUES('26','credit_add','2');
INSERT INTO `destoon_setting` VALUES('26','credit_del','5');
INSERT INTO `destoon_setting` VALUES('26','credit_color','100');
INSERT INTO `destoon_setting` VALUES('26','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('22','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('22','fee_add','0');
INSERT INTO `destoon_setting` VALUES('22','fee_view','0');
INSERT INTO `destoon_setting` VALUES('22','fee_period','0');
INSERT INTO `destoon_setting` VALUES('22','fee_back','0');
INSERT INTO `destoon_setting` VALUES('22','credit_add','2');
INSERT INTO `destoon_setting` VALUES('22','credit_del','5');
INSERT INTO `destoon_setting` VALUES('22','credit_color','100');
INSERT INTO `destoon_setting` VALUES('22','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('1','cache_search','0');
INSERT INTO `destoon_setting` VALUES('1','task_item','7200');
INSERT INTO `destoon_setting` VALUES('1','task_index','600');
INSERT INTO `destoon_setting` VALUES('1','task_list','1800');
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
INSERT INTO `destoon_setting` VALUES('1','trade_id','');
INSERT INTO `destoon_setting` VALUES('1','trade_pw','');
INSERT INTO `destoon_setting` VALUES('1','trade_hm','http://www.alipay.com/');
INSERT INTO `destoon_setting` VALUES('1','im_qq','1');
INSERT INTO `destoon_setting` VALUES('1','im_ali','1');
INSERT INTO `destoon_setting` VALUES('1','im_msn','0');
INSERT INTO `destoon_setting` VALUES('1','im_skype','0');
INSERT INTO `destoon_setting` VALUES('1','trade','');
INSERT INTO `destoon_setting` VALUES('1','trade_nm','支付宝');
INSERT INTO `destoon_setting` VALUES('1','im_web','1');
INSERT INTO `destoon_setting` VALUES('1','credit_unit','点');
INSERT INTO `destoon_setting` VALUES('1','admin_left','188');
INSERT INTO `destoon_setting` VALUES('2','credit_less','0');
INSERT INTO `destoon_setting` VALUES('2','credit_edit','10');
INSERT INTO `destoon_setting` VALUES('2','credit_login','1');
INSERT INTO `destoon_setting` VALUES('2','credit_user','20');
INSERT INTO `destoon_setting` VALUES('2','credit_ip','2');
INSERT INTO `destoon_setting` VALUES('2','credit_maxip','50');
INSERT INTO `destoon_setting` VALUES('2','credit_charge','1');
INSERT INTO `destoon_setting` VALUES('2','credit_add_credit','2');
INSERT INTO `destoon_setting` VALUES('2','credit_del_credit','5');
INSERT INTO `destoon_setting` VALUES('2','credit_add_news','2');
INSERT INTO `destoon_setting` VALUES('2','credit_del_news','5');
INSERT INTO `destoon_setting` VALUES('2','credit_add_page','2');
INSERT INTO `destoon_setting` VALUES('2','credit_del_page','5');
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
INSERT INTO `destoon_setting` VALUES('6','group_contact','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('6','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('6','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('6','captcha_price','2');
INSERT INTO `destoon_setting` VALUES('6','question_price','2');
INSERT INTO `destoon_setting` VALUES('6','check_add','2');
INSERT INTO `destoon_setting` VALUES('6','captcha_add','2');
INSERT INTO `destoon_setting` VALUES('6','question_add','2');
INSERT INTO `destoon_setting` VALUES('6','fee_mode','1');
INSERT INTO `destoon_setting` VALUES('6','fee_currency','money');
INSERT INTO `destoon_setting` VALUES('6','fee_add','0');
INSERT INTO `destoon_setting` VALUES('6','fee_view','0');
INSERT INTO `destoon_setting` VALUES('6','fee_period','0');
INSERT INTO `destoon_setting` VALUES('6','fee_back','0');
INSERT INTO `destoon_setting` VALUES('6','credit_add','2');
INSERT INTO `destoon_setting` VALUES('6','credit_del','5');
INSERT INTO `destoon_setting` VALUES('6','credit_color','100');
INSERT INTO `destoon_setting` VALUES('6','credit_refresh','1');
INSERT INTO `destoon_setting` VALUES('5','group_list','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_show','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_contact','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_search','3,5,6,7');
INSERT INTO `destoon_setting` VALUES('5','group_color','6,7');
INSERT INTO `destoon_setting` VALUES('5','group_refresh','7');
INSERT INTO `destoon_setting` VALUES('5','group_compare','3,5,6,7');
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
INSERT INTO `destoon_setting` VALUES('1','credit_name','积分');
INSERT INTO `destoon_setting` VALUES('1','money_sign','￥');
INSERT INTO `destoon_setting` VALUES('1','money_unit','元');
INSERT INTO `destoon_setting` VALUES('1','money_name','资金');
INSERT INTO `destoon_setting` VALUES('1','city_ip','0');
INSERT INTO `destoon_setting` VALUES('1','city','1');
INSERT INTO `destoon_setting` VALUES('1','close_reason','网站维护中，请稍候访问...');
INSERT INTO `destoon_setting` VALUES('1','close','0');
INSERT INTO `destoon_setting` VALUES('1','icpno','');
INSERT INTO `destoon_setting` VALUES('1','telephone','');
INSERT INTO `destoon_setting` VALUES('1','copyright','(c)2008-2015 西安步旗广告文化传播有限公司 B SYSTEM All Rights Reserved');
INSERT INTO `destoon_setting` VALUES('1','logo','/file/images/logo.jpg');
INSERT INTO `destoon_setting` VALUES('1','sitename','西安步旗广告文化传播有限公司');
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

INSERT INTO `destoon_style` VALUES('2','0','深蓝模板','blue','homepage','Destoon.COM',',6,7,','0','money','0','0','2','1466996173','admin','1466996173','0');
INSERT INTO `destoon_style` VALUES('3','0','绿色模板','green','homepage','Destoon.COM',',6,7,','0','money','0','0','1','1466996173','admin','1466996173','0');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员升级';

INSERT INTO `destoon_upgrade` VALUES('1','5','wang123456','7','0','0','王刚','王刚','15109265989','15109265989','1838808216@qq.com','','','wang123456','','','1472108040','36.40.52.138','','0','0','','0','2','');

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='上传记录1';

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
INSERT INTO `destoon_upload_1` VALUES('29','77ab1515cc8841f45f337fbc79ed5396','5','1','http://www.adbangbang.com/file/upload/201608/01/111010391.jpg.thumb.jpg','25560','jpg','album','210','204','1470021010','admin','36.46.199.53');
INSERT INTO `destoon_upload_1` VALUES('26','5fbdd8ce55f8202d1398fc7705f2e335','26','0','http://127.0.0.196:89/file/upload/201607/30/181118621.jpg.thumb.jpg','16808','jpg','album','201','200','1469873478','admin','127.0.0.196');
INSERT INTO `destoon_upload_1` VALUES('25','35e7fce4de103462db2364dfa3abf34d','26','0','http://127.0.0.196:89/file/upload/201607/30/181015151.jpg','17526','jpg','thumb','209','249','1469873415','admin','127.0.0.196');
INSERT INTO `destoon_upload_1` VALUES('27','970931468ad8e52f4051110b8d368ef2','2','3','http://www.adbangbang.com/file/upload/201608/01/105540181.jpg','3413','jpg','thumb','180','180','1470020140','admin','36.46.199.53');
INSERT INTO `destoon_upload_1` VALUES('28','35cfb3a2d75967817dd3297306c8b42b','22','1','http://www.adbangbang.com/file/upload/201608/01/105857731.jpg.thumb.jpg','26188','jpg','album','200','200','1470020337','admin','36.46.199.53');
INSERT INTO `destoon_upload_1` VALUES('33','628e207df2ad3e386db58dbe19dad0a4','18','0','http://www.adbangbang.com/file/upload/201608/01/112832461.jpg','7568','jpg','thumb','128','128','1470022112','admin','36.46.199.53');
INSERT INTO `destoon_upload_1` VALUES('32','541493d99d7d715b2aaa93778a1edbbb','18','0','http://www.adbangbang.com/file/upload/201608/01/112752361.jpg','5644','jpg','thumb','128','128','1470022072','admin','36.46.199.53');
INSERT INTO `destoon_upload_1` VALUES('34','8119ff8c17cb13c65bcf7a0bd8bc64b0','5','2','http://www.adbangbang.com/file/upload/201608/01/132409301.jpg.thumb.jpg','34235','jpg','album','210','204','1470029049','admin','36.46.199.53');
INSERT INTO `destoon_upload_1` VALUES('35','0d8cfdb9237280bc3a55bc17b00574bc','5','3','http://www.adbangbang.com/file/upload/201608/01/132513381.jpg.thumb.jpg','49176','jpg','album','267','207','1470029113','admin','36.46.199.53');
INSERT INTO `destoon_upload_1` VALUES('36','4e359d5a91af087d578776ddfe808ee0','5','4','http://www.adbangbang.com/file/upload/201608/01/132806341.jpg.thumb.jpg','33825','jpg','album','210','204','1470029286','admin','36.46.199.53');
INSERT INTO `destoon_upload_1` VALUES('37','48cc00118575abfb9a21d14169af22c9','5','5','http://www.adbangbang.com/file/upload/201608/01/133440101.jpg.thumb.jpg','52150','jpg','album','267','207','1470029680','admin','117.38.202.33');
INSERT INTO `destoon_upload_1` VALUES('38','3d4379f1078d6b1a8ec6055401c60852','5','6','http://www.adbangbang.com/file/upload/201608/01/133505751.jpg.thumb.jpg','65589','jpg','album','267','207','1470029705','admin','117.38.202.33');
INSERT INTO `destoon_upload_1` VALUES('41','6802f577ec681912f0f08940ca55ff70','18','0','http://www.adbangbang.com/file/upload/201608/22/1527234411.jpeg','6487','jpeg','thumb','128','128','1471850843','lihang5218','113.138.23.221');
INSERT INTO `destoon_upload_1` VALUES('40','44b1d7aadab8bc93030073c729e9d058','2','11','http://www.adbangbang.com/file/upload/201608/22/1507573711.jpeg','11335','jpeg','thumb','180','180','1471849677','lihang5218','113.138.23.221');
INSERT INTO `destoon_upload_1` VALUES('42','c801e714a7042c7a941dd754d73e819e','18','0','http://www.adbangbang.com/file/upload/201608/24/1220348911.jpeg','6487','jpeg','thumb','128','128','1472012434','lihang5218','113.138.20.60');
INSERT INTO `destoon_upload_1` VALUES('43','1d79f18417ed2cc4f27a653cbd086568','18','0','http://www.adbangbang.com/file/upload/201608/29/1426532111.jpeg','6487','jpeg','thumb','128','128','1472452013','lihang5218','113.138.16.219');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='上传记录2';

INSERT INTO `destoon_upload_2` VALUES('10','2c802669a72fcd99abeb905a4505bc68','6','7','http://www.adbangbang.com/file/upload/201608/22/1622323612.jpg.thumb.jpg','154186','jpg','album','800','507','1471854152','zhaoping','113.138.23.221');
INSERT INTO `destoon_upload_2` VALUES('11','bc1f831f3a727cfaebd3adea8d075b75','6','7','http://www.adbangbang.com/file/upload/201608/22/1628422912.jpg','106470','jpg','attach','692','1032','1471854522','zhaoping','113.138.23.221');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='上传记录8';

INSERT INTO `destoon_upload_8` VALUES('1','61bc2e6c9127fdc754e3dd5a6c2b8a11','6','5','http://www.adbangbang.com/file/upload/201608/02/171942128.jpg.thumb.jpg','556255','jpg','album','800','1066','1470129582','396578810','113.139.82.86');
INSERT INTO `destoon_upload_8` VALUES('3','bc0d2fde04e647b23acc7ed064395085','6','10','http://www.adbangbang.com/file/upload/201608/24/122510808.jpg.thumb.jpg','556255','jpg','album','800','1066','1472012710','396578810','113.138.20.60');
INSERT INTO `destoon_upload_8` VALUES('4','b5af9dc1afb2806aa38cb22ceed76d2c','6','11','http://www.adbangbang.com/file/upload/201608/29/143117978.jpg.thumb.jpg','1823339','jpg','album','800','600','1472452277','396578810','113.138.16.219');

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

INSERT INTO `destoon_webpage` VALUES('1','1','0','0','关于我们','','关于我们','','','','destoon','1319006891','5','2','0','about/index.html','','');
INSERT INTO `destoon_webpage` VALUES('3','1','0','0','联系方式','','联系方式','','','','destoon','1310696453','4','3','0','about/contact.html','','');
INSERT INTO `destoon_webpage` VALUES('4','1','0','0','使用协议','','使用协议','','','','destoon','1310696460','3','1','0','about/agreement.html','','');
INSERT INTO `destoon_webpage` VALUES('5','1','0','0','版权隐私','','版权隐私','','','','destoon','1310696468','2','1','0','about/copyright.html','','');

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


