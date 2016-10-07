-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.12-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table project.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL DEFAULT 'none',
  `description` varchar(200) DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table project.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT 'none',
  `password` varchar(50) NOT NULL DEFAULT 'none',
  `email` varchar(50) DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table project.users_roles
CREATE TABLE IF NOT EXISTS `users_roles` (
  `id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  `role_id` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__users` (`user_id`),
  KEY `FK__roles` (`role_id`),
  CONSTRAINT `FK__roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FK__users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
