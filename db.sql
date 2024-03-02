/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - baoxianhetong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`baoxianhetong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `baoxianhetong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/baoxianhetong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/baoxianhetong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/baoxianhetong/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-15 15:12:11'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-15 15:12:11'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-02-15 15:12:12'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-02-15 15:12:12'),(5,'hetong_types','保险合同类型',1,'社会保险合同',NULL,NULL,'2022-02-15 15:12:12'),(6,'hetong_types','保险合同类型',2,'商业保险合同',NULL,NULL,'2022-02-15 15:12:12'),(7,'changduan_types','长短类型',1,'短期合同',NULL,NULL,'2022-02-15 15:12:12'),(8,'changduan_types','长短类型',2,'长期合同',NULL,NULL,'2022-02-15 15:12:12');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15','公告详情1','2022-02-15 15:12:15'),(2,'公告名称2','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15','公告详情2','2022-02-15 15:12:15'),(3,'公告名称3','http://localhost:8080/baoxianhetong/upload/photo.jpg',1,'2022-02-15 15:12:15','公告详情3','2022-02-15 15:12:15'),(4,'公告名称4','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15','公告详情4','2022-02-15 15:12:15'),(5,'公告名称5','http://localhost:8080/baoxianhetong/upload/photo.jpg',1,'2022-02-15 15:12:15','公告详情5','2022-02-15 15:12:15'),(6,'公告名称6','http://localhost:8080/baoxianhetong/upload/photo.jpg',1,'2022-02-15 15:12:15','公告详情6','2022-02-15 15:12:15'),(7,'公告名称7','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15','公告详情7','2022-02-15 15:12:15'),(8,'公告名称8','http://localhost:8080/baoxianhetong/upload/photo1.jpg',1,'2022-02-15 15:12:15','公告详情8','2022-02-15 15:12:15'),(9,'公告名称9','http://localhost:8080/baoxianhetong/upload/photo2.jpg',1,'2022-02-15 15:12:15','公告详情9','2022-02-15 15:12:15'),(10,'公告名称10','http://localhost:8080/baoxianhetong/upload/photo3.jpg',2,'2022-02-15 15:12:15','公告详情10','2022-02-15 15:12:15'),(11,'公告名称11','http://localhost:8080/baoxianhetong/upload/photo4.jpg',2,'2022-02-15 15:12:15','公告详情11','2022-02-15 15:12:15');

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kehu_id` int(11) DEFAULT NULL COMMENT '投保人',
  `hetong_uuid_number` varchar(200) DEFAULT NULL COMMENT '合同唯一编号 Search111 ',
  `hetong_types` int(11) DEFAULT NULL COMMENT '保险合同类型 Search111',
  `changduan_types` int(11) DEFAULT NULL COMMENT '长短类型 Search111',
  `hetong_file` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `baofei_double` decimal(10,2) DEFAULT NULL COMMENT '保费',
  `baoe_double` decimal(10,2) DEFAULT NULL COMMENT '保额',
  `shouyiren_name` varchar(200) DEFAULT NULL COMMENT '受益人姓名',
  `shouyiren_phone` varchar(200) DEFAULT NULL COMMENT '受益人手机号',
  `shouyiren_id_number` varchar(200) DEFAULT NULL COMMENT '受益人身份证号',
  `shouyiren_address` varchar(200) DEFAULT NULL COMMENT '受益人地址',
  `hetong_content` text COMMENT '合同介绍',
  `zhixing_time` date DEFAULT NULL COMMENT '执行日期 Search111',
  `daoqi_time` date DEFAULT NULL COMMENT '到期日期 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='合同';

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`yonghu_id`,`kehu_id`,`hetong_uuid_number`,`hetong_types`,`changduan_types`,`hetong_file`,`baofei_double`,`baoe_double`,`shouyiren_name`,`shouyiren_phone`,`shouyiren_id_number`,`shouyiren_address`,`hetong_content`,`zhixing_time`,`daoqi_time`,`insert_time`,`create_time`) values (1,3,1,'164490913511420',2,1,'http://localhost:8080/baoxianhetong/upload/file.rar','265.98','458.76','受益人姓名1','17703786901','410224199610232001','受益人地址1','合同介绍1','2022-01-17','2023-02-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(2,2,2,'16449091351144',2,2,'http://localhost:8080/baoxianhetong/upload/file.rar','740.95','218.57','受益人姓名2','17703786902','410224199610232002','受益人地址2','合同介绍2','2020-02-10','2023-02-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(3,3,3,'164490913511420',1,2,'http://localhost:8080/baoxianhetong/upload/file.rar','118.66','552.75','受益人姓名3','17703786903','410224199610232003','受益人地址3','合同介绍3','2020-02-10','2023-02-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(4,1,4,'16449091351149',1,2,'http://localhost:8080/baoxianhetong/upload/file.rar','133.64','445.82','受益人姓名4','17703786904','410224199610232004','受益人地址4','合同介绍4','2020-02-10','2023-02-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(5,1,5,'164490913511415',1,1,'http://localhost:8080/baoxianhetong/upload/file.rar','125.49','136.57','受益人姓名5','17703786905','410224199610232005','受益人地址5','合同介绍5','2022-02-15','2024-03-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(6,2,6,'16449091351142',1,1,'http://localhost:8080/baoxianhetong/upload/file.rar','662.07','759.22','受益人姓名6','17703786906','410224199610232006','受益人地址6','合同介绍6','2021-02-15','2021-03-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(7,2,7,'16449091351146',2,2,'http://localhost:8080/baoxianhetong/upload/file.rar','619.51','556.46','受益人姓名7','17703786907','410224199610232007','受益人地址7','合同介绍7','2021-02-15','2024-03-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(8,1,8,'164490913511410',1,2,'http://localhost:8080/baoxianhetong/upload/file.rar','532.52','783.16','受益人姓名8','17703786908','410224199610232008','受益人地址8','合同介绍8','2021-02-15','2024-03-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(9,1,9,'16449091351152',2,1,'http://localhost:8080/baoxianhetong/upload/file.rar','53.63','848.69','受益人姓名9','17703786909','410224199610232009','受益人地址9','合同介绍9','2021-02-15','2024-03-15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(10,3,10,'164490913511518',2,1,'http://localhost:8080/baoxianhetong/upload/file.rar','645.28','783.73','受益人姓名10','17703786910','410224199610232010','受益人地址10','合同介绍10','2020-02-10','2022-02-20','2022-02-15 15:12:15','2022-02-15 15:12:15'),(11,3,11,'164490913511516',1,2,'http://localhost:8080/baoxianhetong/upload/file.rar','718.66','621.34','受益人姓名11','17703786911','410224199610232011','受益人地址11','合同介绍11','2022-02-15','2022-02-20','2022-02-15 15:12:15','2022-02-15 15:12:15'),(12,1,12,'1644917422272',2,1,'http://localhost:8080/baoxianhetong/upload/1644917440503.rar','300.00','300000.00','张三','17703786902','410224199610232002','地址2','<p>客户999的合同介绍</p>','2022-02-16','2024-06-04','2022-02-15 17:31:42','2022-02-15 17:31:42');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '客户手机号',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '客户身份证号',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '客户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`yonghu_id`,`kehu_name`,`kehu_phone`,`kehu_id_number`,`kehu_photo`,`sex_types`,`insert_time`,`create_time`) values (1,3,'客户姓名1','17703786901','410224199610232001','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(2,1,'客户姓名2','17703786902','410224199610232002','http://localhost:8080/baoxianhetong/upload/photo.jpg',1,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(3,2,'客户姓名3','17703786903','410224199610232003','http://localhost:8080/baoxianhetong/upload/photo.jpg',1,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(4,1,'客户姓名4','17703786904','410224199610232004','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(5,3,'客户姓名5','17703786905','410224199610232005','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(6,1,'客户姓名6','17703786906','410224199610232006','http://localhost:8080/baoxianhetong/upload/photo.jpg',1,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(7,2,'客户姓名7','17703786907','410224199610232007','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(8,3,'客户姓名8','17703786908','410224199610232008','http://localhost:8080/baoxianhetong/upload/photo1.jpg',1,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(9,3,'客户姓名9','17703786909','410224199610232009','http://localhost:8080/baoxianhetong/upload/photo2.jpg',1,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(10,1,'客户姓名10','17703786910','410224199610232010','http://localhost:8080/baoxianhetong/upload/photo3.jpg',2,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(11,1,'客户姓名11','17703786911','410224199610232011','http://localhost:8080/baoxianhetong/upload/photo4.jpg',1,'2022-02-15 15:12:15','2022-02-15 15:12:15'),(12,1,'客户999','17703786999','410224199610232099','http://localhost:8080/baoxianhetong/upload/1644917327783.jpg',2,'2022-02-15 17:28:51','2022-02-15 17:28:51');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,2,'留言标题1','留言内容1','回复信息1','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(2,2,'留言标题2','留言内容2','回复信息2','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(3,1,'留言标题3','留言内容3','回复信息3','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(4,3,'留言标题4','留言内容4','回复信息4','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(5,1,'留言标题5','留言内容5','回复信息5','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(6,3,'留言标题6','留言内容6','回复信息6','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(7,2,'留言标题7','留言内容7','回复信息7','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(8,3,'留言标题8','留言内容8','回复信息8','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(9,2,'留言标题9','留言内容9','回复信息9','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(10,1,'留言标题10','留言内容10','回复信息10','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(11,3,'留言标题11','留言内容11','回复信息11','2022-02-15 15:12:15','2022-02-15 15:12:15','2022-02-15 15:12:15'),(12,1,'留言12','留言12的内容',NULL,'2022-02-15 17:17:20',NULL,'2022-02-15 17:17:20'),(13,1,'留言13','留言13的内容','好的','2022-02-15 17:26:50','2022-02-15 17:27:54','2022-02-15 15:12:15');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','v7g0p3zyyo9p47hbqy26m8b0bvxw2cjq','2022-02-15 15:00:30','2022-02-15 18:41:17'),(2,1,'a1','yonghu','用户','zcdbtcdrlwoemddd887431fo8eowku0v','2022-02-15 16:18:58','2022-02-15 18:28:04');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

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
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/baoxianhetong/upload/photo.jpg',2,'2022-02-15 15:12:15'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/baoxianhetong/upload/photo.jpg',1,'2022-02-15 15:12:15'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/baoxianhetong/upload/photo.jpg',1,'2022-02-15 15:12:15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
