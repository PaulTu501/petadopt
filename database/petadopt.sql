-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.16-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema petadopt
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ petadopt;
USE petadopt;

--
-- Table structure for table `petadopt`.`admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(500) NOT NULL DEFAULT '',
  `admin_password` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petadopt`.`admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`admin_id`,`admin_username`,`admin_password`) VALUES 
 (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Table structure for table `petadopt`.`pets`
--

DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets` (
  `pet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pet_name` varchar(5000) NOT NULL DEFAULT '',
  `pet_price` double DEFAULT NULL,
  `pet_image` varchar(5000) NOT NULL DEFAULT '',
  `pet_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`pet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petadopt`.`pets`
--

/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` (`pet_id`,`pet_name`,`pet_price`,`pet_image`,`pet_date`) VALUES 
 (1,'pet1 ',100,'dog1.jpg','2021-08-20'),
 (2,'pet2',50,'dog2.jpg','2021-08-20'),
 (3,'pet3',60,'cat1.jpg','2021-08-20'),
 (4,'pet4',55,'cat2.jpg','2021-08-20'),
 (5,'pet5',90,'cat3.jpg','2021-08-20'),
 (6,'pet6',40,'dog3.jpg','2021-08-20');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;

--
-- Table structure for table `petadopt`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(1000) NOT NULL,
  `user_password` varchar(1000) NOT NULL,
  `user_firstname` varchar(1000) NOT NULL,
  `user_lastname` varchar(1000) NOT NULL,
  `user_address` varchar(1000) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petadopt`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`,`user_email`,`user_password`,`user_firstname`,`user_lastname`,`user_address`) VALUES 
 (1,'admin@gmail.com','admin','admin','admin','Taipei'),
 (2,'test@gmail.com','test','test','123','Taiwan');

--
-- Table structure for table `petadopt`.`adoptdetails`
--

DROP TABLE IF EXISTS `adoptdetails`;
CREATE TABLE `adoptdetails` (
  `adopt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `adopt_name` varchar(1000) NOT NULL DEFAULT '',
  `adopt_price` double NOT NULL DEFAULT '0',
  `adopt_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `adopt_total` double NOT NULL DEFAULT '0',
  `adopt_status` varchar(45) NOT NULL DEFAULT '',
  `adopt_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`adopt_id`),
  KEY `FK_adoptdetails_1` (`user_id`),
  CONSTRAINT `FK_adoptdetails_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petadopt`.`adoptdetails`
--

/*!40000 ALTER TABLE `adoptdetails` DISABLE KEYS */;
INSERT INTO `adoptdetails` (`adopt_id`,`user_id`,`adopt_name`,`adopt_price`,`adopt_quantity`,`adopt_total`,`adopt_status`,`adopt_date`) VALUES 
 (1,1,'pet2 ',100,2,200,'Adopted','2021-08-20'),
 (2,1,'pet3 ',100,3,300,'Adopted','2021-08-20'),
 (3,2,'pet1 ',100,1,100,'Adopted','2021-08-21'),
 (4,1,'pet5',60,2,120,'Adopted','2021-08-21');
/*!40000 ALTER TABLE `adoptdetails` ENABLE KEYS */;



/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
