/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.46 : Database - blog_gp1701
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `author` */

CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bio` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `favourite_section` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `realname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `author` */

insert  into `author`(`id`,`username`,`password`,`email`,`bio`,`favourite_section`,`nickname`,`realname`) values (1,'helen','123','55317332@qq.com','黑龙江 哈尔滨 女','你就是我的幸运星 一闪一闪亮晶晶','小草','姚环');
insert  into `author`(`id`,`username`,`password`,`email`,`bio`,`favourite_section`,`nickname`,`realname`) values (2,'anwenqi','123','51425140@qq.com','黑龙江 哈尔滨 男','一千个人就有一千种生存方式和生活道路，要想改变一些事情，首先得把自己给找回来。','ゞ﹏大窵鷉','安文琪');
insert  into `author`(`id`,`username`,`password`,`email`,`bio`,`favourite_section`,`nickname`,`realname`) values (3,'yaoyanjun','123','yaoyanjun163@163.com','黑龙江 哈尔滨 男','2017.1.4 我们会很幸福的哦！','╰阳光旳温暖涐感觉卟到︶','姚延军');

/*Table structure for table `blog` */

CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `author_id` int(11) NOT NULL,
  `state` varchar(10) COLLATE utf8_bin DEFAULT 'NOT ACTIVE',
  `featured` tinyint(1) DEFAULT '0',
  `style` varchar(20) COLLATE utf8_bin DEFAULT 'black',
  PRIMARY KEY (`id`),
  KEY `FK_blog_author` (`author_id`),
  CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `blog` */

insert  into `blog`(`id`,`title`,`author_id`,`state`,`featured`,`style`) values (1,'我的Bloggggggg',3,'ACTIVE',1,'yellow');
insert  into `blog`(`id`,`title`,`author_id`,`state`,`featured`,`style`) values (2,'博 窵鷉的树',2,'ACTIVE',1,'black');
insert  into `blog`(`id`,`title`,`author_id`,`state`,`featured`,`style`) values (3,'啊 姚延军的空间',3,'ACTIVE',1,'red');
insert  into `blog`(`id`,`title`,`author_id`,`state`,`featured`,`style`) values (27,'魅族',3,'NOT ACTIVE',0,'black');
insert  into `blog`(`id`,`title`,`author_id`,`state`,`featured`,`style`) values (28,'helen\'s blog',1,'NOT ACTIVE',0,'black');
insert  into `blog`(`id`,`title`,`author_id`,`state`,`featured`,`style`) values (29,'helen\'s blog',1,NULL,NULL,NULL);
insert  into `blog`(`id`,`title`,`author_id`,`state`,`featured`,`style`) values (36,'helen\'s blog',1,NULL,NULL,NULL);

