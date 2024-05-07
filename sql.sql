/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - aidiet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`aidiet` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aidiet`;

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `appointment` */

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(100) DEFAULT NULL,
  `complaint_date` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `reply_date` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`complaint`,`complaint_date`,`reply`,`reply_date`,`user_id`) values (1,'asd',NULL,'okk','2022-08-13',1),(2,'fedgeds','2022-08-14','asffervd','2022-08-18',1);

/*Table structure for table `diet_profile` */

DROP TABLE IF EXISTS `diet_profile`;

CREATE TABLE `diet_profile` (
  `dpid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `diet_time` varchar(20) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dpid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `diet_profile` */

/*Table structure for table `dietrules` */

DROP TABLE IF EXISTS `dietrules`;

CREATE TABLE `dietrules` (
  `dr_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `rules` mediumtext,
  `rdate` date DEFAULT NULL,
  `hw_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`dr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dietrules` */

/*Table structure for table `discussion` */

DROP TABLE IF EXISTS `discussion`;

CREATE TABLE `discussion` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `messege` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `discussion` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `feedback` varchar(100) DEFAULT NULL,
  `feedback_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`feedback_id`,`user_id`,`feedback`,`feedback_date`) values (1,8,'good',NULL),(2,9,'good',NULL),(3,9,'good',NULL),(4,10,'good',NULL),(5,8,'good',NULL);

/*Table structure for table `health_manager` */

DROP TABLE IF EXISTS `health_manager`;

CREATE TABLE `health_manager` (
  `Hm_id` int(11) NOT NULL AUTO_INCREMENT,
  `Hm_name` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `phone_no` bigint(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `house_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  PRIMARY KEY (`Hm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `health_manager` */

insert  into `health_manager`(`Hm_id`,`Hm_name`,`email_id`,`phone_no`,`photo`,`qualification`,`experience`,`age`,`gender`,`house_name`,`place`,`district`,`state`,`pincode`) values (3,'zenin','zenin@gmail.com',9947125452,'/static/img.jpg','MCA ','3 years in fitapp','0000-00-00','M','abrar','kodukkimotta','kannur','kerala',670545),(4,'zahal','zahal@gmail.com',99789635,'/static/img.jpg','BCA','no','0000-00-00','M','zzha','koothuparamba','kannur','kerela',457812),(5,'ameen','ameen@gmail.com',154264321,'/static/img.jpg','MBBS','no','0000-00-00','M','manzil','kannur','kannur','kerala',4551512),(6,'zaheen','zaheen@gmail.com',154242361,'/static/img.jpg','MBBs','3','2002-02-14','M','hanna','kannur','kannur','kerala',256314),(7,'gaani','gaani@gamil.com',9635247563,'/static/img.jpg','BBA','no','2002-01-12','M','ghar','thalassery','kannur','karnataka',1542715);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`user_name`,`password`,`user_type`) values (1,'admin','admin','admin'),(3,'zenin','zenin','health_manager'),(4,'zahal','zahal','health_manager'),(5,'ameen','ameen','health_manager'),(6,'zaheen','zaheen','health_manager'),(7,'gaani','gaani','health_manager'),(8,'rashid','rashid','user'),(9,'zeeshaan','zee','user'),(10,'aysha','aysha','user');

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_day` varchar(20) DEFAULT NULL,
  `schedule_ftime` varchar(20) DEFAULT NULL,
  `schedule_ttime` varchar(20) DEFAULT NULL,
  `hwid` int(11) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `schedule` */

/*Table structure for table `tip` */

DROP TABLE IF EXISTS `tip`;

CREATE TABLE `tip` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tips` mediumtext,
  `tdate` date DEFAULT NULL,
  `hwid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tip` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `phone_no` bigint(20) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `body_type` varchar(100) DEFAULT NULL,
  `working_hours` varchar(100) DEFAULT NULL,
  `if_any_allergy` varchar(100) DEFAULT NULL,
  `house_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`phone_no`,`photo`,`gender`,`email_id`,`age`,`weight`,`height`,`body_type`,`working_hours`,`if_any_allergy`,`house_name`,`place`,`district`,`state`,`pincode`) values (8,'rashid',21546812,'/static/img.jpg','m','m@gmail','15',235,14,'15','231465','redtfyg','dfghjk','rfghjk','tyhufgh','thyt',895623),(9,'zeeshaan',9947943477,'/static/img.jpg','M','Z@gmail.com','1',14,10,'flat','','no','pa house','kry','kannur','kerala',670702),(10,'aysha',152478694,'/static/img.jpg','F','A@gamil,com','14',54,124,'145',NULL,'yes','jk house','mtr','kanr','krl',123654);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
