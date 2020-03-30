-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

CREATE DATABASE  IF NOT EXISTS `cupcake`;
USE `cupcake`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'customer',
  saldo float NOT null default "0",
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `users` VALUES
(1,'jens@somewhere.com','jensen','customer', 500),
(2,'ken@somewhere.com','kensen','customer' , 500),
(3,'robin@somewhere.com','batman','employee', 500);

DROP TABLE IF EXISTS `top`;
CREATE TABLE `top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navn` varchar(90) NOT NULL,
  pris float NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `bot`;
CREATE TABLE `bot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navn` varchar(90) NOT NULL,
  pris float NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `ordre`;
CREATE TABLE `ordre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `pris` float NOT NULL,
  betalt boolean NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  foreign key (userid) references  users(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `cupcake`;
CREATE TABLE `cupcake` (
  `ordreid` int(11) NOT NULL,
  `topid` int(11) NOT NULL,
  `botid` INT(11) NOT NULL,
  foreign key (ordreid) references  `ordre`(id),
  foreign key (topid) references  `top`(id),
  foreign key (botid) references  `bot`(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO bot (navn, pris) VALUES
('Chocolate', 5),
('Vanilla', 5),
('Nutmeg', 5),
('Pistacio', 6),
('Almonds', 6);

INSERT INTO top (navn, pris) VALUES
('Chocolate',5),
('Blueberry',5),
('Rasberry',5),
('Crispy',6),
('Strawberry',6),
('Rum/Raisin',7),
('Orange',8),
('Lemon',8),
('Blue Cheese',9);

