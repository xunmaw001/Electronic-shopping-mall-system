-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmofb7i
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617248889178 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-31 15:56:55',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-31 15:56:55',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-31 15:56:55',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-31 15:56:55',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-31 15:56:55',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-31 15:56:55',6,'宇宙银河系月球1号','月某','13823888886','是'),(1617248889177,'2021-04-01 03:48:09',1617248688571,'广东省梅州市梅县区新城街道丽景湾(嘉应西二巷)','杨小姐','13823899999','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617248774912 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617248856312 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-31 15:56:55',1,1,'提问1','回复1',1),(62,'2021-03-31 15:56:55',2,2,'提问2','回复2',2),(63,'2021-03-31 15:56:55',3,3,'提问3','回复3',3),(64,'2021-03-31 15:56:55',4,4,'提问4','回复4',4),(65,'2021-03-31 15:56:55',5,5,'提问5','回复5',5),(66,'2021-03-31 15:56:55',6,6,'提问6','回复6',6),(1617248856311,'2021-04-01 03:47:35',1617248688571,NULL,'‍你好\r\n','请问有什么能帮你的\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmofb7i/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmofb7i/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmofb7i/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617248841016 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-31 15:56:55','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-31 15:56:55','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-31 15:56:55','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-31 15:56:55','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-31 15:56:55','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-31 15:56:55','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617248841015,'2021-04-01 03:47:20','sdfsf','<p>sdsgsgsgsgsgsdgsg</p>',0,1617248688571,'11','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1617248906156 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1617248906155,'2021-04-01 03:48:25','20214111482569763190','yaopinxinxi',1617248688571,31,'药品名称1','http://localhost:8080/jspmofb7i/upload/yaopinxinxi_tupian1.jpg',1,18,18,18,18,1,'已完成','广东省梅州市梅县区新城街道丽景湾(嘉应西二巷)',NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','rw98o130jn11o62aezx4xqo1hqrb8xmc','2021-03-31 15:57:44','2021-03-31 16:57:44'),(2,21,'医生1','yisheng','医生','r038ie72ukxb1zei66ezwr1eq465puvf','2021-03-31 15:58:55','2021-04-01 04:49:02'),(3,1,'abo','users','管理员','8a701rxwcen8vixynn6e6gs95mdgjzrx','2021-03-31 15:59:13','2021-04-01 04:51:54'),(4,1617248688571,'11','yonghu','用户','u1uvk7tdusd203t5itlnzprfxakqtjga','2021-04-01 03:44:57','2021-04-01 04:44:57');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-31 15:56:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianshangzhenliao`
--

DROP TABLE IF EXISTS `xianshangzhenliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianshangzhenliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `bingqingzixun` varchar(200) DEFAULT NULL COMMENT '病情咨询',
  `zixunriqi` datetime DEFAULT NULL COMMENT '咨询日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617248818937 DEFAULT CHARSET=utf8 COMMENT='线上诊疗';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianshangzhenliao`
--

LOCK TABLES `xianshangzhenliao` WRITE;
/*!40000 ALTER TABLE `xianshangzhenliao` DISABLE KEYS */;
INSERT INTO `xianshangzhenliao` VALUES (41,'2021-03-31 15:56:55','医生账号1','医生姓名1','病情咨询1','2021-03-31 23:56:55','用户名1','用户姓名1','手机号码1','是',''),(42,'2021-03-31 15:56:55','医生账号2','医生姓名2','病情咨询2','2021-03-31 23:56:55','用户名2','用户姓名2','手机号码2','是',''),(43,'2021-03-31 15:56:55','医生账号3','医生姓名3','病情咨询3','2021-03-31 23:56:55','用户名3','用户姓名3','手机号码3','是',''),(44,'2021-03-31 15:56:55','医生账号4','医生姓名4','病情咨询4','2021-03-31 23:56:55','用户名4','用户姓名4','手机号码4','是',''),(45,'2021-03-31 15:56:55','医生账号5','医生姓名5','病情咨询5','2021-03-31 23:56:55','用户名5','用户姓名5','手机号码5','是',''),(46,'2021-03-31 15:56:55','医生账号6','医生姓名6','病情咨询6','2021-03-31 23:56:55','用户名6','用户姓名6','手机号码6','是',''),(1617248818936,'2021-04-01 03:46:58','医生1','医生姓名1','sdfssgsgsgsdg','2021-04-01 11:46:54','11','杨小姐','13823899999','是','sdsgsgsdgsgfdgf');
/*!40000 ALTER TABLE `xianshangzhenliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shifouweichufangyao` varchar(200) DEFAULT NULL COMMENT '是否为处方药',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `jiliang` varchar(200) DEFAULT NULL COMMENT '剂量',
  `gongxiao` varchar(200) DEFAULT NULL COMMENT '功效',
  `shengchanshijian` date DEFAULT NULL COMMENT '生产时间',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `yaopinxiangqing` longtext COMMENT '药品详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (31,'2021-03-31 15:56:55','药品名称1','http://localhost:8080/jspmofb7i/upload/yaopinxinxi_tupian1.jpg','否','型号1','剂量1','功效1','2021-03-31','生产厂家1','药品详情1\r\n',18),(32,'2021-03-31 15:56:55','药品名称2','http://localhost:8080/jspmofb7i/upload/yaopinxinxi_tupian2.jpg','否','型号2','剂量2','功效2','2021-03-31','生产厂家2','药品详情2\r\n',15),(33,'2021-03-31 15:56:55','药品名称3','http://localhost:8080/jspmofb7i/upload/yaopinxinxi_tupian3.jpg','是','型号3','剂量3','功效3','2021-03-31','生产厂家3','药品详情3\r\n',23),(34,'2021-03-31 15:56:55','药品名称4','http://localhost:8080/jspmofb7i/upload/yaopinxinxi_tupian4.jpg','否','型号4','剂量4','功效4','2021-03-31','生产厂家4','药品详情4\r\n',12),(35,'2021-03-31 15:56:55','药品名称5','http://localhost:8080/jspmofb7i/upload/yaopinxinxi_tupian5.jpg','是','型号5','剂量5','功效5','2021-03-31','生产厂家5','药品详情5\r\n',26),(36,'2021-03-31 15:56:55','药品名称6','http://localhost:8080/jspmofb7i/upload/yaopinxinxi_tupian6.jpg','否','型号6','剂量6','功效6','2021-03-31','生产厂家6','药品详情6\r\n',20);
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) NOT NULL COMMENT '医生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishengzhanghao` (`yishengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2021-03-31 15:56:55','医生1','123456','医生姓名1','http://localhost:8080/jspmofb7i/upload/yisheng_touxiang1.jpg','女','年龄1','13823888881','邮箱1',100),(22,'2021-03-31 15:56:55','医生2','123456','医生姓名2','http://localhost:8080/jspmofb7i/upload/yisheng_touxiang2.jpg','男','年龄2','13823888882','邮箱2',100),(23,'2021-03-31 15:56:55','医生3','123456','医生姓名3','http://localhost:8080/jspmofb7i/upload/yisheng_touxiang3.jpg','男','年龄3','13823888883','邮箱3',100),(24,'2021-03-31 15:56:55','医生4','123456','医生姓名4','http://localhost:8080/jspmofb7i/upload/yisheng_touxiang4.jpg','男','年龄4','13823888884','邮箱4',100),(25,'2021-03-31 15:56:55','医生5','123456','医生姓名5','http://localhost:8080/jspmofb7i/upload/yisheng_touxiang5.jpg','男','年龄5','13823888885','邮箱5',100),(26,'2021-03-31 15:56:55','医生6','123456','医生姓名6','http://localhost:8080/jspmofb7i/upload/yisheng_touxiang6.jpg','男','年龄6','13823888886','邮箱6',100);
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yishengxinxi`
--

DROP TABLE IF EXISTS `yishengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `congyeshijian` varchar(200) DEFAULT NULL COMMENT '从业时间',
  `shanzhanglingyu` varchar(200) DEFAULT NULL COMMENT '擅长领域',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='医生信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yishengxinxi`
--

LOCK TABLES `yishengxinxi` WRITE;
/*!40000 ALTER TABLE `yishengxinxi` DISABLE KEYS */;
INSERT INTO `yishengxinxi` VALUES (51,'2021-03-31 15:56:55','医生1','医生姓名1','http://localhost:8080/jspmofb7i/upload/yishengxinxi_touxiang1.jpg','年龄1','3年','擅长领域1','个人简介1'),(52,'2021-03-31 15:56:55','医生2','医生姓名2','http://localhost:8080/jspmofb7i/upload/yishengxinxi_touxiang2.jpg','年龄2','从业时间2','擅长领域2','个人简介2'),(53,'2021-03-31 15:56:55','医生3','医生姓名3','http://localhost:8080/jspmofb7i/upload/yishengxinxi_touxiang3.jpg','年龄3','从业时间3','擅长领域3','个人简介3'),(54,'2021-03-31 15:56:55','医生4','医生姓名4','http://localhost:8080/jspmofb7i/upload/yishengxinxi_touxiang4.jpg','年龄4','从业时间4','擅长领域4','个人简介4'),(55,'2021-03-31 15:56:55','医生5','医生姓名5','http://localhost:8080/jspmofb7i/upload/yishengxinxi_touxiang5.jpg','年龄5','从业时间5','擅长领域5','个人简介5'),(56,'2021-03-31 15:56:55','医生6','医生姓名6','http://localhost:8080/jspmofb7i/upload/yishengxinxi_touxiang6.jpg','年龄6','从业时间6','擅长领域6','个人简介6');
/*!40000 ALTER TABLE `yishengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617248688572 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-31 15:56:55','用户1','123456','用户姓名1','http://localhost:8080/jspmofb7i/upload/yonghu_touxiang1.jpg','男','年龄1','13823888881','773890001@qq.com',100),(12,'2021-03-31 15:56:55','用户2','123456','用户姓名2','http://localhost:8080/jspmofb7i/upload/yonghu_touxiang2.jpg','男','年龄2','13823888882','773890002@qq.com',100),(13,'2021-03-31 15:56:55','用户3','123456','用户姓名3','http://localhost:8080/jspmofb7i/upload/yonghu_touxiang3.jpg','男','年龄3','13823888883','773890003@qq.com',100),(14,'2021-03-31 15:56:55','用户4','123456','用户姓名4','http://localhost:8080/jspmofb7i/upload/yonghu_touxiang4.jpg','男','年龄4','13823888884','773890004@qq.com',100),(15,'2021-03-31 15:56:55','用户5','123456','用户姓名5','http://localhost:8080/jspmofb7i/upload/yonghu_touxiang5.jpg','男','年龄5','13823888885','773890005@qq.com',100),(16,'2021-03-31 15:56:55','用户6','123456','用户姓名6','http://localhost:8080/jspmofb7i/upload/yonghu_touxiang6.jpg','男','年龄6','13823888886','773890006@qq.com',100),(1617248688571,'2021-04-01 03:44:48','11','123456','杨小姐','http://localhost:8080/jspmofb7i/upload/1617248714369.jpg','女','30','13823899999','',182);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-02  9:36:31