/*Table structure for table `comment` */

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `comment` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `create_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_comment_author` (`author_id`),
  KEY `FK_comment_post` (`post_id`),
  CONSTRAINT `FK_comment_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_comment_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `comment` */

insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (1,1,'过客','你怎么看？','2017-01-05 09:52:04',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (2,1,'大侠','我是大侠','2017-01-07 09:51:58',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (3,1,'匿名草','您可以在这里发表评论','2017-01-10 15:00:26',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (4,2,'匿名草','您可以在这里发表评论','2017-01-10 15:01:44',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (5,2,'匿名草','您可以在这里发表评论','2017-01-10 15:01:46',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (6,2,'匿名草','dfdssdf','2017-01-10 15:01:58',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (7,2,'匿名草','发飙','2017-01-10 15:02:55',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (29,2,'匿名草','您可以在这里发表评论','2017-01-10 15:03:09',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (48,3,'ゞ﹏窵鷉','<p>\r\n	看看</p>\r\n','2017-01-17 22:59:56',NULL);
insert  into `comment`(`id`,`post_id`,`name`,`comment`,`create_on`,`author_id`) values (59,3,'小草','看看','2017-01-23 20:42:24',NULL);

/*Table structure for table `post` */

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `create_on` datetime NOT NULL,
  `section` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `draft` text COLLATE utf8_bin,
  `body` text COLLATE utf8_bin,
  `visit` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_post_author` (`author_id`),
  KEY `FK_post_blog` (`blog_id`),
  CONSTRAINT `FK_post_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_post_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `post` */

insert  into `post`(`id`,`blog_id`,`author_id`,`create_on`,`section`,`subject`,`draft`,`body`,`visit`) values (1,1,1,'2017-01-04 15:59:06','概要','第一个日志','使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储\r\n分别确定。每个9位数的倍数需要4个字节，并且“剩余的”位需要4个字节的一部分。下表给出了超出位数的存\r\n储需求：','body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储\r\n分别确定。每个9位数的倍数需要4个字节，并且“剩余的”位需要4个字节的一部分。下表给出了超出位数的存\r\n储需求：今天看了一个电影，十二生肖，成龙演的，3D的<br>\r\nbody使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储\r\n分别确定。每个9位数的倍数需要4个字节，并且“剩余的”位需要4个字节的一部分。下表给出了超出位数的存\r\n储需求：今天看了一个电影，十二生肖，成龙演的，3D的<br>\r\nbody使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储\r\n分别确定。每个9位数的倍数需要4个字节，并且“剩余的”位需要4个字节的一部分。下表给出了超出位数的存\r\n储需求：今天看了一个电影，十二生肖，成龙演的，3D的<br>\r\nbody使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储\r\n分别确定。每个9位数的倍数需要4个字节，并且“剩余的”位需要4个字节的一部分。下表给出了超出位数的存\r\n储需求：今天看了一个电影，十二生肖，成龙演的，3D的<br>\r\nbody使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储\r\n分别确定。每个9位数的倍数需要4个字节，并且“剩余的”位需要4个字节的一部分。下表给出了超出位数的存\r\n储需求：今天看了一个电影，十二生肖，成龙演的，3D的<br>\r\nbody使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储\r\n分别确定。每个9位数的倍数需要4个字节，并且“剩余的”位需要4个字节的一部分。下表给出了超出位数的存\r\n储需求：今天看了一个电影，十二生肖，成龙演的，3D的<br>',133);
insert  into `post`(`id`,`blog_id`,`author_id`,`create_on`,`section`,`subject`,`draft`,`body`,`visit`) values (2,1,1,'2017-01-05 10:55:41','简介元芳','第二个日志','<p>\r\n	<span style=\"color:#ee82ee;\">body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的</span></p>\r\n','<p>\r\n	<span style=\"color:#ee82ee;\">body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的<br />\r\n	body使用二进制格式将9个十进制(基于10)数压缩为4个字节来表示DECIMAL列值。每个值的整数和分数部分的存储 分别确定。每个9位数的倍数需要4个字节，并且&ldquo;剩余的&rdquo;位需要4个字节的一部分。下表给出了超出位数的存 储需求：今天看了一个电影，泰囧，王宝强的，2D的</span></p>\r\n',22);
insert  into `post`(`id`,`blog_id`,`author_id`,`create_on`,`section`,`subject`,`draft`,`body`,`visit`) values (3,1,1,'2017-01-10 22:38:29','测试','请务必仔细阅读下面的文字','<p>\r\n	<img alt=\"smiley\" height=\"20\" src=\"http://localhost:8080/myspace/js/ckeditor/plugins/smiley/images/regular_smile.gif\" title=\"smiley\" width=\"20\" /><img alt=\"broken heart\" height=\"20\" src=\"http://localhost:8080/myspace/js/ckeditor/plugins/smiley/images/broken_heart.gif\" title=\"broken heart\" width=\"20\" /><img alt=\"kiss\" height=\"20\" src=\"http://localhost:8080/myspace/js/ckeditor/plugins/smiley/images/kiss.gif\" title=\"kiss\" width=\"20\" /></p>\r\n<pre>\r\n注意:此版本为 4.72 Release build 20110408\r\n\r\n更新内容:\r\n[修改]支持IE9\r\n[修改]快速选择的日期范围调整\r\n[修正]firstDayOfWeek与disabledDays同时使用时的bug\r\n[修正]掩码输入下的小bug\r\n[修正]readonly时会自动更新日期值\r\n[修正]readonly时可以修改第一个数字\r\n[修正]readonly时选择今天后,离开焦点返回初始值的问题\r\n[修正]iframe刷新后不能正常使用的bug</pre>\r\n','<p>\r\n	<img alt=\"smiley\" height=\"20\" src=\"http://localhost:8080/myspace/js/ckeditor/plugins/smiley/images/regular_smile.gif\" title=\"smiley\" width=\"20\" /><img alt=\"broken heart\" height=\"20\" src=\"http://localhost:8080/myspace/js/ckeditor/plugins/smiley/images/broken_heart.gif\" title=\"broken heart\" width=\"20\" /><img alt=\"kiss\" height=\"20\" src=\"http://localhost:8080/myspace/js/ckeditor/plugins/smiley/images/kiss.gif\" title=\"kiss\" width=\"20\" /></p>\r\n<pre>\r\n注意:此版本为 4.72 Release build 20110408\r\n\r\n更新内容:\r\n[修改]支持IE9\r\n[修改]快速选择的日期范围调整\r\n[修正]firstDayOfWeek与disabledDays同时使用时的bug\r\n[修正]掩码输入下的小bug\r\n[修正]readonly时会自动更新日期值\r\n[修正]readonly时可以修改第一个数字\r\n[修正]readonly时选择今天后,离开焦点返回初始值的问题\r\n[修正]iframe刷新后不能正常使用的bug</pre>\r\n',94);

/*Table structure for table `post_tag` */

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `FK_post_tag2` (`tag_id`) USING BTREE,
  KEY `FK_post_tag1` (`post_id`) USING BTREE,
  CONSTRAINT `FK_post_tag1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_post_tag2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `post_tag` */

