/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : shortrent
Target Host     : localhost:3306
Target Database : shortrent
Date: 2016-03-15 16:17:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '房屋主键，起始值为10,000',
  `owerId` int(10) NOT NULL COMMENT '房屋业主的主键，对应users表中的id',
  `mobile` varchar(20) NOT NULL COMMENT '业主手机联系方式',
  `tel` varchar(20) DEFAULT NULL COMMENT '业主固话联系方式',
  `houseType` smallint(2) NOT NULL DEFAULT '0' COMMENT '0：平层户型， 1：跃层户型， 2：错层户型， 3：复式户型',
  `address` varchar(200) NOT NULL COMMENT '房子地址',
  `area` int(5) NOT NULL COMMENT '房子面积',
  `price` int(5) NOT NULL COMMENT '租金',
  `content` text NOT NULL COMMENT '关于房间的介绍',
  `imagePath` varchar(250) DEFAULT NULL COMMENT '图片路径',
  `furniture` varchar(200) DEFAULT NULL COMMENT '家具，用json格式存储',
  `online` smallint(2) NOT NULL DEFAULT '1' COMMENT '房屋是否发布，0： 不发布， 1：发布',
  `checked` smallint(2) NOT NULL DEFAULT '0' COMMENT '房屋是否检查通过，0： 不通过， 1：通过',
  `rented` smallint(2) NOT NULL DEFAULT '0' COMMENT '房屋是否已经被租住， 0：未被租住， 1：已被租住',
  `createTime` datetime DEFAULT NULL COMMENT '记录创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '记录修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8 COMMENT='房屋信息表';

