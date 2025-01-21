-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm19154
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm19154`
--

/*!40000 DROP DATABASE IF EXISTS `ssm19154`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm19154` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm19154`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650292773423 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (31,'2022-04-18 13:36:37','1111111111','出发地1','目的地1','2022-04-18 21:36:37','已接单','备注1','学号1','姓名1','13823888881'),(32,'2022-04-18 13:36:37','2222222222','出发地2','目的地2','2022-04-18 21:36:37','已接单','备注2','学号2','姓名2','13823888882'),(33,'2022-04-18 13:36:37','3333333333','出发地3','目的地3','2022-04-18 21:36:37','已接单','备注3','学号3','姓名3','13823888883'),(34,'2022-04-18 13:36:37','4444444444','出发地4','目的地4','2022-04-18 21:36:37','已接单','备注4','学号4','姓名4','13823888884'),(35,'2022-04-18 13:36:37','5555555555','出发地5','目的地5','2022-04-18 21:36:37','已接单','备注5','学号5','姓名5','13823888885'),(36,'2022-04-18 13:36:37','6666666666','出发地6','目的地6','2022-04-18 21:36:37','已接单','备注6','学号6','姓名6','13823888886'),(1650292773422,'2022-04-18 14:39:33','1650292700199','XXXX','XXX','2022-04-18 22:38:20','已接单','XXX','111','张三','18154541454');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiedanxinxi`
--

DROP TABLE IF EXISTS `jiedanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiedanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `jiedanzhuangtai` varchar(200) DEFAULT NULL COMMENT '接单状态',
  `jiedanbeizhu` varchar(200) DEFAULT NULL COMMENT '接单备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650292827109 DEFAULT CHARSET=utf8 COMMENT='接单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiedanxinxi`
--

