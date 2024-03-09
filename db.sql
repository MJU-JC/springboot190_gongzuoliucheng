/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongzuoliuchengguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongzuoliuchengguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongzuoliuchengguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'xiangmu_types','项目类型',1,'项目类型1',NULL,NULL,'2022-03-22 20:19:00'),(2,'xiangmu_types','项目类型',2,'项目类型2',NULL,NULL,'2022-03-22 20:19:00'),(3,'xiangmu_types','项目类型',3,'项目类型3',NULL,NULL,'2022-03-22 20:19:00'),(4,'xiangmu_yesno_types','项目审核',1,'审核中',NULL,NULL,'2022-03-22 20:19:00'),(5,'xiangmu_yesno_types','项目审核',2,'通过',NULL,NULL,'2022-03-22 20:19:00'),(6,'xiangmu_yesno_types','项目审核',3,'拒绝',NULL,NULL,'2022-03-22 20:19:00'),(7,'jiarudexiangmu_yesno_types','加入审核',1,'审核中',NULL,NULL,'2022-03-22 20:19:00'),(8,'jiarudexiangmu_yesno_types','加入审核',2,'通过',NULL,NULL,'2022-03-22 20:19:00'),(9,'jiarudexiangmu_yesno_types','加入审核',3,'拒绝',NULL,NULL,'2022-03-22 20:19:00'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-22 20:19:00'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-22 20:19:00'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-22 20:19:00'),(13,'sex_types','性别',1,'男',NULL,NULL,'2022-03-22 20:19:00'),(14,'sex_types','性别',2,'女',NULL,NULL,'2022-03-22 20:19:00');

/*Table structure for table `jiarudexiangmu` */

DROP TABLE IF EXISTS `jiarudexiangmu`;

CREATE TABLE `jiarudexiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiarudexiangmu_yesno_types` int(11) DEFAULT NULL COMMENT '加入审核',
  `jiarudexiangmu_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='加入的项目';

/*Data for the table `jiarudexiangmu` */

insert  into `jiarudexiangmu`(`id`,`xiangmu_id`,`yonghu_id`,`jiarudexiangmu_yesno_types`,`jiarudexiangmu_yesno_text`,`create_time`) values (6,5,1,2,'通过','2022-03-22 20:33:00'),(7,5,2,2,'通过123','2022-03-22 21:35:31'),(8,5,3,2,'123','2022-03-22 21:55:18'),(9,5,1,3,'请不要重复加入','2022-03-23 09:20:49');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/gongzuoliuchengguanli/upload/news1.jpg','2022-03-22 20:19:09','公告详情1','2022-03-22 20:19:09'),(2,'公告标题2',1,'http://localhost:8080/gongzuoliuchengguanli/upload/news2.jpg','2022-03-22 20:19:09','公告详情2','2022-03-22 20:19:09'),(3,'公告标题3',3,'http://localhost:8080/gongzuoliuchengguanli/upload/news3.jpg','2022-03-22 20:19:09','公告详情3','2022-03-22 20:19:09'),(4,'公告标题4',3,'http://localhost:8080/gongzuoliuchengguanli/upload/news4.jpg','2022-03-22 20:19:09','公告详情4','2022-03-22 20:19:09'),(5,'公告标题5',1,'http://localhost:8080/gongzuoliuchengguanli/upload/news5.jpg','2022-03-22 20:19:09','公告详情5','2022-03-22 20:19:09');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','5wcugvq9u3vj3fok2pykspwhvfh3pt3g','2022-03-22 19:45:21','2022-03-23 10:26:21'),(2,1,'a1','yonghu','用户','2wjrxrc6so6oen895nr6g1a3ixfw3laz','2022-03-22 20:00:57','2022-03-23 10:24:11'),(3,2,'a2','yonghu','用户','416288qhpbug3qfoz7pg415mammf5ppd','2022-03-22 21:38:42','2022-03-23 10:21:03'),(4,3,'a3','yonghu','用户','vcyqhl8puhpte2l9nqalu6b46e5ld3cu','2022-03-22 21:55:11','2022-03-23 10:22:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `xiangmu_photo` varchar(200) DEFAULT NULL COMMENT '项目封面',
  `xiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `xiangmu_address` varchar(200) DEFAULT NULL COMMENT '所属地点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '项目负责人',
  `xiangmu_content` text COMMENT '项目简介 ',
  `xiangmu_yesno_types` int(11) DEFAULT NULL COMMENT '项目审核',
  `xiangmu_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='项目信息';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`xiangmu_name`,`xiangmu_photo`,`xiangmu_types`,`xiangmu_address`,`yonghu_id`,`xiangmu_content`,`xiangmu_yesno_types`,`xiangmu_yesno_text`,`insert_time`,`create_time`) values (1,'项目名称1','http://localhost:8080/gongzuoliuchengguanli/upload/xiangmu1.jpg',3,'所属地点1',1,'项目简介1',1,NULL,'2022-03-22 20:19:09','2022-03-22 20:19:09'),(2,'项目名称2','http://localhost:8080/gongzuoliuchengguanli/upload/xiangmu2.jpg',1,'所属地点2',3,'项目简介2',1,NULL,'2022-03-22 20:19:09','2022-03-22 20:19:09'),(3,'项目名称3','http://localhost:8080/gongzuoliuchengguanli/upload/xiangmu3.jpg',3,'所属地点3',1,'项目简介3',2,'通过2312','2022-03-22 20:19:09','2022-03-22 20:19:09'),(4,'项目名称4','http://localhost:8080/gongzuoliuchengguanli/upload/xiangmu4.jpg',2,'所属地点4',2,'项目简介4',3,'拒绝','2022-03-22 20:19:09','2022-03-22 20:19:09'),(5,'项目名称5','http://localhost:8080/gongzuoliuchengguanli/upload/xiangmu5.jpg',3,'所属地点5',2,'项目简介5',2,'审核通过','2022-03-22 20:19:09','2022-03-22 20:19:09');

/*Table structure for table `xiangmujindu` */

DROP TABLE IF EXISTS `xiangmujindu`;

CREATE TABLE `xiangmujindu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目信息',
  `xiangmujindu_text` text COMMENT '项目进度',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='项目进度';

/*Data for the table `xiangmujindu` */

insert  into `xiangmujindu`(`id`,`yonghu_id`,`xiangmu_id`,`xiangmujindu_text`,`insert_time`,`create_time`) values (6,1,5,'项目进度213','2022-03-22 20:43:56','2022-03-22 20:43:56'),(7,2,5,'123','2022-03-22 21:21:26','2022-03-22 21:21:26'),(8,2,5,'发布项目的用户2添加项目进度','2022-03-23 09:21:49','2022-03-23 09:21:49'),(9,2,4,'项目进度23','2022-03-23 09:22:14','2022-03-23 09:22:14');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/gongzuoliuchengguanli/upload/yonghu1.jpg',2,'17703786901','410224199610232001','1@qq.com',1,'2022-03-22 20:19:09'),(2,'a2','123456','用户姓名2','http://localhost:8080/gongzuoliuchengguanli/upload/yonghu2.jpg',2,'17703786902','410224199610232002','2@qq.com',1,'2022-03-22 20:19:09'),(3,'a3','123456','用户姓名3','http://localhost:8080/gongzuoliuchengguanli/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-22 20:19:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