-- ----------------------------
-- Records of houses
-- ----------------------------
INSERT INTO `houses` VALUES ('10000', '10004', '13902067295', null, '0', '西安邮电大学-14#124', '40', '1000', '出售该位于意大利北部都灵附近monteferrante 的壮丽的葡萄庄园，该庄园是联合国教科文组织的文化遗产。 庄园总面积共37公顷， 呈竞技场形式， 在葡萄园中总共种植着10个不同品种的葡萄。 在漂亮的庄园中坐落着2500平方米的花园别墅。 该酒庄有高科技的酒窖， 收藏着各种名贵的葡萄酒。\r\n\r\n该庄园拥有15个房间，别墅面积2500平方米，已经全部装修过\r\n\r\nNoceto Michelotti 是一个现代的精致的葡萄酒公司， 它位于绵延的高高的丘陵之中， 整个葡萄酒生产程序都在它的内部进行，从葡萄到成酒，到装瓶都集中在庄园内完成。\r\n\r\n我们一共有10个不同品种的葡萄，我们创建了一个系列的12个不同品种的葡萄酒，以满足各种品味的需求。\r\n我们是手工选择葡萄，用木质容器净化，秋季垂直酿造，运用现代和传统相结合的技术是noceto michelotti 的名片，是他们的葡萄酒的品质保证。\r\n\r\n从2011年起， noceto Michelotti 开始运用数据软件进行分析，运用科学数据更准确的计算最佳采摘葡萄的时间。 ALGO-WINE 是一个带有证书的是运用数字统计学和计量经济学的算法来测量葡萄成熟的曲线，找到葡萄最佳采摘时间，来酿造的品牌葡萄酒。\r\nNoceto Michelotti —— 一个在传统中创新， 给予生命中最美妙的时光。我们欢迎每一位客人来品尝和参观我们美丽的庒园。', null, null, '1', '1', '1', null, null);
INSERT INTO `houses` VALUES ('10001', '10003', '7418529630', null, '2', '西安邮电大学-14#125', '45', '1500', '\"丹堤苑邸\" 位于奥兰多市中心以南的成熟区域——温特黑文市，这个地方还有一个美誉，叫“湖泊之链”，因为它是整个佛罗里达州里面湖泊最多的地区。也是这个原因，这块区域可建筑的土地面积已经越来越少，就算你有钱也不一定买到。温特黑文这个区域还有另外一个特色，它处于整个佛罗里达州的中心点，也是整个佛罗里达州的运输命脉，例如：全球唯一集铁路、集装箱运输和后勤服务于一体的国际性集团CSX早于2011年已计划把佛罗里达州的总部设立在温特黑文市，并在今年的5月份已经正式启动，这个国际物流中心预计为当地带来多于8500个就业机会，也预计会为这个城市创造100亿美元的经济增长。不止这个，佛罗里达州的沃尔玛物流和仓储中心也设立在这个地方。当然，这个地方的旅游业也相当发达，其中“乐高乐园\"也坐落于此。每年吸引上千万游客来这里旅游。城市的配套已经相当成熟，有属于自己的医院、超级市场、大型购物中心、小学、中学、大学，餐厅等等。\r\n\r\n丹堤苑邸 周边湖区众多，可尽情享受无处不在的亲水生活\r\n3年6%的年租金保证，让你的投资安全放心\r\n从Winter Haven的发展中获益，用发展的眼光看待地产投资！ ', null, null, '1', '1', '1', null, null);
INSERT INTO `houses` VALUES ('10002', '10004', '13902067295', null, '1', '西安邮电大学A教学楼', '70', '2000', 'OOSTEN纽约·东河湾，助力您成为华尔街精英们的国际房东，\r\nOOSTEN纽约·东河湾，可以欣赏曼哈顿美景的奢华豪宅，\r\n纽约曼哈顿·东河湾海景豪宅公寓，地处美国纽约州纽约市布鲁克林区南威廉斯堡肯特街421号，位于威廉斯堡桥南侧，东河的东岸。 \r\n项目位于纽约布鲁克林威廉斯堡区肯特街421号，占地94,585.04平方英尺，约合8813平米。\r\n项目共216个销售单元。\r\n项目为四面合围式美式建筑，地上7层，地下2层（停车场及会所）。小区会所包括游泳池，有氧健身房，咖啡厅等娱乐休闲设施。配套设施还包括日托和艺廊。', null, null, '0', '0', '0', null, null);
INSERT INTO `houses` VALUES ('10003', '10003', '7418529630', null, '3', '西安邮电大学东区教学楼', '100', '3500', '投资奥兰多房产的五大理由：\r\n- 国际旅游、休闲娱乐购物和养老度假之胜地\r\n- 旅游经济的迅猛发展、科技等新兴行业崛起，推动就业和人口迅速发展\r\n- 教育资源丰富，中佛罗里达大学（UCF) 是全美第二大大学\r\n- 预计2015年奥兰多接待游客高达1亿人次；奥兰多国际机场将扩建一倍\r\n- 美国热门城市房价上涨空间有限，而奥兰多房价整体还低于2006年约35%\r\n\r\n精致生活就在Avalon -- 奥兰多租房族的最佳选择\r\n\r\nAvalon项目拥有高档精装公寓和联排别墅，提供完善的生活配套设施，一切生活便利尽在咫尺，因此，Avalon能成为奥兰多东南部首选居住地就不言而喻。居住在Avalon，远离都市喧嚣，同时享受奥兰多的一切生活便利，购物、餐饮、娱乐和学校等生活配套设施尽在咫尺。奥兰多举世闻名的旅游景点，如迪斯尼乐园，环球影城、海洋世界、历史小镇、肯尼迪太空中心等仅需10-20分钟车程。 同时短程驱车即可到达奥兰多市中心，千禧购物中心 Millennia Mall, 奥兰多国际机场及其他目的地.\r\n\r\n项目投资亮点\r\n所有公寓和联排别墅全面翻新，并赠送厨房电器设备\r\n开发商包租两年，签约保证每年净回报7%+\r\n开发商旗下的物业管理公司免费提供两年优质物业托管服务\r\n包租两年内免费提供房屋和家电维修\r\n该项目近四年的出租率为95%+，可售单元均带租约\r\n多样化户型设计，满足不同居住需求\r\n不可复制的地理位置，生活非常便利，中小型公寓租赁供不应求\r\n该项目属当地工薪阶层刚需房产，未来房屋出售容易\r\n\r\nAvalon 地理位置得天独厚，附近拥有：\r\nThe Mall at Millenia 千禧购物中心：千禧购物中心是奥兰多的世界级购物天堂，占地120万平方英尺，进驻150多个一线国际品牌\r\n中佛罗里达大学 （UCF）：UCF是美国第二大大学，并被福布斯评为美国最负担得起的大学之一。距离Avalon仅8.5英里。\r\n奥兰多市中心：奥兰多市的金融、政府、商业、科技等行业聚集的经济中心区域。大型公司如可口可乐、甲骨文、捷蓝航空、太阳信托等顶尖企业设有分部。各种体育娱乐盛事常年在著名的Citus Bowl举行。\r\n奥兰多国际机场：美国最繁忙的机场之一，距离Avalon仅4.5英里。机场于2016年开始即将扩建一倍，就业机会剧增将带动房价和租金的持续上涨。\r\n迪斯尼乐园：全球最大的迪斯尼主题公园，同时也是奥兰多最大的就业雇主。距离Avalon仅20分钟车程', null, null, '1', '1', '0', null, null);
INSERT INTO `houses` VALUES ('10004', '10004', '13902067295', null, '0', '西安邮电大学旭日苑', '300', '10000', 'Diary Flat精品休闲农场，占地面积4.69公顷（11.5英亩），处于北岸未来城市规划区域中。 带有205平方米的weatherboard住宅，四房三厅2.5套卫浴 ，双车库，一个大型仓库外加2个sleep out，除自住外也可带来额外收入，土地平整方正，田园诗般的庄园，将美丽的大自然变成您的私人花园。\r\n\r\n紧邻Diary Flat Highway，10分钟车程往南可到Albany Mega Centre或者往北可到Silverdale Centre，12分钟可上1号高速去市区方向。让您在大自然里同时享受城市的现代化便利。', null, null, '1', '0', '0', null, null);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单表主键， 起始值10,000',
  `hourseId` int(10) NOT NULL COMMENT '房屋主键',
  `owerId` int(10) NOT NULL COMMENT '业主主键',
  `customer` int(10) NOT NULL COMMENT '租住者主键',
  `amount` int(10) NOT NULL COMMENT '实际交易额',
  `beginTime` datetime NOT NULL COMMENT '租住的开始时间',
  `endTime` datetime NOT NULL COMMENT '租住的结束时间',
  `terminate` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否提前终止，0：不终止 1：终止',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('10000', '10001', '10003', '10001', '1500', '2016-03-10 15:57:17', '2016-04-10 15:57:24', '0');
