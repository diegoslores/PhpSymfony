CREATE DATABASE IF NOT EXISTS dwcs_symfony;

USE dwcs_symfony


CREATE USER IF NOT EXISTS 'dwcs'@'localhost' IDENTIFIED BY "abc123.";
GRANT ALL PRIVILEGES ON dwcs_symfony.* TO 'dwcs'@'localhost' WITH GRANT OPTION;


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


insert into `users` (`email`,`nombre`,`apellido1`,`apellido2`,`password`,`role`) values ('admin@i.net','Fran','García','Álvarez','abc123.','ROLE_ADMIN');
insert into `users` (`email`,`nombre`,`apellido1`,`apellido2`,`password`,`role`) values ('alu@i.net','Manolo','Álvarez','Álvarez','abc123.','ROLE_ALU');
insert into `users` (`email`,`nombre`,`apellido1`,`apellido2`,`password`,`role`) values ('prof@i.net','Ignacio','Moreno','Álvarez','abc123.','ROLE_PROF');