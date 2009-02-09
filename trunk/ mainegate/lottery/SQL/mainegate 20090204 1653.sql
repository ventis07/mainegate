-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mainegate
--

CREATE DATABASE IF NOT EXISTS mainegate;
USE mainegate;

--
-- Definition of table `login_errors`
--

DROP TABLE IF EXISTS `login_errors`;
CREATE TABLE `login_errors` (
  `iduser_acrivity` int(11) NOT NULL auto_increment,
  `logged` tinyint(1) default NULL,
  `date` datetime default NULL,
  `ipaddress` varchar(45) default NULL,
  `browser` varchar(200) default NULL,
  `emailaddress` varchar(45) default NULL,
  PRIMARY KEY  (`iduser_acrivity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_errors`
--

/*!40000 ALTER TABLE `login_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_errors` ENABLE KEYS */;


--
-- Definition of table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE `tbl_roles` (
  `roleid` int(11) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY  (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_roles`
--

/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES  (1,'Admin'),
 (2,'User'),(3,'Super Admin'),(4,'Guest');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;


--
-- Definition of table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `zip` varchar(15) default NULL,
  `birthday` date default NULL,
  `gender` char(1) default NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `access_level` int(11) NOT NULL,
  `question1` varchar(200) default NULL,
  `question2` varchar(200) default NULL,
  `answer1` varchar(200) default NULL,
  `answer2` varchar(200) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `roles_users` (`access_level`),
  CONSTRAINT `roles_users` FOREIGN KEY (`access_level`) REFERENCES `tbl_roles` (`roleid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
