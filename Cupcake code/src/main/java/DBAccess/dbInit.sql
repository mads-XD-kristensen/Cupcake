-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

CREATE DATABASE  IF NOT EXISTS `Cupcake`;

USE `Cupcake`;

DROP TABLE IF EXISTS `filling`;
CREATE TABLE `filling`(
    `fillingID` int not null auto_increment,
    `fillingName` varchar(25) NOT NULL,
    `fillingType` varchar(25) NOT NULL,
    `price` int NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `filing` values
("Chocolate", "Bund", 5),
("Vanilla", "Bund", 5),
("Nutmeg", "Bund", 5),
("Pistacio", "Bund", 6),
("Almond", "Bund", 7),
("Chocolate", "Top", 5),
("Blueberry", "Top", 5),
("Rasberry", "Top", 5),
("Crispy", "Top", 6),
("Strawberry", "Top", 6),
("Rum/Raisin", "Top", 7),
("Orange", "Top", 8),
("Lemon", "Top", 8),
("Blue cheese", "Top", 9);


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`(
`orderID` int not null auto_increment,
`kundeID` int not null,
`order` varchar(100),
`totalPrice` int not null,
primary key (`orderID`),
foreign key (`kundeID`) references users(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `telefon` int not null,
  `password` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'customer',
  `balance` int not null default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES
(1,'jens@somewhere.com',12345678,'jensen','customer', 50),
(2,'ken@somewhere.com',87654321,'kensen','customer'),
(3,'robin@somewhere.com',88888888,'batman','employee', 500);
UNLOCK TABLES;

