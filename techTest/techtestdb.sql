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

/*Table structure for table `___` */

DROP TABLE IF EXISTS `___`;

CREATE TABLE `___` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productName` char(255) NOT NULL DEFAULT 'no-name',
  `categories` char(255) NOT NULL DEFAULT 'no-cat',
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `___` */

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` char(255) NOT NULL,
  PRIMARY KEY (`category`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`category`) values 
(1,'Bedroom'),
(2,'Car'),
(3,'Lounge'),
(12,'Shooting'),
(13,'Sport'),
(14,'Class');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL DEFAULT 'no-name',
  `price` int(11) NOT NULL DEFAULT '0',
  `image` varbinary(5000) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`ID`,`name`,`price`,`image`,`quantity`) values 
(20,'Kjnui',78,'jkn',7),
(19,'Kjnui',78,'jkn',7),
(18,'Kjnui',78,'jkn',7),
(17,'Jvuyv',87,'yuoh',4),
(16,'Knyui',78,'jkn',7),
(15,'Jumo',334,'dfg',41),
(14,'Jumo',334,'dfg',41),
(13,'Hello',341,'easdg',44),
(12,'Hello',341,'easdg',44),
(10,'Mbui',786,'kltyugft',6),
(11,'Kuibn',89,'hjkb',88),
(21,'Kjnui',78,'jkn',7),
(22,'Dgerge',342,'gdfgsg',23),
(23,'Gdgfa',4,'sfhfgh',76),
(24,'Kyub',7,'uioh',8),
(25,'HelloHeloo',1234,'dfg',124);

/*Table structure for table `products_categories` */

DROP TABLE IF EXISTS `products_categories`;

CREATE TABLE `products_categories` (
  `product_ID` int(11) NOT NULL DEFAULT '0',
  `categories` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_ID`,`categories`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `products_categories` */

insert  into `products_categories`(`product_ID`,`categories`) values 
(0,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