insert  into `post_tag`(`post_id`,`tag_id`) values (1,1);
insert  into `post_tag`(`post_id`,`tag_id`) values (2,2);
insert  into `post_tag`(`post_id`,`tag_id`) values (1,3);
insert  into `post_tag`(`post_id`,`tag_id`) values (2,3);

/*Table structure for table `tag` */

CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tag` */

insert  into `tag`(`id`,`name`) values (1,'成龙');
insert  into `tag`(`id`,`name`) values (2,'王宝强');
insert  into `tag`(`id`,`name`) values (3,'电影');

/*Table structure for table `vehicle` */

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vin` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `make` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `model` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `vehicle_type` int(11) DEFAULT NULL,
  `door_count` int(11) DEFAULT NULL,
  `all_wheel_drive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `vehicle` */

insert  into `vehicle`(`id`,`vin`,`year`,`make`,`model`,`color`,`vehicle_type`,`door_count`,`all_wheel_drive`) values (1,'ABC',2010,'Volvo','S80','红',1,4,NULL);
insert  into `vehicle`(`id`,`vin`,`year`,`make`,`model`,`color`,`vehicle_type`,`door_count`,`all_wheel_drive`) values (2,'ABB',2011,'Benz','S600','黑',1,4,NULL);
insert  into `vehicle`(`id`,`vin`,`year`,`make`,`model`,`color`,`vehicle_type`,`door_count`,`all_wheel_drive`) values (3,'ABD',2012,'BMW','X6','白',2,NULL,1);
insert  into `vehicle`(`id`,`vin`,`year`,`make`,`model`,`color`,`vehicle_type`,`door_count`,`all_wheel_drive`) values (4,'ABA',2013,'路虎','发现4','墨绿',2,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
