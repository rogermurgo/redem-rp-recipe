USE `chroniclerp`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `user_inventory` (
	`identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
	`charid` int(11) NOT NULL,
	`items` varchar(16000) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `user_locker` (
	`identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
	`charid` int(11) NOT NULL,
	`items` varchar(16000) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `skins` (
	`identifier` varchar(40) NOT NULL,
	`charid` int(11) NOT NULL,
	`skin` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `clothes` (
	`identifier` varchar(40) NOT NULL,
	`charid` int(11) NOT NULL,
	`clothes` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `outfits` (
	`identifier` varchar(40) NOT NULL,
	`charid` int(11) NOT NULL,
	`name` varchar(255) NOT NULL,
	`clothes` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `status` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(50) NOT NULL DEFAULT '0',
	`charid` INT(11) NOT NULL DEFAULT 0,
	`status` VARCHAR(255) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
) COLLATE='utf8mb4_general_ci' ENGINE=InnoDB AUTO_INCREMENT=100;