LOCK TABLES `jiedanxinxi` WRITE;
/*!40000 ALTER TABLE `jiedanxinxi` DISABLE KEYS */;
INSERT INTO `jiedanxinxi` VALUES (41,'2022-04-18 13:36:37','订单编号1','出发地1','目的地1',1,'2022-04-18 21:36:37','待付款','接单备注1','学号1','姓名1','司机账号1','司机姓名1','13823888881','是','','未支付'),(42,'2022-04-18 13:36:37','订单编号2','出发地2','目的地2',2,'2022-04-18 21:36:37','待付款','接单备注2','学号2','姓名2','司机账号2','司机姓名2','13823888882','是','','未支付'),(43,'2022-04-18 13:36:37','订单编号3','出发地3','目的地3',3,'2022-04-18 21:36:37','待付款','接单备注3','学号3','姓名3','司机账号3','司机姓名3','13823888883','是','','未支付'),(44,'2022-04-18 13:36:37','订单编号4','出发地4','目的地4',4,'2022-04-18 21:36:37','待付款','接单备注4','学号4','姓名4','司机账号4','司机姓名4','13823888884','是','','未支付'),(45,'2022-04-18 13:36:37','订单编号5','出发地5','目的地5',5,'2022-04-18 21:36:37','待付款','接单备注5','学号5','姓名5','司机账号5','司机姓名5','13823888885','是','','未支付'),(46,'2022-04-18 13:36:37','订单编号6','出发地6','目的地6',6,'2022-04-18 21:36:37','待付款','接单备注6','学号6','姓名6','司机账号6','司机姓名6','13823888886','是','','未支付'),(1650292827108,'2022-04-18 14:40:26','1650292700199','XXXX','XXX',80,'2022-04-18 22:39:10','已完成','xxxx','111','张三','222','李四','18154541454','是','xx','已支付');
/*!40000 ALTER TABLE `jiedanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyanxinxi`
--

DROP TABLE IF EXISTS `liuyanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liuyanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `liuyanneirong` longtext COMMENT '留言内容',
  `liuyanshijian` datetime DEFAULT NULL COMMENT '留言时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650292878646 DEFAULT CHARSET=utf8 COMMENT='留言信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liuyanxinxi`
--

LOCK TABLES `liuyanxinxi` WRITE;
/*!40000 ALTER TABLE `liuyanxinxi` DISABLE KEYS */;
INSERT INTO `liuyanxinxi` VALUES (51,'2022-04-18 13:36:37','标题1','留言内容1','2022-04-18 21:36:37','是','',1),(52,'2022-04-18 13:36:37','标题2','留言内容2','2022-04-18 21:36:37','是','',2),(53,'2022-04-18 13:36:37','标题3','留言内容3','2022-04-18 21:36:37','是','',3),(54,'2022-04-18 13:36:37','标题4','留言内容4','2022-04-18 21:36:37','是','',4),(55,'2022-04-18 13:36:37','标题5','留言内容5','2022-04-18 21:36:37','是','',5),(56,'2022-04-18 13:36:37','标题6','留言内容6','2022-04-18 21:36:37','是','',6),(1650292781241,'2022-04-18 14:39:40','XXXX','XXXX','2022-04-18 22:38:31','是','回复留言信息',1650292651525),(1650292878645,'2022-04-18 14:41:17','XXXX','XXXX','2022-04-18 22:40:08','是','回复留言',1650292680057);
/*!40000 ALTER TABLE `liuyanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siji`
--

DROP TABLE IF EXISTS `siji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) NOT NULL COMMENT '司机账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `sijixingming` varchar(200) NOT NULL COMMENT '司机姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jinjilianxiren` varchar(200) DEFAULT NULL COMMENT '紧急联系人',
  `jinjidianhua` varchar(200) DEFAULT NULL COMMENT '紧急电话',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `jiashizheng` varchar(200) DEFAULT NULL COMMENT '驾驶证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sijizhanghao` (`sijizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650292680058 DEFAULT CHARSET=utf8 COMMENT='司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siji`
--

LOCK TABLES `siji` WRITE;
/*!40000 ALTER TABLE `siji` DISABLE KEYS */;
INSERT INTO `siji` VALUES (21,'2022-04-18 13:36:37','司机账号1','e10adc3949ba59abbe56e057f20f883e','司机姓名1','13823888881','440300199101010001','紧急联系人1','13823888881','车型1','upload/siji_jiashizheng1.jpg','是',''),(22,'2022-04-18 13:36:37','司机账号2','e10adc3949ba59abbe56e057f20f883e','司机姓名2','13823888882','440300199202020002','紧急联系人2','13823888882','车型2','upload/siji_jiashizheng2.jpg','是',''),(23,'2022-04-18 13:36:37','司机账号3','e10adc3949ba59abbe56e057f20f883e','司机姓名3','13823888883','440300199303030003','紧急联系人3','13823888883','车型3','upload/siji_jiashizheng3.jpg','是',''),(24,'2022-04-18 13:36:37','司机账号4','e10adc3949ba59abbe56e057f20f883e','司机姓名4','13823888884','440300199404040004','紧急联系人4','13823888884','车型4','upload/siji_jiashizheng4.jpg','是',''),(25,'2022-04-18 13:36:37','司机账号5','e10adc3949ba59abbe56e057f20f883e','司机姓名5','13823888885','440300199505050005','紧急联系人5','13823888885','车型5','upload/siji_jiashizheng5.jpg','是',''),(26,'2022-04-18 13:36:37','司机账号6','e10adc3949ba59abbe56e057f20f883e','司机姓名6','13823888886','440300199606060006','紧急联系人6','13823888886','车型6','upload/siji_jiashizheng6.jpg','是',''),(1650292680057,'2022-04-18 14:38:00','222','bcbe3365e6ac95ea2c0343a2395834dd','李四','18154541454','441458545414541454','李武','18154541454','宝马','upload/1650292745660.png','是','111');
/*!40000 ALTER TABLE `siji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','pmfrt53eev62le25x62r4gpx2vvif5um','2022-04-18 14:38:27','2022-04-18 15:41:26'),(2,1650292680057,'222','siji','司机','x3b3closdd9g859hmiqrntwtf37zx0fe','2022-04-18 14:38:45','2022-04-18 15:42:09'),(3,1650292651525,'111','xuesheng','学生','dllz1p0gjqi45qazq90gch85ibk95tf0','2022-04-18 14:39:14','2022-04-18 15:42:03');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-18 13:36:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jinjilianxiren` varchar(200) DEFAULT NULL COMMENT '紧急联系人',
  `jinjidianhua` varchar(200) DEFAULT NULL COMMENT '紧急电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xueshengzheng` varchar(200) DEFAULT NULL COMMENT '学生证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650292651526 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-04-18 13:36:37','学号1','e10adc3949ba59abbe56e057f20f883e','姓名1','学院1','13823888881','紧急联系人1','13823888881','440300199101010001','upload/xuesheng_xueshengzheng1.jpg'),(12,'2022-04-18 13:36:37','学号2','e10adc3949ba59abbe56e057f20f883e','姓名2','学院2','13823888882','紧急联系人2','13823888882','440300199202020002','upload/xuesheng_xueshengzheng2.jpg'),(13,'2022-04-18 13:36:37','学号3','e10adc3949ba59abbe56e057f20f883e','姓名3','学院3','13823888883','紧急联系人3','13823888883','440300199303030003','upload/xuesheng_xueshengzheng3.jpg'),(14,'2022-04-18 13:36:37','学号4','e10adc3949ba59abbe56e057f20f883e','姓名4','学院4','13823888884','紧急联系人4','13823888884','440300199404040004','upload/xuesheng_xueshengzheng4.jpg'),(15,'2022-04-18 13:36:37','学号5','e10adc3949ba59abbe56e057f20f883e','姓名5','学院5','13823888885','紧急联系人5','13823888885','440300199505050005','upload/xuesheng_xueshengzheng5.jpg'),(16,'2022-04-18 13:36:37','学号6','e10adc3949ba59abbe56e057f20f883e','姓名6','学院6','13823888886','紧急联系人6','13823888886','440300199606060006','upload/xuesheng_xueshengzheng6.jpg'),(1650292651525,'2022-04-18 14:37:31','111','698d51a19d8a121ce581499d7b701668','张三','XXX','18154541454','张思','18154541454','441458454145414544','upload/1650292759755.png');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20  9:51:50
