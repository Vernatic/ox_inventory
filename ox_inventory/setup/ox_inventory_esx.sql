CREATE TABLE IF NOT EXISTS `ox_inventory` (
	`owner` varchar(60) DEFAULT NULL,
	`name` varchar(100) NOT NULL,
	`data` longtext DEFAULT NULL,
	`lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
	UNIQUE KEY `owner` (`owner`, `name`)
);

CREATE TABLE IF NOT EXISTS `licenses` (
	`type` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,
	PRIMARY KEY (`type`)
);

CREATE TABLE IF NOT EXISTS `user_licenses` (
	`id` int NOT NULL AUTO_INCREMENT,
	`type` varchar(60) NOT NULL,
	`owner` varchar(60) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `owner_type` (`owner`, `type`),
	KEY `type` (`type`)
);

SET @db := DATABASE();

SET @sql := IF(
	EXISTS(
		SELECT 1
		FROM information_schema.TABLES
		WHERE TABLE_SCHEMA = @db
			AND TABLE_NAME = 'users'
	) AND NOT EXISTS(
		SELECT 1
		FROM information_schema.COLUMNS
		WHERE TABLE_SCHEMA = @db
			AND TABLE_NAME = 'users'
			AND COLUMN_NAME = 'inventory'
	),
	'ALTER TABLE `users` ADD COLUMN `inventory` LONGTEXT NULL',
	'SELECT 1'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @sql := IF(
	EXISTS(
		SELECT 1
		FROM information_schema.TABLES
		WHERE TABLE_SCHEMA = @db
			AND TABLE_NAME = 'owned_vehicles'
	) AND NOT EXISTS(
		SELECT 1
		FROM information_schema.COLUMNS
		WHERE TABLE_SCHEMA = @db
			AND TABLE_NAME = 'owned_vehicles'
			AND COLUMN_NAME = 'glovebox'
	),
	'ALTER TABLE `owned_vehicles` ADD COLUMN `glovebox` LONGTEXT NULL',
	'SELECT 1'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @sql := IF(
	EXISTS(
		SELECT 1
		FROM information_schema.TABLES
		WHERE TABLE_SCHEMA = @db
			AND TABLE_NAME = 'owned_vehicles'
	) AND NOT EXISTS(
		SELECT 1
		FROM information_schema.COLUMNS
		WHERE TABLE_SCHEMA = @db
			AND TABLE_NAME = 'owned_vehicles'
			AND COLUMN_NAME = 'trunk'
	),
	'ALTER TABLE `owned_vehicles` ADD COLUMN `trunk` LONGTEXT NULL',
	'SELECT 1'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

INSERT IGNORE INTO `licenses` (`type`, `label`) VALUES ('weapon', 'Weapon License');
