/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.31 : Database - techtest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`techtest` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `techtest`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` blob NOT NULL,
  `productsAssigned` blob,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`category`,`productsAssigned`) values 
(1,'Bedroom\r\n',NULL),
(2,'Car',NULL),
(3,'Kitchen',NULL),
(4,'Football',NULL),
(5,'Animal',NULL),
(6,'Insect',NULL),
(7,'Bird',NULL);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `name` char(255) NOT NULL DEFAULT 'no-name',
  `price` decimal(11,0) NOT NULL DEFAULT '0',
  `image` char(255) NOT NULL DEFAULT 'no-image',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`name`,`price`,`image`,`quantity`,`categories`) values 
('bed',5,'7yrf',10,1),
('toyota\r\n',1000,'sadfeawf',4,2),
('Ggras',33,'uijehbrg',435,1),
('Panda',100,'rthwrthwrh',12,1),
('Boots',24,'uiopradjbgpouear',13,1),
('Giosgf',1,'sadfasdf',12,1),
('Jk',1,'uihb',78,1),
('Tiger',1231313,'dfsgfds',33,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
