-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.5.11-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных phone_book_db
CREATE DATABASE IF NOT EXISTS `phone_book_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `phone_book_db`;

-- Дамп структуры для таблица phone_book_db.book_users
CREATE TABLE IF NOT EXISTS `book_users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  KEY `FK1_user_id` (`user_id`),
  CONSTRAINT `FK1_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.

-- Дамп структуры для таблица phone_book_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.

-- Дамп структуры для таблица phone_book_db.users_email
CREATE TABLE IF NOT EXISTS `users_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
