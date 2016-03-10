use `shortRent`;

DROP TABLE IF EXISTS  `users`;

CREATE TABLE `users`(
  id INT(10) AUTO_INCREMENT  PRIMARY KEY NOT NULL COMMENT '主键，自增，起始值为10,000',
  userName VARCHAR(32) NOT NULL  COMMENT '用户名',
  password VARCHAR(32) NOT NULL COMMENT '密码',
  email VARCHAR(32) NOT NULL COMMENT '邮箱',
  permission SMALLINT(2) NOT NULL DEFAULT 0 COMMENT '0: 普通用户， 1：房子业主 2：系统管理员',
  mobile VARCHAR(20) COMMENT '手机号',
  createTime DATETIME DEFAULT NULL COMMENT '记录创建的时间',
  updateTime DATETIME DEFAULT NULL COMMENT '记录修改的时间',
  INDEX (userName)
)ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COMMENT '用户表';

DROP TABLE IF EXISTS `houses`;

CREATE TABLE `houses`(
  id INT(10) AUTO_INCREMENT PRIMARY KEY NOT NULL COMMENT '房屋主键，起始值为10,000',
  owerId INT(10) NOT NULL COMMENT '房屋业主的主键，对应users表中的id',
  mobile VARCHAR(20) NOT NULL COMMENT '业主手机联系方式',
  tel VARCHAR(20) DEFAULT NULL COMMENT '业主固话联系方式',
  houseType SMALLINT(2) NOT NULL DEFAULT 0 COMMENT '0：平层户型， 1：跃层户型， 2：错层户型， 3：复式户型',
  address VARCHAR(200) NOT NULL COMMENT '房子地址',
  area INT(5) NOT NULL COMMENT '房子面积',
  price INT(5) NOT NULL COMMENT '租金',
  content TEXT NOT NULL COMMENT '关于房间的介绍',
  imagePath  VARCHAR(250) COMMENT '图片路径',
  furniture VARCHAR(200) COMMENT '家具，用json格式存储',
  online SMALLINT(2) NOT NULL DEFAULT 1 COMMENT '房屋是否发布，0： 不发布， 1：发布',
  checked SMALLINT(2) NOT NULL DEFAULT 0 COMMENT '房屋是否检查通过，0： 不通过， 1：通过',
  rented SMALLINT(2) NOT NULL DEFAULT 0 COMMENT '房屋是否已经被租住， 0：未被租住， 1：已被租住',
  createTime DATETIME DEFAULT NULL COMMENT '记录创建时间',
  updateTime DATETIME DEFAULT NULL COMMENT '记录修改时间'
)ENGINE =InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET =utf8 COMMENT '房屋信息表';

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders`(
  id INT(10) AUTO_INCREMENT PRIMARY KEY NOT NULL COMMENT '订单表主键， 起始值10,000',
  hourseId INT(10) NOT NULL COMMENT '房屋主键',
  owerId INT(10) NOT NULL COMMENT '业主主键',
  customer INT(10) NOT NULL COMMENT '租住者主键',
  amount INT(10) NOT NULL COMMENT '实际交易额',
  beginTime DATETIME NOT NULL COMMENT '租住的开始时间',
  endTime DATETIME NOT NULL COMMENT '租住的结束时间',
  terminate SMALLINT(2) NOT NULL DEFAULT 0 COMMENT '是否提前终止，0：不终止 1：终止'
)ENGINE = InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET =utf8 COMMENT '订单详情表';