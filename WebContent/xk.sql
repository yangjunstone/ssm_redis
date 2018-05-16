/*
SQLyog Ultimate v8.32 
MySQL - 5.1.32-community : Database - xk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xk`;

/*Table structure for table `classtime` */

DROP TABLE IF EXISTS `classtime`;

CREATE TABLE `classtime` (
  `class_id` varchar(20) DEFAULT NULL,
  `currentquantity` int(11) DEFAULT NULL,
  `class_place` varchar(50) DEFAULT NULL,
  `class_weekday` varchar(20) DEFAULT NULL,
  `time_id` int(11) DEFAULT NULL,
  `term_id` int(11) DEFAULT NULL,
  KEY `FK_coutotime` (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `classtime` */

insert  into `classtime`(`class_id`,`currentquantity`,`class_place`,`class_weekday`,`time_id`,`term_id`) values ('02100101',1,'1201','周一',1,35),('02100101',NULL,'1201','周一',4,35),('03100601',1,'7305','周三',8,35),('03100901',0,'6103','周五',5,35),('05100102',1,'3406','周二',6,35),('06100401',1,'6205','周三',3,35),('06101101',1,'3304','周三',2,35),('07100202',NULL,'2302','周一',3,35),('08100801',1,'3304','周二',4,35),('09100201',0,'篮球场','周五',1,35),('10100301',1,'4305','周一',8,35),('11100302',0,'7203','周四',5,35),('03100501',2,'5301','周四',4,35),('03100502',NULL,'1302','周二',5,35),('03100503',NULL,'3205','周日',1,34),('03100504',NULL,'6304','周三',5,34),('01101001',NULL,'1303','周六',1,35);

/*Table structure for table `college` */

DROP TABLE IF EXISTS `college`;

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(50) DEFAULT NULL,
  `total_grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `college` */

insert  into `college`(`college_id`,`college_name`,`total_grade`) values (1,'文学院',169),(2,'历史文化学院',169),(3,'艺术学院',185),(4,'法学院',169),(5,'马列学院',169),(6,'商学院',169),(7,'计算机学院',185),(8,'经济学院',169),(9,'体育学院',185),(10,'数学学院',185),(11,'外语学院',185),(12,'教科院',169);

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `class_id` varchar(20) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `class_grade` int(11) DEFAULT NULL,
  `class_capacity` int(11) NOT NULL,
  `teacher_id` varchar(20) NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `FK_course` (`teacher_id`),
  CONSTRAINT `FK_course` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`class_id`,`class_name`,`class_grade`,`class_capacity`,`teacher_id`) values ('01101001','abc',2,40,'011010'),('02100101','中国近现代史纲要',2,100,'021001'),('03100501','电影欣赏',2,80,'031005'),('03100502','中国电影发展史',2,80,'031005'),('03100503','世界电影发展史',2,80,'031005'),('03100504','电影艺术',2,80,'031005'),('03100601','音乐欣赏',2,80,'031006'),('03100901','摄影基础',2,80,'031009'),('05100102','毛邓',3,100,'021001'),('06100401','会计学',4,80,'061004'),('06101101','运筹学',3,80,'061011'),('07100202','java基础',4,80,'091002'),('08100801','财政学',4,70,'081008'),('09100201','大学体育',2,30,'091002'),('10100301','高等数学',4,60,'101003'),('11100302','大学英语',2,60,'111007');

/*Table structure for table `level` */

DROP TABLE IF EXISTS `level`;

CREATE TABLE `level` (
  `level_id` int(11) DEFAULT NULL,
  `low_score` double DEFAULT NULL,
  `high_score` double DEFAULT NULL,
  `score_level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `level` */

insert  into `level`(`level_id`,`low_score`,`high_score`,`score_level`) values (1,0,49,'重修'),(2,50,59,'补考'),(3,60,100,'通过考试');

/*Table structure for table `schoolterm` */

DROP TABLE IF EXISTS `schoolterm`;

CREATE TABLE `schoolterm` (
  `term_id` int(11) NOT NULL AUTO_INCREMENT,
  `term_name` varchar(50) DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `schoolterm` */

insert  into `schoolterm`(`term_id`,`term_name`,`begin_date`,`end_date`) values (1,'2000年下半年','2000-07-01','2000-12-31'),(2,'2001年上半年','2001-01-01','2001-06-30'),(3,'2001年下半年','2001-07-01','2001-12-31'),(4,'2002年上半年','2002-01-01','2002-06-30'),(5,'2002年下半年','2002-07-01','2002-12-13'),(6,'2003年上半年','2003-01-01','2003-06-30'),(7,'2003年下半年','2003-07-01','2003-12-31'),(8,'2004年上半年','2004-01-01','2004-06-30'),(9,'2004年下半年','2004-07-01','2004-12-31'),(10,'2005年上半年','2005-01-01','2005-06-30'),(11,'2005年下半年','2005-07-01','2005-12-31'),(12,'2006年上半年','2006-01-01','2006-06-30'),(13,'2006年下半年','2006-07-01','2006-12-31'),(14,'2007年上半年','2007-01-01','2007-06-30'),(15,'2007年下半年','2007-07-01','2007-12-31'),(16,'2008年上半年','2008-01-01','2008-06-30'),(17,'2008年下半年','2008-07-01','2008-12-31'),(18,'2009年上半年','2009-01-01','2009-06-30'),(19,'2009年下半年','2009-07-01','2009-12-31'),(20,'2010年上半年','2010-01-01','2010-06-30'),(21,'2010年下半年','2010-07-01','2010-12-31'),(22,'2011年上半年','2011-01-01','2011-06-30'),(23,'2011年下半年','2011-07-01','2011-12-31'),(24,'2012年上半年','2012-01-01','2012-06-30'),(25,'2012年下半年','2012-07-01','2012-12-31'),(26,'2013年上半年','2013-01-01','2013-06-30'),(27,'2013年下半年','2013-07-01','2013-12-31'),(28,'2014年上半年','2014-01-01','2014-06-30'),(29,'2014年下半年','2014-07-01','2014-12-31'),(30,'2015年上半年','2015-01-01','2015-06-30'),(31,'2015年下半年','2015-07-01','2015-12-31'),(32,'2016年上半年','2016-01-01','2016-06-30'),(33,'2016年下半年','2016-07-01','2016-12-31'),(34,'2017年上半年','2017-01-01','2017-06-30'),(35,'2017年下半年','2017-07-01','2017-12-31');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_pwd` varchar(50) NOT NULL,
  `student_sex` char(4) NOT NULL,
  `student_birthday` date NOT NULL,
  `student_entrydate` date NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `current_grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `FK_student` (`college_id`),
  CONSTRAINT `FK_student` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`student_id`,`student_name`,`student_pwd`,`student_sex`,`student_birthday`,`student_entrydate`,`college_id`,`current_grade`) values ('201501001','张三','3','男','1996-03-02','2015-09-01',1,NULL),('201501002','李四','3','男','1997-02-16','2015-09-01',1,NULL),('201502006','杨开泰','3','男','1995-08-15','2015-09-01',2,NULL),('201505003','成昆','3','男','1995-07-23','2015-09-01',5,NULL),('201506004','连城璧','3','男','1996-09-22','2015-09-01',6,NULL),('201507005','沈璧君','3','女','1996-11-11','2015-09-01',7,NULL),('201601001','张无忌','3','男','1997-04-18','2016-09-01',1,NULL),('201602004','范遥','3','女','1996-06-27','2016-09-01',2,NULL),('201602005','白飞飞','3','女','1997-11-08','2016-09-01',2,NULL),('201603002','赵敏','3','女','1997-07-12','2016-09-01',3,NULL),('201603006','朱七七','3','女','1997-12-16','2016-09-01',3,NULL),('201604003','杨逍','3','男','1996-05-07','2016-09-01',4,NULL),('201604007','沈浪','3','男','1997-10-21','2016-09-01',4,NULL),('201609008','王怜花','3','男','1998-02-26','2016-09-01',9,NULL);

/*Table structure for table `stutocou` */

DROP TABLE IF EXISTS `stutocou`;

CREATE TABLE `stutocou` (
  `student_id` varchar(20) DEFAULT NULL,
  `class_id` varchar(20) DEFAULT NULL,
  `class_place` varchar(50) DEFAULT NULL,
  `class_weekday` varchar(50) DEFAULT NULL,
  `time_id` int(11) DEFAULT NULL,
  `term_id` int(11) DEFAULT NULL,
  `class_score` double DEFAULT '0',
  `level_id` int(11) DEFAULT NULL,
  `score_point` double DEFAULT '0',
  `getgrade` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stutocou` */

insert  into `stutocou`(`student_id`,`class_id`,`class_place`,`class_weekday`,`time_id`,`term_id`,`class_score`,`level_id`,`score_point`,`getgrade`) values ('201601001','03100501','5301','周四',4,35,0,NULL,0,0),('201601001','10100301','4305','周一',8,35,0,NULL,0,0),('201601001','06100401','6205','周三',3,35,0,NULL,0,0),('201601001','05100102','3406','周二',6,35,0,NULL,0,0),('201601001','03100601','7305','周三',8,35,0,NULL,0,0),('201604007','06101101','3304','周三',2,35,0,NULL,0,0),('201604007','03100501','5301','周四',4,35,0,NULL,0,0),('201601001','08100801','3304','周二',4,35,0,NULL,0,0),('201601001','02100101','1201','周一',1,35,75,3,2.5,2);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `teacher_id` varchar(20) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_pwd` varchar(50) NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `FK_teacher` (`college_id`),
  CONSTRAINT `FK_teacher` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`teacher_id`,`teacher_name`,`teacher_pwd`,`college_id`) values ('011010','周瑜','0',1),('021001','王动','0',2),('031005','刘备','0',3),('031006','曹操','0',3),('031009','诸葛亮','0',3),('041013','鲁肃','0',4),('061004','林太平','0',6),('061011','陆逊','0',6),('071012','吕蒙','0',7),('081008','郭嘉','0',8),('091002','郭大路','0',9),('101003','燕七','0',10),('111007','孙权','0',11);

/*Table structure for table `timeinfo` */

DROP TABLE IF EXISTS `timeinfo`;

CREATE TABLE `timeinfo` (
  `time_id` int(11) DEFAULT NULL,
  `time_detail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `timeinfo` */

insert  into `timeinfo`(`time_id`,`time_detail`) values (1,'第1,2节'),(2,'第1,2,3节'),(3,'第1,2,3,4节'),(4,'第3,4节'),(5,'第7,8节'),(6,'第7,8,9节'),(7,'第7,8,9,10节'),(8,'第9,10节'),(9,'第11,12节'),(10,'第11,12,13节');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
