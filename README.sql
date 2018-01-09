CREATE TABLE `migan_recette` (
	`recette_id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL DEFAULT '',
	`description` TEXT NULL DEFAULT NULL,
	`meta_title` VARCHAR(50) NOT NULL DEFAULT '0',
	`meta_description` TEXT NULL DEFAULT NULL,
	`meta_keyword` VARCHAR(50) NOT NULL DEFAULT '0',
	`image` VARCHAR(250) NOT NULL DEFAULT '0',
	`date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`date_modified` TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
	`difficulte` INT NOT NULL,
	`preparation` INT NOT NULL,
	`cuisson` INT NOT NULL,
	`nb_personne` INT NOT NULL,
	`enavant` INT NOT NULL,
	`status` INT NOT NULL,
	`sort_order` INT NOT NULL,
	PRIMARY KEY (`recette_id`)
)
COLLATE='latin1_swedish_ci'
;
CREATE TABLE `miganoc`.`migan_recette_image` (
	`product_image_id` INT(11) NOT NULL AUTO_INCREMENT,
	`product_id` INT(11) NOT NULL,
	`image` VARCHAR(255) NULL DEFAULT NULL,
	`sort_order` INT(3) NOT NULL DEFAULT '0',
	PRIMARY KEY (`product_image_id`),
	INDEX `product_id` (`product_id`)
)
 COLLATE 'utf8_general_ci' ENGINE=MyISAM ROW_FORMAT=Dynamic AUTO_INCREMENT=2352;
ALTER TABLE `migan_recette_image`
	ALTER `product_id` DROP DEFAULT;
ALTER TABLE `migan_recette_image`
	CHANGE COLUMN `product_image_id` `recette_image_id` INT(11) NOT NULL AUTO_INCREMENT FIRST,
	CHANGE COLUMN `product_id` `recette_id` INT(11) NOT NULL AFTER `recette_image_id`;

	CREATE TABLE `migan_recette_product` (
	`recette_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	PRIMARY KEY (`recette_id`, `product_id`)
)
COLLATE='latin1_swedish_ci'
;

ALTER TABLE `migan_product` CHANGE `date_available` `date_available` DATE NULL DEFAULT NULL;
ALTER TABLE `migan_product` CHANGE `price` `price` DECIMAL(15,2) NOT NULL DEFAULT '0.0000';
ALTER TABLE `migan_product`
ADD COLUMN `price_pro` DECIMAL(15,2) NOT NULL DEFAULT '0.00' AFTER `price`;

CREATE TABLE IF NOT EXISTS `migan_order_goodie` (
	`goodie_id` int(11) NOT NULL,
	`order_id` int(11) NOT NULL,
	KEY `goodie_id` (`goodie_id`),
	KEY `order_id` (`order_id`)
)

CREATE TABLE IF NOT EXISTS `migan_customer_stock` (
	`customer_id` INT(11) NOT NULL ,
	`product_id` INT(11) NOT NULL ,
	`stock_client` INT(2) NOT NULL ,
	`stock_reference` INT(2) NOT NULL,
	KEY `customer_id` (`customer_id`),
	KEY `product_id` (`product_id`)
)