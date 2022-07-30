
CREATE DATABASE IF NOT EXISTS `redemrp`;

USE `redemrp`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(50) NOT NULL,
	`license` VARCHAR(50) DEFAULT NULL,
	`name` VARCHAR(255) DEFAULT NULL,
	`money` INT DEFAULT NULL,
	`bank` INT DEFAULT NULL,
	`permission_level` INT DEFAULT NULL,
	`group` VARCHAR(50) DEFAULT NULL,
	KEY (`id`),
	PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS `characters` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(50) DEFAULT NULL,
	`characterid` INT DEFAULT 0,
	`firstname` VARCHAR(50) DEFAULT 'first',
	`lastname` VARCHAR(50) DEFAULT 'last',
	`money` INT DEFAULT 0,
	`gold` INT DEFAULT 0,
	`job` VARCHAR(50) DEFAULT 'unemployed',
	`jobgrade` INT DEFAULT 0,
	`xp` INT DEFAULT 0,
	`level` INT DEFAULT 0,
	`coords` VARCHAR(200) NULL DEFAULT '{}',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS `user_inventory` (
	`identifier` VARCHAR(50) NOT NULL,
	`charid` INT NOT NULL,
	`items` LONGTEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS `user_locker` (
	`identifier` VARCHAR(50) NOT NULL,
	`charid` INT NOT NULL,
	`items` LONGTEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS `skins` (
	`identifier` VARCHAR(40) NOT NULL,
	`charid` INT NOT NULL,
	`skin` LONGTEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS `clothes` (
	`identifier` VARCHAR(40) NOT NULL,
	`charid` INT NOT NULL,
	`clothes` LONGTEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS `outfits` (
	`identifier` VARCHAR(40) NOT NULL,
	`charid` INT NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`clothes` LONGTEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS `status` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(50) NOT NULL DEFAULT '0',
	`charid` INT NOT NULL DEFAULT 0,
	`status` VARCHAR(255) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB COLLATE='utf8mb4_general_ci' COLLATE=utf8mb4_bin AUTO_INCREMENT=100;

CREATE TABLE IF NOT EXISTS `web_permissions` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(50) NULL DEFAULT NULL,
	`password` VARCHAR(50) NULL DEFAULT NULL,
	`role` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE IF NOT EXISTS `version` (
	`id` INT NOT NULL,
	`current` VARCHAR(3) DEFAULT 'no',
	`resource` VARCHAR(50),
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
