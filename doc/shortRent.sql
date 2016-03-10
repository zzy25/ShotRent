-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016-03-10 11:05:11
-- 服务器版本: 5.5.46-0ubuntu0.14.04.2
-- PHP 版本: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `shortRent`
--
CREATE DATABASE IF NOT EXISTS `shortRent` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shortRent`;

-- --------------------------------------------------------

--
-- 表的结构 `houses`
--

DROP TABLE IF EXISTS `houses`;
CREATE TABLE IF NOT EXISTS `houses` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='房屋信息表' AUTO_INCREMENT=10005 ;

--
-- 转存表中的数据 `houses`
--

INSERT INTO `houses` (`id`, `owerId`, `mobile`, `tel`, `houseType`, `address`, `area`, `price`, `content`, `imagePath`, `furniture`, `online`, `checked`, `rented`, `createTime`, `updateTime`) VALUES
(10000, 10004, '13902067295', NULL, 0, '西安邮电大学-14#124', 40, 1000, '好房子', NULL, NULL, 1, 1, 1, NULL, NULL),
(10001, 10003, '7418529630', NULL, 2, '西安邮电大学-14#125', 45, 1500, '特别整洁', NULL, NULL, 1, 1, 1, NULL, NULL),
(10002, 10004, '13902067295', NULL, 1, '西安邮电大学A教学楼', 70, 2000, '教室里', NULL, NULL, 0, 0, 0, NULL, NULL),
(10003, 10003, '7418529630', NULL, 3, '西安邮电大学东区教学楼', 100, 3500, '黄金地段', NULL, NULL, 1, 1, 0, NULL, NULL),
(10004, 10004, '13902067295', NULL, 0, '西安邮电大学旭日苑', 300, 10000, '客流量庞大', NULL, NULL, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单表主键， 起始值10,000',
  `hourseId` int(10) NOT NULL COMMENT '房屋主键',
  `owerId` int(10) NOT NULL COMMENT '业主主键',
  `customer` int(10) NOT NULL COMMENT '租住者主键',
  `amount` int(10) NOT NULL COMMENT '实际交易额',
  `beginTime` datetime NOT NULL COMMENT '租住的开始时间',
  `endTime` datetime NOT NULL COMMENT '租住的结束时间',
  `terminate` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否提前终止，0：不终止 1：终止',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='订单详情表' AUTO_INCREMENT=10002 ;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `hourseId`, `owerId`, `customer`, `amount`, `beginTime`, `endTime`, `terminate`) VALUES
(10000, 10001, 10003, 10001, 1500, '2016-03-10 15:57:17', '2016-04-10 15:57:24', 0),
(10001, 10000, 10004, 10002, 1000, '2016-03-09 15:59:39', '2016-04-09 15:59:44', 0);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=10005 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `userName`, `password`, `email`, `permission`, `mobile`, `createTime`, `updateTime`) VALUES
(10000, '岳超刚', 'e10adc3949ba59abbe56e057f20f883e', '123456789@qq.com', 2, '1234567890', '2016-03-09 15:45:17', NULL),
(10001, '汪曙生', 'e10adc3949ba59abbe56e057f20f883e', '987654321@qq.com', 0, '9876543210', NULL, NULL),
(10002, '黄志文', 'e10adc3949ba59abbe56e057f20f883e', '234567891@qq.com', 0, '4565412364', NULL, NULL),
(10003, '王铎雄', 'e10adc3949ba59abbe56e057f20f883e', '741258963@qq.com', 1, '7418529630', NULL, NULL),
(10004, '汪胜钧', 'e10adc3949ba59abbe56e057f20f883e', '653560991@qq.com', 1, '13902067295', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
