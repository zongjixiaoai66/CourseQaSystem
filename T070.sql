/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t070`;
CREATE DATABASE IF NOT EXISTS `t070` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t070`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot7vkr1/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot7vkr1/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot7vkr1/upload/picture3.jpg'),
	(6, 'picture4', 'http://localhost:8080/springboot7vkr1/upload/1618469446284.jpg');

DROP TABLE IF EXISTS `discusslaoshihuida`;
CREATE TABLE IF NOT EXISTS `discusslaoshihuida` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469753455 DEFAULT CHARSET=utf8mb3 COMMENT='老师回答评论表';

DELETE FROM `discusslaoshihuida`;
INSERT INTO `discusslaoshihuida` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(111, '2021-04-15 06:47:38', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(112, '2021-04-15 06:47:38', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(113, '2021-04-15 06:47:38', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(114, '2021-04-15 06:47:38', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(115, '2021-04-15 06:47:38', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(116, '2021-04-15 06:47:38', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1618469753454, '2021-04-15 06:55:52', 1618469632218, 1618469461656, '12', '谢谢老师', NULL);

DROP TABLE IF EXISTS `discusslaoshixinxi`;
CREATE TABLE IF NOT EXISTS `discusslaoshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='老师信息评论表';

DELETE FROM `discusslaoshixinxi`;
INSERT INTO `discusslaoshixinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2021-04-15 06:47:38', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2021-04-15 06:47:38', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2021-04-15 06:47:38', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2021-04-15 06:47:38', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2021-04-15 06:47:38', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2021-04-15 06:47:38', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussxueshengwenti`;
CREATE TABLE IF NOT EXISTS `discussxueshengwenti` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469734308 DEFAULT CHARSET=utf8mb3 COMMENT='学生问题评论表';

DELETE FROM `discussxueshengwenti`;
INSERT INTO `discussxueshengwenti` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-04-15 06:47:38', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-04-15 06:47:38', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-04-15 06:47:38', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-04-15 06:47:38', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-04-15 06:47:38', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-04-15 06:47:38', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1618469603296, '2021-04-15 06:53:22', 1618469502652, 1618469527598, '122', '12', NULL),
	(1618469734307, '2021-04-15 06:55:33', 1618469502652, 1618469461656, '12', '12', NULL);

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706592217531 DEFAULT CHARSET=utf8mb3 COMMENT='交流区';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(81, '2021-04-15 06:47:38', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(82, '2021-04-15 06:47:38', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(83, '2021-04-15 06:47:38', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(84, '2021-04-15 06:47:38', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(85, '2021-04-15 06:47:38', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(86, '2021-04-15 06:47:38', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放'),
	(1618469679500, '2021-04-15 06:54:38', '老师帖子', '<p>请输入内容12<img src="../../../upload/1618469676465.jpg" alt="" width="1078" height="1078" /></p>', 0, 1618469527598, '122', '开放'),
	(1706592217530, '2024-01-30 05:23:36', NULL, '11', 81, 11, '学生1', NULL);

DROP TABLE IF EXISTS `guanzhuliebiao`;
CREATE TABLE IF NOT EXISTS `guanzhuliebiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469793784 DEFAULT CHARSET=utf8mb3 COMMENT='关注列表';

DELETE FROM `guanzhuliebiao`;
INSERT INTO `guanzhuliebiao` (`id`, `addtime`, `laoshizhanghao`, `laoshixingming`, `xingbie`, `shoujihaoma`, `touxiang`, `xueshengzhanghao`, `xueshengxingming`) VALUES
	(71, '2021-04-15 06:47:38', '老师账号1', '老师姓名1', '性别1', '手机号码1', 'http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang1.jpg', '学生账号1', '学生姓名1'),
	(72, '2021-04-15 06:47:38', '老师账号2', '老师姓名2', '性别2', '手机号码2', 'http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang2.jpg', '学生账号2', '学生姓名2'),
	(73, '2021-04-15 06:47:38', '老师账号3', '老师姓名3', '性别3', '手机号码3', 'http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang3.jpg', '学生账号3', '学生姓名3'),
	(74, '2021-04-15 06:47:38', '老师账号4', '老师姓名4', '性别4', '手机号码4', 'http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang4.jpg', '学生账号4', '学生姓名4'),
	(75, '2021-04-15 06:47:38', '老师账号5', '老师姓名5', '性别5', '手机号码5', 'http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang5.jpg', '学生账号5', '学生姓名5'),
	(76, '2021-04-15 06:47:38', '老师账号6', '老师姓名6', '性别6', '手机号码6', 'http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang6.jpg', '学生账号6', '学生姓名6'),
	(1618469793783, '2021-04-15 06:56:33', '122', '122', '女', '12346579809', 'http://localhost:8080/springboot7vkr1/upload/1618469562703.jpg', '12', '12');

DROP TABLE IF EXISTS `kemuleixing`;
CREATE TABLE IF NOT EXISTS `kemuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `jianyao` longtext COMMENT '简要',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469484473 DEFAULT CHARSET=utf8mb3 COMMENT='科目类型';

DELETE FROM `kemuleixing`;
INSERT INTO `kemuleixing` (`id`, `addtime`, `kemu`, `jianyao`) VALUES
	(31, '2021-04-15 06:47:38', '科目1', '简要1'),
	(32, '2021-04-15 06:47:38', '科目2', '简要2'),
	(33, '2021-04-15 06:47:38', '科目3', '简要3'),
	(34, '2021-04-15 06:47:38', '科目4', '简要4'),
	(35, '2021-04-15 06:47:38', '科目5', '简要5'),
	(36, '2021-04-15 06:47:38', '科目6', '简要6'),
	(1618469484472, '2021-04-15 06:51:23', '物理', NULL);

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) NOT NULL COMMENT '老师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laoshizhanghao` (`laoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469527599 DEFAULT CHARSET=utf8mb3 COMMENT='老师';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `addtime`, `laoshizhanghao`, `mima`, `laoshixingming`, `xingbie`, `shoujihaoma`, `touxiang`) VALUES
	(21, '2021-04-15 06:47:38', '老师1', '123456', '老师姓名1', '男', '13823888881', 'http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang1.jpg'),
	(22, '2021-04-15 06:47:38', '老师2', '123456', '老师姓名2', '男', '13823888882', 'http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang2.jpg'),
	(23, '2021-04-15 06:47:38', '老师3', '123456', '老师姓名3', '男', '13823888883', 'http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang3.jpg'),
	(24, '2021-04-15 06:47:38', '老师4', '123456', '老师姓名4', '男', '13823888884', 'http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang4.jpg'),
	(25, '2021-04-15 06:47:38', '老师5', '123456', '老师姓名5', '男', '13823888885', 'http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang5.jpg'),
	(26, '2021-04-15 06:47:38', '老师6', '123456', '老师姓名6', '男', '13823888886', 'http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang6.jpg'),
	(1618469527598, '2021-04-15 06:52:07', '122', '122', '122', '女', '12346579809', 'http://localhost:8080/springboot7vkr1/upload/1618469555453.jpg');

DROP TABLE IF EXISTS `laoshihuida`;
CREATE TABLE IF NOT EXISTS `laoshihuida` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenti` varchar(200) DEFAULT NULL COMMENT '问题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kemuleixing` varchar(200) DEFAULT NULL COMMENT '科目类型',
  `wentimiaoshu` varchar(200) DEFAULT NULL COMMENT '问题描述',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `laoshizhanghao` varchar(200) NOT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) NOT NULL COMMENT '老师姓名',
  `wentijieda` longtext NOT NULL COMMENT '问题解答',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469632219 DEFAULT CHARSET=utf8mb3 COMMENT='老师回答';

DELETE FROM `laoshihuida`;
INSERT INTO `laoshihuida` (`id`, `addtime`, `wenti`, `fengmian`, `kemuleixing`, `wentimiaoshu`, `xueshengzhanghao`, `xueshengxingming`, `laoshizhanghao`, `laoshixingming`, `wentijieda`, `beizhu`, `thumbsupnum`, `crazilynum`, `clicknum`) VALUES
	(51, '2021-04-15 06:47:38', '问题1', 'http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian1.jpg', '科目类型1', '问题描述1', '学生账号1', '学生姓名1', '老师账号1', '老师姓名1', '问题解答1', '备注1', 1, 1, 1),
	(52, '2021-04-15 06:47:38', '问题2', 'http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian2.jpg', '科目类型2', '问题描述2', '学生账号2', '学生姓名2', '老师账号2', '老师姓名2', '问题解答2', '备注2', 2, 2, 2),
	(53, '2021-04-15 06:47:38', '问题3', 'http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian3.jpg', '科目类型3', '问题描述3', '学生账号3', '学生姓名3', '老师账号3', '老师姓名3', '问题解答3', '备注3', 3, 3, 4),
	(54, '2021-04-15 06:47:38', '问题4', 'http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian4.jpg', '科目类型4', '问题描述4', '学生账号4', '学生姓名4', '老师账号4', '老师姓名4', '问题解答4', '备注4', 4, 4, 4),
	(55, '2021-04-15 06:47:38', '问题5', 'http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian5.jpg', '科目类型5', '问题描述5', '学生账号5', '学生姓名5', '老师账号5', '老师姓名5', '问题解答5', '备注5', 5, 5, 5),
	(56, '2021-04-15 06:47:38', '问题6', 'http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian6.jpg', '科目类型6', '问题描述6', '学生账号6', '学生姓名6', '老师账号6', '老师姓名6', '问题解答6', '备注6', 6, 6, 6),
	(1618469632218, '2021-04-15 06:53:52', '测试问题', 'http://localhost:8080/springboot7vkr1/upload/1618469496748.jpg', '物理', '1212', '12', '12', '122', '122', '<p>请输入问题解答12121212<img src="../../../upload/1618469628801.jpg" alt="" width="864" height="864" /></p>', '122', 1, 0, 9);

DROP TABLE IF EXISTS `laoshixinxi`;
CREATE TABLE IF NOT EXISTS `laoshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) NOT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `ziwojieshao` longtext NOT NULL COMMENT '自我介绍',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469566615 DEFAULT CHARSET=utf8mb3 COMMENT='老师信息';

DELETE FROM `laoshixinxi`;
INSERT INTO `laoshixinxi` (`id`, `addtime`, `laoshizhanghao`, `laoshixingming`, `xingbie`, `shoujihaoma`, `touxiang`, `ziwojieshao`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(61, '2021-04-15 06:47:38', '老师账号1', '老师姓名1', '性别1', '手机号码1', 'http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang1.jpg', '自我介绍1', 1, 1, '2021-04-15 14:53:05', 2),
	(62, '2021-04-15 06:47:38', '老师账号2', '老师姓名2', '性别2', '手机号码2', 'http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang2.jpg', '自我介绍2', 2, 2, '2024-01-30 13:26:13', 3),
	(63, '2021-04-15 06:47:38', '老师账号3', '老师姓名3', '性别3', '手机号码3', 'http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang3.jpg', '自我介绍3', 3, 3, '2021-04-15 14:47:38', 3),
	(64, '2021-04-15 06:47:38', '老师账号4', '老师姓名4', '性别4', '手机号码4', 'http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang4.jpg', '自我介绍4', 4, 4, '2021-04-15 14:47:38', 4),
	(65, '2021-04-15 06:47:38', '老师账号5', '老师姓名5', '性别5', '手机号码5', 'http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang5.jpg', '自我介绍5', 5, 5, '2021-04-15 14:47:38', 5),
	(66, '2021-04-15 06:47:38', '老师账号6', '老师姓名6', '性别6', '手机号码6', 'http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang6.jpg', '自我介绍6', 6, 6, '2021-04-15 14:47:38', 6),
	(1618469566614, '2021-04-15 06:52:46', '122', '122', '女', '12346579809', 'http://localhost:8080/springboot7vkr1/upload/1618469562703.jpg', '<p>1212</p>', 2, 0, '2021-04-15 14:56:37', 3);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1706592177898 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1618469645473, '2021-04-15 06:54:05', 1618469527598, 1618469632218, 'laoshihuida', '测试问题', 'http://localhost:8080/springboot7vkr1/upload/1618469496748.jpg'),
	(1706592177897, '2024-01-30 05:22:57', 11, 42, 'xueshengwenti', '问题2', 'http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian2.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'wx3babums84wc57t71v28av0bl55rp1e', '2021-04-15 06:49:52', '2024-01-30 06:25:48'),
	(2, 1618469461656, '12', 'xuesheng', '学生', 'fvec3cr9bsouwbrxzj2mhyc22563pra0', '2021-04-15 06:51:06', '2021-04-15 07:55:18'),
	(3, 1618469527598, '122', 'laoshi', '老师', 'vnk3t3utb0fhavrjjweoe66mvdjzwzel', '2021-04-15 06:52:14', '2021-04-15 07:56:59'),
	(4, 11, '学生1', 'xuesheng', '学生', 'zevgll8jlnjkuo7j6bwur4ffvukser78', '2024-01-30 05:22:29', '2024-01-30 06:26:56'),
	(5, 21, '老师1', 'laoshi', '老师', 'k5oatjsf2wjimcrc0c3vpgfedy3n353k', '2024-01-30 05:26:44', '2024-01-30 06:26:45');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-15 06:47:38');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469461657 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xueshengzhanghao`, `mima`, `xueshengxingming`, `xingbie`, `shoujihaoma`, `touxiang`) VALUES
	(11, '2021-04-15 06:47:38', '学生1', '123456', '学生姓名1', '男', '13823888881', 'http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang1.jpg'),
	(12, '2021-04-15 06:47:38', '学生2', '123456', '学生姓名2', '男', '13823888882', 'http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang2.jpg'),
	(13, '2021-04-15 06:47:38', '学生3', '123456', '学生姓名3', '男', '13823888883', 'http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang3.jpg'),
	(14, '2021-04-15 06:47:38', '学生4', '123456', '学生姓名4', '男', '13823888884', 'http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang4.jpg'),
	(15, '2021-04-15 06:47:38', '学生5', '123456', '学生姓名5', '男', '13823888885', 'http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang5.jpg'),
	(16, '2021-04-15 06:47:38', '学生6', '123456', '学生姓名6', '男', '13823888886', 'http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang6.jpg'),
	(1618469461656, '2021-04-15 06:51:01', '12', '12', '12', '女', '12345678908', 'http://localhost:8080/springboot7vkr1/upload/1618469473442.jpg');

DROP TABLE IF EXISTS `xueshengwenti`;
CREATE TABLE IF NOT EXISTS `xueshengwenti` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenti` varchar(200) NOT NULL COMMENT '问题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kemuleixing` varchar(200) NOT NULL COMMENT '科目类型',
  `wentimiaoshu` longtext NOT NULL COMMENT '问题描述',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469502653 DEFAULT CHARSET=utf8mb3 COMMENT='学生问题';

DELETE FROM `xueshengwenti`;
INSERT INTO `xueshengwenti` (`id`, `addtime`, `wenti`, `fengmian`, `kemuleixing`, `wentimiaoshu`, `fabushijian`, `xueshengzhanghao`, `xueshengxingming`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(41, '2021-04-15 06:47:38', '问题1', 'http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian1.jpg', '科目类型1', '问题描述1', '2021-04-15 14:47:38', '学生账号1', '学生姓名1', 1, 1, '2024-01-30 13:27:07', 3),
	(42, '2021-04-15 06:47:38', '问题2', 'http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian2.jpg', '科目类型2', '问题描述2', '2021-04-15 14:47:38', '学生账号2', '学生姓名2', 2, 2, '2024-01-30 13:22:50', 3),
	(43, '2021-04-15 06:47:38', '问题3', 'http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian3.jpg', '科目类型3', '问题描述3', '2021-04-15 14:47:38', '学生账号3', '学生姓名3', 3, 3, '2021-04-15 14:47:38', 3),
	(44, '2021-04-15 06:47:38', '问题4', 'http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian4.jpg', '科目类型4', '问题描述4', '2021-04-15 14:47:38', '学生账号4', '学生姓名4', 4, 4, '2021-04-15 14:47:38', 4),
	(45, '2021-04-15 06:47:38', '问题5', 'http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian5.jpg', '科目类型5', '问题描述5', '2021-04-15 14:47:38', '学生账号5', '学生姓名5', 5, 5, '2021-04-15 14:47:38', 5),
	(46, '2021-04-15 06:47:38', '问题6', 'http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian6.jpg', '科目类型6', '问题描述6', '2021-04-15 14:47:38', '学生账号6', '学生姓名6', 6, 6, '2024-01-30 13:22:41', 7),
	(1618469502652, '2021-04-15 06:51:41', '测试问题', 'http://localhost:8080/springboot7vkr1/upload/1618469496748.jpg', '物理', '1212', '2021-04-15 14:51:29', '12', '12', 2, 0, '2021-04-15 14:55:36', 5);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
