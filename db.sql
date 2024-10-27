/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shoujixiaoshou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoujixiaoshou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shoujixiaoshou`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(2,2,'收货人2','17703786902','地址2',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(4,3,'收货人4','17703786904','地址4',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(6,3,'收货人6','17703786906','地址6',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(7,1,'收货人7','17703786907','地址7',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(8,2,'收货人8','17703786908','地址8',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(9,2,'收货人9','17703786909','地址9',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(10,2,'收货人10','17703786910','地址10',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(11,2,'收货人11','17703786911','地址11',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(13,1,'收货人13','17703786913','地址13',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(14,1,'收货人14','17703786914','地址14',1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(15,4,'张三','17788885555','的公告',2,'2023-04-07 16:53:50','2023-04-07 16:53:49','2023-04-07 16:53:50');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-07 16:11:42'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-07 16:11:42'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-07 16:11:42'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-07 16:11:42'),(5,'shangjia_xingji_types','星级信誉',1,'一级',NULL,NULL,'2023-04-07 16:11:43'),(6,'shangjia_xingji_types','星级信誉',2,'二级',NULL,NULL,'2023-04-07 16:11:43'),(7,'shangjia_xingji_types','星级信誉',3,'三级',NULL,NULL,'2023-04-07 16:11:43'),(8,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-07 16:11:43'),(9,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-07 16:11:43'),(10,'shangpin_types','商品类型',1,'华为',NULL,NULL,'2023-04-07 16:11:43'),(11,'shangpin_types','商品类型',2,'小米',NULL,NULL,'2023-04-07 16:11:43'),(12,'shangpin_erji_types','二级类型',1,'荣耀7',1,NULL,'2023-04-07 16:11:43'),(13,'shangpin_erji_types','二级类型',2,'荣耀7plus',1,NULL,'2023-04-07 16:11:43'),(14,'shangpin_erji_types','二级类型',3,'小米9',2,NULL,'2023-04-07 16:11:43'),(15,'shangpin_erji_types','二级类型',4,'小米10',2,NULL,'2023-04-07 16:11:43'),(16,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-07 16:11:43'),(17,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-07 16:11:43'),(18,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-07 16:11:43'),(19,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-07 16:11:43'),(20,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-07 16:11:43'),(21,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-07 16:11:43'),(22,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-07 16:11:43'),(23,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-07 16:11:43'),(24,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-07 16:11:43'),(25,'shangpin_chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-07 16:11:43'),(26,'shangpin_chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-07 16:11:43'),(27,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-07 16:11:43'),(28,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-07 16:11:43'),(29,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-07 16:11:43'),(30,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-07 16:11:43'),(31,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-07 16:11:43'),(32,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-07 16:11:43'),(33,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-04-07 16:11:43'),(34,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-04-07 16:11:43'),(35,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-04-07 16:11:43'),(36,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-07 16:11:43'),(37,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-07 16:11:43'),(38,'shangjia_xingji_types','星级信誉',4,'四级',NULL,'','2023-04-07 16:58:18'),(39,'shangpin_erji_types','二级类型',5,'小米11',2,'','2023-04-07 16:58:29');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',209,3,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',291,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',498,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',246,3,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',435,1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',336,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',457,3,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',140,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',415,3,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',281,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(11,'帖子标题11',2,NULL,NULL,'发布内容11',344,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',75,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',76,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',434,1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40','2023-04-07 16:12:40'),(15,NULL,4,NULL,NULL,'帖子山东高速的个',14,NULL,2,'2023-04-07 16:54:43',NULL,'2023-04-07 16:54:43'),(16,'帖子2122',4,NULL,NULL,'<p>个第三个十多个十多个</p>',NULL,1,1,'2023-04-07 16:54:52',NULL,'2023-04-07 16:54:52'),(17,NULL,NULL,1,NULL,'大概是发给',16,NULL,2,'2023-04-07 16:56:25',NULL,'2023-04-07 16:56:25'),(18,NULL,NULL,NULL,1,'哈哈哈',16,NULL,2,'2023-04-07 16:58:38',NULL,'2023-04-07 16:58:38');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-07 16:12:40','公告详情1','2023-04-07 16:12:40'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-07 16:12:40','公告详情2','2023-04-07 16:12:40'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-07 16:12:40','公告详情3','2023-04-07 16:12:40'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-07 16:12:40','公告详情4','2023-04-07 16:12:40'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-07 16:12:40','公告详情5','2023-04-07 16:12:40'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-07 16:12:40','公告详情6','2023-04-07 16:12:40'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-07 16:12:40','公告详情7','2023-04-07 16:12:40'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-07 16:12:40','公告详情8','2023-04-07 16:12:40'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-07 16:12:40','公告详情9','2023-04-07 16:12:40'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-07 16:12:40','公告详情10','2023-04-07 16:12:40'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-07 16:12:40','公告详情11','2023-04-07 16:12:40'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-07 16:12:40','公告详情12','2023-04-07 16:12:40'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-07 16:12:40','公告详情13','2023-04-07 16:12:40'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-07 16:12:40','公告详情14','2023-04-07 16:12:40');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '星级信誉',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`jinyong_types`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',3,'2077.02','商家介绍1',1,1,'2023-04-07 16:12:40'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',3,'2147.72','商家介绍2',1,2,'2023-04-07 16:12:40'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',3,'834.22','商家介绍3',1,1,'2023-04-07 16:12:40');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/个',
  `shangpin_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`zan_number`,`cai_number`,`shangpin_types`,`shangpin_erji_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_cangku`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,1,'商品名称1','1680855161052','upload/shangpin1.jpg',121,59,1,1,97,'995.94','248.13','所属仓库1',170,'商品介绍1',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(2,1,'商品名称2','1680855161030','upload/shangpin2.jpg',450,407,1,1,102,'672.93','271.10','所属仓库2',25,'商品介绍2',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(3,1,'商品名称3','1680855160999','upload/shangpin3.jpg',442,21,1,2,103,'713.26','73.91','所属仓库3',65,'商品介绍3',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(4,1,'商品名称4','1680855161074','upload/shangpin4.jpg',493,366,1,2,104,'747.28','105.97','所属仓库4',232,'商品介绍4',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(5,1,'商品名称5','1680855161090','upload/shangpin5.jpg',460,295,1,2,104,'528.38','220.07','所属仓库5',279,'商品介绍5',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(6,2,'商品名称6','1680855161079','upload/shangpin6.jpg',345,478,1,2,106,'567.88','45.28','所属仓库6',421,'商品介绍6',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(7,2,'商品名称7','1680855161030','upload/shangpin7.jpg',381,234,2,3,107,'605.52','475.55','所属仓库7',71,'商品介绍7',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(8,1,'商品名称8','1680855161024','upload/shangpin8.jpg',403,290,2,3,108,'953.32','34.89','所属仓库8',57,'商品介绍8',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(9,3,'商品名称9','1680855161051','upload/shangpin9.jpg',187,104,2,3,109,'912.12','233.62','所属仓库9',399,'商品介绍9',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(10,1,'商品名称10','1680855161042','upload/shangpin10.jpg',210,146,2,3,1010,'927.59','52.04','所属仓库10',279,'商品介绍10',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(11,1,'商品名称11','1680855160993','upload/shangpin11.jpg',92,379,2,3,1010,'659.31','37.60','所属仓库11',422,'商品介绍11',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(12,1,'商品名称12','1680855160994','upload/shangpin12.jpg',285,224,2,3,1010,'771.21','397.56','所属仓库12',321,'<p>商品介绍12广大那个</p>',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(13,3,'商品名称13','1680855160997','upload/shangpin13.jpg',435,494,2,3,1013,'603.83','210.16','所属仓库13',366,'商品介绍13',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(14,2,'商品名称14','1680855161014','upload/shangpin14.jpg',150,495,2,4,1006,'696.92','222.29','所属仓库14',45,'商品介绍14',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40');

/*Table structure for table `shangpin_chat` */

DROP TABLE IF EXISTS `shangpin_chat`;

CREATE TABLE `shangpin_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_chat_issue_text` longtext COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `shangpin_chat_reply_text` longtext COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `shangpin_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `shangpin_chat` */

insert  into `shangpin_chat`(`id`,`yonghu_id`,`shangjia_id`,`shangpin_chat_issue_text`,`issue_time`,`shangpin_chat_reply_text`,`reply_time`,`zhuangtai_types`,`shangpin_chat_types`,`insert_time`,`create_time`) values (1,2,2,'问题1','2023-04-07 16:12:40','回复1','2023-04-07 16:12:40',1,2,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(2,1,1,'问题2','2023-04-07 16:12:40','回复2','2023-04-07 16:12:40',2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(3,1,3,'问题3','2023-04-07 16:12:40','回复3','2023-04-07 16:12:40',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(4,2,1,'问题4','2023-04-07 16:12:40','回复4','2023-04-07 16:12:40',1,2,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(5,3,3,'问题5','2023-04-07 16:12:40','回复5','2023-04-07 16:12:40',1,2,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(6,1,3,'问题6','2023-04-07 16:12:40','回复6','2023-04-07 16:12:40',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(7,2,1,'问题7','2023-04-07 16:12:40','回复7','2023-04-07 16:12:40',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(8,1,1,'问题8','2023-04-07 16:12:40','回复8','2023-04-07 16:12:40',1,2,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(9,2,3,'问题9','2023-04-07 16:12:40','回复9','2023-04-07 16:12:40',1,2,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(10,1,3,'问题10','2023-04-07 16:12:40','回复10','2023-04-07 16:12:40',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(11,1,3,'问题11','2023-04-07 16:12:40','回复11','2023-04-07 16:12:40',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(12,2,1,'问题12','2023-04-07 16:12:40','回复12','2023-04-07 16:12:40',1,2,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(13,3,1,'问题13','2023-04-07 16:12:40','回复13','2023-04-07 16:12:40',2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(14,2,2,'问题14','2023-04-07 16:12:40','回复14','2023-04-07 16:12:40',1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(15,4,1,'hhhhh','2023-04-07 16:53:05',NULL,NULL,2,1,'2023-04-07 16:53:05','2023-04-07 16:53:05'),(16,4,1,NULL,NULL,'hsdhsd讽德诵功','2023-04-07 16:53:16',NULL,2,'2023-04-07 16:53:16','2023-04-07 16:53:16'),(17,4,1,'后悔何及','2023-04-07 16:55:31',NULL,NULL,2,1,'2023-04-07 16:55:32','2023-04-07 16:55:32'),(18,4,1,NULL,NULL,'哈哈哈','2023-04-07 16:57:48',NULL,2,'2023-04-07 16:57:48','2023-04-07 16:57:48'),(19,1,1,NULL,NULL,'爱上岗','2023-04-07 16:57:54',NULL,2,'2023-04-07 16:57:54','2023-04-07 16:57:54');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(2,2,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(3,3,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(4,4,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(5,5,1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(6,6,3,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(7,7,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(8,8,3,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(9,9,1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(10,10,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(11,11,3,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(12,12,3,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(13,13,2,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(14,14,1,1,'2023-04-07 16:12:40','2023-04-07 16:12:40'),(15,12,1,1,'2023-04-07 16:38:12','2023-04-07 16:38:12'),(16,11,4,1,'2023-04-07 16:53:59','2023-04-07 16:53:59'),(17,5,4,2,'2023-04-07 16:55:28','2023-04-07 16:55:28');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-04-07 16:12:40','回复信息1','2023-04-07 16:12:40','2023-04-07 16:12:40'),(2,2,1,'评价内容2','2023-04-07 16:12:40','回复信息2','2023-04-07 16:12:40','2023-04-07 16:12:40'),(3,3,3,'评价内容3','2023-04-07 16:12:40','回复信息3','2023-04-07 16:12:40','2023-04-07 16:12:40'),(4,4,3,'评价内容4','2023-04-07 16:12:40','回复信息4','2023-04-07 16:12:40','2023-04-07 16:12:40'),(5,5,3,'评价内容5','2023-04-07 16:12:40','回复信息5','2023-04-07 16:12:40','2023-04-07 16:12:40'),(6,6,3,'评价内容6','2023-04-07 16:12:40','回复信息6','2023-04-07 16:12:40','2023-04-07 16:12:40'),(7,7,2,'评价内容7','2023-04-07 16:12:40','回复信息7','2023-04-07 16:12:40','2023-04-07 16:12:40'),(8,8,3,'评价内容8','2023-04-07 16:12:40','回复信息8','2023-04-07 16:12:40','2023-04-07 16:12:40'),(9,9,1,'评价内容9','2023-04-07 16:12:40','回复信息9','2023-04-07 16:12:40','2023-04-07 16:12:40'),(10,10,3,'评价内容10','2023-04-07 16:12:40','回复信息10','2023-04-07 16:12:40','2023-04-07 16:12:40'),(11,11,2,'评价内容11','2023-04-07 16:12:40','回复信息11','2023-04-07 16:12:40','2023-04-07 16:12:40'),(12,12,2,'评价内容12','2023-04-07 16:12:40','回复信息12','2023-04-07 16:12:40','2023-04-07 16:12:40'),(13,13,1,'评价内容13','2023-04-07 16:12:40','回复信息13','2023-04-07 16:12:40','2023-04-07 16:12:40'),(14,14,3,'评价内容14','2023-04-07 16:12:40','回复信息14','2023-04-07 16:12:40','2023-04-07 16:12:40'),(15,5,4,'很多事第三个','2023-04-07 16:55:53','个哈哈哈或或军','2023-04-07 16:56:51','2023-04-07 16:55:53');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1680856698204',3,12,1,1,'397.56',NULL,NULL,101,1,'2023-04-07 16:38:18','2023-04-07 16:38:18'),(2,'1680856710972',5,1,1,2,'496.26',NULL,NULL,101,1,'2023-04-07 16:38:31','2023-04-07 16:38:31'),(3,'1680856720196',5,1,1,2,'496.26',NULL,NULL,101,1,'2023-04-07 16:38:40','2023-04-07 16:38:40'),(4,'1680856720196',5,12,1,1,'397.56',NULL,NULL,101,1,'2023-04-07 16:38:40','2023-04-07 16:38:40'),(5,'1680856720196',5,14,1,2,'444.58',NULL,NULL,101,1,'2023-04-07 16:38:40','2023-04-07 16:38:40'),(6,'1680857669654',15,14,4,2,'444.58',NULL,NULL,101,1,'2023-04-07 16:54:30','2023-04-07 16:54:30'),(7,'1680857703100',15,5,4,1,'220.07','顺丰','13254154',105,1,'2023-04-07 16:55:03','2023-04-07 16:55:03'),(8,'1680857768718',15,14,4,4,'889.16',NULL,NULL,101,1,'2023-04-07 16:56:09','2023-04-07 16:56:09'),(9,'1680857768718',15,11,4,1,'37.60','圆通','12154548',103,1,'2023-04-07 16:56:09','2023-04-07 16:56:09');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','31j8swxwg7avgsjye28b58l6rk25c0di','2023-04-07 16:30:36','2023-04-07 18:01:29'),(2,1,'a1','shangjia','商家','96t2rarjg949pyvp60cb17tmegew1zjd','2023-04-07 16:33:05','2023-04-07 17:56:19'),(3,1,'a1','yonghu','用户','6xkzir51w0tdfev6y7jpxc9wwqpg6gm2','2023-04-07 16:36:22','2023-04-07 17:59:25'),(4,3,'a3','shangjia','商家','69ocfars2smqyfno9mtio2l5pbemn4jr','2023-04-07 16:51:12','2023-04-07 17:51:12'),(5,2,'a2','shangjia','商家','0mundcf9zbflmevdzh6fu2qksdmvbbxe','2023-04-07 16:51:19','2023-04-07 17:51:20'),(6,4,'a5','yonghu','用户','tyi1dggk5o1g3idgl202s1rkf2o5pze2','2023-04-07 16:52:51','2023-04-07 17:52:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-07 16:11:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','97768.33',1,'2023-04-07 16:12:40'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','31.85',2,'2023-04-07 16:12:40'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','107.22',1,'2023-04-07 16:12:40'),(4,'a5','123456','张5','17788889999','444555888899999999','upload/1680857614883.jpg',1,'5@qq.com','98407.59',1,'2023-04-07 16:52:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
