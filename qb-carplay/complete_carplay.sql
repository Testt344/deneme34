USE `es_extended`;

CREATE TABLE `complete_carplay` (
  `carplayID` int NOT NULL AUTO_INCREMENT,
  `carPlate` varchar(255) NOT NULL,
  `headlight` boolean NOT NULL,
  `interior` boolean NOT NULL,
  `windows` boolean NOT NULL,
  `trunk` boolean NOT NULL,
  `door1` boolean NOT NULL,
  `door2` boolean NOT NULL,
  `door3` boolean NOT NULL,
  `door4` boolean NOT NULL,
  `lock` boolean NOT NULL,
  `cruise` boolean NOT NULL,
  PRIMARY KEY (`carplayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `owned_vehicles`
ADD `carplayID` int;

INSERT INTO `items` (name, label, weight) VALUES
	('carplay', 'Carplay', 3)
;