-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;


-- Dumping structure for table test.sec_modules
CREATE TABLE IF NOT EXISTS `sec_modules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `path` varchar(100) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table test.sec_modules: ~0 rows (approximately)
/*!40000 ALTER TABLE `sec_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_modules` ENABLE KEYS */;


-- Dumping structure for table test.sec_roles
CREATE TABLE IF NOT EXISTS `sec_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table test.sec_roles: ~1 rows (approximately)
/*!40000 ALTER TABLE `sec_roles` DISABLE KEYS */;
INSERT INTO `sec_roles` (`id`, `name`) VALUES
	(1, 'ROLE_ADMIN');
/*!40000 ALTER TABLE `sec_roles` ENABLE KEYS */;


-- Dumping structure for table test.sec_role_right
CREATE TABLE IF NOT EXISTS `sec_role_right` (
  `role_id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `right_code` varchar(10) NOT NULL,
  PRIMARY KEY (`role_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table test.sec_role_right: ~0 rows (approximately)
/*!40000 ALTER TABLE `sec_role_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_role_right` ENABLE KEYS */;


-- Dumping structure for table test.sec_users
CREATE TABLE IF NOT EXISTS `sec_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `disabled` bit(1) NOT NULL DEFAULT b'0',
  `version` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table test.sec_users: ~1 rows (approximately)
/*!40000 ALTER TABLE `sec_users` DISABLE KEYS */;
INSERT INTO `sec_users` (`id`, `name`, `password`, `disabled`, `version`) VALUES
	(1, 'lai', '123456', b'00000000', 0),
	(2, 'lai2', '122224', b'00000000', 4);
/*!40000 ALTER TABLE `sec_users` ENABLE KEYS */;


-- Dumping structure for table test.sec_user_role
CREATE TABLE IF NOT EXISTS `sec_user_role` (
  `user_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table test.sec_user_role: ~1 rows (approximately)
/*!40000 ALTER TABLE `sec_user_role` DISABLE KEYS */;
INSERT INTO `sec_user_role` (`user_id`, `role_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `sec_user_role` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