INSERT INTO `orders` VALUES ('10001', '10000', '10004', '10002', '1000', '2016-03-09 15:59:39', '2016-04-09 15:59:44', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键，自增，起始值为10,000',
  `userName` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `permission` smallint(2) NOT NULL DEFAULT '0' COMMENT '0: 普通用户， 1：房子业主 2：系统管理员',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `createTime` datetime DEFAULT NULL COMMENT '记录创建的时间',
  `updateTime` datetime DEFAULT NULL COMMENT '记录修改的时间',
  PRIMARY KEY (`id`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('10000', '岳超刚', 'e10adc3949ba59abbe56e057f20f883e', '123456789@qq.com', '2', '1234567890', '2016-03-09 15:45:17', null);
INSERT INTO `users` VALUES ('10001', '汪曙生', 'e10adc3949ba59abbe56e057f20f883e', '987654321@qq.com', '0', '9876543210', null, null);
INSERT INTO `users` VALUES ('10002', '黄志文', 'e10adc3949ba59abbe56e057f20f883e', '234567891@qq.com', '0', '4565412364', null, null);
INSERT INTO `users` VALUES ('10003', '王铎雄', 'e10adc3949ba59abbe56e057f20f883e', '741258963@qq.com', '1', '7418529630', null, null);
INSERT INTO `users` VALUES ('10004', '汪胜钧', 'e10adc3949ba59abbe56e057f20f883e', '653560991@qq.com', '1', '13902067295', null, null);
