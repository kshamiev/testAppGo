/*
SQLyog Enterprise v9.50
MySQL - 5.6.13-log : Database - zegota
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `TestAccessUsers` */

DROP TABLE IF EXISTS `TestAccessUsers`;

CREATE TABLE `TestAccessUsers` (
  `Id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `AccessUsers_Id` bigint(20) DEFAULT NULL COMMENT 'Пользователь',
  `Login` varchar(128) NOT NULL COMMENT 'Логин пользователя',
  `Password` varchar(64) DEFAULT NULL COMMENT 'Пароль пользователя (SHA256)',
  `Email` varchar(50) NOT NULL COMMENT 'Email',
  `LastName` varchar(255) DEFAULT NULL COMMENT 'Фамилия',
  `Name` varchar(255) DEFAULT NULL COMMENT 'Имя',
  `MiddleName` varchar(255) DEFAULT NULL COMMENT 'Отчество',
  `LastFailed` datetime DEFAULT NULL COMMENT 'Дата последней не удачной попытки входа',
  `IsAuthMemory` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Помнить авторизацию в куках',
  `IsAccess` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Доступ разрешен',
  `IsCondition` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Условия пользователя',
  `IsOnline` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Онлайн статус',
  `IsActivated` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Активированный',
  `DateOnline` datetime DEFAULT NULL COMMENT 'Дата последнего посещения',
  `Date` datetime DEFAULT NULL COMMENT 'Дата регистрации',
  `Del` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Запись удалена',
  `Hash` varchar(64) DEFAULT NULL COMMENT 'Контрольная сумма для синхронизации (SHA256)',
  `CookieActivated` varchar(64) DEFAULT NULL COMMENT 'Кука активации и идентификации',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Login` (`Login`),
  KEY `AccessUsers_Id` (`AccessUsers_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=345009 DEFAULT CHARSET=utf8 COMMENT='Пользователи';

/*Data for the table `TestAccessUsers` */

LOCK TABLES `TestAccessUsers` WRITE;


UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;