-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 05 Janvier 2018 à 16:04
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `miganoc`
--

-- --------------------------------------------------------

--
-- Structure de la table `migan_address`
--

CREATE TABLE `migan_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_address`
--

INSERT INTO `migan_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(80, 85, 'Lovely', 'Regna', '', 'Résidence Les Olympiades', '', 'Sainte-luce', '97228', 134, 4270, '');

-- --------------------------------------------------------

--
-- Structure de la table `migan_api`
--

CREATE TABLE `migan_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_api`
--

INSERT INTO `migan_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'vvXe7xbW60fcTp1ihjJ29GzO6qrcZc629q4RDdQY6WDw5SxPQxoZv3hGtoorSlcl98EJHahreged896xkIKNhxhk4CXDdO6oA98Ww0CJfMoJMsBTvMQN31RZVCyBgQhI6CW9MsiBoYrAHCZBoNLIkQLKWgn5T5uG7cXJhuW9noLrXdpaYC9w4XyvyLtzK1rDc9bqtqZ4U4kbUTbuWFt1owPw15VYr3g6rhdZkgskGvsnbOcW3vRVLJtVl5qiOKzz', 1, '2017-12-20 16:40:49', '2017-12-20 16:40:49');

-- --------------------------------------------------------

--
-- Structure de la table `migan_api_ip`
--

CREATE TABLE `migan_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_api_ip`
--

INSERT INTO `migan_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '127.0.0.1'),
(2, 1, '192.168.1.49'),
(3, 1, '192.168.1.58');

-- --------------------------------------------------------

--
-- Structure de la table `migan_api_session`
--

CREATE TABLE `migan_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_api_session`
--

INSERT INTO `migan_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(60, 1, 'fa0a6706070cdea6943692c498', '192.168.1.58', '2018-01-05 10:44:59', '2018-01-05 10:50:41'),
(59, 1, 'f219bcd6ac3e1d19819eb7d626', '192.168.1.58', '2018-01-05 10:44:46', '2018-01-05 10:44:46'),
(58, 1, 'add36963d994a8bb0e2e68818e', '192.168.1.58', '2018-01-05 10:31:42', '2018-01-05 10:31:42'),
(57, 1, '46e69f98348dd9e217e88a644c', '192.168.1.58', '2018-01-05 10:19:57', '2018-01-05 10:30:51'),
(56, 1, '9f7e97bb93d10e765455a96b53', '192.168.1.58', '2018-01-05 10:16:43', '2018-01-05 10:19:51'),
(63, 1, 'b5e64c73da7ec70268f5764dc7', '192.168.1.58', '2018-01-05 11:02:44', '2018-01-05 11:02:54'),
(62, 1, '1ff418138a82d49b85b0e1f5b1', '192.168.1.58', '2018-01-05 11:02:37', '2018-01-05 11:02:37'),
(61, 1, '3ef7b318b8728abbfd7360e351', '192.168.1.58', '2018-01-05 10:51:10', '2018-01-05 10:51:10'),
(55, 1, '729a3c868e06c2591c0299ad75', '192.168.1.58', '2018-01-05 10:15:33', '2018-01-05 10:15:44'),
(54, 1, '2285f081b80cdf9d94fc8ee9e2', '192.168.1.58', '2018-01-05 10:14:05', '2018-01-05 10:14:16'),
(53, 1, '74fc15808db80be5e23f84304d', '192.168.1.58', '2018-01-05 09:59:38', '2018-01-05 10:09:32');

-- --------------------------------------------------------

--
-- Structure de la table `migan_attribute`
--

CREATE TABLE `migan_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_attribute`
--

INSERT INTO `migan_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(12, 7, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_attribute_description`
--

CREATE TABLE `migan_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_attribute_description`
--

INSERT INTO `migan_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(12, 2, 'conditionnement'),
(12, 1, 'conditionnement');

-- --------------------------------------------------------

--
-- Structure de la table `migan_attribute_group`
--

CREATE TABLE `migan_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_attribute_group`
--

INSERT INTO `migan_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(7, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_attribute_group_description`
--

CREATE TABLE `migan_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_attribute_group_description`
--

INSERT INTO `migan_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(7, 1, 'Conditionnement'),
(7, 2, 'Conditionnement');

-- --------------------------------------------------------

--
-- Structure de la table `migan_banner`
--

CREATE TABLE `migan_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_banner`
--

INSERT INTO `migan_banner` (`banner_id`, `name`, `status`) VALUES
(7, 'Home Page Slideshow', 1);

-- --------------------------------------------------------

--
-- Structure de la table `migan_banner_image`
--

CREATE TABLE `migan_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_banner_image`
--

INSERT INTO `migan_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(100, 7, 1, '02', '', 'catalog/BANNIERE/bann_acc_2.jpg', 0),
(101, 7, 1, '03', '', 'catalog/BANNIERE/bann_acc_3.jpg', 0),
(104, 7, 2, '01', '', 'catalog/BANNIERE/bann_acc_1.jpg', 0),
(99, 7, 1, '01', '', 'catalog/BANNIERE/bann_acc_1.jpg', 0),
(103, 7, 2, '03', '', 'catalog/BANNIERE/bann_acc_3.jpg', 0),
(102, 7, 2, '02', '', 'catalog/BANNIERE/bann_acc_2.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_cart`
--

CREATE TABLE `migan_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_cart`
--

INSERT INTO `migan_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(3, 0, 1, 'f4c1ba7794e3f809227df19142', 51, 0, '[]', 1, '2017-12-20 18:07:08'),
(6, 0, 73, 'd54f2404d27f06630258163b94', 190, 0, '[]', 1, '2018-01-04 14:47:04'),
(7, 0, 73, 'd54f2404d27f06630258163b94', 194, 0, '[]', 1, '2018-01-04 14:47:08'),
(8, 0, 73, 'd54f2404d27f06630258163b94', 191, 0, '[]', 1, '2018-01-04 14:47:28'),
(9, 0, 73, 'd54f2404d27f06630258163b94', 99, 0, '[]', 1, '2018-01-04 14:47:58'),
(11, 0, 76, 'd54f2404d27f06630258163b94', 235, 0, '[]', 1, '2018-01-04 18:03:51'),
(15, 0, 83, '9bcdb9da919b9aa880395daf1c', 235, 0, '[]', 1, '2018-01-05 09:03:31'),
(27, 1, 84, '9f7e97bb93d10e765455a96b53', 232, 0, '[]', 1, '2018-01-05 10:17:18'),
(30, 0, 84, '9bcdb9da919b9aa880395daf1c', 206, 0, '[]', 1, '2018-01-05 10:18:52'),
(31, 0, 84, '9bcdb9da919b9aa880395daf1c', 182, 0, '[]', 1, '2018-01-05 10:20:09'),
(32, 0, 84, '9bcdb9da919b9aa880395daf1c', 181, 0, '[]', 1, '2018-01-05 10:20:11'),
(33, 0, 84, '9bcdb9da919b9aa880395daf1c', 184, 0, '[]', 1, '2018-01-05 10:20:12'),
(34, 0, 84, '9bcdb9da919b9aa880395daf1c', 183, 0, '[]', 1, '2018-01-05 10:20:14'),
(35, 0, 84, '9bcdb9da919b9aa880395daf1c', 185, 0, '[]', 1, '2018-01-05 10:20:16'),
(37, 1, 84, '46e69f98348dd9e217e88a644c', 137, 0, '[]', 1, '2018-01-05 10:30:14');

-- --------------------------------------------------------

--
-- Structure de la table `migan_category`
--

CREATE TABLE `migan_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_category`
--

INSERT INTO `migan_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(79, '', 67, 0, 1, 0, 1, '2017-12-22 08:41:32', '2017-12-22 12:57:15'),
(78, '', 67, 0, 1, 0, 1, '2017-12-22 08:40:59', '2017-12-22 08:41:14'),
(76, '', 63, 0, 1, 0, 1, '2017-12-20 17:19:24', '2017-12-20 17:19:24'),
(61, '', 0, 1, 1, 2, 1, '2017-12-20 16:49:49', '2017-12-20 17:08:33'),
(62, '', 0, 1, 1, 3, 1, '2017-12-20 16:49:58', '2017-12-20 17:08:53'),
(60, '', 0, 1, 1, 1, 1, '2017-12-20 16:49:33', '2017-12-20 17:08:18'),
(77, '', 63, 0, 1, 0, 1, '2017-12-20 17:19:46', '2017-12-20 17:19:46'),
(81, '', 67, 0, 1, 0, 1, '2017-12-22 08:42:35', '2017-12-22 08:42:35'),
(80, '', 67, 0, 1, 0, 1, '2017-12-22 08:42:15', '2017-12-22 08:42:15'),
(63, '', 0, 1, 1, 4, 1, '2017-12-20 16:50:12', '2017-12-20 17:09:13'),
(64, '', 0, 1, 1, 5, 1, '2017-12-20 16:50:22', '2017-12-20 17:09:28'),
(65, '', 0, 1, 1, 6, 1, '2017-12-20 16:52:13', '2017-12-20 17:09:48'),
(74, '', 62, 0, 1, 0, 1, '2017-12-20 17:18:20', '2017-12-20 17:18:20'),
(73, '', 61, 0, 1, 0, 1, '2017-12-20 17:17:49', '2017-12-20 17:17:49'),
(72, '', 61, 0, 1, 0, 1, '2017-12-20 17:17:23', '2017-12-20 17:17:57'),
(71, '', 60, 0, 1, 0, 1, '2017-12-20 17:16:39', '2017-12-20 17:16:39'),
(75, '', 62, 0, 1, 0, 1, '2017-12-20 17:18:39', '2017-12-20 17:18:39'),
(70, '', 60, 0, 1, 0, 1, '2017-12-20 17:16:25', '2017-12-20 17:16:25'),
(69, '', 60, 0, 1, 0, 1, '2017-12-20 17:16:13', '2017-12-20 17:16:13'),
(68, '', 59, 0, 1, 0, 1, '2017-12-20 17:15:20', '2017-12-20 17:15:20'),
(67, '', 59, 0, 1, 0, 1, '2017-12-20 17:15:05', '2017-12-20 17:15:05'),
(66, '', 59, 0, 1, 0, 1, '2017-12-20 17:14:45', '2017-12-20 17:14:45'),
(59, '', 0, 1, 1, 0, 1, '2017-12-20 16:49:14', '2017-12-20 16:51:27'),
(82, '', 59, 1, 1, 0, 0, '2018-01-04 15:33:10', '2018-01-04 16:37:27');

-- --------------------------------------------------------

--
-- Structure de la table `migan_category_description`
--

CREATE TABLE `migan_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_category_description`
--

INSERT INTO `migan_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(81, 2, 'Pintade', '', 'Pintade', '', ''),
(59, 2, 'Viande', '', 'Viande', '', ''),
(80, 2, 'Dinde', '', 'Dinde', '', ''),
(60, 1, 'Charcuteries et boudins', '', 'Charcuteries et boudins', '', ''),
(61, 1, 'Sauces et condiments', '', 'Sauces et condiments', '', ''),
(62, 1, 'Fruits et legumes', '', 'Fruits et legumes', '', ''),
(63, 1, 'Boissons', '', 'Boissons', '', ''),
(64, 1, 'Poissons et fruits de mer', '', 'Poissons et fruits de mer', '', ''),
(65, 1, 'Produits Bio', '', 'Produits Bio', '', ''),
(66, 1, 'PORC', '', 'PORC', '', ''),
(67, 1, 'Volaille', '', 'Volaille', '', ''),
(68, 1, 'Lapin', '', 'Lapin', '', ''),
(69, 1, 'Porc', '', 'Porc', '', ''),
(70, 1, 'Volaille', '', 'Volaille', '', ''),
(71, 1, 'Boudin', '', 'Boudin', '', ''),
(72, 1, 'Sauce', '', 'Sauce', '', ''),
(73, 1, 'Condiment', '', 'Condiment', '', ''),
(74, 1, 'Fruit', '', 'Fruit', '', ''),
(75, 1, 'Légume', '', 'Légume', '', ''),
(76, 1, 'Punch', '', 'Punch', '', ''),
(77, 1, 'Sirop', '', 'Sirop', '', ''),
(78, 1, 'Poulet', '', 'Poulet', '', ''),
(79, 1, 'Coq', '', 'Coq', '', ''),
(80, 1, 'Dinde', '', 'Dinde', '', ''),
(81, 1, 'Pintade', '', 'Pintade', '', ''),
(60, 2, 'Charcuteries et boudins', '', 'Charcuteries et boudins', '', ''),
(61, 2, 'Sauces et condiments', '', 'Sauces et condiments', '', ''),
(62, 2, 'Fruits et legumes', '', 'Fruits et legumes', '', ''),
(63, 2, 'Boissons', '', 'Boissons', '', ''),
(64, 2, 'Poissons et fruits de mer', '', 'Poissons et fruits de mer', '', ''),
(65, 2, 'Produits Bio', '', 'Produits Bio', '', ''),
(66, 2, 'PORC', '', 'PORC', '', ''),
(67, 2, 'Volaille', '', 'Volaille', '', ''),
(68, 2, 'Lapin', '', 'Lapin', '', ''),
(69, 2, 'Porc', '', 'Porc', '', ''),
(70, 2, 'Volaille', '', 'Volaille', '', ''),
(71, 2, 'Boudin', '', 'Boudin', '', ''),
(72, 2, 'Sauce', '', 'Sauce', '', ''),
(73, 2, 'Condiment', '', 'Condiment', '', ''),
(74, 2, 'Fruit', '', 'Fruit', '', ''),
(75, 2, 'Légume', '', 'Légume', '', ''),
(76, 2, 'Punch', '', 'Punch', '', ''),
(77, 2, 'Sirop', '', 'Sirop', '', ''),
(78, 2, 'Poulet', '', 'Poulet', '', ''),
(79, 2, 'Coq', '', 'Coq', '', ''),
(59, 1, 'Viande', '', 'Viande', '', ''),
(82, 2, 'Boeuf', '', 'Boeuf', '', ''),
(82, 1, 'Boeuf', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boeuf', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `migan_category_filter`
--

CREATE TABLE `migan_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_category_path`
--

CREATE TABLE `migan_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_category_path`
--

INSERT INTO `migan_category_path` (`category_id`, `path_id`, `level`) VALUES
(61, 61, 0),
(60, 60, 0),
(81, 81, 2),
(81, 67, 1),
(81, 59, 0),
(80, 80, 2),
(80, 67, 1),
(80, 59, 0),
(79, 79, 2),
(79, 67, 1),
(79, 59, 0),
(78, 78, 2),
(78, 59, 0),
(78, 67, 1),
(77, 77, 1),
(77, 63, 0),
(76, 76, 1),
(76, 63, 0),
(75, 75, 1),
(75, 62, 0),
(74, 74, 1),
(74, 62, 0),
(73, 73, 1),
(73, 61, 0),
(72, 72, 1),
(72, 61, 0),
(71, 71, 1),
(71, 60, 0),
(70, 70, 1),
(70, 60, 0),
(69, 69, 1),
(69, 60, 0),
(68, 68, 1),
(68, 59, 0),
(67, 67, 1),
(67, 59, 0),
(66, 66, 1),
(66, 59, 0),
(65, 65, 0),
(64, 64, 0),
(63, 63, 0),
(62, 62, 0),
(59, 59, 0),
(82, 59, 0),
(82, 82, 1);

-- --------------------------------------------------------

--
-- Structure de la table `migan_category_to_layout`
--

CREATE TABLE `migan_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_category_to_layout`
--

INSERT INTO `migan_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_category_to_store`
--

CREATE TABLE `migan_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_category_to_store`
--

INSERT INTO `migan_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_country`
--

CREATE TABLE `migan_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_country`
--

INSERT INTO `migan_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 0),
(2, 'Albania', 'AL', 'ALB', '', 0, 0),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 0),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 0),
(5, 'Andorra', 'AD', 'AND', '', 0, 0),
(6, 'Angola', 'AO', 'AGO', '', 0, 0),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 0),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 0),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 0),
(10, 'Argentina', 'AR', 'ARG', '', 0, 0),
(11, 'Armenia', 'AM', 'ARM', '', 0, 0),
(12, 'Aruba', 'AW', 'ABW', '', 0, 0),
(13, 'Australia', 'AU', 'AUS', '', 0, 0),
(14, 'Austria', 'AT', 'AUT', '', 0, 0),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 0),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 0),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 0),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 0),
(19, 'Barbados', 'BB', 'BRB', '', 0, 0),
(20, 'Belarus', 'BY', 'BLR', '', 0, 0),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 0),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 0),
(23, 'Benin', 'BJ', 'BEN', '', 0, 0),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 0),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 0),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 0),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 0),
(28, 'Botswana', 'BW', 'BWA', '', 0, 0),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 0),
(30, 'Brazil', 'BR', 'BRA', '', 0, 0),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 0),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 0),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 0),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 0),
(35, 'Burundi', 'BI', 'BDI', '', 0, 0),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 0),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 0),
(38, 'Canada', 'CA', 'CAN', '', 0, 0),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 0),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 0),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 0),
(42, 'Chad', 'TD', 'TCD', '', 0, 0),
(43, 'Chile', 'CL', 'CHL', '', 0, 0),
(44, 'China', 'CN', 'CHN', '', 0, 0),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 0),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 0),
(47, 'Colombia', 'CO', 'COL', '', 0, 0),
(48, 'Comoros', 'KM', 'COM', '', 0, 0),
(49, 'Congo', 'CG', 'COG', '', 0, 0),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 0),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 0),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 0),
(53, 'Croatia', 'HR', 'HRV', '', 0, 0),
(54, 'Cuba', 'CU', 'CUB', '', 0, 0),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 0),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 0),
(57, 'Denmark', 'DK', 'DNK', '', 0, 0),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 0),
(59, 'Dominica', 'DM', 'DMA', '', 0, 0),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 0),
(61, 'East Timor', 'TL', 'TLS', '', 0, 0),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 0),
(63, 'Egypt', 'EG', 'EGY', '', 0, 0),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 0),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 0),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 0),
(67, 'Estonia', 'EE', 'EST', '', 0, 0),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 0),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 0),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 0),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 0),
(72, 'Finland', 'FI', 'FIN', '', 0, 0),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 0),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 0),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 0),
(78, 'Gabon', 'GA', 'GAB', '', 0, 0),
(79, 'Gambia', 'GM', 'GMB', '', 0, 0),
(80, 'Georgia', 'GE', 'GEO', '', 0, 0),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(82, 'Ghana', 'GH', 'GHA', '', 0, 0),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 0),
(84, 'Greece', 'GR', 'GRC', '', 0, 0),
(85, 'Greenland', 'GL', 'GRL', '', 0, 0),
(86, 'Grenada', 'GD', 'GRD', '', 0, 0),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 0),
(88, 'Guam', 'GU', 'GUM', '', 0, 0),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 0),
(90, 'Guinea', 'GN', 'GIN', '', 0, 0),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 0),
(92, 'Guyana', 'GY', 'GUY', '', 0, 0),
(93, 'Haiti', 'HT', 'HTI', '', 0, 0),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 0),
(95, 'Honduras', 'HN', 'HND', '', 0, 0),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 0),
(97, 'Hungary', 'HU', 'HUN', '', 0, 0),
(98, 'Iceland', 'IS', 'ISL', '', 0, 0),
(99, 'India', 'IN', 'IND', '', 0, 0),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 0),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 0),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 0),
(103, 'Ireland', 'IE', 'IRL', '', 0, 0),
(104, 'Israel', 'IL', 'ISR', '', 0, 0),
(105, 'Italy', 'IT', 'ITA', '', 0, 0),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 0),
(107, 'Japan', 'JP', 'JPN', '', 0, 0),
(108, 'Jordan', 'JO', 'JOR', '', 0, 0),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 0),
(110, 'Kenya', 'KE', 'KEN', '', 0, 0),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 0),
(112, 'North Korea', 'KP', 'PRK', '', 0, 0),
(113, 'South Korea', 'KR', 'KOR', '', 0, 0),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 0),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 0),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 0),
(117, 'Latvia', 'LV', 'LVA', '', 0, 0),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 0),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 0),
(120, 'Liberia', 'LR', 'LBR', '', 0, 0),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 0),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 0),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 0),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 0),
(125, 'Macau', 'MO', 'MAC', '', 0, 0),
(126, 'FYROM', 'MK', 'MKD', '', 0, 0),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 0),
(128, 'Malawi', 'MW', 'MWI', '', 0, 0),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 0),
(130, 'Maldives', 'MV', 'MDV', '', 0, 0),
(131, 'Mali', 'ML', 'MLI', '', 0, 0),
(132, 'Malta', 'MT', 'MLT', '', 0, 0),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 0),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 0),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 0),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 0),
(138, 'Mexico', 'MX', 'MEX', '', 0, 0),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 0),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 0),
(141, 'Monaco', 'MC', 'MCO', '', 0, 0),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 0),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 0),
(144, 'Morocco', 'MA', 'MAR', '', 0, 0),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 0),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 0),
(147, 'Namibia', 'NA', 'NAM', '', 0, 0),
(148, 'Nauru', 'NR', 'NRU', '', 0, 0),
(149, 'Nepal', 'NP', 'NPL', '', 0, 0),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 0),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 0),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 0),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 0),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 0),
(155, 'Niger', 'NE', 'NER', '', 0, 0),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 0),
(157, 'Niue', 'NU', 'NIU', '', 0, 0),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 0),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 0),
(160, 'Norway', 'NO', 'NOR', '', 0, 0),
(161, 'Oman', 'OM', 'OMN', '', 0, 0),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 0),
(163, 'Palau', 'PW', 'PLW', '', 0, 0),
(164, 'Panama', 'PA', 'PAN', '', 0, 0),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 0),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 0),
(167, 'Peru', 'PE', 'PER', '', 0, 0),
(168, 'Philippines', 'PH', 'PHL', '', 0, 0),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 0),
(170, 'Poland', 'PL', 'POL', '', 0, 0),
(171, 'Portugal', 'PT', 'PRT', '', 0, 0),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 0),
(173, 'Qatar', 'QA', 'QAT', '', 0, 0),
(174, 'Reunion', 'RE', 'REU', '', 0, 0),
(175, 'Romania', 'RO', 'ROM', '', 0, 0),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 0),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 0),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 0),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 0),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 0),
(181, 'Samoa', 'WS', 'WSM', '', 0, 0),
(182, 'San Marino', 'SM', 'SMR', '', 0, 0),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 0),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 0),
(185, 'Senegal', 'SN', 'SEN', '', 0, 0),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 0),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 0),
(188, 'Singapore', 'SG', 'SGP', '', 0, 0),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 0),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 0),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 0),
(192, 'Somalia', 'SO', 'SOM', '', 0, 0),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 0),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 0),
(195, 'Spain', 'ES', 'ESP', '', 0, 0),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 0),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 0),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 0),
(199, 'Sudan', 'SD', 'SDN', '', 0, 0),
(200, 'Suriname', 'SR', 'SUR', '', 0, 0),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 0),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 0),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 0),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 0),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 0),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 0),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 0),
(209, 'Thailand', 'TH', 'THA', '', 0, 0),
(210, 'Togo', 'TG', 'TGO', '', 0, 0),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 0),
(212, 'Tonga', 'TO', 'TON', '', 0, 0),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 0),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 0),
(215, 'Turkey', 'TR', 'TUR', '', 0, 0),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 0),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 0),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 0),
(219, 'Uganda', 'UG', 'UGA', '', 0, 0),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 0),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 0),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 0),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 0),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 0),
(225, 'Uruguay', 'UY', 'URY', '', 0, 0),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 0),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 0),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 0),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 0),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 0),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 0),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 0),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 0),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 0),
(235, 'Yemen', 'YE', 'YEM', '', 0, 0),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 0),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 0),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 0),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 0),
(243, 'Serbia', 'RS', 'SRB', '', 0, 0),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 0),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 0),
(246, 'Curacao', 'CW', 'CUW', '', 0, 0),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 0),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 0),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 0),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 0),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 0),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 0),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 0),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 0),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 0),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 0),
(257, 'Jersey', 'JE', 'JEY', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_coupon`
--

CREATE TABLE `migan_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_coupon`
--

INSERT INTO `migan_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Structure de la table `migan_coupon_category`
--

CREATE TABLE `migan_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_coupon_history`
--

CREATE TABLE `migan_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_coupon_product`
--

CREATE TABLE `migan_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_currency`
--

CREATE TABLE `migan_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_currency`
--

INSERT INTO `migan_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2017-12-20 21:06:55'),
(3, 'Euro', 'EUR', '', '€', '2', 1.00000000, 1, '2017-12-20 21:13:37');

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer`
--

CREATE TABLE `migan_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_customer`
--

INSERT INTO `migan_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(88, 1, 0, 2, 'Steffy', 'FORTUNE', 'steffy.Fortune@izile.fr', '0696753710', '', '62b4b2b1d0c3682869d1906b80dda98d528b23f7', 'UUIhpS6kP', NULL, NULL, 0, 0, '{\"9\":\"\",\"4\":\"\",\"2\":\"\",\"3\":\"1992-01-17\"}', '192.168.1.58', 1, 0, 'miFhdbs93IhKU', '', '2018-01-05 10:58:55'),
(85, 2, 0, 2, 'Lovely', 'Regna', 'regna.lovely@gmail.com', '0596080129', '', '382fa7e8d4a35ff6b2f01048c465bd2ced7f6a30', 'OmlkQ6RwP', NULL, NULL, 0, 80, '{\"9\":\"InTech\",\"4\":\"InTech\",\"2\":\"2907081001030501\",\"3\":\"\"}', '192.168.1.49', 1, 0, 'mipJxnwBIubgw', '', '2018-01-05 10:12:44');

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_activity`
--

CREATE TABLE `migan_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_customer_activity`
--

INSERT INTO `migan_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(53, 85, 'address_add', '{\"customer_id\":\"85\",\"name\":\"Lovely Regna\"}', '192.168.1.49', '2018-01-05 10:14:36'),
(52, 85, 'login', '{\"customer_id\":\"85\",\"name\":\"Lovely Regna\"}', '192.168.1.49', '2018-01-05 10:14:14'),
(51, 85, 'register', '{\"customer_id\":85,\"name\":\"Lovely Regna\"}', '192.168.1.49', '2018-01-05 10:12:44'),
(13, 0, 'order_guest', '{\"name\":\"Steffy FORTUNE\",\"order_id\":6}', '192.168.1.58', '2018-01-03 15:21:54'),
(14, 0, 'order_guest', '{\"name\":\"Steffy FORTUNE\",\"order_id\":7}', '192.168.1.58', '2018-01-03 15:25:36'),
(48, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-05 09:34:38'),
(45, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-05 09:02:50'),
(43, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-05 08:54:18'),
(41, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-05 08:51:21'),
(39, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-04 18:42:01'),
(37, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-04 18:39:00'),
(35, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-04 18:35:31'),
(31, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-04 18:03:01'),
(29, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-04 18:01:13'),
(27, 0, 'address_add', '{\"customer_id\":null,\"name\":\" \"}', '192.168.1.58', '2018-01-04 17:23:52'),
(64, 88, 'login', '{\"customer_id\":\"88\",\"name\":\"Steffy FORTUNE\"}', '192.168.1.58', '2018-01-05 10:59:38'),
(57, 85, 'order_account', '{\"customer_id\":\"85\",\"name\":\"Lovely Regna\",\"order_id\":16}', '192.168.1.49', '2018-01-05 10:27:14'),
(63, 88, 'register', '{\"customer_id\":88,\"name\":\"Steffy FORTUNE\"}', '192.168.1.58', '2018-01-05 10:58:55'),
(59, 85, 'order_account', '{\"customer_id\":\"85\",\"name\":\"Lovely Regna\",\"order_id\":17}', '192.168.1.49', '2018-01-05 10:33:54');

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_affiliate`
--

CREATE TABLE `migan_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_approval`
--

CREATE TABLE `migan_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_group`
--

CREATE TABLE `migan_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_customer_group`
--

INSERT INTO `migan_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(2, 1, 2),
(3, 0, 3),
(4, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_group_description`
--

CREATE TABLE `migan_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_customer_group_description`
--

INSERT INTO `migan_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Particulier', 'test'),
(2, 2, 'Entreprise/Association', ''),
(3, 1, 'Collectivité', ''),
(1, 2, 'Particulier', 'test'),
(2, 1, 'Entreprise/Association', ''),
(3, 2, 'Collectivité', ''),
(4, 1, 'Grande Moyenne  Surface', ''),
(4, 2, 'Grande Moyenne Surface', '');

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_history`
--

CREATE TABLE `migan_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_ip`
--

CREATE TABLE `migan_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_customer_ip`
--

INSERT INTO `migan_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(9, 85, '192.168.1.49', '2018-01-05 10:14:14'),
(11, 88, '192.168.1.58', '2018-01-05 10:59:38');

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_login`
--

CREATE TABLE `migan_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_online`
--

CREATE TABLE `migan_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_customer_online`
--

INSERT INTO `migan_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('192.168.1.58', 88, 'http://192.168.1.58/MIGAN/index.php?route=account/address/add', 'http://192.168.1.58/MIGAN/index.php?route=account/address', '2018-01-05 14:59:48'),
('192.168.1.49', 85, 'http://192.168.1.58/MIGAN/index.php?route=common/home', 'http://192.168.1.58/MIGAN/index.php?route=checkout/success', '2018-01-05 14:34:19');

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_reward`
--

CREATE TABLE `migan_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_search`
--

CREATE TABLE `migan_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_transaction`
--

CREATE TABLE `migan_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_customer_wishlist`
--

CREATE TABLE `migan_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_custom_field`
--

CREATE TABLE `migan_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_custom_field`
--

INSERT INTO `migan_custom_field` (`custom_field_id`, `type`, `value`, `validation`, `location`, `status`, `sort_order`) VALUES
(3, 'date', '', '', 'account', 1, 6),
(2, 'text', '', '', 'account', 1, 3),
(4, 'text', '', '', 'account', 1, 2),
(9, 'text', '', '', 'account', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `migan_custom_field_customer_group`
--

CREATE TABLE `migan_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_custom_field_customer_group`
--

INSERT INTO `migan_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(3, 1, 1),
(4, 2, 0),
(2, 3, 0),
(2, 2, 0),
(9, 3, 1),
(9, 2, 1),
(2, 4, 1),
(9, 4, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `migan_custom_field_description`
--

CREATE TABLE `migan_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_custom_field_description`
--

INSERT INTO `migan_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(4, 2, 'Nom commercial'),
(4, 1, 'Commercial\'s name'),
(3, 2, 'Date de naissance'),
(9, 2, 'Société'),
(2, 2, 'SIRET'),
(2, 1, 'SIRET'),
(3, 1, 'Birthday'),
(9, 1, 'Society');

-- --------------------------------------------------------

--
-- Structure de la table `migan_custom_field_value`
--

CREATE TABLE `migan_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_custom_field_value_description`
--

CREATE TABLE `migan_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_download`
--

CREATE TABLE `migan_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_download_description`
--

CREATE TABLE `migan_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_event`
--

CREATE TABLE `migan_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_event`
--

INSERT INTO `migan_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_extension`
--

CREATE TABLE `migan_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_extension`
--

INSERT INTO `migan_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'captcha', 'google');

-- --------------------------------------------------------

--
-- Structure de la table `migan_extension_install`
--

CREATE TABLE `migan_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_extension_install`
--

INSERT INTO `migan_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'opencart-3-x-export-import-multilingual-3-19-cloud.ocmod.zip', '2017-12-21 15:13:14'),
(2, 0, 'opencart-3-x-export-import-multilingual-3-19-cloud.ocmod.zip', '2017-12-21 15:45:59');

-- --------------------------------------------------------

--
-- Structure de la table `migan_extension_path`
--

CREATE TABLE `migan_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_extension_path`
--

INSERT INTO `migan_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'admin/controller/extension/export_import.php', '2017-12-21 15:13:25'),
(2, 1, 'admin/model/extension/export_import.php', '2017-12-21 15:13:25'),
(3, 1, 'admin/view/stylesheet/export_import.css', '2017-12-21 15:13:25'),
(4, 1, 'admin/language/en-gb/extension/export_import.php', '2017-12-21 15:13:25'),
(5, 1, 'admin/view/image/export-import/loading.gif', '2017-12-21 15:13:25'),
(6, 1, 'admin/view/template/extension/export_import.twig', '2017-12-21 15:13:25'),
(7, 1, 'system/library/export_import/Classes/PHPExcel.php', '2017-12-21 15:13:25'),
(8, 1, 'system/library/export_import/Classes/PHPExcel/Autoloader.php', '2017-12-21 15:13:25'),
(9, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorageFactory.php', '2017-12-21 15:13:25'),
(10, 1, 'system/library/export_import/Classes/PHPExcel/Calculation.php', '2017-12-21 15:13:25'),
(11, 1, 'system/library/export_import/Classes/PHPExcel/Cell.php', '2017-12-21 15:13:25'),
(12, 1, 'system/library/export_import/Classes/PHPExcel/Chart.php', '2017-12-21 15:13:25'),
(13, 1, 'system/library/export_import/Classes/PHPExcel/Comment.php', '2017-12-21 15:13:25'),
(14, 1, 'system/library/export_import/Classes/PHPExcel/DocumentProperties.php', '2017-12-21 15:13:25'),
(15, 1, 'system/library/export_import/Classes/PHPExcel/DocumentSecurity.php', '2017-12-21 15:13:25'),
(16, 1, 'system/library/export_import/Classes/PHPExcel/Exception.php', '2017-12-21 15:13:25'),
(17, 1, 'system/library/export_import/Classes/PHPExcel/HashTable.php', '2017-12-21 15:13:25'),
(18, 1, 'system/library/export_import/Classes/PHPExcel/IComparable.php', '2017-12-21 15:13:25'),
(19, 1, 'system/library/export_import/Classes/PHPExcel/IOFactory.php', '2017-12-21 15:13:25'),
(20, 1, 'system/library/export_import/Classes/PHPExcel/NamedRange.php', '2017-12-21 15:13:25'),
(21, 1, 'system/library/export_import/Classes/PHPExcel/ReferenceHelper.php', '2017-12-21 15:13:25'),
(22, 1, 'system/library/export_import/Classes/PHPExcel/RichText.php', '2017-12-21 15:13:25'),
(23, 1, 'system/library/export_import/Classes/PHPExcel/Settings.php', '2017-12-21 15:13:25'),
(24, 1, 'system/library/export_import/Classes/PHPExcel/Style.php', '2017-12-21 15:13:25'),
(25, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet.php', '2017-12-21 15:13:25'),
(26, 1, 'system/library/export_import/Classes/PHPExcel/WorksheetIterator.php', '2017-12-21 15:13:25'),
(27, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/APC.php', '2017-12-21 15:13:25'),
(28, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/CacheBase.php', '2017-12-21 15:13:25'),
(29, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php', '2017-12-21 15:13:25'),
(30, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/ICache.php', '2017-12-21 15:13:25'),
(31, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Igbinary.php', '2017-12-21 15:13:25'),
(32, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memcache.php', '2017-12-21 15:13:25'),
(33, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memory.php', '2017-12-21 15:13:25'),
(34, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php', '2017-12-21 15:13:25'),
(35, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php', '2017-12-21 15:13:25'),
(36, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php', '2017-12-21 15:13:25'),
(37, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite.php', '2017-12-21 15:13:25'),
(38, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite3.php', '2017-12-21 15:13:25'),
(39, 1, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Wincache.php', '2017-12-21 15:13:25'),
(40, 1, 'system/library/export_import/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php', '2017-12-21 15:13:25'),
(41, 1, 'system/library/export_import/Classes/PHPExcel/CalcEngine/Logger.php', '2017-12-21 15:13:25'),
(42, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Database.php', '2017-12-21 15:13:25'),
(43, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/DateTime.php', '2017-12-21 15:13:25'),
(44, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Engineering.php', '2017-12-21 15:13:25'),
(45, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Exception.php', '2017-12-21 15:13:25'),
(46, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/ExceptionHandler.php', '2017-12-21 15:13:25'),
(47, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Financial.php', '2017-12-21 15:13:25'),
(48, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/FormulaParser.php', '2017-12-21 15:13:25'),
(49, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/FormulaToken.php', '2017-12-21 15:13:25'),
(50, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Function.php', '2017-12-21 15:13:25'),
(51, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Functions.php', '2017-12-21 15:13:25'),
(52, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Logical.php', '2017-12-21 15:13:25'),
(53, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/LookupRef.php', '2017-12-21 15:13:25'),
(54, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/MathTrig.php', '2017-12-21 15:13:25'),
(55, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Statistical.php', '2017-12-21 15:13:25'),
(56, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/TextData.php', '2017-12-21 15:13:25'),
(57, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/functionlist.txt', '2017-12-21 15:13:25'),
(58, 1, 'system/library/export_import/Classes/PHPExcel/Cell/AdvancedValueBinder.php', '2017-12-21 15:13:25'),
(59, 1, 'system/library/export_import/Classes/PHPExcel/Cell/DataType.php', '2017-12-21 15:13:25'),
(60, 1, 'system/library/export_import/Classes/PHPExcel/Cell/DataValidation.php', '2017-12-21 15:13:25'),
(61, 1, 'system/library/export_import/Classes/PHPExcel/Cell/DefaultValueBinder.php', '2017-12-21 15:13:25'),
(62, 1, 'system/library/export_import/Classes/PHPExcel/Cell/ExportImportValueBinder.php', '2017-12-21 15:13:25'),
(63, 1, 'system/library/export_import/Classes/PHPExcel/Cell/Hyperlink.php', '2017-12-21 15:13:25'),
(64, 1, 'system/library/export_import/Classes/PHPExcel/Cell/IValueBinder.php', '2017-12-21 15:13:25'),
(65, 1, 'system/library/export_import/Classes/PHPExcel/Chart/Axis.php', '2017-12-21 15:13:25'),
(66, 1, 'system/library/export_import/Classes/PHPExcel/Chart/DataSeries.php', '2017-12-21 15:13:25'),
(67, 1, 'system/library/export_import/Classes/PHPExcel/Chart/DataSeriesValues.php', '2017-12-21 15:13:25'),
(68, 1, 'system/library/export_import/Classes/PHPExcel/Chart/Exception.php', '2017-12-21 15:13:25'),
(69, 1, 'system/library/export_import/Classes/PHPExcel/Chart/GridLines.php', '2017-12-21 15:13:25'),
(70, 1, 'system/library/export_import/Classes/PHPExcel/Chart/Layout.php', '2017-12-21 15:13:25'),
(71, 1, 'system/library/export_import/Classes/PHPExcel/Chart/Legend.php', '2017-12-21 15:13:25'),
(72, 1, 'system/library/export_import/Classes/PHPExcel/Chart/PlotArea.php', '2017-12-21 15:13:25'),
(73, 1, 'system/library/export_import/Classes/PHPExcel/Chart/Properties.php', '2017-12-21 15:13:25'),
(74, 1, 'system/library/export_import/Classes/PHPExcel/Chart/Title.php', '2017-12-21 15:13:25'),
(75, 1, 'system/library/export_import/Classes/PHPExcel/Helper/HTML.php', '2017-12-21 15:13:25'),
(76, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Abstract.php', '2017-12-21 15:13:25'),
(77, 1, 'system/library/export_import/Classes/PHPExcel/Reader/CSV.php', '2017-12-21 15:13:25'),
(78, 1, 'system/library/export_import/Classes/PHPExcel/Reader/DefaultReadFilter.php', '2017-12-21 15:13:25'),
(79, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2003XML.php', '2017-12-21 15:13:25'),
(80, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007.php', '2017-12-21 15:13:25'),
(81, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5.php', '2017-12-21 15:13:25'),
(82, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Exception.php', '2017-12-21 15:13:25'),
(83, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Gnumeric.php', '2017-12-21 15:13:25'),
(84, 1, 'system/library/export_import/Classes/PHPExcel/Reader/HTML.php', '2017-12-21 15:13:25'),
(85, 1, 'system/library/export_import/Classes/PHPExcel/Reader/IReadFilter.php', '2017-12-21 15:13:25'),
(86, 1, 'system/library/export_import/Classes/PHPExcel/Reader/IReader.php', '2017-12-21 15:13:25'),
(87, 1, 'system/library/export_import/Classes/PHPExcel/Reader/OOCalc.php', '2017-12-21 15:13:25'),
(88, 1, 'system/library/export_import/Classes/PHPExcel/Reader/SYLK.php', '2017-12-21 15:13:25'),
(89, 1, 'system/library/export_import/Classes/PHPExcel/RichText/ITextElement.php', '2017-12-21 15:13:25'),
(90, 1, 'system/library/export_import/Classes/PHPExcel/RichText/Run.php', '2017-12-21 15:13:25'),
(91, 1, 'system/library/export_import/Classes/PHPExcel/RichText/TextElement.php', '2017-12-21 15:13:25'),
(92, 1, 'system/library/export_import/Classes/PHPExcel/Shared/CodePage.php', '2017-12-21 15:13:25'),
(93, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Date.php', '2017-12-21 15:13:25'),
(94, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Drawing.php', '2017-12-21 15:13:25'),
(95, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Escher.php', '2017-12-21 15:13:25'),
(96, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Excel5.php', '2017-12-21 15:13:25'),
(97, 1, 'system/library/export_import/Classes/PHPExcel/Shared/File.php', '2017-12-21 15:13:25'),
(98, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Font.php', '2017-12-21 15:13:25'),
(99, 1, 'system/library/export_import/Classes/PHPExcel/Shared/OLE.php', '2017-12-21 15:13:25'),
(100, 1, 'system/library/export_import/Classes/PHPExcel/Shared/OLERead.php', '2017-12-21 15:13:25'),
(101, 1, 'system/library/export_import/Classes/PHPExcel/Shared/PasswordHasher.php', '2017-12-21 15:13:25'),
(102, 1, 'system/library/export_import/Classes/PHPExcel/Shared/String.php', '2017-12-21 15:13:25'),
(103, 1, 'system/library/export_import/Classes/PHPExcel/Shared/TimeZone.php', '2017-12-21 15:13:25'),
(104, 1, 'system/library/export_import/Classes/PHPExcel/Shared/XMLWriter.php', '2017-12-21 15:13:25'),
(105, 1, 'system/library/export_import/Classes/PHPExcel/Shared/ZipArchive.php', '2017-12-21 15:13:25'),
(106, 1, 'system/library/export_import/Classes/PHPExcel/Shared/ZipStreamWrapper.php', '2017-12-21 15:13:25'),
(107, 1, 'system/library/export_import/Classes/PHPExcel/Style/Alignment.php', '2017-12-21 15:13:25'),
(108, 1, 'system/library/export_import/Classes/PHPExcel/Style/Border.php', '2017-12-21 15:13:25'),
(109, 1, 'system/library/export_import/Classes/PHPExcel/Style/Borders.php', '2017-12-21 15:13:25'),
(110, 1, 'system/library/export_import/Classes/PHPExcel/Style/Color.php', '2017-12-21 15:13:25'),
(111, 1, 'system/library/export_import/Classes/PHPExcel/Style/Conditional.php', '2017-12-21 15:13:25'),
(112, 1, 'system/library/export_import/Classes/PHPExcel/Style/Fill.php', '2017-12-21 15:13:25'),
(113, 1, 'system/library/export_import/Classes/PHPExcel/Style/Font.php', '2017-12-21 15:13:25'),
(114, 1, 'system/library/export_import/Classes/PHPExcel/Style/NumberFormat.php', '2017-12-21 15:13:25'),
(115, 1, 'system/library/export_import/Classes/PHPExcel/Style/Protection.php', '2017-12-21 15:13:25'),
(116, 1, 'system/library/export_import/Classes/PHPExcel/Style/Supervisor.php', '2017-12-21 15:13:25'),
(117, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter.php', '2017-12-21 15:13:25'),
(118, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/BaseDrawing.php', '2017-12-21 15:13:25'),
(119, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/CellIterator.php', '2017-12-21 15:13:25'),
(120, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/Column.php', '2017-12-21 15:13:25'),
(121, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnCellIterator.php', '2017-12-21 15:13:25'),
(122, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnDimension.php', '2017-12-21 15:13:25'),
(123, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnIterator.php', '2017-12-21 15:13:25'),
(124, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/Dimension.php', '2017-12-21 15:13:26'),
(125, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing.php', '2017-12-21 15:13:26'),
(126, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooter.php', '2017-12-21 15:13:26'),
(127, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php', '2017-12-21 15:13:26'),
(128, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/MemoryDrawing.php', '2017-12-21 15:13:26'),
(129, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/PageMargins.php', '2017-12-21 15:13:26'),
(130, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/PageSetup.php', '2017-12-21 15:13:26'),
(131, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/Protection.php', '2017-12-21 15:13:26'),
(132, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/Row.php', '2017-12-21 15:13:26'),
(133, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowCellIterator.php', '2017-12-21 15:13:26'),
(134, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowDimension.php', '2017-12-21 15:13:26'),
(135, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowIterator.php', '2017-12-21 15:13:26'),
(136, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/SheetView.php', '2017-12-21 15:13:26'),
(137, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Abstract.php', '2017-12-21 15:13:26'),
(138, 1, 'system/library/export_import/Classes/PHPExcel/Writer/CSV.php', '2017-12-21 15:13:26'),
(139, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007.php', '2017-12-21 15:13:26'),
(140, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5.php', '2017-12-21 15:13:26'),
(141, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Exception.php', '2017-12-21 15:13:26'),
(142, 1, 'system/library/export_import/Classes/PHPExcel/Writer/HTML.php', '2017-12-21 15:13:26'),
(143, 1, 'system/library/export_import/Classes/PHPExcel/Writer/IWriter.php', '2017-12-21 15:13:26'),
(144, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument.php', '2017-12-21 15:13:26'),
(145, 1, 'system/library/export_import/Classes/PHPExcel/Writer/PDF.php', '2017-12-21 15:13:26'),
(146, 1, 'system/library/export_import/Classes/PHPExcel/Calculation/Token/Stack.php', '2017-12-21 15:13:26'),
(147, 1, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt', '2017-12-21 15:13:26'),
(148, 1, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer/jpgraph.php', '2017-12-21 15:13:26'),
(149, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Chart.php', '2017-12-21 15:13:26'),
(150, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Theme.php', '2017-12-21 15:13:26'),
(151, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color.php', '2017-12-21 15:13:26'),
(152, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/ErrorCode.php', '2017-12-21 15:13:26'),
(153, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Escher.php', '2017-12-21 15:13:26'),
(154, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/MD5.php', '2017-12-21 15:13:26'),
(155, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/RC4.php', '2017-12-21 15:13:26'),
(156, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer.php', '2017-12-21 15:13:26'),
(157, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer.php', '2017-12-21 15:13:26'),
(158, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT', '2017-12-21 15:13:26'),
(159, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php', '2017-12-21 15:13:26'),
(160, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php', '2017-12-21 15:13:26'),
(161, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php', '2017-12-21 15:13:26'),
(162, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/Matrix.php', '2017-12-21 15:13:26'),
(163, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php', '2017-12-21 15:13:26'),
(164, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php', '2017-12-21 15:13:26'),
(165, 1, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php', '2017-12-21 15:13:26'),
(166, 1, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS.php', '2017-12-21 15:13:26'),
(167, 1, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt', '2017-12-21 15:13:26'),
(168, 1, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php', '2017-12-21 15:13:26'),
(169, 1, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/readme.txt', '2017-12-21 15:13:26'),
(170, 1, 'system/library/export_import/Classes/PHPExcel/Shared/trend/bestFitClass.php', '2017-12-21 15:13:26'),
(171, 1, 'system/library/export_import/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php', '2017-12-21 15:13:26'),
(172, 1, 'system/library/export_import/Classes/PHPExcel/Shared/trend/linearBestFitClass.php', '2017-12-21 15:13:26'),
(173, 1, 'system/library/export_import/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php', '2017-12-21 15:13:26'),
(174, 1, 'system/library/export_import/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php', '2017-12-21 15:13:26'),
(175, 1, 'system/library/export_import/Classes/PHPExcel/Shared/trend/powerBestFitClass.php', '2017-12-21 15:13:26'),
(176, 1, 'system/library/export_import/Classes/PHPExcel/Shared/trend/trendClass.php', '2017-12-21 15:13:26'),
(177, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column.php', '2017-12-21 15:13:26'),
(178, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing/Shadow.php', '2017-12-21 15:13:26'),
(179, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Chart.php', '2017-12-21 15:13:26'),
(180, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Comments.php', '2017-12-21 15:13:26'),
(181, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php', '2017-12-21 15:13:26'),
(182, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/DocProps.php', '2017-12-21 15:13:26'),
(183, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Drawing.php', '2017-12-21 15:13:26'),
(184, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Rels.php', '2017-12-21 15:13:26'),
(185, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php', '2017-12-21 15:13:26'),
(186, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php', '2017-12-21 15:13:26'),
(187, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/StringTable.php', '2017-12-21 15:13:26'),
(188, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Style.php', '2017-12-21 15:13:26'),
(189, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Theme.php', '2017-12-21 15:13:26'),
(190, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Workbook.php', '2017-12-21 15:13:26'),
(191, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Worksheet.php', '2017-12-21 15:13:26'),
(192, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/WriterPart.php', '2017-12-21 15:13:26'),
(193, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php', '2017-12-21 15:13:26'),
(194, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Escher.php', '2017-12-21 15:13:26'),
(195, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Font.php', '2017-12-21 15:13:26'),
(196, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Parser.php', '2017-12-21 15:13:26'),
(197, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Workbook.php', '2017-12-21 15:13:26'),
(198, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Worksheet.php', '2017-12-21 15:13:26'),
(199, 1, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Xf.php', '2017-12-21 15:13:26'),
(200, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Content.php', '2017-12-21 15:13:26'),
(201, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Meta.php', '2017-12-21 15:13:26'),
(202, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php', '2017-12-21 15:13:26'),
(203, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php', '2017-12-21 15:13:26'),
(204, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Settings.php', '2017-12-21 15:13:26'),
(205, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Styles.php', '2017-12-21 15:13:26'),
(206, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php', '2017-12-21 15:13:26'),
(207, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php', '2017-12-21 15:13:26'),
(208, 1, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/Core.php', '2017-12-21 15:13:26'),
(209, 1, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/DomPDF.php', '2017-12-21 15:13:26'),
(210, 1, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/mPDF.php', '2017-12-21 15:13:26'),
(211, 1, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/tcPDF.php', '2017-12-21 15:13:26'),
(212, 1, 'system/library/export_import/Classes/PHPExcel/locale/bg/config', '2017-12-21 15:13:26'),
(213, 1, 'system/library/export_import/Classes/PHPExcel/locale/cs/config', '2017-12-21 15:13:26'),
(214, 1, 'system/library/export_import/Classes/PHPExcel/locale/cs/functions', '2017-12-21 15:13:26'),
(215, 1, 'system/library/export_import/Classes/PHPExcel/locale/da/config', '2017-12-21 15:13:26'),
(216, 1, 'system/library/export_import/Classes/PHPExcel/locale/da/functions', '2017-12-21 15:13:26'),
(217, 1, 'system/library/export_import/Classes/PHPExcel/locale/de/config', '2017-12-21 15:13:26'),
(218, 1, 'system/library/export_import/Classes/PHPExcel/locale/de/functions', '2017-12-21 15:13:26'),
(219, 1, 'system/library/export_import/Classes/PHPExcel/locale/es/config', '2017-12-21 15:13:26'),
(220, 1, 'system/library/export_import/Classes/PHPExcel/locale/es/functions', '2017-12-21 15:13:26'),
(221, 1, 'system/library/export_import/Classes/PHPExcel/locale/fi/config', '2017-12-21 15:13:26'),
(222, 1, 'system/library/export_import/Classes/PHPExcel/locale/fi/functions', '2017-12-21 15:13:26'),
(223, 1, 'system/library/export_import/Classes/PHPExcel/locale/fr/config', '2017-12-21 15:13:26'),
(224, 1, 'system/library/export_import/Classes/PHPExcel/locale/fr/functions', '2017-12-21 15:13:26'),
(225, 1, 'system/library/export_import/Classes/PHPExcel/locale/hu/config', '2017-12-21 15:13:26'),
(226, 1, 'system/library/export_import/Classes/PHPExcel/locale/hu/functions', '2017-12-21 15:13:26'),
(227, 1, 'system/library/export_import/Classes/PHPExcel/locale/it/config', '2017-12-21 15:13:26'),
(228, 1, 'system/library/export_import/Classes/PHPExcel/locale/it/functions', '2017-12-21 15:13:26'),
(229, 1, 'system/library/export_import/Classes/PHPExcel/locale/nl/config', '2017-12-21 15:13:26'),
(230, 1, 'system/library/export_import/Classes/PHPExcel/locale/nl/functions', '2017-12-21 15:13:26'),
(231, 1, 'system/library/export_import/Classes/PHPExcel/locale/no/config', '2017-12-21 15:13:26'),
(232, 1, 'system/library/export_import/Classes/PHPExcel/locale/no/functions', '2017-12-21 15:13:26'),
(233, 1, 'system/library/export_import/Classes/PHPExcel/locale/pl/config', '2017-12-21 15:13:26'),
(234, 1, 'system/library/export_import/Classes/PHPExcel/locale/pl/functions', '2017-12-21 15:13:26'),
(235, 1, 'system/library/export_import/Classes/PHPExcel/locale/pt/config', '2017-12-21 15:13:26'),
(236, 1, 'system/library/export_import/Classes/PHPExcel/locale/pt/functions', '2017-12-21 15:13:26'),
(237, 1, 'system/library/export_import/Classes/PHPExcel/locale/ru/config', '2017-12-21 15:13:26'),
(238, 1, 'system/library/export_import/Classes/PHPExcel/locale/ru/functions', '2017-12-21 15:13:26'),
(239, 1, 'system/library/export_import/Classes/PHPExcel/locale/sv/config', '2017-12-21 15:13:26'),
(240, 1, 'system/library/export_import/Classes/PHPExcel/locale/sv/functions', '2017-12-21 15:13:26'),
(241, 1, 'system/library/export_import/Classes/PHPExcel/locale/tr/config', '2017-12-21 15:13:26'),
(242, 1, 'system/library/export_import/Classes/PHPExcel/locale/tr/functions', '2017-12-21 15:13:26'),
(243, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php', '2017-12-21 15:13:26'),
(244, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php', '2017-12-21 15:13:26'),
(245, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php', '2017-12-21 15:13:26'),
(246, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/Border.php', '2017-12-21 15:13:26'),
(247, 1, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php', '2017-12-21 15:13:26'),
(248, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php', '2017-12-21 15:13:26'),
(249, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php', '2017-12-21 15:13:26'),
(250, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Error.php', '2017-12-21 15:13:26'),
(251, 1, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Maths.php', '2017-12-21 15:13:26'),
(252, 1, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/File.php', '2017-12-21 15:13:26'),
(253, 1, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/Root.php', '2017-12-21 15:13:26'),
(254, 1, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php', '2017-12-21 15:13:26'),
(255, 1, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php', '2017-12-21 15:13:26'),
(256, 1, 'system/library/export_import/Classes/PHPExcel/locale/en/uk/config', '2017-12-21 15:13:26'),
(257, 1, 'system/library/export_import/Classes/PHPExcel/locale/pt/br/config', '2017-12-21 15:13:26'),
(258, 1, 'system/library/export_import/Classes/PHPExcel/locale/pt/br/functions', '2017-12-21 15:13:26'),
(259, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php', '2017-12-21 15:13:26'),
(260, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php', '2017-12-21 15:13:26'),
(261, 1, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php', '2017-12-21 15:13:26'),
(262, 2, 'system/library/export_import', '2017-12-21 15:46:09'),
(263, 2, 'admin/controller/extension/export_import.php', '2017-12-21 15:46:09'),
(264, 2, 'admin/model/extension/export_import.php', '2017-12-21 15:46:09'),
(265, 2, 'admin/view/image/export-import', '2017-12-21 15:46:09'),
(266, 2, 'admin/view/stylesheet/export_import.css', '2017-12-21 15:46:09'),
(267, 2, 'system/library/export_import/Classes', '2017-12-21 15:46:09'),
(268, 2, 'admin/language/en-gb/extension/export_import.php', '2017-12-21 15:46:09'),
(269, 2, 'admin/view/image/export-import/loading.gif', '2017-12-21 15:46:09'),
(270, 2, 'admin/view/template/extension/export_import.twig', '2017-12-21 15:46:09'),
(271, 2, 'system/library/export_import/Classes/PHPExcel', '2017-12-21 15:46:09'),
(272, 2, 'system/library/export_import/Classes/PHPExcel.php', '2017-12-21 15:46:09'),
(273, 2, 'system/library/export_import/Classes/PHPExcel/Autoloader.php', '2017-12-21 15:46:09'),
(274, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage', '2017-12-21 15:46:09'),
(275, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorageFactory.php', '2017-12-21 15:46:09'),
(276, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine', '2017-12-21 15:46:09'),
(277, 2, 'system/library/export_import/Classes/PHPExcel/Calculation', '2017-12-21 15:46:09'),
(278, 2, 'system/library/export_import/Classes/PHPExcel/Calculation.php', '2017-12-21 15:46:09'),
(279, 2, 'system/library/export_import/Classes/PHPExcel/Cell', '2017-12-21 15:46:09'),
(280, 2, 'system/library/export_import/Classes/PHPExcel/Cell.php', '2017-12-21 15:46:09'),
(281, 2, 'system/library/export_import/Classes/PHPExcel/Chart', '2017-12-21 15:46:09'),
(282, 2, 'system/library/export_import/Classes/PHPExcel/Chart.php', '2017-12-21 15:46:09'),
(283, 2, 'system/library/export_import/Classes/PHPExcel/Comment.php', '2017-12-21 15:46:09'),
(284, 2, 'system/library/export_import/Classes/PHPExcel/DocumentProperties.php', '2017-12-21 15:46:09'),
(285, 2, 'system/library/export_import/Classes/PHPExcel/DocumentSecurity.php', '2017-12-21 15:46:09'),
(286, 2, 'system/library/export_import/Classes/PHPExcel/Exception.php', '2017-12-21 15:46:09'),
(287, 2, 'system/library/export_import/Classes/PHPExcel/HashTable.php', '2017-12-21 15:46:09'),
(288, 2, 'system/library/export_import/Classes/PHPExcel/Helper', '2017-12-21 15:46:09'),
(289, 2, 'system/library/export_import/Classes/PHPExcel/IComparable.php', '2017-12-21 15:46:09'),
(290, 2, 'system/library/export_import/Classes/PHPExcel/IOFactory.php', '2017-12-21 15:46:09'),
(291, 2, 'system/library/export_import/Classes/PHPExcel/NamedRange.php', '2017-12-21 15:46:09'),
(292, 2, 'system/library/export_import/Classes/PHPExcel/Reader', '2017-12-21 15:46:09'),
(293, 2, 'system/library/export_import/Classes/PHPExcel/ReferenceHelper.php', '2017-12-21 15:46:09'),
(294, 2, 'system/library/export_import/Classes/PHPExcel/RichText', '2017-12-21 15:46:09'),
(295, 2, 'system/library/export_import/Classes/PHPExcel/RichText.php', '2017-12-21 15:46:09'),
(296, 2, 'system/library/export_import/Classes/PHPExcel/Settings.php', '2017-12-21 15:46:09'),
(297, 2, 'system/library/export_import/Classes/PHPExcel/Shared', '2017-12-21 15:46:09'),
(298, 2, 'system/library/export_import/Classes/PHPExcel/Style', '2017-12-21 15:46:09'),
(299, 2, 'system/library/export_import/Classes/PHPExcel/Style.php', '2017-12-21 15:46:09'),
(300, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet', '2017-12-21 15:46:09'),
(301, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet.php', '2017-12-21 15:46:09'),
(302, 2, 'system/library/export_import/Classes/PHPExcel/WorksheetIterator.php', '2017-12-21 15:46:09'),
(303, 2, 'system/library/export_import/Classes/PHPExcel/Writer', '2017-12-21 15:46:09'),
(304, 2, 'system/library/export_import/Classes/PHPExcel/locale', '2017-12-21 15:46:09'),
(305, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/APC.php', '2017-12-21 15:46:09'),
(306, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/CacheBase.php', '2017-12-21 15:46:09'),
(307, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php', '2017-12-21 15:46:09'),
(308, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/ICache.php', '2017-12-21 15:46:09'),
(309, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Igbinary.php', '2017-12-21 15:46:09'),
(310, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memcache.php', '2017-12-21 15:46:09'),
(311, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memory.php', '2017-12-21 15:46:09'),
(312, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php', '2017-12-21 15:46:09'),
(313, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php', '2017-12-21 15:46:09'),
(314, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php', '2017-12-21 15:46:09'),
(315, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite.php', '2017-12-21 15:46:09'),
(316, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite3.php', '2017-12-21 15:46:09'),
(317, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Wincache.php', '2017-12-21 15:46:09'),
(318, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php', '2017-12-21 15:46:09'),
(319, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine/Logger.php', '2017-12-21 15:46:09'),
(320, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Database.php', '2017-12-21 15:46:09'),
(321, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/DateTime.php', '2017-12-21 15:46:09'),
(322, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Engineering.php', '2017-12-21 15:46:09'),
(323, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Exception.php', '2017-12-21 15:46:09'),
(324, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/ExceptionHandler.php', '2017-12-21 15:46:09'),
(325, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Financial.php', '2017-12-21 15:46:09'),
(326, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/FormulaParser.php', '2017-12-21 15:46:09'),
(327, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/FormulaToken.php', '2017-12-21 15:46:09'),
(328, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Function.php', '2017-12-21 15:46:09'),
(329, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Functions.php', '2017-12-21 15:46:09'),
(330, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Logical.php', '2017-12-21 15:46:09'),
(331, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/LookupRef.php', '2017-12-21 15:46:09'),
(332, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/MathTrig.php', '2017-12-21 15:46:09'),
(333, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Statistical.php', '2017-12-21 15:46:09'),
(334, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/TextData.php', '2017-12-21 15:46:09'),
(335, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Token', '2017-12-21 15:46:09'),
(336, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/functionlist.txt', '2017-12-21 15:46:09'),
(337, 2, 'system/library/export_import/Classes/PHPExcel/Cell/AdvancedValueBinder.php', '2017-12-21 15:46:09'),
(338, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DataType.php', '2017-12-21 15:46:09'),
(339, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DataValidation.php', '2017-12-21 15:46:09'),
(340, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DefaultValueBinder.php', '2017-12-21 15:46:09'),
(341, 2, 'system/library/export_import/Classes/PHPExcel/Cell/ExportImportValueBinder.php', '2017-12-21 15:46:09'),
(342, 2, 'system/library/export_import/Classes/PHPExcel/Cell/Hyperlink.php', '2017-12-21 15:46:09'),
(343, 2, 'system/library/export_import/Classes/PHPExcel/Cell/IValueBinder.php', '2017-12-21 15:46:09'),
(344, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Axis.php', '2017-12-21 15:46:09'),
(345, 2, 'system/library/export_import/Classes/PHPExcel/Chart/DataSeries.php', '2017-12-21 15:46:09'),
(346, 2, 'system/library/export_import/Classes/PHPExcel/Chart/DataSeriesValues.php', '2017-12-21 15:46:09'),
(347, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Exception.php', '2017-12-21 15:46:09'),
(348, 2, 'system/library/export_import/Classes/PHPExcel/Chart/GridLines.php', '2017-12-21 15:46:09'),
(349, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Layout.php', '2017-12-21 15:46:09'),
(350, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Legend.php', '2017-12-21 15:46:09'),
(351, 2, 'system/library/export_import/Classes/PHPExcel/Chart/PlotArea.php', '2017-12-21 15:46:09'),
(352, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Properties.php', '2017-12-21 15:46:09'),
(353, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer', '2017-12-21 15:46:09'),
(354, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Title.php', '2017-12-21 15:46:09'),
(355, 2, 'system/library/export_import/Classes/PHPExcel/Helper/HTML.php', '2017-12-21 15:46:09'),
(356, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Abstract.php', '2017-12-21 15:46:09'),
(357, 2, 'system/library/export_import/Classes/PHPExcel/Reader/CSV.php', '2017-12-21 15:46:09'),
(358, 2, 'system/library/export_import/Classes/PHPExcel/Reader/DefaultReadFilter.php', '2017-12-21 15:46:09'),
(359, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2003XML.php', '2017-12-21 15:46:09'),
(360, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007', '2017-12-21 15:46:09'),
(361, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007.php', '2017-12-21 15:46:09'),
(362, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5', '2017-12-21 15:46:09'),
(363, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5.php', '2017-12-21 15:46:09'),
(364, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Exception.php', '2017-12-21 15:46:09'),
(365, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Gnumeric.php', '2017-12-21 15:46:09'),
(366, 2, 'system/library/export_import/Classes/PHPExcel/Reader/HTML.php', '2017-12-21 15:46:09'),
(367, 2, 'system/library/export_import/Classes/PHPExcel/Reader/IReadFilter.php', '2017-12-21 15:46:09'),
(368, 2, 'system/library/export_import/Classes/PHPExcel/Reader/IReader.php', '2017-12-21 15:46:09'),
(369, 2, 'system/library/export_import/Classes/PHPExcel/Reader/OOCalc.php', '2017-12-21 15:46:09'),
(370, 2, 'system/library/export_import/Classes/PHPExcel/Reader/SYLK.php', '2017-12-21 15:46:09'),
(371, 2, 'system/library/export_import/Classes/PHPExcel/RichText/ITextElement.php', '2017-12-21 15:46:09'),
(372, 2, 'system/library/export_import/Classes/PHPExcel/RichText/Run.php', '2017-12-21 15:46:09'),
(373, 2, 'system/library/export_import/Classes/PHPExcel/RichText/TextElement.php', '2017-12-21 15:46:09'),
(374, 2, 'system/library/export_import/Classes/PHPExcel/Shared/CodePage.php', '2017-12-21 15:46:09'),
(375, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Date.php', '2017-12-21 15:46:09'),
(376, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Drawing.php', '2017-12-21 15:46:09'),
(377, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher', '2017-12-21 15:46:09'),
(378, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher.php', '2017-12-21 15:46:09'),
(379, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Excel5.php', '2017-12-21 15:46:09'),
(380, 2, 'system/library/export_import/Classes/PHPExcel/Shared/File.php', '2017-12-21 15:46:09'),
(381, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Font.php', '2017-12-21 15:46:09'),
(382, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA', '2017-12-21 15:46:09'),
(383, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE', '2017-12-21 15:46:09'),
(384, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE.php', '2017-12-21 15:46:09'),
(385, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLERead.php', '2017-12-21 15:46:09'),
(386, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip', '2017-12-21 15:46:09'),
(387, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PasswordHasher.php', '2017-12-21 15:46:09'),
(388, 2, 'system/library/export_import/Classes/PHPExcel/Shared/String.php', '2017-12-21 15:46:09'),
(389, 2, 'system/library/export_import/Classes/PHPExcel/Shared/TimeZone.php', '2017-12-21 15:46:09'),
(390, 2, 'system/library/export_import/Classes/PHPExcel/Shared/XMLWriter.php', '2017-12-21 15:46:09'),
(391, 2, 'system/library/export_import/Classes/PHPExcel/Shared/ZipArchive.php', '2017-12-21 15:46:09'),
(392, 2, 'system/library/export_import/Classes/PHPExcel/Shared/ZipStreamWrapper.php', '2017-12-21 15:46:09'),
(393, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend', '2017-12-21 15:46:09'),
(394, 2, 'system/library/export_import/Classes/PHPExcel/Style/Alignment.php', '2017-12-21 15:46:09'),
(395, 2, 'system/library/export_import/Classes/PHPExcel/Style/Border.php', '2017-12-21 15:46:09'),
(396, 2, 'system/library/export_import/Classes/PHPExcel/Style/Borders.php', '2017-12-21 15:46:09'),
(397, 2, 'system/library/export_import/Classes/PHPExcel/Style/Color.php', '2017-12-21 15:46:09'),
(398, 2, 'system/library/export_import/Classes/PHPExcel/Style/Conditional.php', '2017-12-21 15:46:09'),
(399, 2, 'system/library/export_import/Classes/PHPExcel/Style/Fill.php', '2017-12-21 15:46:09'),
(400, 2, 'system/library/export_import/Classes/PHPExcel/Style/Font.php', '2017-12-21 15:46:09'),
(401, 2, 'system/library/export_import/Classes/PHPExcel/Style/NumberFormat.php', '2017-12-21 15:46:09'),
(402, 2, 'system/library/export_import/Classes/PHPExcel/Style/Protection.php', '2017-12-21 15:46:09'),
(403, 2, 'system/library/export_import/Classes/PHPExcel/Style/Supervisor.php', '2017-12-21 15:46:09'),
(404, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter', '2017-12-21 15:46:09'),
(405, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter.php', '2017-12-21 15:46:09'),
(406, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/BaseDrawing.php', '2017-12-21 15:46:09'),
(407, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/CellIterator.php', '2017-12-21 15:46:09'),
(408, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Column.php', '2017-12-21 15:46:09'),
(409, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnCellIterator.php', '2017-12-21 15:46:09'),
(410, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnDimension.php', '2017-12-21 15:46:09'),
(411, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnIterator.php', '2017-12-21 15:46:09'),
(412, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Dimension.php', '2017-12-21 15:46:09'),
(413, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing', '2017-12-21 15:46:09'),
(414, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing.php', '2017-12-21 15:46:09'),
(415, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooter.php', '2017-12-21 15:46:09'),
(416, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php', '2017-12-21 15:46:09'),
(417, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/MemoryDrawing.php', '2017-12-21 15:46:09'),
(418, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/PageMargins.php', '2017-12-21 15:46:09'),
(419, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/PageSetup.php', '2017-12-21 15:46:09'),
(420, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Protection.php', '2017-12-21 15:46:09'),
(421, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Row.php', '2017-12-21 15:46:09'),
(422, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowCellIterator.php', '2017-12-21 15:46:09'),
(423, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowDimension.php', '2017-12-21 15:46:09'),
(424, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowIterator.php', '2017-12-21 15:46:09'),
(425, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/SheetView.php', '2017-12-21 15:46:09'),
(426, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Abstract.php', '2017-12-21 15:46:09'),
(427, 2, 'system/library/export_import/Classes/PHPExcel/Writer/CSV.php', '2017-12-21 15:46:09'),
(428, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007', '2017-12-21 15:46:09'),
(429, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007.php', '2017-12-21 15:46:09'),
(430, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5', '2017-12-21 15:46:09'),
(431, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5.php', '2017-12-21 15:46:09'),
(432, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Exception.php', '2017-12-21 15:46:09'),
(433, 2, 'system/library/export_import/Classes/PHPExcel/Writer/HTML.php', '2017-12-21 15:46:09'),
(434, 2, 'system/library/export_import/Classes/PHPExcel/Writer/IWriter.php', '2017-12-21 15:46:09'),
(435, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument', '2017-12-21 15:46:09'),
(436, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument.php', '2017-12-21 15:46:09'),
(437, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF', '2017-12-21 15:46:09'),
(438, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF.php', '2017-12-21 15:46:09'),
(439, 2, 'system/library/export_import/Classes/PHPExcel/locale/bg', '2017-12-21 15:46:09'),
(440, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs', '2017-12-21 15:46:09'),
(441, 2, 'system/library/export_import/Classes/PHPExcel/locale/da', '2017-12-21 15:46:09'),
(442, 2, 'system/library/export_import/Classes/PHPExcel/locale/de', '2017-12-21 15:46:09'),
(443, 2, 'system/library/export_import/Classes/PHPExcel/locale/en', '2017-12-21 15:46:09'),
(444, 2, 'system/library/export_import/Classes/PHPExcel/locale/es', '2017-12-21 15:46:09'),
(445, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi', '2017-12-21 15:46:09'),
(446, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr', '2017-12-21 15:46:09'),
(447, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu', '2017-12-21 15:46:09'),
(448, 2, 'system/library/export_import/Classes/PHPExcel/locale/it', '2017-12-21 15:46:09'),
(449, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl', '2017-12-21 15:46:09'),
(450, 2, 'system/library/export_import/Classes/PHPExcel/locale/no', '2017-12-21 15:46:09'),
(451, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl', '2017-12-21 15:46:09'),
(452, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt', '2017-12-21 15:46:09'),
(453, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru', '2017-12-21 15:46:09'),
(454, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv', '2017-12-21 15:46:09'),
(455, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr', '2017-12-21 15:46:09'),
(456, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Token/Stack.php', '2017-12-21 15:46:09'),
(457, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt', '2017-12-21 15:46:09'),
(458, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer/jpgraph.php', '2017-12-21 15:46:09'),
(459, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Chart.php', '2017-12-21 15:46:09'),
(460, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Theme.php', '2017-12-21 15:46:09'),
(461, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color', '2017-12-21 15:46:09'),
(462, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color.php', '2017-12-21 15:46:09'),
(463, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/ErrorCode.php', '2017-12-21 15:46:09'),
(464, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Escher.php', '2017-12-21 15:46:09'),
(465, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/MD5.php', '2017-12-21 15:46:09'),
(466, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/RC4.php', '2017-12-21 15:46:09'),
(467, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style', '2017-12-21 15:46:09'),
(468, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer', '2017-12-21 15:46:09'),
(469, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer.php', '2017-12-21 15:46:09'),
(470, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer', '2017-12-21 15:46:09'),
(471, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer.php', '2017-12-21 15:46:09'),
(472, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT', '2017-12-21 15:46:09'),
(473, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php', '2017-12-21 15:46:09'),
(474, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php', '2017-12-21 15:46:09'),
(475, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php', '2017-12-21 15:46:09'),
(476, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/Matrix.php', '2017-12-21 15:46:09'),
(477, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php', '2017-12-21 15:46:09'),
(478, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php', '2017-12-21 15:46:09'),
(479, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils', '2017-12-21 15:46:09'),
(480, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php', '2017-12-21 15:46:09'),
(481, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS', '2017-12-21 15:46:10'),
(482, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS.php', '2017-12-21 15:46:10'),
(483, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt', '2017-12-21 15:46:10'),
(484, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php', '2017-12-21 15:46:10'),
(485, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/readme.txt', '2017-12-21 15:46:10'),
(486, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/bestFitClass.php', '2017-12-21 15:46:10'),
(487, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php', '2017-12-21 15:46:10'),
(488, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/linearBestFitClass.php', '2017-12-21 15:46:10'),
(489, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php', '2017-12-21 15:46:10');
INSERT INTO `migan_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(490, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php', '2017-12-21 15:46:10'),
(491, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/powerBestFitClass.php', '2017-12-21 15:46:10'),
(492, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/trendClass.php', '2017-12-21 15:46:10'),
(493, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column', '2017-12-21 15:46:10'),
(494, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column.php', '2017-12-21 15:46:10'),
(495, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing/Shadow.php', '2017-12-21 15:46:10'),
(496, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Chart.php', '2017-12-21 15:46:10'),
(497, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Comments.php', '2017-12-21 15:46:10'),
(498, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php', '2017-12-21 15:46:10'),
(499, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/DocProps.php', '2017-12-21 15:46:10'),
(500, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Drawing.php', '2017-12-21 15:46:10'),
(501, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Rels.php', '2017-12-21 15:46:10'),
(502, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php', '2017-12-21 15:46:10'),
(503, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php', '2017-12-21 15:46:10'),
(504, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/StringTable.php', '2017-12-21 15:46:10'),
(505, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Style.php', '2017-12-21 15:46:10'),
(506, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Theme.php', '2017-12-21 15:46:10'),
(507, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Workbook.php', '2017-12-21 15:46:10'),
(508, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Worksheet.php', '2017-12-21 15:46:10'),
(509, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/WriterPart.php', '2017-12-21 15:46:10'),
(510, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php', '2017-12-21 15:46:10'),
(511, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Escher.php', '2017-12-21 15:46:10'),
(512, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Font.php', '2017-12-21 15:46:10'),
(513, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Parser.php', '2017-12-21 15:46:10'),
(514, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Workbook.php', '2017-12-21 15:46:10'),
(515, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Worksheet.php', '2017-12-21 15:46:10'),
(516, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Xf.php', '2017-12-21 15:46:10'),
(517, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell', '2017-12-21 15:46:10'),
(518, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Content.php', '2017-12-21 15:46:10'),
(519, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Meta.php', '2017-12-21 15:46:10'),
(520, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php', '2017-12-21 15:46:10'),
(521, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php', '2017-12-21 15:46:10'),
(522, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Settings.php', '2017-12-21 15:46:10'),
(523, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Styles.php', '2017-12-21 15:46:10'),
(524, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php', '2017-12-21 15:46:10'),
(525, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php', '2017-12-21 15:46:10'),
(526, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/Core.php', '2017-12-21 15:46:10'),
(527, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/DomPDF.php', '2017-12-21 15:46:10'),
(528, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/mPDF.php', '2017-12-21 15:46:10'),
(529, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/tcPDF.php', '2017-12-21 15:46:10'),
(530, 2, 'system/library/export_import/Classes/PHPExcel/locale/bg/config', '2017-12-21 15:46:10'),
(531, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs/config', '2017-12-21 15:46:10'),
(532, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs/functions', '2017-12-21 15:46:10'),
(533, 2, 'system/library/export_import/Classes/PHPExcel/locale/da/config', '2017-12-21 15:46:10'),
(534, 2, 'system/library/export_import/Classes/PHPExcel/locale/da/functions', '2017-12-21 15:46:10'),
(535, 2, 'system/library/export_import/Classes/PHPExcel/locale/de/config', '2017-12-21 15:46:10'),
(536, 2, 'system/library/export_import/Classes/PHPExcel/locale/de/functions', '2017-12-21 15:46:10'),
(537, 2, 'system/library/export_import/Classes/PHPExcel/locale/en/uk', '2017-12-21 15:46:10'),
(538, 2, 'system/library/export_import/Classes/PHPExcel/locale/es/config', '2017-12-21 15:46:10'),
(539, 2, 'system/library/export_import/Classes/PHPExcel/locale/es/functions', '2017-12-21 15:46:10'),
(540, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi/config', '2017-12-21 15:46:10'),
(541, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi/functions', '2017-12-21 15:46:10'),
(542, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr/config', '2017-12-21 15:46:10'),
(543, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr/functions', '2017-12-21 15:46:10'),
(544, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu/config', '2017-12-21 15:46:10'),
(545, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu/functions', '2017-12-21 15:46:10'),
(546, 2, 'system/library/export_import/Classes/PHPExcel/locale/it/config', '2017-12-21 15:46:10'),
(547, 2, 'system/library/export_import/Classes/PHPExcel/locale/it/functions', '2017-12-21 15:46:10'),
(548, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl/config', '2017-12-21 15:46:10'),
(549, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl/functions', '2017-12-21 15:46:10'),
(550, 2, 'system/library/export_import/Classes/PHPExcel/locale/no/config', '2017-12-21 15:46:10'),
(551, 2, 'system/library/export_import/Classes/PHPExcel/locale/no/functions', '2017-12-21 15:46:10'),
(552, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl/config', '2017-12-21 15:46:10'),
(553, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl/functions', '2017-12-21 15:46:10'),
(554, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br', '2017-12-21 15:46:10'),
(555, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/config', '2017-12-21 15:46:10'),
(556, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/functions', '2017-12-21 15:46:10'),
(557, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru/config', '2017-12-21 15:46:10'),
(558, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru/functions', '2017-12-21 15:46:10'),
(559, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv/config', '2017-12-21 15:46:10'),
(560, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv/functions', '2017-12-21 15:46:10'),
(561, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr/config', '2017-12-21 15:46:10'),
(562, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr/functions', '2017-12-21 15:46:10'),
(563, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php', '2017-12-21 15:46:10'),
(564, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php', '2017-12-21 15:46:10'),
(565, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php', '2017-12-21 15:46:10'),
(566, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/Border.php', '2017-12-21 15:46:10'),
(567, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php', '2017-12-21 15:46:10'),
(568, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer', '2017-12-21 15:46:10'),
(569, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php', '2017-12-21 15:46:10'),
(570, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer', '2017-12-21 15:46:10'),
(571, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php', '2017-12-21 15:46:10'),
(572, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Error.php', '2017-12-21 15:46:10'),
(573, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Maths.php', '2017-12-21 15:46:10'),
(574, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/File.php', '2017-12-21 15:46:10'),
(575, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/Root.php', '2017-12-21 15:46:10'),
(576, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php', '2017-12-21 15:46:10'),
(577, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php', '2017-12-21 15:46:10'),
(578, 2, 'system/library/export_import/Classes/PHPExcel/locale/en/uk/config', '2017-12-21 15:46:10'),
(579, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br/config', '2017-12-21 15:46:10'),
(580, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br/functions', '2017-12-21 15:46:10'),
(581, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php', '2017-12-21 15:46:10'),
(582, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE', '2017-12-21 15:46:10'),
(583, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php', '2017-12-21 15:46:10'),
(584, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php', '2017-12-21 15:46:10');

-- --------------------------------------------------------

--
-- Structure de la table `migan_filter`
--

CREATE TABLE `migan_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_filter_description`
--

CREATE TABLE `migan_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_filter_group`
--

CREATE TABLE `migan_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_filter_group_description`
--

CREATE TABLE `migan_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_geo_zone`
--

CREATE TABLE `migan_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_geo_zone`
--

INSERT INTO `migan_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Structure de la table `migan_goodie`
--

CREATE TABLE `migan_goodie` (
  `goodie_id` int(11) NOT NULL,
  `nom_lot` varchar(45) DEFAULT NULL,
  `ref_lot` varchar(45) DEFAULT NULL,
  `points` varchar(45) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT 'visible ou pas',
  `image` varchar(150) DEFAULT NULL,
  `id_couleur` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_taille` int(11) DEFAULT NULL,
  `id_sexe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_goodie`
--

INSERT INTO `migan_goodie` (`goodie_id`, `nom_lot`, `ref_lot`, `points`, `stock`, `status`, `image`, `id_couleur`, `id_type`, `id_taille`, `id_sexe`) VALUES
(2, 'Stylo Migan', 'stylomigan', '30', '20', 1, 'catalog/goodies/stylo.png', 3, 3, 1, 3),
(3, 'Polo Homme Rouge', 'poloh_s_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 2, 1, 3, 2),
(4, 'Polo Homme Rouge', 'poloh_m_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 2, 1, 4, 2),
(5, 'Polo Homme Rouge', 'poloh_l_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 2, 1, 5, 2),
(6, 'Polo Homme Rouge', 'poloh_xl_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 2, 1, 6, 2),
(7, 'Polo Homme Rouge', 'poloh_xxl_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 2, 1, 7, 2),
(8, 'Polo Homme Blanc', 'poloh_s_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 1, 1, 3, 2),
(9, 'Polo Homme Blanc', 'poloh_m_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 1, 1, 4, 2),
(10, 'Polo Homme Blanc', 'poloh_l_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 1, 1, 5, 2),
(11, 'Polo Homme Blanc', 'poloh_xl_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 1, 1, 6, 2),
(12, 'Polo Homme Blanc', 'poloh_xxl_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 1, 1, 7, 2),
(13, 'Polo Homme Bleu', 'poloh_s_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 5, 1, 3, 2),
(14, 'Polo Homme Bleu', 'poloh_m_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 5, 1, 4, 2),
(15, 'Polo Homme Bleu', 'poloh_l_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 5, 1, 5, 2),
(16, 'Polo Homme Bleu', 'poloh_xl_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 5, 1, 6, 2),
(17, 'Polo Homme Bleu', 'poloh_xxl_r', '65', '10', 1, 'catalog/goodies/polo-homme.png', 5, 1, 7, 2),
(18, 'Polo Homme Vert', 'poloh_s_v', '65', '10', 1, 'catalog/goodies/polo-homme.png', 4, 1, 3, 2),
(19, 'Polo Homme Vert', 'poloh_m_v', '65', '10', 1, 'catalog/goodies/polo-homme.png', 4, 1, 4, 2),
(20, 'Polo Homme Vert', 'poloh_l_v', '65', '10', 1, 'catalog/goodies/polo-homme.png', 4, 1, 5, 2),
(21, 'Polo Homme Vert', 'poloh_xl_v', '65', '10', 1, 'catalog/goodies/polo-homme.png', 4, 1, 6, 2),
(22, 'Polo Homme Vert', 'poloh_xxl_v', '65', '10', 1, 'catalog/goodies/polo-homme.png', 4, 1, 7, 2),
(23, 'Polo Homme Noir', 'poloh_s_n', '65', '10', 1, 'catalog/goodies/polo-homme.png', 3, 1, 3, 2),
(24, 'Polo Homme Noir', 'poloh_m_n', '65', '10', 1, 'catalog/goodies/polo-homme.png', 3, 1, 4, 2),
(25, 'Polo Homme Noir', 'poloh_l_n', '65', '10', 1, 'catalog/goodies/polo-homme.png', 3, 1, 5, 2),
(26, 'Polo Homme Noir', 'poloh_xl_n', '65', '10', 1, 'catalog/goodies/polo-homme.png', 3, 1, 6, 2),
(27, 'Polo Homme Noir', 'poloh_xxl_n', '65', '10', 1, 'catalog/goodies/polo-homme.png', 3, 1, 7, 2),
(28, 'Polo Femme Noir', 'polof_s_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 3, 1, 3, 1),
(29, 'Polo Femme Noir', 'polof_m_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 3, 1, 4, 1),
(30, 'Polo Femme Noir', 'polof_l_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 3, 1, 5, 1),
(31, 'Polo Femme Noir', 'polof_xl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 3, 1, 6, 1),
(32, 'Polo Femme Noir', 'polof_xxl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 3, 1, 7, 1),
(33, 'Polo Femme Bleu', 'polof_s_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 5, 1, 3, 1),
(34, 'Polo Femme Bleu', 'polof_m_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 5, 1, 4, 1),
(35, 'Polo Femme Bleu', 'polof_l_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 5, 1, 5, 1),
(36, 'Polo Femme Bleu', 'polof_xl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 5, 1, 6, 1),
(37, 'Polo Femme Bleu', 'polof_xxl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 5, 1, 7, 1),
(38, 'Polo Femme Vert', 'polof_s_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 4, 1, 3, 1),
(39, 'Polo Femme Vert', 'polof_m_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 4, 1, 4, 1),
(40, 'Polo Femme Vert', 'polof_l_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 4, 1, 5, 1),
(41, 'Polo Femme Vert', 'polof_xl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 4, 1, 6, 1),
(42, 'Polo Femme Vert', 'polof_xxl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 4, 1, 7, 1),
(43, 'Polo Femme Rouge', 'polof_s_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 2, 1, 3, 1),
(44, 'Polo Femme Rouge', 'polof_m_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 2, 1, 4, 1),
(45, 'Polo Femme Rouge', 'polof_l_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 2, 1, 5, 1),
(46, 'Polo Femme Rouge', 'polof_xl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 2, 1, 6, 1),
(47, 'Polo Femme Rouge', 'polof_xxl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 2, 1, 7, 1),
(48, 'Polo Femme Blanc', 'polof_s_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 1, 1, 3, 1),
(49, 'Polo Femme Blanc', 'polof_m_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 1, 1, 4, 1),
(50, 'Polo Femme Blanc', 'polof_l_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 1, 1, 5, 1),
(51, 'Polo Femme Blanc', 'polof_xl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 1, 1, 6, 1),
(52, 'Polo Femme Blanc', 'polof_xxl_n', '65', '10', 1, 'catalog/goodies/polo-femme.png', 1, 1, 7, 1),
(55, 'Mug Migan', 'mugmigan', '120', '20', 1, 'catalog/goodies/mug.png', 1, 2, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `migan_goodie_couleur`
--

CREATE TABLE `migan_goodie_couleur` (
  `idcouleur` int(11) NOT NULL,
  `nom_couleur` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_goodie_couleur`
--

INSERT INTO `migan_goodie_couleur` (`idcouleur`, `nom_couleur`) VALUES
(1, 'Blanc'),
(2, 'Rouge'),
(3, 'Noir'),
(4, 'Vert'),
(5, 'Bleu');

-- --------------------------------------------------------

--
-- Structure de la table `migan_goodie_sexe`
--

CREATE TABLE `migan_goodie_sexe` (
  `idsexe` int(11) NOT NULL,
  `nom_sexe` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_goodie_sexe`
--

INSERT INTO `migan_goodie_sexe` (`idsexe`, `nom_sexe`) VALUES
(1, 'Femme'),
(2, 'Homme'),
(3, 'Mixte');

-- --------------------------------------------------------

--
-- Structure de la table `migan_goodie_taille`
--

CREATE TABLE `migan_goodie_taille` (
  `idtaille` int(11) NOT NULL,
  `nom_taille` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_goodie_taille`
--

INSERT INTO `migan_goodie_taille` (`idtaille`, `nom_taille`) VALUES
(1, 'Pas de taille'),
(2, 'xs'),
(3, 's'),
(4, 'm'),
(5, 'l'),
(6, 'xl'),
(7, 'xxl'),
(8, 'xxxl');

-- --------------------------------------------------------

--
-- Structure de la table `migan_goodie_type`
--

CREATE TABLE `migan_goodie_type` (
  `idtype_lot` int(11) NOT NULL,
  `nom_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_goodie_type`
--

INSERT INTO `migan_goodie_type` (`idtype_lot`, `nom_type`) VALUES
(1, 'Polo'),
(2, 'Mug'),
(3, 'Stylo');

-- --------------------------------------------------------

--
-- Structure de la table `migan_information`
--

CREATE TABLE `migan_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_information`
--

INSERT INTO `migan_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `migan_information_description`
--

CREATE TABLE `migan_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_information_description`
--

INSERT INTO `migan_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 'A Propos', '&lt;div class=&quot;row&quot;&gt;\r\n				&lt;div class=&quot;col-sm-12 padding-right&quot;&gt;\r\n					&lt;div class=&quot;features_items&quot; style=&quot;    margin-bottom: 15px;&quot;&gt;&lt;!--features_items--&gt;\r\n						&lt;h2 class=&quot;title text-center&quot; style=&quot;margin-top: 20px;&quot;&gt;A propos&lt;/h2&gt;\r\n						\r\n						&lt;div class=&quot; col-sm-offset-1 col-sm-10 partenaires &quot;&gt;\r\n							&lt;div class=&quot;style&quot; style=&quot;padding: 10px&quot;&gt;\r\n							\r\n								\r\n								&lt;h2&gt;Panier&lt;/h2&gt;\r\n								&lt;p&gt;Sur le site, lors de vos achats vous avez la possibilité d\'enregistrer 5 paniers en les nommant.&lt;/p&gt;\r\n								&lt;h2&gt;Les Commandes&lt;/h2&gt;\r\n								&lt;p&gt;\r\n									Suite à votre première commande, Migan vous propose 3 possibilités pour utiliser une ancienne commande afin de vous facilité vos achats. Vous pourrez ainsi dans votre espace commande ou à accueil de votre compte ainsi avec bouton flottant sur la droite de l\'écran réutiliser une commande déjà passer.\r\n									&lt;/p&gt;&lt;ul style=&quot;margin-left: 30px;&quot;&gt;\r\n										&lt;li&gt;\r\n											&lt;h4&gt;Réutiliser Commande&lt;/h4&gt;\r\n											&lt;div&gt;\r\n												Cette option vous permet de crée à nouveau un panier à partir d\'une ancienne commande sélectionné et y pouvoir ajouter d\'autre produit.\r\n											&lt;/div&gt;\r\n										&lt;/li&gt;\r\n										&lt;li&gt;\r\n											&lt;h4&gt;\r\n												Commande express\r\n											&lt;/h4&gt;\r\n											&lt;div&gt;\r\n												Utiliser cette fonction pour recommander une ancienne commande sélectionné sans rien y rajouté.\r\n											&lt;/div&gt;\r\n										&lt;/li&gt;\r\n										&lt;li&gt;\r\n											&lt;h4&gt;Commande express flottante&lt;/h4&gt;\r\n											&lt;div&gt;\r\n												Cette fontion utilise le même principe que la précédente mais sa particularité est que ce soit toujours la dernière commande faite qui soit utilisé.\r\n											&lt;/div&gt;\r\n										&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n								&lt;p&gt;&lt;/p&gt;\r\n\r\n								&lt;h2&gt;Adresse de livraison&lt;/h2&gt;\r\n								&lt;p&gt;\r\n									Par défaut votre adresse de livraison ainsi que celle de facturation sont les mêmes.&lt;br&gt;\r\n									Vous pouvez rajouter jusqu\'à 5 autres adresses.&lt;br&gt;\r\n									Lors de votre commande ou validation, vous pouvez modifier les adresses de livraison ou facturation avec celle qui on été renseigné.&lt;br&gt;\r\n									\r\n\r\n								&lt;/p&gt;\r\n								&lt;h2&gt;Livraison&lt;/h2&gt;\r\n								&lt;p&gt;\r\n									\r\n									A la validation de votre commande vous indiqué l\'heure et le jour de la livraison souhaitée. La livraison se fera sur tranche horaire selon votre demande&lt;br&gt;\r\n									A partir de 85€, la livraison est gratuite&lt;br&gt;\r\n\r\n								&lt;/p&gt;\r\n								&lt;h2&gt;Les bonus&lt;/h2&gt;\r\n								&lt;p&gt;\r\n									\r\n									&lt;/p&gt;&lt;ul style=&quot;margin-left: 30px;&quot;&gt;\r\n										&lt;li&gt;\r\n											&lt;h4&gt;Bon de réduction&lt;/h4&gt;\r\n											&lt;div&gt;\r\n												Ce sont des codes qui vous sont transmis par mail ou afficher sur divers support (page du site, support papier...) que vous entrer dans le champ code promo lors de la validation de la commande, selon les dates de la réduction.&lt;br&gt;\r\n												Chaque bon de réduction utilisé est affiché dans votre espace compte vos bon achat/avoir. Autant de fois que bon soit valide. \r\n											&lt;/div&gt;\r\n										&lt;/li&gt;\r\n										&lt;li&gt;\r\n											&lt;h4&gt;\r\n												Avoir\r\n											&lt;/h4&gt;\r\n											&lt;div&gt;\r\n												C\'est une réduction spécifique attribué lors d\'un changement de statut, date anniversaire, geste commercial...) visible dans votre espace compte vos bon achat/avoir...&lt;br&gt;\r\n												L\'avoir ne peut être utilisé qu\'une fois.&lt;br&gt;\r\n												Une fois attribuée elle s\'active en cliquant sur le bouton utiliser. Il peut être annulé dans la partie commande tant que la commande n\'a pas été validée.&lt;br&gt;\r\n												Pour utiliser pleinement d\'un avoir, le montant de la commande doit être supérieur ou égale à 50€.\r\n											&lt;/div&gt;\r\n										&lt;/li&gt;\r\n										\r\n									&lt;/ul&gt;\r\n								&lt;p&gt;&lt;/p&gt;\r\n								&lt;h2&gt;Les statuts de compte&lt;/h2&gt;\r\n								&lt;p&gt;\r\n									Migan dispose de 3 types de compte: standard, ivory, gold. Tout le monde débute avec un compte standard, au fil des commandes verra sont statut de compte évolué.\r\n									&lt;br&gt;1€ = 1 point\r\n									&lt;/p&gt;&lt;h4&gt;Les particuliers&lt;/h4&gt;\r\n									&lt;ul style=&quot;margin-left: 30px;&quot;&gt;\r\n										&lt;li&gt;\r\n											&lt;h4&gt;Stantard&lt;/h4&gt;\r\n											&lt;div&gt;\r\n												\r\n											&lt;/div&gt;\r\n										&lt;/li&gt;\r\n										&lt;li&gt;\r\n											&lt;h4&gt;\r\n												Ivory\r\n											&lt;/h4&gt;\r\n											&lt;div&gt;\r\n												A partir de 500 points&lt;br&gt;Bonus : Avoir de 20€\r\n										&lt;/div&gt;&lt;/li&gt;\r\n										&lt;li&gt;\r\n											&lt;h4&gt;\r\n												Gold\r\n											&lt;/h4&gt;\r\n											&lt;div&gt;\r\n												A partir de 1500 points&lt;br&gt;Bonus : Avoir de 20€ + livraison gratuite\r\n											&lt;/div&gt;\r\n										&lt;/li&gt;\r\n										&lt;li&gt;\r\n											\r\n											&lt;div&gt;\r\n												Puis tous les 1000 points&lt;br&gt;Bonus : Avoir de 20€\r\n											&lt;/div&gt;\r\n										&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n									&lt;h4&gt;Les professionnels&lt;/h4&gt;\r\n									Des offres personnalisées vous seront proposées\r\n									&lt;p&gt;&lt;/p&gt;\r\n								&lt;h2&gt;&lt;/h2&gt;\r\n								&lt;p&gt;&lt;/p&gt;\r\n\r\n							\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;&lt;!--features_items--&gt;\r\n					\r\n					\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;', 'About Us', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(5, 2, 'Conditions Générales de vente &quot;MIGAN&quot;', '&lt;div class=&quot;row&quot;&gt;  	\r\n	    		&lt;div class=&quot;col-sm-12 style contenu-note&quot;&gt;\r\n	    				&lt;h2 style=&quot;text-align: center;    color: #f27704;&quot;&gt;&lt;br&gt;&lt;/h2&gt;&lt;h2&gt;\r\n&lt;/h2&gt;&lt;h3&gt;Article 1 - Champ d\'application&lt;/h3&gt;\r\n&lt;p&gt;Les présentes Conditions Générales de Vente s\'appliquent, sans restriction ni réserve à l\'ensemble des ventes conclues par la SASU IZILE auprès d\'acheteurs professionnels ou non, désirant acquérir les produits proposés à la vente par le Vendeur sur son site Internet www.migan.fr, à savoir :&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;&lt;span&gt;-&lt;/span&gt; les produits et services offerts sont ceux exposés sur le site de www.migan.fr.&lt;/li&gt;&lt;/ul&gt;\r\n &lt;p&gt;Ces Conditions Générales de Vente sont accessibles à tout moment sur ce site Internet. Elles s’appliquent à l\'exclusion de toutes autres conditions, et prévaudront sur toute autre version, tout autre document contradictoire ou sur toutes conditions d’achat.&lt;/p&gt;\r\n&lt;p&gt;Sauf preuve contraire, les données enregistrées par MIGAN constituent la preuve de l\'ensemble des transactions.&lt;/p&gt;\r\n&lt;p&gt;Les produits présentés sur le présent site Internet sont proposés à la livraison pour la Martinique.\r\nLes modifications de ces Conditions Générales de Vente sont opposables aux utilisateurs du site à compter de leur mise en ligne et ne peuvent s\'appliquer aux transactions conclues antérieurement.&lt;/p&gt;\r\n&lt;p&gt;La validation de la commande par l\'acheteur vaut acceptation sans réserve des présentes Conditions Générales de Vente.&lt;/p&gt;\r\n \r\n&lt;h3&gt;Article 2 - Commande&lt;/h3&gt;\r\n&lt;p&gt;Il appartient à l’Acheteur de sélectionner sur le site les produits qu\'il désire commander, selon les modalités suivantes :&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	remplir une fiche d’identification sur laquelle il indiquera toutes les coordonnées demandées ou donner son code identifiant s’il en a un ;&lt;/li&gt;\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	remplir le bon de commande en ligne en donnant toutes les références des produits choisis ;&lt;/li&gt;\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	choisir le lieu et la date de livraison ;&lt;/li&gt;\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	valider sa commande après l’avoir vérifiée ;&lt;/li&gt;\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	valider son règlement par l’un des modes de paiement proposé par la plateforme (carte bancaire (paiement sécurisé), chèque, espèces…), selon les modalités spécifiques pour chacun.&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;Toute validation de commande vaut acceptation irrévocable des termes de la commande et notamment des prix et description des produits disponibles à la vente.&lt;/p&gt;\r\n&lt;p&gt;L’Acheteur recevra dans les 24 heures une confirmation des informations de la commande par mail.\r\nLa société  IZILE se réserve le droit de refuser une commande en cas de litige avec l’Acheteur (ex : non réception d’une commande antérieure), de défaut de paiement même partiel d’une commande antérieure ou de refus d’autorisation bancaire lors du paiement en ligne.&lt;/p&gt;\r\n\r\n&lt;h4&gt;Disponibilité&lt;/h4&gt;\r\n&lt;p&gt;A défaut de disponibilité des marchandises commandées, la société   IZILE s’engage à en informer au plus vite l’Acheteur par téléphone ou par email . Elle effectuera le remboursement du ou des produits non livrés. L’Acheteur pourra également exercer son droit de rétractation.\r\n&lt;/p&gt;&lt;p&gt;Pour les produits vendus au poids, il sera mis autant de pièces que nécessaire pour arriver au poids commandé. Il est convenu que les articles ne devront pas dépasser le poids commandé. L’Acheteur sera facturé du poids exactement livré sauf en cas de dépassement du poids commandé, c’est la société   IZILE qui prendra à sa charge le surplus.\r\n \r\nAucune commande d\'un montant inférieur à 20€ ne pourra être acceptée.\r\n&lt;/p&gt;&lt;h3&gt;Article 3 - Tarifs&lt;/h3&gt;\r\n&lt;p&gt;Les produits sont fournis aux tarifs en vigueur figurant sur le site, lors de l\'enregistrement de la commande par le Vendeur. Les prix sont exprimés en Euros et présentés TTC.\r\n Ils comprennent les frais de traitement mais pas les frais d\'expédition, de transport et de livraison, qui sont facturés en supplément.\r\n&lt;/p&gt;&lt;h3&gt;Article 4 - Conditions de paiement&lt;/h3&gt;\r\n&lt;p&gt;Les commandes sont enregistrées avec le poids &quot;référence&quot; indiqué sur la fiche produit. Au moment de la préparation de votre colis nous ajustons le poids au plus près de ce que vous avez demandé.\r\nDeux exemples peuvent cependant se présenter :&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n&lt;span&gt;•&lt;/span&gt;	Cas n°1 : Le poids des produits ajoutés dans votre colis est supérieur au poids &quot;référence&quot; indiqué sur votre Bon de Commande. Dans ce cas, nous ne vous demandons pas d\'argent, et vous recevrez un colis légèrement plus lourd qu\'initialement validé lors de votre commande.&lt;/li&gt;\r\n&lt;li&gt;&lt;span&gt;•&lt;/span&gt;	Cas n°2 : Le poids des produits ajoutés dans votre colis est inférieur au poids calculé lors de la commande. Dans ce cas, nous recalculons au plus juste le coût de la marchandise contenue dans le colis. Si le montant total de votre commande en inférieur au montant livré nous vous le remboursons en points de fidélité, dans la limite des 5% ou pour toute somme inférieure à 5€. Au-delà, le remboursement total de la différence se fera sur votre compte bancaire. Par contre si le montant livré est supérieur, cette somme reste à notre charge.&lt;/li&gt;&lt;/ul&gt;\r\n&lt;h3&gt;Article 5 - Livraison&lt;/h3&gt;\r\n&lt;p&gt;Les produits acquis par l\'Acheteur seront livrés en Martinique à une date et à l\'adresse indiquées lors de sa commande sur le site Internet.&lt;/p&gt;\r\n\r\n&lt;p&gt;Le Vendeur s\'engage à livrer les produits commandés par l\'Acheteur dans les délais ci-dessus précisés.&lt;/p&gt;\r\n\r\n \r\n&lt;p&gt;Toutefois, si les produits commandés n\'ont pas été livrés dans un délai de 7 jours après la date indicative de livraison, pour toute autre cause que la force majeure, la vente pourra être résolue à la demande écrite de l\'Acheteur ou du Vendeur. Les sommes versées par l’Acheteur lui seront alors restituées sans délai, et au plus tard dans les trente jours suivant la date à laquelle ce droit a été exercé. Au-delà, la somme due est, de plein droit, productive d’intérêts au taux légal en vigueur.&lt;/p&gt;\r\n \r\n&lt;p&gt;Les livraisons sont assurées par un collaborateur. Si le retard de livraison est imputable au transport et, après avoir pris connaissance de la responsabilité de celui-ci auprès de la société  IZILE, l’Acheteur pourra formuler une réclamation motivée auprès de notre société, dans un délai maximum de 72 heures, par lettre recommandée avec avis de réception.&lt;/p&gt;\r\n \r\n&lt;p&gt;Suite au SMS ou mail de confirmation d’expédition, l’Acheteur a la possibilité de prendre contact avec la société   IZILE  afin de convenir d’un changement d’horaire ou de lieu de livraison dans le respect de la chaîne du froid et la commune de destination. En l’absence de telles instructions et plus généralement pour toute impossibilité de livrer les marchandises à destination pour des causes indépendantes de la volonté du Vendeur, la livraison sera considérée comme effectuée par un simple avis de mise à disposition. Les marchandises seront alors stockées dans nos locaux aux risques et périls de l’Acheteur et disponibles à l’enlèvement pendant 24 heures.&lt;/p&gt;\r\n \r\n&lt;p&gt;L\'Acheteur est tenu de vérifier l\'état des produits livrés. Il dispose d\'un délai de 48 heures à compter de la livraison pour former par écrit (courrier postal, courrier électronique, télécopie) toutes réserves ou réclamations pour non-conformité ou vice apparent des produits livrés, avec tous les justificatifs y afférents. Passé ce délai et à défaut d\'avoir respecté ces formalités, les produits seront réputés conformes et exempts de tout vice apparent et aucune réclamation ne pourra être valablement acceptée par le Vendeur.&lt;/p&gt;\r\n&lt;p&gt;Le Vendeur remplacera dans les plus brefs délais et à ses frais, les produits livrés dont les vices apparents ou les défauts de conformité auront été dûment prouvés par l\'Acheteur.&lt;/p&gt;\r\n \r\n&lt;h3&gt;Article 6 - Transfert de propriété / Transfert des risques&lt;/h3&gt;\r\n&lt;p&gt;Le transfert de propriété des produits du Vendeur, au profit de l\'Acheteur, ne sera réalisé qu\'après complet paiement du prix par ce dernier, et ce quelle que soit la date de livraison desdits produits.&lt;/p&gt;\r\n&lt;p&gt; En revanche, le transfert des risques de perte et de détérioration des produits du Vendeur sera réalisé dès livraison et réception desdits produits par l\'Acheteur.&lt;/p&gt;\r\n&lt;h3&gt;Article 7 - Droit de rétractation&lt;/h3&gt;\r\n&lt;p&gt;L\'Acheteur dispose, conformément aux dispositions de l\'article L 121-20 du Code de la Consommation, d\'un délai de rétractation de 7 jours ouvrables à compter de la livraison des produits pour retourner ceux-ci au Vendeur à fin d\'échange ou de remboursement, à condition que les produits soient retournés dans leur emballage d\'origine et en parfait état.&lt;/p&gt;\r\n&lt;p&gt;Ne sont pas repris :&lt;/p&gt;&lt;ul&gt;&lt;li&gt;\r\n-	les articles endommagés ou incomplets ;&lt;/li&gt;\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	les produits frais dont la Date Limite de Consommation (DLC) est inférieure à 20 jours&lt;/li&gt;\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	les produits achetés dans le cas d’actions de promotion.&lt;/li&gt;\r\n\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	Les frais de retour seront à la charge exclusive de l\'Acheteur.&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;L\'échange (sous réserve de disponibilité) ou le remboursement sera effectué dans un délai de 30 jours à compter de la réception, par le Vendeur, des articles retournés par l\'Acheteur.&lt;/p&gt;\r\n&lt;h3&gt;Article 8 - Responsabilité du vendeur / Garantie&lt;/h3&gt;\r\n&lt;p&gt;Les produits fournis par le Vendeur bénéficient, conformément aux dispositions légales,&lt;/p&gt;&lt;ul&gt;&lt;li&gt;\r\n-	de la garantie légale de conformité,&lt;/li&gt;\r\n&lt;li&gt;&lt;span&gt;-&lt;/span&gt;	de la garantie légale contre les vices cachés rendant les produits impropres à la consommation,&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;Toute garantie est exclue en cas de mauvaise utilisation, négligence ou défaut de conservation de la part de l\'Acheteur, d\'accident ou de force majeure et la garantie du Vendeur est limitée au remplacement ou au remboursement des produits non conformes ou affectés d\'un vice.&lt;/p&gt;\r\n&lt;p&gt;Afin de faire valoir ses droits, l\'Acheteur devra, sous peine de déchéance de toute action s\'y rapportant, informer le Vendeur, par écrit, de l\'existence des vices dans un délai maximum de 60 jours à compter de leur découverte sauf pour les produits dont la DLC est inférieure à 20 jours et pour lesquels l’Acheteur dispose d’un délai de 24 heures pour transmettre sa réclamation. Au-delà, la société  IZILE ne pourra accepter de réclamation car elle ne peut exercer de contrôle sur la qualité du lieu de stockage des produits.&lt;/p&gt;\r\n \r\n&lt;p&gt;Les photographies, textes et illustrations accompagnant les produits sur le site Internet n\'ont pas de valeur contractuelle et ne sauraient donc engager la responsabilité du Vendeur.&lt;/p&gt;\r\n \r\n&lt;p&gt;L\'Acheteur est seul responsable du choix des produits, de leur conservation et de leur utilisation.&lt;/p&gt;\r\n&lt;p&gt;Le Vendeur ne sera pas considéré comme responsable ni défaillant pour tout retard ou inexécution consécutif à la survenance d\'un cas de force majeure habituellement reconnu par la jurisprudence française.&lt;/p&gt;\r\n&lt;h3&gt;Article 9 - Informatiques et Libertés&lt;/h3&gt;\r\n&lt;p&gt;En application de la loi 78-17 du 6 janvier 1978, il est rappelé que les données nominatives qui sont demandés à l\'Acheteur sont nécessaires au traitement de sa commande et à l\'établissement des factures, notamment.&lt;/p&gt;\r\n \r\n&lt;p&gt;Le traitement des informations communiquées par l\'intermédiaire du site du Vendeur a fait l\'objet a fait l\'objet d\'une déclaration auprès de la CNIL.&lt;/p&gt;\r\n&lt;p&gt;L\'Acheteur dispose, conformément aux réglementations nationales et européennes en vigueur d\'un droit d\'accès permanent, de modification, de rectification et d\'opposition s\'agissant des informations le concernant.&lt;/p&gt;\r\n \r\n&lt;h3&gt;Article 10 - Propriété intellectuelle&lt;/h3&gt;\r\n&lt;p&gt;Le contenu du site est la propriété du Vendeur et de ses partenaires et est protégé par les lois françaises et internationales relatives à la propriété intellectuelle.&lt;/p&gt;\r\n \r\n&lt;p&gt;Toute reproduction totale ou partielle de ce contenu est strictement interdite et est susceptible de constituer un délit de contrefaçon.&lt;/p&gt;\r\n&lt;h3&gt;Article 11 - Droit applicable / Langue&lt;/h3&gt;\r\n&lt;p&gt;De convention expresse entre les parties, le présent contrat est régi et soumis au droit français.\r\n Il est rédigé en langue française. Dans le cas où il serait traduit en une ou plusieurs langues, seul le texte français ferait foi en cas de litige.&lt;/p&gt;\r\n&lt;h3&gt;Article 12 - Litiges&lt;/h3&gt;\r\n&lt;p&gt;Tous les litiges auxquels le présent contrat pourrait donner lieu, concernant tant sa validité, son interprétation, son exécution, sa résiliation, leurs conséquences et leurs suites seront soumis aux tribunaux compétents dans les conditions de droit commun.&lt;/p&gt; &lt;p&gt;En cas de litige avec des professionnels et/ou commerçants les tribunaux de FORT DE FRANCE seront compétents.&lt;/p&gt;\r\n&lt;h3&gt;Article 13 - Acceptation de l\'acheteur&lt;/h3&gt;\r\n&lt;p&gt;Le fait pour une personne physique (ou morale), de commander sur le site Internet du Vendeur emporte adhésion et acceptation pleine et entière des présentes Conditions Générales de Vente, ce qui est expressément reconnu par l\'Acheteur, qui renonce, notamment, à se prévaloir de tout document contradictoire, qui serait inopposable au Vendeur.&lt;/p&gt;\r\n\r\n\r\n\r\n	    			\r\n    			&lt;/div&gt;    			\r\n	    	&lt;/div&gt;  \r\n', 'Conditions Générales', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `migan_information_to_layout`
--

CREATE TABLE `migan_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_information_to_layout`
--

INSERT INTO `migan_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(5, 0, 0),
(4, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_information_to_store`
--

CREATE TABLE `migan_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_information_to_store`
--

INSERT INTO `migan_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_language`
--

CREATE TABLE `migan_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_language`
--

INSERT INTO `migan_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Français', 'fr-FR', 'utf8', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `migan_layout`
--

CREATE TABLE `migan_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_layout`
--

INSERT INTO `migan_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Structure de la table `migan_layout_module`
--

CREATE TABLE `migan_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_layout_module`
--

INSERT INTO `migan_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(67, 1, 'carousel.29', 'content_top', 3),
(66, 1, 'slideshow.27', 'content_top', 1),
(65, 1, 'featured.28', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2);

-- --------------------------------------------------------

--
-- Structure de la table `migan_layout_route`
--

CREATE TABLE `migan_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_layout_route`
--

INSERT INTO `migan_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(42, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Structure de la table `migan_length_class`
--

CREATE TABLE `migan_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_length_class`
--

INSERT INTO `migan_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Structure de la table `migan_length_class_description`
--

CREATE TABLE `migan_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_length_class_description`
--

INSERT INTO `migan_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Structure de la table `migan_location`
--

CREATE TABLE `migan_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_manufacturer`
--

CREATE TABLE `migan_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_manufacturer`
--

INSERT INTO `migan_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_manufacturer_to_store`
--

CREATE TABLE `migan_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_manufacturer_to_store`
--

INSERT INTO `migan_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_marketing`
--

CREATE TABLE `migan_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_modification`
--

CREATE TABLE `migan_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_modification`
--

INSERT INTO `migan_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(2, 2, 'Export/Import Tool (V3.19) for OpenCart 3.x', 'Export/Import Tool (V3.19) for OpenCart 3.x', 'mhccorp.com', '3.x-3.19', 'https://www.mhccorp.com', '<modification>\n	<name>Export/Import Tool (V3.19) for OpenCart 3.x</name>\n	<code>Export/Import Tool (V3.19) for OpenCart 3.x</code>\n	<version>3.x-3.19</version>\n	<author>mhccorp.com</author>\n	<link>https://www.mhccorp.com</link>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation>\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/upload\')) {]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($this->user->hasPermission(\'access\', \'extension/export_import\')) {\n				$maintenance[] = array(\n					\'name\'	   => $this->language->get(\'text_export_import\'),\n					\'href\'     => $this->url->link(\'extension/export_import\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n					\'children\' => array()		\n				);\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n', 1, '2017-12-21 15:46:10');

-- --------------------------------------------------------

--
-- Structure de la table `migan_module`
--

CREATE TABLE `migan_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_module`
--

INSERT INTO `migan_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Structure de la table `migan_option`
--

CREATE TABLE `migan_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_option`
--

INSERT INTO `migan_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Structure de la table `migan_option_description`
--

CREATE TABLE `migan_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_option_description`
--

INSERT INTO `migan_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Structure de la table `migan_option_value`
--

CREATE TABLE `migan_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_option_value`
--

INSERT INTO `migan_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Structure de la table `migan_option_value_description`
--

CREATE TABLE `migan_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_option_value_description`
--

INSERT INTO `migan_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Structure de la table `migan_order`
--

CREATE TABLE `migan_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_order`
--

INSERT INTO `migan_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2017-00', 0, 'MIGAN', 'http://192.168.1.58\n/MIGAN/', 73, 2, 'Steffy', 'FORTUNE', 'steffy.Fortune@izile.fr', '0696753710', '', '{\"9\":\"Test\",\"4\":\"\",\"2\":\"\",\"3\":\"\"}', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement gratuit', 'free_checkout', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', 'Je veux qu\'elle arrive tôt !', '0.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-03 15:07:52', '2018-01-03 15:07:52'),
(2, 0, 'INV-2017-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 73, 2, 'Steffy', 'FORTUNE', 'steffy.Fortune@izile.fr', '0696753710', '', '{\"9\":\"Test\",\"4\":\"\",\"2\":\"\",\"3\":\"\"}', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement gratuit', 'free_checkout', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', 'Je veux qu\'elle arrive tôt !', '0.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-03 15:11:29', '2018-01-03 15:12:02'),
(3, 0, 'INV-2017-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 73, 2, 'Steffy', 'FORTUNE', 'steffy.Fortune@izile.fr', '0696753710', '', '{\"9\":\"Test\",\"4\":\"\",\"2\":\"\",\"3\":\"\"}', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement gratuit', 'free_checkout', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', '', '0.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-03 15:13:25', '2018-01-03 15:13:29'),
(10, 0, 'INV-2018-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 73, 2, 'Steffy', 'FORTUNE', 'steffy.Fortune@izile.fr', '0696753710', '', '{\"9\":\"Test\",\"4\":\"\",\"2\":\"\",\"3\":\"\"}', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement gratuit', 'free_checkout', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', '', '0.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-03 16:07:10', '2018-01-03 16:07:14'),
(16, 0, 'INV-2018-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 85, 2, 'Lovely', 'Regna', 'regna.lovely@gmail.com', '0596080129', '', '{\"9\":\"InTech\",\"4\":\"InTech\",\"2\":\"2907081001030501\",\"3\":\"\"}', 'Lovely', 'Regna', '', 'Résidence Les Olympiades', '', 'Sainte-luce', '97228', 'Martinique', 134, 'Sainte-Luce', 4270, '', '[]', 'Paiement à la livraison', 'cod', 'Lovely', 'Regna', '', 'Résidence Les Olympiades', '', 'Sainte-luce', '97228', 'Martinique', 134, 'Sainte-Luce', 4270, '', '[]', 'Taux d\'expédition plat', 'flat.flat', 'Bonjour à tous !!!!!!!!!! :D', '65.4700', 1, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.49', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-05 10:27:11', '2018-01-05 10:27:21'),
(15, 0, 'INV-2018-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 84, 1, 'Steffy', 'FORTUNE', 'steffy.fortune@izile.fr', '0696753710', '', '{\"9\":\"\",\"4\":\"\",\"2\":\"\",\"3\":\"1992-07-18\"}', 'Steffy', 'FORTUNE', '', 'aDD1', '', 'vILLE', '', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement à la livraison', 'cod', 'Steffy', 'FORTUNE', '', 'aDD1', '', 'vILLE', '', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', '', '98.0000', 2, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-05 09:35:16', '2018-01-05 11:02:57'),
(13, 0, 'INV-2018-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 73, 2, 'Steffy', 'FORTUNE', 'steffy.Fortune@izile.fr', '0696753710', '', '{\"9\":\"Test\",\"4\":\"\",\"2\":\"\",\"3\":\"\"}', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement à la livraison', 'cod', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', '', '74.5000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.49', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-04 14:48:13', '2018-01-04 14:48:13'),
(14, 0, 'INV-2018-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 73, 2, 'Steffy', 'FORTUNE', 'steffy.Fortune@izile.fr', '0696753710', '', '{\"9\":\"Test\",\"4\":\"\",\"2\":\"\",\"3\":\"\"}', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement à la livraison', 'cod', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', '', '74.5000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.49', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-04 15:40:40', '2018-01-04 15:40:40'),
(9, 0, 'INV-2017-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 73, 2, 'Steffy', 'FORTUNE', 'steffy.Fortune@izile.fr', '0696753710', '', '{\"9\":\"Test\",\"4\":\"\",\"2\":\"\",\"3\":\"\"}', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement gratuit', 'free_checkout', 'Steffy', 'FORTUNE', '', 'Adresse1', 'Adresse2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', '', '0.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-03 15:50:59', '2018-01-03 15:51:03'),
(17, 0, 'INV-2018-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 85, 2, 'Lovely', 'Regna', 'regna.lovely@gmail.com', '0596080129', '', '{\"9\":\"InTech\",\"4\":\"InTech\",\"2\":\"2907081001030501\",\"3\":\"\"}', 'Lovely', 'Regna', '', 'Résidence Les Olympiades', '', 'Sainte-luce', '97228', 'Martinique', 134, 'Sainte-Luce', 4270, '', '[]', 'Paiement à la livraison', 'cod', 'Lovely', 'Regna', '', 'Résidence Les Olympiades', '', 'Sainte-luce', '97228', 'Martinique', 134, 'Sainte-Luce', 4270, '', '[]', 'Taux d\'expédition plat', 'flat.flat', '', '31.1600', 1, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.49', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-05 10:33:52', '2018-01-05 10:33:59'),
(18, 0, 'INV-2018-00', 0, 'MIGAN', 'http://192.168.1.58/MIGAN/', 87, 4, 'Prénom', 'Nom', 'steffy.fortune@izile.fr', '0696753710', '', '{\"9\":\"SOGECO\",\"4\":\"Carrefour DILLON\",\"2\":\"797878787878\",\"3\":\"\"}', 'Prénom', 'Nom', 'SOGECO', 'Carrefour Dillon', '', 'Fdf', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Paiement à la livraison', 'cod', 'Prénom', 'Nom', 'Carrefour Dillon', 'Add1', 'Add2', 'Ville', '97200', 'Martinique', 134, 'Fort-de-France', 4244, '', '[]', 'Taux d\'expédition plat', 'flat.flat', '', '29.0000', 5, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '192.168.1.58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-05 10:50:41', '2018-01-05 10:50:46');

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_goodie`
--

CREATE TABLE `migan_order_goodie` (
  `goodie_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `migan_order_goodie`
--

INSERT INTO `migan_order_goodie` (`goodie_id`, `order_id`) VALUES
(55, 16);

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_history`
--

CREATE TABLE `migan_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_order_history`
--

INSERT INTO `migan_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 2, 0, 0, '', '2018-01-03 15:12:02'),
(2, 3, 0, 0, '', '2018-01-03 15:13:29'),
(22, 15, 0, 0, '', '2018-01-05 10:21:22'),
(21, 15, 0, 0, '', '2018-01-05 10:18:04'),
(8, 9, 0, 0, '', '2018-01-03 15:51:03'),
(14, 10, 0, 0, '', '2018-01-03 16:07:14'),
(20, 15, 1, 0, '', '2018-01-05 09:35:25'),
(23, 15, 7, 0, '', '2018-01-05 10:21:27'),
(24, 15, 0, 0, '', '2018-01-05 10:26:45'),
(25, 15, 1, 0, '', '2018-01-05 10:26:51'),
(26, 16, 1, 0, '', '2018-01-05 10:27:21'),
(27, 15, 0, 0, '', '2018-01-05 10:30:52'),
(28, 15, 5, 0, '', '2018-01-05 10:30:56'),
(29, 17, 1, 0, '', '2018-01-05 10:33:59'),
(30, 18, 5, 0, '', '2018-01-05 10:50:46'),
(31, 15, 2, 1, '', '2018-01-05 11:02:57');

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_option`
--

CREATE TABLE `migan_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_product`
--

CREATE TABLE `migan_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_order_product`
--

INSERT INTO `migan_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 199, 'Crême de gingembre', 'Local', 1, '4.8000', '4.8000', '0.0000', 0),
(2, 2, 199, 'Crême de gingembre', 'Local', 1, '4.8000', '4.8000', '0.0000', 0),
(3, 3, 199, 'Crême de gingembre', 'Local', 1, '4.8000', '4.8000', '0.0000', 0),
(25, 13, 191, 'Confit d\'oignon gingembre &amp; piment fort', 'Local', 1, '2.8000', '2.8000', '0.0000', 0),
(20, 10, 234, 'Dorade entière', 'Local', 1, '10.0000', '10.0000', '0.0000', 0),
(35, 16, 199, 'Crême de gingembre', 'Local', 1, '4.8000', '4.8000', '0.0000', 0),
(40, 15, 137, 'Ailes de poulet', 'Local', 1, '93.0000', '93.0000', '0.0000', 0),
(23, 13, 190, 'Confit d\'oignon gingembre &amp; piment doux', 'Local', 1, '4.4000', '4.4000', '0.0000', 0),
(24, 13, 194, 'Confit d\'oignon gingembre &amp; piment doux', 'Local', 1, '12.5000', '12.5000', '0.0000', 0),
(26, 13, 99, 'Assortiment de porc à  griller assaisonné', 'Local', 1, '49.8000', '49.8000', '0.0000', 0),
(27, 14, 190, 'Confit d\'oignon gingembre &amp; piment doux', 'Local', 1, '4.4000', '4.4000', '0.0000', 0),
(28, 14, 194, 'Confit d\'oignon gingembre &amp; piment doux', 'Local', 1, '12.5000', '12.5000', '0.0000', 0),
(19, 9, 106, 'Cuisses de Lapin x 2', 'Local', 1, '8.3800', '8.3800', '0.0000', 0),
(29, 14, 191, 'Confit d\'oignon gingembre &amp; piment fort', 'Local', 1, '2.8000', '2.8000', '0.0000', 0),
(30, 14, 99, 'Assortiment de porc à  griller assaisonné', 'Local', 1, '49.8000', '49.8000', '0.0000', 0),
(36, 16, 204, 'Crême de gingembre', 'Local', 1, '16.6700', '16.6700', '0.0000', 0),
(37, 16, 223, 'Punch coco', 'Local', 1, '15.0000', '15.0000', '0.0000', 0),
(38, 16, 224, 'Punch Atoumo', 'Local', 1, '12.0000', '12.0000', '0.0000', 0),
(39, 16, 227, 'Punch Anis', 'Local', 1, '12.0000', '12.0000', '0.0000', 0),
(41, 17, 148, 'Ailes de Dinde x 2', 'Local', 1, '9.1400', '9.1400', '0.0000', 0),
(42, 17, 151, 'Ailerons de Dinde x 4', 'Local', 1, '6.5000', '6.5000', '0.0000', 0),
(43, 17, 169, 'Pâté de campagne local', 'Local', 1, '2.5200', '2.5200', '0.0000', 0),
(44, 17, 231, 'Sirop curcuma', 'Local', 1, '8.0000', '8.0000', '0.0000', 0),
(45, 18, 236, 'Langouste Vivante', 'Local', 1, '24.0000', '24.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_recurring`
--

CREATE TABLE `migan_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_recurring_transaction`
--

CREATE TABLE `migan_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_shipment`
--

CREATE TABLE `migan_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_status`
--

CREATE TABLE `migan_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_order_status`
--

INSERT INTO `migan_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_total`
--

CREATE TABLE `migan_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_order_total`
--

INSERT INTO `migan_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Total', '4.8000', 1),
(2, 1, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(3, 1, 'credit', 'Crédit de magasin', '-9.8000', 7),
(4, 1, 'total', 'Total', '0.0000', 9),
(5, 2, 'sub_total', 'Total', '4.8000', 1),
(6, 2, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(7, 2, 'credit', 'Crédit de magasin', '-9.8000', 7),
(8, 2, 'total', 'Total', '0.0000', 9),
(9, 3, 'sub_total', 'Total', '4.8000', 1),
(10, 3, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(11, 3, 'credit', 'Crédit de magasin', '-9.8000', 7),
(12, 3, 'total', 'Total', '0.0000', 9),
(36, 10, 'credit', 'Crédit de magasin', '-15.0000', 7),
(35, 10, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(34, 10, 'sub_total', 'Total', '10.0000', 1),
(64, 16, 'sub_total', 'Total', '60.4700', 1),
(69, 15, 'total', 'Total', '98.0000', 9),
(37, 10, 'total', 'Total', '0.0000', 9),
(71, 17, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(70, 17, 'sub_total', 'Total', '26.1600', 1),
(66, 16, 'total', 'Total', '65.4700', 9),
(65, 16, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(67, 15, 'sub_total', 'Total', '93.0000', 1),
(30, 9, 'sub_total', 'Total', '8.3800', 1),
(31, 9, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(32, 9, 'credit', 'Crédit de magasin', '-13.3800', 7),
(33, 9, 'total', 'Total', '0.0000', 9),
(68, 15, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(46, 13, 'sub_total', 'Total', '69.5000', 1),
(47, 13, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(48, 13, 'total', 'Total', '74.5000', 9),
(49, 14, 'sub_total', 'Total', '69.5000', 1),
(50, 14, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(51, 14, 'total', 'Total', '74.5000', 9),
(72, 17, 'total', 'Total', '31.1600', 9),
(73, 18, 'sub_total', 'Total', '24.0000', 1),
(74, 18, 'shipping', 'Taux d\'expédition plat', '5.0000', 3),
(75, 18, 'total', 'Total', '29.0000', 9);

-- --------------------------------------------------------

--
-- Structure de la table `migan_order_voucher`
--

CREATE TABLE `migan_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product`
--

CREATE TABLE `migan_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `price_pro` decimal(15,2) NOT NULL DEFAULT '0.00',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date DEFAULT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_product`
--

INSERT INTO `migan_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `price_pro`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(69, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/original-catalogue-produit-11-12-2013-11-20-19-714.jpg', 0, 1, '5.07', '5.07', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(65, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '4.50', '4.50', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(66, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/gras.jpg', 0, 1, '1.50', '1.50', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(67, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '6.94', '6.94', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(68, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc-jarret-Modifier.jpg', 0, 1, '6.83', '6.83', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:36:35'),
(55, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Porc-rouelle-epaule.jpg', 0, 1, '11.57', '11.57', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(56, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Porc-rouelle-epaule.jpg', 0, 1, '90.72', '90.72', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(57, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/roti-de-porc.jpg', 0, 1, '11.27', '11.27', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(58, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/saute_porc.jpg', 0, 1, '12.59', '12.59', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(59, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/coeur.jpg', 0, 1, '8.70', '8.70', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(60, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/foie.jpg', 0, 1, '11.66', '11.66', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(61, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/fressure.jpg', 0, 1, '9.54', '9.54', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(62, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Porc-pied-ok_0487.jpg', 0, 1, '2.66', '2.66', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:35:19'),
(63, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/rognon.jpg', 0, 1, '8.20', '8.20', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:34:28'),
(64, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '8.00', '8.00', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(245, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/steak-tranche-1786.jpg', 0, 1, '20.13', '20.13', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(52, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Porc-assortiment-a-rotir_0450.jpg', 0, 1, '27.84', '27.84', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:23:01', '2017-12-20 17:24:15'),
(53, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc_salaison.jpg', 0, 1, '10.11', '10.11', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:27:44', '2017-12-20 17:28:41'),
(54, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '16.00', '16.00', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(70, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/escalope_porc.jpg', 0, 1, '9.82', '9.82', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:37:22'),
(71, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc-longe-piece-2.jpg', 0, 1, '102.20', '102.20', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:37:54'),
(72, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc-poitrine-piece-1.jpg', 0, 1, '87.40', '87.40', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(73, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/roti_ficele.jpg', 0, 1, '9.35', '9.35', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(74, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/filet_migon_porc.jpg', 0, 1, '9.46', '9.46', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(75, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poitrine_porc.jpg', 0, 1, '8.19', '8.19', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(76, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/ragout_a_os.jpg', 0, 1, '9.34', '9.34', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(77, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/travers_de_porc.jpg', 0, 1, '7.11', '7.11', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:38:41'),
(244, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '20.13', '20.13', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(79, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/joue_porc.jpg', 0, 1, '9.88', '9.88', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(80, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/saute_porc.jpg', 0, 1, '96.10', '96.10', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(81, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/original-catalogue-produit-11-12-2013-11-20-19-714.jpg', 0, 1, '14.23', '14.23', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(243, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '48.24', '48.24', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(83, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/ass_porc.jpg', 0, 1, '45.60', '45.60', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(84, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/filet_migon_porc.jpg', 0, 1, '198.40', '198.40', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(85, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/ragout_a_os.jpg', 0, 1, '69.50', '69.50', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(86, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/travers_de_porc.jpg', 0, 1, '92.40', '92.40', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:39:07'),
(87, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/echine.jpg', 0, 1, '17.08', '17.08', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:39:53'),
(88, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Porc-Escalope-ok_0383.jpg', 0, 1, '14.94', '14.94', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(89, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc_rouelle_jambon.jpg', 0, 1, '97.70', '97.70', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(90, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/cote_porc.jpg', 0, 1, '105.60', '105.60', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:40:28'),
(91, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/cote_porc.jpg', 0, 1, '6.21', '6.21', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:30:55', '2018-01-02 09:40:50'),
(92, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Porc-escalope_x2.jpg', 0, 1, '5.43', '5.43', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(93, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc_rouelle_jambon.jpg', 0, 1, '10.17', '10.17', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(94, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/jambon.jpg', 0, 1, '9.43', '9.43', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(95, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/carcasse_sans_tete.jpg', 0, 1, '7.83', '7.83', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(96, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '8.18', '8.18', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(242, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '42.87', '42.87', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(98, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/ass_porc.jpg', 0, 1, '35.46', '35.46', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(99, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/ass_porc.jpg', 0, 1, '49.80', '49.80', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(100, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/sarde-rouge.jpg', 0, 1, '11.00', '11.00', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(101, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '12.00', '12.00', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(102, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/lapin-entier.jpg', 0, 1, '12.54', '12.54', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:12:59', '2018-01-02 09:23:50'),
(103, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/lapin-entier-decoupe.jpg', 0, 1, '23.76', '23.76', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:23:01', '2017-12-20 17:24:15'),
(104, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/lapin-rable.jpg', 0, 1, '5.85', '5.85', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:27:44', '2017-12-20 17:28:41'),
(105, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/lapin-demi-lapin-decoupe-1-Modifier.jpg', 0, 1, '11.45', '11.45', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(107, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/lapin-fricasse_0672.jpg', 0, 1, '7.67', '7.67', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(108, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/lapin_entier.jpg', 0, 1, '21.51', '21.51', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(109, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Lapin_Roti_Ambiance.jpg', 0, 1, '25.52', '25.52', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(111, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '168.91', '168.91', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(112, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '91.26', '91.26', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(110, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '93.60', '93.60', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 1, '2017-12-20 17:30:55', '2017-12-21 17:47:34'),
(106, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/lapin_cuisse.jpg', 0, 1, '8.38', '8.38', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(113, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/assortiment_poulet.jpg', 0, 1, '9.45', '9.45', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:26:23'),
(114, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/assortiment_poulet.jpg', 0, 1, '9.39', '9.39', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:28:31'),
(115, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/assortiment_poulet.jpg', 0, 1, '8.52', '8.52', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:30:07'),
(116, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/assortiment_poulet.jpg', 0, 1, '8.46', '12.44', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:31:50'),
(117, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-entier.jpg', 0, 1, '10.44', '10.44', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(118, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet_fermier.jpg', 0, 1, '17.30', '17.30', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(119, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-cuisse.jpg', 0, 1, '117.40', '117.40', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(120, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/pilon_poulet.jpg', 0, 1, '8.13', '8.13', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(121, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/assortiment_poulet.jpg', 0, 1, '55.70', '55.70', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(122, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/assortiment_poulet.jpg', 0, 1, '46.85', '46.85', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(241, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '23.73', '23.73', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(124, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-pilon-x10-2.jpg', 0, 1, '101.00', '101.00', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(125, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-haut-de-cuisse-x10-1.jpg', 0, 1, '131.80', '131.80', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(126, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '2.87', '2.87', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(127, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/GesiersConfits2.jpg', 0, 1, '5.59', '5.59', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(128, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet_fermier_decoupe.jpg', 0, 1, '19.70', '19.70', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(129, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-entier-nu-X2-3-Modifier.jpg', 0, 1, '20.30', '20.30', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(130, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/aile_poulet.jpg', 0, 1, '7.84', '7.84', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(131, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet_fermier_decoupe.jpg', 0, 1, '14.34', '14.34', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(132, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-filet-x2-1.jpg', 0, 1, '5.41', '5.41', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(133, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-filet-x4-1.jpg', 0, 1, '10.31', '10.31', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(134, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-filet-X-8-Modifier.jpg', 0, 1, '18.54', '18.54', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(135, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Poulet_Pilons_Rotis_Ambiance.jpg', 0, 1, '5.67', '5.67', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(136, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Poulet_Pilons_Rotis_Ambiance.jpg', 0, 1, '10.59', '10.59', 0, 0, '2017-12-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(137, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/aile_poulet.jpg', 0, 1, '93.00', '93.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(138, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/coq-entier-decoupe.jpg', 0, 1, '109.60', '109.60', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(139, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/coq-entier_0942.jpg', 0, 1, '103.70', '103.70', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(140, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-entier-X1.jpg', 0, 1, '29.76', '29.76', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(141, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '15.24', '15.24', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(142, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '14.24', '14.24', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(143, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Pintade-entiere_0607.jpg', 0, 1, '19.11', '19.11', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(144, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Pintade-entiere-decoupee.jpg', 0, 1, '21.00', '21.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(145, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Pintade-entiere.jpg', 0, 1, '135.10', '135.10', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(146, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Dinde-escalope-ok_0565.jpg', 0, 1, '9.02', '9.02', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(147, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/dinde_cuisse.jpg', 0, 1, '13.10', '13.10', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(148, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/aile_dindex2.jpg', 0, 1, '9.14', '9.14', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(149, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/osso.jpg', 0, 1, '6.79', '6.79', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(150, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Dinde-decoupeee_0596.jpg', 0, 1, '17.33', '17.33', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(151, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/aileron.jpg', 0, 1, '6.50', '6.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 5, '2017-12-20 17:30:55', '2018-01-03 17:56:10'),
(152, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Dinde-blanquette_0582.jpg', 0, 1, '5.99', '5.99', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(153, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Dinde-escalope-ok_0565.jpg', 0, 1, '14.62', '14.62', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(154, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Dinde-decoupeee_0596.jpg', 0, 1, '19.81', '19.81', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(155, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_rouge.jpg', 0, 1, '5.50', '5.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:45:14'),
(156, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_blanc.jpg', 0, 1, '6.05', '6.05', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:45:36'),
(157, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_lambi.jpg', 0, 1, '9.65', '9.65', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:46:01'),
(158, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_crevette.jpg', 0, 1, '8.65', '8.65', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:46:23'),
(159, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_morue.jpg', 0, 1, '7.65', '7.65', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:46:42'),
(160, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_hareng.jpg', 0, 1, '7.65', '7.65', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:47:19'),
(161, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_poisson.jpg', 0, 1, '7.65', '7.65', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:47:45'),
(162, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_poulet.jpg', 0, 1, '7.65', '7.65', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:48:07'),
(163, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/boudin_vege.jpg', 0, 1, '7.65', '7.65', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:48:25'),
(164, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc saucisse lorraine raisin.jpg', 0, 1, '10.53', '10.53', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(165, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc saucisse caraibe ananas-Modifier.jpg', 0, 1, '10.53', '10.53', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(166, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc saucisse caraibe nature pimente_e.jpg', 0, 1, '10.53', '10.53', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(167, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '1.46', '1.46', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(168, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '2.47', '2.47', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(169, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/porc-pate-de-campagne--2-ok_0964-Modifier.jpg', 0, 1, '2.52', '2.52', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(170, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc saucisse caraibe nature pimente_e.jpg', 0, 1, '3.66', '3.66', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(171, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc saucisse caraibe ananas-Modifier.jpg', 0, 1, '3.66', '3.66', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(172, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc saucisse orientale.jpg', 0, 1, '3.66', '3.66', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(173, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Fromage_Tete.jpg', 0, 1, '3.44', '3.44', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(174, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '36.99', '36.99', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(175, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc-pate-de-campagne-2Kg-2-ok_0977-Modifier.jpg', 0, 1, '37.80', '37.80', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(176, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc saucisse orientale.jpg', 0, 1, '10.53', '10.53', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(177, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Fromage_Tete.jpg', 0, 1, '34.35', '34.35', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(178, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc-saucisse-lorraine.jpg', 0, 1, '3.66', '3.66', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(179, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc saucisse lorraine raisin.jpg', 0, 1, '3.66', '3.66', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(180, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc-saucisse-lorraine.jpg', 0, 1, '10.53', '10.53', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(181, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet burger oriental.jpg', 0, 1, '4.14', '4.14', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(182, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-burger-oriental-x8-ok_0820-Modifier.jpg', 0, 1, '8.65', '8.65', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(183, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc-terrine-volaille--2-ok_0954.jpg', 0, 1, '3.78', '3.78', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(184, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-saucisse-de-volaille-x-5_0814-Modifier.jpg', 0, 1, '3.66', '3.66', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(185, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/porc-terrine-volaille--2-ok_0954.jpg', 0, 1, '37.80', '37.80', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(186, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/poulet-saucisse-de-volaille-x-10_0825-Modifier.jpg', 0, 1, '12.68', '12.68', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(187, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/confitOignonsPimentDoux.jpg', 0, 1, '2.80', '2.80', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(188, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/confitOignonsPimentDoux.jpg', 0, 1, '4.40', '4.40', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:42:54'),
(189, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/confitOignonsPimentDoux.jpg', 0, 1, '2.80', '2.80', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(190, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/confitOignonsPimentDoux.jpg', 0, 1, '4.40', '4.40', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:43:15'),
(191, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/confitOignonsPimentFort.jpg', 0, 1, '2.80', '2.80', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(192, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/confitOignonsPimentDoux.jpg', 0, 1, '12.78', '12.78', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(193, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/confitOignonsPimentFort.jpg', 0, 1, '12.50', '12.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(194, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/confitOignonsPimentDoux.jpg', 0, 1, '12.50', '12.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(195, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/curcumaNature.jpg', 0, 1, '2.60', '2.60', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(196, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/curcumaGingembre.jpg', 0, 1, '2.60', '2.60', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(197, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/pateAColomboPiment.jpg', 0, 1, '2.00', '2.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:41:49'),
(198, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/pateAColomboPiment.jpg', 0, 1, '4.40', '4.40', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:42:12'),
(199, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/cremeGingembre.jpg', 0, 1, '4.80', '4.80', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:44:16'),
(200, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/cremeGingembre.jpg', 0, 1, '2.80', '2.80', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:44:41'),
(201, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/pateAColomboPiment.jpg', 0, 1, '10.00', '10.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(202, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/curcumaGingembre.jpg', 0, 1, '18.89', '18.89', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(203, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/curcumaNature.jpg', 0, 1, '18.89', '18.89', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(204, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/cremeGingembre.jpg', 0, 1, '16.67', '16.67', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(205, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/pimentFort.jpg', 0, 1, '2.78', '2.78', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(206, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/orange.jpg', 0, 1, '2.00', '2.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:48:52'),
(207, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/goyave1.jpg', 0, 1, '2.00', '2.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:49:16'),
(208, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/citron.jpg', 0, 1, '2.60', '2.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(209, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/prune.jpg', 0, 1, '1.10', '1.10', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:53:04'),
(210, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '2.50', '2.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(211, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '4.50', '4.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(212, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/piment-vegetarien-bio.jpg', 0, 1, '4.00', '4.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:49:44'),
(213, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/aubergine2.jpg', 0, 1, '1.50', '1.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:50:09'),
(214, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Chou-blanc.jpg', 0, 1, '4.80', '4.80', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:50:34'),
(215, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/12008-1.jpg', 0, 1, '1.00', '1.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:50:58'),
(216, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Cucurbita-moschata-giraumon-4-1-.jpg', 0, 1, '1.60', '1.60', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:51:33'),
(217, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/avocat.jpg', 0, 1, '6.00', '6.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(218, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/banane-plantain4.jpg', 0, 1, '3.75', '3.75', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:30:55', '2018-01-02 09:52:16'),
(219, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/igname.jpg', 0, 1, '4.50', '4.50', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:52:40'),
(220, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/igname-pakala-2.jpg', 0, 1, '3.25', '3.25', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:53:32'),
(221, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/PATATE-DOUCE-.jpg', 0, 1, '2.00', '2.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(222, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/Laitue.jpg', 0, 1, '1.30', '1.20', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(223, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/coco.jpg', 0, 1, '15.00', '15.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(224, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/atoumo.jpg', 0, 1, '12.00', '12.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(225, 'Local', '', '', '', '', '', '', '', 100, 6, 'catalog/PRODUITS/cocoCristal.jpg', 0, 1, '15.00', '15.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-03 16:14:23'),
(226, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/citron.jpg', 0, 1, '12.00', '12.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(227, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '12.00', '12.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(228, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '15.00', '15.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(229, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '12.00', '12.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(230, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/gingembre.jpg', 0, 1, '15.00', '15.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(231, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/siropCurcum.jpg', 0, 1, '8.00', '8.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:43:40'),
(232, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/sf-snapslk02g.jpg', 0, 1, '12.00', '11.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(233, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '11.00', '10.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:30:55', '2018-01-03 16:32:24'),
(234, 'Local', '', '', '', '', '', '', '', 2, 6, 'catalog/PRODUITS/dorade-peche-nosy-be-madagascar.jpg', 0, 1, '10.00', '10.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(235, 'Local', '', '', '', '', '', '', '', 2, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '10.00', '9.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(236, 'Local', '', '', '', '', '', '', '', 0, 6, 'catalog/PRODUITS/Grosse-Langouste-Martinique-t.800.jpg', 0, 1, '24.00', '23.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(237, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/sarde-rouge.jpg', 0, 1, '11.00', '11.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(238, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '12.00', '11.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(239, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '13.00', '13.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2017-12-20 17:30:55', '2017-12-20 17:30:55'),
(240, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '13.00', '13.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(246, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '71.45', '71.45', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(247, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/roti-de-boeuf.jpg', 0, 1, '19.94', '19.94', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(248, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '78.60', '78.60', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(249, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '22.00', '22.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31');
INSERT INTO `migan_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `price_pro`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(250, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/ragout-de-boeuf.jpg', 0, 1, '11.47', '11.47', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(251, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '11.07', '11.07', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(252, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '11.67', '11.67', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(253, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/cote-plate-de-boeuf-ch.jpg', 0, 1, '11.67', '11.67', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(254, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '22.00', '22.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(255, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '11.67', '11.67', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(256, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '3.60', '3.60', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(257, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '82.92', '82.92', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(258, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '57.15', '57.15', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(259, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '57.15', '57.15', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(260, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '54.66', '54.66', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(261, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/jarret.jpg', 0, 1, '11.67', '11.67', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(262, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '16.95', '16.95', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(263, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '57.15', '57.15', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(264, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '57.15', '57.15', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(265, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/filet-de-boeuf-viande-argentine.jpg', 0, 1, '33.92', '33.92', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(266, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/2017-09-04-14-13-06-775535246.jpeg', 0, 1, '22.00', '22.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(267, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '14.13', '14.13', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(268, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '71.45', '71.45', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(269, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/entrecote-de-boeuf-entiere2.jpg', 0, 1, '23.33', '23.33', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(270, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '2.54', '2.54', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(271, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/cote-de-boeuf-1804.jpg', 0, 1, '20.93', '20.93', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(272, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '63.10', '63.10', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(273, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/7e9ebe9f6549ca512fe4618f380597f3.jpeg', 0, 1, '14.53', '14.53', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(274, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/bourguignon.jpg', 0, 1, '13.84', '13.84', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(275, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/bavette-de-boeuf.jpg', 0, 1, '20.52', '20.52', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(276, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '20.93', '20.93', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(277, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '67.24', '67.24', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(278, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/basse-cote.jpg', 0, 1, '13.66', '13.66', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(279, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '13.00', '13.00', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(280, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '12.67', '12.67', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(281, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '20.13', '20.13', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31'),
(282, 'Local', '', '', '', '', '', '', '', 1, 6, 'catalog/PRODUITS/indispo.png', 0, 1, '202.96', '202.96', 0, 0, '2017-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2017-12-20 17:30:55', '2018-01-02 09:54:31');

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_attribute`
--

CREATE TABLE `migan_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_product_attribute`
--

INSERT INTO `migan_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(113, 12, 2, 'Barquette de 760 g	'),
(114, 12, 2, 'Barquette de 760 g	'),
(115, 12, 2, 'Barquette de 680 g	'),
(116, 12, 1, 'Barquette de 680 g	'),
(117, 12, 2, 'Barquette de 1.24 kg	'),
(118, 12, 2, 'Barquette de 1.48 kg	'),
(119, 12, 2, 'Carton de 10 Kg	'),
(120, 12, 2, 'Barquette de 600 g	'),
(121, 12, 2, 'Pack de 5 Kg	'),
(122, 12, 2, 'Pack de 5 Kg	'),
(124, 12, 2, 'Carton de 10 Kg	'),
(125, 12, 2, 'Carton de 10 Kg	'),
(126, 12, 2, 'Barquette de 800 g	'),
(127, 12, 2, '1 Kg	'),
(128, 12, 2, 'Barquette de 1.48 kg	'),
(129, 12, 2, 'Barquette de 2.47 kg	'),
(130, 12, 2, 'Barquette de 720 g	'),
(131, 12, 2, 'Barquette de 1.48 kg	'),
(132, 12, 2, 'Barquette de 280 g	'),
(133, 12, 2, 'Barquette de 560 g	'),
(134, 12, 2, 'Barquette de 1.12 kg	'),
(135, 12, 2, 'Barquette de 400 g	'),
(136, 12, 2, 'Barquette de 800 g	'),
(137, 12, 2, 'Carton de 10 Kg	'),
(138, 12, 2, 'Carton de 10 Kg'),
(139, 12, 2, 'Carton de 10 Kg'),
(140, 12, 2, '2.47 kg'),
(141, 12, 2, 'Barquette de 1.24 kg'),
(142, 12, 2, 'Barquette de 1.23 kg'),
(143, 12, 2, 'Barquette de 1.3 kg'),
(144, 12, 2, 'Barquette de 1.3 kg'),
(145, 12, 2, 'Carton de 10.4 Kg'),
(146, 12, 2, 'Barquette de 500 g'),
(147, 12, 2, 'Barquette de 1Kg'),
(148, 12, 2, 'Barquette de 740 g'),
(149, 12, 2, 'Barquette de 500 g'),
(150, 12, 2, 'Barquette de 1,600 kg'),
(151, 12, 1, 'Barquette de 530 g'),
(152, 12, 2, 'Barquette de 480 g'),
(153, 12, 2, '1 Kg'),
(154, 12, 2, '2,5 kg'),
(155, 12, 1, '500g'),
(156, 12, 1, '500g'),
(157, 12, 1, '500g'),
(158, 12, 1, '500g'),
(159, 12, 1, '500g'),
(160, 12, 2, '500g'),
(161, 12, 1, '500g'),
(162, 12, 1, '500g'),
(163, 12, 1, '500g'),
(164, 12, 2, 'Barquette de 1 kg'),
(165, 12, 2, 'Barquette de 1 kg'),
(166, 12, 2, 'Barquette de 1 kg'),
(167, 12, 2, 'Barquette de 200 g'),
(168, 12, 2, 'Barquette de 200 g'),
(169, 12, 2, 'Barquette de 200 g'),
(170, 12, 2, 'Barquette de 300 g'),
(171, 12, 2, 'Barquette de 300 g'),
(172, 12, 2, 'Barquette de 300 g'),
(173, 12, 2, 'Barquette de 300 g'),
(174, 12, 2, 'Barquette de 3 Kg'),
(175, 12, 2, 'Barquette de 3 Kg'),
(176, 12, 2, 'Barquette de 1 kg'),
(177, 12, 2, 'Barquette de 3 Kg'),
(178, 12, 2, 'Barquette de 300 g'),
(179, 12, 2, 'Barquette de 300 g'),
(180, 12, 2, 'Barquette de 1 kg'),
(181, 12, 2, 'Barquette de 400 g'),
(182, 12, 2, 'Barquette de 1Kg'),
(183, 12, 2, 'Barquette de 300 g'),
(184, 12, 2, 'Barquette de 300 g'),
(185, 12, 2, 'Barquette de 3 Kg'),
(186, 12, 2, 'Barquette de 1 kg'),
(187, 12, 2, '100 g'),
(188, 12, 1, '250 g'),
(189, 12, 2, '100 g'),
(190, 12, 1, '250 g'),
(191, 12, 2, '100 g'),
(192, 12, 2, '800g'),
(193, 12, 2, '800g'),
(194, 12, 2, '800g'),
(195, 12, 2, '100 g'),
(196, 12, 2, '100 g'),
(197, 12, 1, '100 g'),
(198, 12, 1, '250 g'),
(199, 12, 1, '250 g'),
(200, 12, 1, '100 g'),
(201, 12, 2, '800g'),
(202, 12, 2, '800g'),
(203, 12, 2, '800g'),
(204, 12, 2, '800g'),
(205, 12, 2, '100g'),
(206, 12, 1, 'Au kilo'),
(207, 12, 1, 'Au kilo'),
(208, 12, 2, 'Au kilo'),
(209, 12, 1, 'Au kilo'),
(210, 12, 2, '500g'),
(211, 12, 2, 'le kg'),
(212, 12, 1, 'A partir de 500 g'),
(213, 12, 1, '1 Kg'),
(214, 12, 1, 'Au kilo'),
(215, 12, 1, 'Au kilo'),
(216, 12, 1, 'Au kilo'),
(217, 12, 2, 'Au kilo'),
(218, 12, 1, 'Au kilo'),
(219, 12, 1, 'Au kilo'),
(220, 12, 1, 'Au kilo'),
(221, 12, 2, 'Au kilo'),
(222, 12, 2, 'La pièce'),
(223, 12, 2, '1 litre'),
(224, 12, 2, '1 litre'),
(225, 12, 2, '1 litre'),
(226, 12, 2, '1 litre'),
(227, 12, 2, '1 litre'),
(228, 12, 2, '1 litre'),
(229, 12, 2, '1 litre'),
(230, 12, 2, '1 litre'),
(231, 12, 1, '25 cl'),
(232, 12, 2, '1 Kg'),
(233, 12, 1, '1 Kg'),
(234, 12, 2, '1 Kg'),
(235, 12, 2, '1 Kg'),
(236, 12, 2, '1 Kg'),
(237, 12, 2, 'Au kilo'),
(238, 12, 2, 'Au kilo'),
(239, 12, 2, 'Au kilo'),
(240, 12, 2, 'Au kilo'),
(113, 12, 1, 'Barquette de 760 g	'),
(114, 12, 1, 'Barquette de 760 g	'),
(115, 12, 1, 'Barquette de 680 g	'),
(116, 12, 2, 'Barquette de 680 g	'),
(117, 12, 1, 'Barquette de 1.24 kg	'),
(118, 12, 1, 'Barquette de 1.48 kg	'),
(119, 12, 1, 'Carton de 10 Kg	'),
(120, 12, 1, 'Barquette de 600 g	'),
(121, 12, 1, 'Pack de 5 Kg	'),
(122, 12, 1, 'Pack de 5 Kg	'),
(124, 12, 1, 'Carton de 10 Kg	'),
(125, 12, 1, 'Carton de 10 Kg	'),
(126, 12, 1, 'Barquette de 800 g	'),
(127, 12, 1, '1 Kg	'),
(128, 12, 1, 'Barquette de 1.48 kg	'),
(129, 12, 1, 'Barquette de 2.47 kg	'),
(130, 12, 1, 'Barquette de 720 g	'),
(131, 12, 1, 'Barquette de 1.48 kg	'),
(132, 12, 1, 'Barquette de 280 g	'),
(133, 12, 1, 'Barquette de 560 g	'),
(134, 12, 1, 'Barquette de 1.12 kg	'),
(135, 12, 1, 'Barquette de 400 g	'),
(136, 12, 1, 'Barquette de 800 g	'),
(137, 12, 1, 'Carton de 10 Kg	'),
(138, 12, 1, 'Carton de 10 Kg'),
(139, 12, 1, 'Carton de 10 Kg'),
(140, 12, 1, '2.47 kg'),
(141, 12, 1, 'Barquette de 1.24 kg'),
(142, 12, 1, 'Barquette de 1.23 kg'),
(143, 12, 1, 'Barquette de 1.3 kg'),
(144, 12, 1, 'Barquette de 1.3 kg'),
(145, 12, 1, 'Carton de 10.4 Kg'),
(146, 12, 1, 'Barquette de 500 g'),
(147, 12, 1, 'Barquette de 1Kg'),
(148, 12, 1, 'Barquette de 740 g'),
(149, 12, 1, 'Barquette de 500 g'),
(150, 12, 1, 'Barquette de 1,600 kg'),
(151, 12, 2, 'Barquette de 530 g'),
(152, 12, 1, 'Barquette de 480 g'),
(153, 12, 1, '1 Kg'),
(154, 12, 1, '2,5 kg'),
(155, 12, 2, '500g'),
(156, 12, 2, '500g'),
(157, 12, 2, '500g'),
(158, 12, 2, '500g'),
(159, 12, 2, '500g'),
(160, 12, 1, '500g'),
(161, 12, 2, '500g'),
(162, 12, 2, '500g'),
(163, 12, 2, '500g'),
(164, 12, 1, 'Barquette de 1 kg'),
(165, 12, 1, 'Barquette de 1 kg'),
(166, 12, 1, 'Barquette de 1 kg'),
(167, 12, 1, 'Barquette de 200 g'),
(168, 12, 1, 'Barquette de 200 g'),
(169, 12, 1, 'Barquette de 200 g'),
(170, 12, 1, 'Barquette de 300 g'),
(171, 12, 1, 'Barquette de 300 g'),
(172, 12, 1, 'Barquette de 300 g'),
(173, 12, 1, 'Barquette de 300 g'),
(174, 12, 1, 'Barquette de 3 Kg'),
(175, 12, 1, 'Barquette de 3 Kg'),
(176, 12, 1, 'Barquette de 1 kg'),
(177, 12, 1, 'Barquette de 3 Kg'),
(178, 12, 1, 'Barquette de 300 g'),
(179, 12, 1, 'Barquette de 300 g'),
(180, 12, 1, 'Barquette de 1 kg'),
(181, 12, 1, 'Barquette de 400 g'),
(182, 12, 1, 'Barquette de 1Kg'),
(183, 12, 1, 'Barquette de 300 g'),
(184, 12, 1, 'Barquette de 300 g'),
(185, 12, 1, 'Barquette de 3 Kg'),
(186, 12, 1, 'Barquette de 1 kg'),
(187, 12, 1, '100 g'),
(188, 12, 2, '250 g'),
(189, 12, 1, '100 g'),
(190, 12, 2, '250 g'),
(191, 12, 1, '100 g'),
(192, 12, 1, '800g'),
(193, 12, 1, '800g'),
(194, 12, 1, '800g'),
(195, 12, 1, '100 g'),
(196, 12, 1, '100 g'),
(197, 12, 2, '100 g'),
(198, 12, 2, '250 g'),
(199, 12, 2, '250 g'),
(200, 12, 2, '100 g'),
(201, 12, 1, '800g'),
(202, 12, 1, '800g'),
(203, 12, 1, '800g'),
(204, 12, 1, '800g'),
(205, 12, 1, '100g'),
(206, 12, 2, 'Au kilo'),
(207, 12, 2, 'Au kilo'),
(208, 12, 1, 'Au kilo'),
(209, 12, 2, 'Au kilo'),
(210, 12, 1, '500g'),
(211, 12, 1, 'le kg'),
(212, 12, 2, 'A partir de 500 g'),
(213, 12, 2, '1 Kg'),
(214, 12, 2, 'Au kilo'),
(215, 12, 2, 'Au kilo'),
(216, 12, 2, 'Au kilo'),
(217, 12, 1, 'Au kilo'),
(218, 12, 2, 'Au kilo'),
(219, 12, 2, 'Au kilo'),
(220, 12, 2, 'Au kilo'),
(221, 12, 1, 'Au kilo'),
(222, 12, 1, 'La pièce'),
(223, 12, 1, '1 litre'),
(224, 12, 1, '1 litre'),
(225, 12, 1, '1 litre'),
(226, 12, 1, '1 litre'),
(227, 12, 1, '1 litre'),
(228, 12, 1, '1 litre'),
(229, 12, 1, '1 litre'),
(230, 12, 1, '1 litre'),
(231, 12, 2, '25 cl'),
(232, 12, 1, '1 Kg'),
(233, 12, 2, '1 Kg'),
(234, 12, 1, '1 Kg'),
(235, 12, 1, '1 Kg'),
(236, 12, 1, '1 Kg'),
(237, 12, 1, 'Au kilo'),
(238, 12, 1, 'Au kilo'),
(239, 12, 1, 'Au kilo'),
(240, 12, 1, 'Au kilo');

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_description`
--

CREATE TABLE `migan_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_product_description`
--

INSERT INTO `migan_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(241, 1, 'Viande à Fondue', '', '', 'Viande à Fondue', '', ''),
(197, 1, 'Pâte à  colombô  pimenté', '', '', 'Pâte à  colombô  pimenté', '', ''),
(124, 1, 'Pilons de poulet', '', '', 'Pilons de poulet', '', ''),
(125, 1, 'Haut de cuisse de poulet', '', '', 'Haut de cuisse de poulet', '', ''),
(126, 1, 'Carcasse de poulet', '', '', 'Carcasse de poulet', '', ''),
(127, 1, 'Gésier de poulet', '', '', 'Gésier de poulet', '', ''),
(128, 1, 'Poulet fermier découpé', '', '', 'Poulet fermier découpé', '', ''),
(129, 1, 'Poulet  PAC x 2', '', '', 'Poulet  PAC x 2', '', ''),
(130, 1, 'Ailes de Poulet x 8', '', '', 'Ailes de Poulet x 8', '', ''),
(131, 1, 'Poulet  découpé', '', '', 'Poulet  découpé', '', ''),
(132, 1, 'Filets de Poulet x 2', '', '', 'Filets de Poulet x 2', '', ''),
(133, 1, 'Filets de Poulet x 4', '', '', 'Filets de Poulet x 4', '', ''),
(134, 1, 'Filets de Poulet x 8', '', '', 'Filets de Poulet x 8', '', ''),
(135, 1, 'Pilon Roti x 4 &quot;Nouvelle Recette&quot;', '', '', 'Pilon Roti x 4 &quot;Nouvelle Recette&quot;', '', ''),
(136, 1, 'Pilon Roti x 8  &quot;Nouvelle Recette&quot;', '', '', 'Pilon Roti x 8 &quot;Nouvelle Recette&quot;', '', ''),
(137, 1, 'Ailes de poulet', '', '', 'Ailes de poulet', '', ''),
(138, 1, 'Coq  découpé', '', '', 'Coq  découpé', '', ''),
(139, 1, 'Coq nu', '', '', 'Coq nu', '', ''),
(140, 1, 'Coq PAC', '', '', 'Coq PAC', '', ''),
(141, 1, 'Demi Coq PAC', '', '', 'Demi Coq PAC', '', ''),
(142, 1, 'Demi Coq découpé', '', '', 'Demi Coq découpé', '', ''),
(143, 1, 'Pintade entière', '', '', 'Pintade entière', '', ''),
(144, 1, 'Pintade découpée', '', '', 'Pintade découpée', '', ''),
(145, 1, 'Pintade entière', '', '', 'Pintade entière', '', ''),
(146, 1, 'Escalopes de Dinde x 4', '', '', 'Escalopes de Dinde x 4', '', ''),
(147, 1, 'Cuisses de Dinde', '', '', 'Cuisses de Dinde', '', ''),
(148, 1, 'Ailes de Dinde x 2', '', '', 'Ailes de Dinde x 2', '', ''),
(149, 1, 'Osso Bucco de Dinde X 4', '', '', 'Osso Bucco de Dinde X 4', '', ''),
(150, 1, 'Dinde découpée', '', '', 'Dinde découpée', '', ''),
(151, 2, 'Ailerons de Dinde x 4', '', '', 'Ailerons de Dinde x 4', '', ''),
(152, 1, 'Blanquette de Dinde x 2', '', '', 'Blanquette de Dinde x 2', '', ''),
(153, 1, 'Escalopes de Dinde', '', '', 'Escalopes de Dinde', '', ''),
(154, 1, 'Dinde découpée', '', '', 'Dinde découpée', '', ''),
(160, 1, 'Boudin hareng-saur', '&lt;p&gt;Pain, Eau, Hareng saur, Oignons, Epices.&lt;/p&gt;', '', 'Boudin hareng-saur', '', ''),
(162, 2, 'Boudin poulet boucané', '&lt;p&gt;Pain, Eau, Poulet boucané, Oignons, Epices.&lt;/p&gt;', '', 'Boudin poulet boucané', '', ''),
(164, 1, 'Saucisses lorraine raisin', '', '', 'Saucisses lorraine raisin', '', ''),
(165, 1, 'Saucisses caraïbe ananas', '', '', 'Saucisses caraïbe ananas', '', ''),
(166, 1, 'Saucisses caraïbe nature', '', '', 'Saucisses caraïbe nature', '', ''),
(167, 1, 'Rillette de porc au piment végétarien', '', '', 'Rillette de porc au piment végétarien', '', ''),
(168, 1, 'Pâté de porc à  l\'oignon pays et piment végétarien', '', '', 'Pâté de porc à  l\'oignon pays et piment végétarien', '', ''),
(169, 1, 'Pâté de campagne local', '', '', 'Pâté de campagne local', '', ''),
(170, 1, 'Saucisses caraïbe nature', '', '', 'Saucisses caraïbe nature', '', ''),
(171, 1, 'Saucisses caraïbe ananas', '', '', 'Saucisses caraïbe ananas', '', ''),
(172, 1, 'Saucisses orientales', '', '', 'Saucisses orientales', '', ''),
(173, 1, 'Fromage de tête local', '', '', 'Fromage de tête local', '', ''),
(174, 1, 'Pâté de porc à  l\'oignon pays et piment végétarien', '', '', 'Pâté de porc à  l\'oignon pays et piment végétarien', '', ''),
(175, 1, 'Pâté de campagne local', '', '', 'Pâté de campagne local', '', ''),
(176, 1, 'Saucisses orientales', '', '', 'Saucisses orientales', '', ''),
(177, 1, 'Fromage de tête local', '', '', 'Fromage de tête local', '', ''),
(178, 1, 'Saucisses lorraine nature', '', '', 'Saucisses lorraine nature', '', ''),
(179, 1, 'Saucisses lorraine raisin', '', '', 'Saucisses lorraine raisin', '', ''),
(180, 1, 'Saucisses lorraine nature', '', '', 'Saucisses lorraine nature', '', ''),
(181, 1, 'Burgers de volaille x 4', '', '', 'Burgers de volaille x 4', '', ''),
(182, 1, 'Burgers de volaille', '', '', 'Burgers de volaille', '', ''),
(183, 1, 'Terrine de volaille bôkail', '', '', 'Terrine de volaille bôkail', '', ''),
(184, 1, 'Saucisses de volaille', '', '', 'Saucisses de volaille', '', ''),
(185, 1, 'Terrine de volaille bôkail', '', '', 'Terrine de volaille bôkail', '', ''),
(186, 1, 'Saucisses Volaille', '', '', 'Saucisses Volaille', '', ''),
(187, 1, 'Confit d\'oignons piment doux', '', '', 'Confit d\'oignons piment doux', '', ''),
(189, 1, 'Confit d\'oignon gingembre &amp; piment doux', '', '', 'Confit d\'oignon gingembre &amp; piment doux', '', ''),
(191, 1, 'Confit d\'oignon gingembre &amp; piment fort', '', '', 'Confit d\'oignon gingembre &amp; piment fort', '', ''),
(192, 1, 'Confit d\'oignons piment doux', '', '', 'Confit d\'oignons piment doux', '', ''),
(193, 1, 'Confit d\'oignon gingembre &amp; piment fort', '', '', 'Confit d\'oignon gingembre &amp; piment fort', '', ''),
(194, 1, 'Confit d\'oignon gingembre &amp; piment doux', '', '', 'Confit d\'oignon gingembre &amp; piment doux', '', ''),
(195, 1, 'Curcuma Gingembre', '', '', 'Curcuma Gingembre', '', ''),
(196, 1, 'Curcuma Nature', '', '', 'Curcuma Nature', '', ''),
(200, 2, 'Crême de gingembre', '', '', 'Crême de gingembre', '', ''),
(201, 1, 'Pâte à  colombô pimenté', '', '', 'Pâte à  colombô pimenté', '', ''),
(202, 1, 'Curcuma nature', '', '', 'Curcuma nature', '', ''),
(203, 1, 'Curcuma gingembre', '', '', 'Curcuma gingembre', '', ''),
(204, 1, 'Crême de gingembre', '', '', 'Crême de gingembre', '', ''),
(205, 1, 'Purée de piment fort', '', '', 'Purée de piment fort', '', ''),
(208, 1, 'Citron Vert', '', '', 'Citron Vert', '', ''),
(210, 1, 'Gwozey Péyi', '', '', 'Gwozey Péyi', '', ''),
(211, 1, 'Gwozey Péyi', '', '', 'Gwozey Péyi', '', ''),
(217, 1, 'Avocat', '', '', 'Avocat', '', ''),
(221, 1, 'Patate douce', '', '', 'Patate douce', '', ''),
(222, 1, 'Laitue', '', '', 'Laitue', '', ''),
(223, 1, 'Punch coco', '', '', 'Punch coco', '', ''),
(224, 1, 'Punch Atoumo', '', '', 'Punch Atoumo', '', ''),
(225, 1, 'Crystal Coco', '', '', 'Crystal Coco', '', ''),
(226, 1, 'Punch Citron', '', '', 'Punch Citron', '', ''),
(227, 1, 'Punch Anis', '', '', 'Punch Anis', '', ''),
(228, 1, 'Punch Bois bande', '', '', 'Punch Bois bande', '', ''),
(229, 1, 'Punch Menthe', '', '', 'Punch Menthe', '', ''),
(230, 1, 'Punch Gingembre', '', '', 'Punch Gingembre', '', ''),
(232, 1, 'Vivaneau entier vidé', '', '', 'Vivaneau entier vidé', '', ''),
(233, 2, 'Darnes vivaneau', '', '', 'Darnes vivaneau', '', ''),
(234, 1, 'Dorade entière', '', '', 'Dorade entière', '', ''),
(235, 1, 'Darnes de Dorade', '', '', 'Darnes de Dorade', '', ''),
(236, 1, 'Langouste Vivante', '', '', 'Langouste Vivante', '', ''),
(237, 1, 'Sarde rouge', '', '', 'Sarde rouge', '', ''),
(238, 1, 'Dorade nettoyée', '', '', 'Dorade nettoyée', '', ''),
(239, 1, 'Sarde rouge nettoyée', '', '', 'Sarde rouge nettoyée', '', ''),
(198, 1, 'Pâte à  colombô pimenté', '', '', 'Pâte à  colombô pimenté', '', ''),
(199, 1, 'Crême de gingembre', '', '', 'Crême de gingembre', '', ''),
(52, 2, 'Assortiment de Porc à rôtir', '', '', 'Assortiment de Porc à rôtir', '', ''),
(53, 2, 'Assortiment pour salaison', '', '', 'Assortiment pour salaison', '', ''),
(54, 2, 'Boyaux de porc', '', '', 'Boyaux de porc', '', ''),
(55, 2, 'Rouelle de porc épaule x 2', '', '', 'Rouelle de porc épaule x 2', '', ''),
(56, 2, 'Rouelle de porc épaule', '', '', 'Rouelle de porc épaule', '', ''),
(57, 2, 'Rôti de porc farci à  l\'ananas', '', '', 'Rôti de porc farci à  l\'ananas', '', ''),
(58, 2, 'Sauté de porc sans os', '', '', 'Sauté de porc sans os', '', ''),
(59, 2, 'Coeur de Porc entier x 2', '', '', 'Coeur de Porc entier x 2', '', ''),
(60, 2, 'Foie de Porc en tranche x 2', '', '', 'Foie de Porc en tranche x 2', '', ''),
(61, 2, 'Fressure de Porc', '', '', 'Fressure de Porc', '', ''),
(64, 2, 'Tête de Porc/os', '', '', 'Tête de Porc/os', '', ''),
(65, 2, 'Sang de Porc', '', '', 'Sang de Porc', '', ''),
(66, 2, 'Gras de Porc', '', '', 'Gras de Porc', '', ''),
(67, 2, 'Rouelle de porc marinée cuite', '', '', 'Rouelle de porc marinée cuite', '', ''),
(69, 2, 'Côtes de Porc premières x 2', '', '', 'Côtes de Porc premières x 2', '', ''),
(72, 2, 'Poitrine Â de Porc 4 faces', '', '', 'Poitrine Â de Porc 4 faces', '', ''),
(73, 2, 'Rôti de porc ficelé', '', '', 'Rôti de porc ficelé', '', ''),
(74, 2, 'Filets mignon de porc', '', '', 'Filets mignon de porc', '', ''),
(75, 2, 'Poitrine de porc tranchée', '', '', 'Poitrine de porc tranchée', '', ''),
(76, 2, 'Ragoût de porc avec os', '', '', 'Ragoût de porc avec os', '', ''),
(62, 1, 'Pied de Porc tranché x 3', '', '', 'Pied de Porc tranché x 3', '', ''),
(79, 2, 'Joue de porc x 8', '', '', 'Joue de porc x 8', '', ''),
(80, 2, 'Sauté de porc sans os', '', '', 'Sauté de porc sans os', '', ''),
(81, 2, 'Côtes de Porc premières x 6', '', '', 'Côtes de Porc premières x 6', '', ''),
(83, 2, 'Assortiment de Porc à  griller nature', '', '', 'Assortiment de Porc à  griller nature', '', ''),
(84, 2, 'Filets mignon de porc', '', '', 'Filets mignon de porc', '', ''),
(85, 2, 'Ragoût de porc avec os', '', '', 'Ragoût de porc avec os', '', ''),
(88, 2, 'Côtes de porc filets x 6', '', '', 'Côtes de porc filets x 6', '', ''),
(89, 2, 'Rouelle de Porc Jambon', '', '', 'Rouelle de Porc Jambon', '', ''),
(92, 2, 'Côtes de porc filets x 2', '', '', 'Côtes de porc filets x 2', '', ''),
(93, 2, 'Rouelle de Porc Jambon', '', '', 'Rouelle de Porc Jambon', '', ''),
(94, 2, 'Jambon de Porc', '', '', 'Jambon de Porc', '', ''),
(95, 2, 'Carcasse de Porc sans tête', '', '', 'Carcasse de Porc sans tête', '', ''),
(96, 2, 'Porc prêt à  découper', '', '', 'Porc prêt à  découper', '', ''),
(68, 1, 'Jarret de porc mariné cuit', '', '', 'Jarret de porc mariné cuit', '', ''),
(70, 1, 'Escalopes de Porc x 5', '', '', 'Escalopes de Porc x 5', '', ''),
(98, 2, 'Assortiment de porc à  griller', '', '', 'Assortiment de porc à  griller', '', ''),
(99, 2, 'Assortiment de porc à  griller assaisonné', '', '', 'Assortiment de porc à  griller assaisonné', '', ''),
(100, 2, 'Sarde rouge', '', '', 'Sarde rouge', '', ''),
(101, 2, 'Sarde rouge nettoyée', '', '', 'Sarde rouge nettoyée', '', ''),
(102, 2, 'Lapin saveur thym citron', '&lt;p&gt;Lapin découpé saveur thym citron&lt;/p&gt;', '', 'Lapin saveur thym citron', '', ''),
(103, 2, 'Lapin entier découpé', '', '', 'Lapin entier découpé', '', ''),
(104, 2, 'Râbles de Lapin', '', '', 'Râbles de Lapin', '', ''),
(105, 2, 'Demi Lapin découpé', '', '', 'Demi Lapin découpé', '', ''),
(106, 2, 'Cuisses de Lapin x 2', '', '', 'Cuisses de Lapin x 2', '', ''),
(107, 2, 'Fricassées de Lapins', '', '', 'Fricassées de Lapins', '', ''),
(108, 2, 'Lapin entier à (emballé)', '', '', 'Lapin entier à (emballé)', '', ''),
(109, 2, 'Lapin roti', '', '', 'Lapin roti', '', ''),
(110, 2, 'Assortiment de Lapin assaisonné pour grillade', '', '', 'Assortiment de Lapin assaisonné pour grillade', '', ''),
(111, 2, 'Lapin Entier', '', '', 'Lapin Entier', '', ''),
(112, 2, 'Rables de Lapin', '', '', 'Rables de Lapin', '', ''),
(113, 2, 'Assortiment de Poulet saveur brasil', '&lt;p&gt;3 Pilons et 3 Filets&lt;/p&gt;', '', 'Assortiment de Poulet saveur brasil', '', ''),
(114, 2, 'Assortiment de poulet saveur tomate basilic', '', '', 'Assortiment de poulet saveur tomate basilic', '', ''),
(115, 2, 'Assortiment de poulet saveur brasil', '&lt;p&gt;4 Pilons et 2 Filets&lt;/p&gt;', '', 'Assortiment de poulet saveur brasil', '', ''),
(117, 2, 'Poulet PAC x 1', '', '', 'Poulet PAC x 1', '', ''),
(118, 2, 'Poulet fermier', '', '', 'Poulet fermier', '', ''),
(119, 2, 'Cuisses de poulet', '', '', 'Cuisses de poulet', '', ''),
(120, 2, 'Pilons  de poulet x 6', '', '', 'Pilons  de poulet x 6', '', ''),
(121, 2, 'Assortiment de volaille pour grillade', '', '', 'Assortiment de volaille pour grillade', '', ''),
(122, 2, 'Assortiment  de volaille assaisonné pour grillade', '', '', 'Assortiment  de volaille assaisonné pour grillade', '', ''),
(91, 1, 'Côtes de Porc échines x 2', '&lt;p&gt;Les côtes levées proviennent du flanc (ventre) ou de la longe (dos). BON À SAVOIR Les côtes levées sont aussi appelées&amp;nbsp;« travers de porc&amp;nbsp;». La plus grande partie de la viande des côtes de flanc se trouve entre les os. La chair des côtes levées contient du tissu conjonctif qui fond à la cuisson, ce qui a pour effet d’attendrir. Dans les restaurants chinois, on les utilise pour faire les spareribs. Les côtes levées de dos (baby back ribs) sont moins grasses et ont une bonne épaisseur de viande sur les os, en plus de la chair qui les sépare. Les côtes levées assemblées forment un train de côtes, que l’on trouve souvent taillé en morceaux de 4&amp;nbsp;à&amp;nbsp;6&amp;nbsp;côtes au rayon des viandes.&lt;/p&gt;', '', 'Côtes de Porc échines x 2', '', ''),
(163, 1, 'Boudin végétarien', '', '', 'Boudin végétarien', '', ''),
(124, 2, 'Pilons de poulet', '', '', 'Pilons de poulet', '', ''),
(125, 2, 'Haut de cuisse de poulet', '', '', 'Haut de cuisse de poulet', '', ''),
(126, 2, 'Carcasse de poulet', '', '', 'Carcasse de poulet', '', ''),
(127, 2, 'Gésier de poulet', '', '', 'Gésier de poulet', '', ''),
(128, 2, 'Poulet fermier découpé', '', '', 'Poulet fermier découpé', '', ''),
(129, 2, 'Poulet  PAC x 2', '', '', 'Poulet  PAC x 2', '', ''),
(130, 2, 'Ailes de Poulet x 8', '', '', 'Ailes de Poulet x 8', '', ''),
(131, 2, 'Poulet  découpé', '', '', 'Poulet  découpé', '', ''),
(132, 2, 'Filets de Poulet x 2', '', '', 'Filets de Poulet x 2', '', ''),
(133, 2, 'Filets de Poulet x 4', '', '', 'Filets de Poulet x 4', '', ''),
(134, 2, 'Filets de Poulet x 8', '', '', 'Filets de Poulet x 8', '', ''),
(135, 2, 'Pilon Roti x 4 &quot;Nouvelle Recette&quot;', '', '', 'Pilon Roti x 4 &quot;Nouvelle Recette&quot;', '', ''),
(136, 2, 'Pilon Roti x 8  &quot;Nouvelle Recette&quot;', '', '', 'Pilon Roti x 8 &quot;Nouvelle Recette&quot;', '', ''),
(137, 2, 'Ailes de poulet', '', '', 'Ailes de poulet', '', ''),
(138, 2, 'Coq  découpé', '', '', 'Coq  découpé', '', ''),
(139, 2, 'Coq nu', '', '', 'Coq nu', '', ''),
(140, 2, 'Coq PAC', '', '', 'Coq PAC', '', ''),
(141, 2, 'Demi Coq PAC', '', '', 'Demi Coq PAC', '', ''),
(142, 2, 'Demi Coq découpé', '', '', 'Demi Coq découpé', '', ''),
(143, 2, 'Pintade entière', '', '', 'Pintade entière', '', ''),
(144, 2, 'Pintade découpée', '', '', 'Pintade découpée', '', ''),
(145, 2, 'Pintade entière', '', '', 'Pintade entière', '', ''),
(146, 2, 'Escalopes de Dinde x 4', '', '', 'Escalopes de Dinde x 4', '', ''),
(147, 2, 'Cuisses de Dinde', '', '', 'Cuisses de Dinde', '', ''),
(148, 2, 'Ailes de Dinde x 2', '', '', 'Ailes de Dinde x 2', '', ''),
(149, 2, 'Osso Bucco de Dinde X 4', '', '', 'Osso Bucco de Dinde X 4', '', ''),
(150, 2, 'Dinde découpée', '', '', 'Dinde découpée', '', ''),
(151, 1, 'Ailerons de Dinde x 4', '', '', 'Ailerons de Dinde x 4', '', ''),
(152, 2, 'Blanquette de Dinde x 2', '', '', 'Blanquette de Dinde x 2', '', ''),
(153, 2, 'Escalopes de Dinde', '', '', 'Escalopes de Dinde', '', ''),
(154, 2, 'Dinde découpée', '', '', 'Dinde découpée', '', ''),
(155, 2, 'Boudin Créole rouge', '&lt;p&gt;Pain, Sang et gras de porc, Oignons, Epices.&lt;/p&gt;', '', 'Boudin Créole rouge', '', ''),
(156, 2, 'Boudin blanc', '&lt;p&gt;Pain, Eau, Oignons, Epices.&lt;/p&gt;', '', 'Boudin blanc', '', ''),
(157, 2, 'Boudin de lambis', '&lt;p&gt;Pain, Eau, Lambi, Oignons, Epices.&lt;/p&gt;', '', 'Boudin de lambis', '', ''),
(158, 2, 'Boudin de crevette', '&lt;p&gt;Pain, Eau, Crevettes, Oignons, Epices&lt;/p&gt;', '', 'Boudin de crevette', '', ''),
(159, 2, 'Boudin de morue', '&lt;p&gt;Pain, Eau, Morue, Oignons, Epices.&lt;/p&gt;', '', 'Boudin de morue', '', ''),
(161, 2, 'Boudin poisson boucané', '&lt;p&gt;Pain, Eau, Poisson boucané, Oignons, Epices.&lt;/p&gt;', '', 'Boudin poisson boucané', '', ''),
(164, 2, 'Saucisses lorraine raisin', '', '', 'Saucisses lorraine raisin', '', ''),
(165, 2, 'Saucisses caraïbe ananas', '', '', 'Saucisses caraïbe ananas', '', ''),
(166, 2, 'Saucisses caraïbe nature', '', '', 'Saucisses caraïbe nature', '', ''),
(167, 2, 'Rillette de porc au piment végétarien', '', '', 'Rillette de porc au piment végétarien', '', ''),
(168, 2, 'Pâté de porc à  l\'oignon pays et piment végétarien', '', '', 'Pâté de porc à  l\'oignon pays et piment végétarien', '', ''),
(169, 2, 'Pâté de campagne local', '', '', 'Pâté de campagne local', '', ''),
(170, 2, 'Saucisses caraïbe nature', '', '', 'Saucisses caraïbe nature', '', ''),
(171, 2, 'Saucisses caraïbe ananas', '', '', 'Saucisses caraïbe ananas', '', ''),
(172, 2, 'Saucisses orientales', '', '', 'Saucisses orientales', '', ''),
(173, 2, 'Fromage de tête local', '', '', 'Fromage de tête local', '', ''),
(174, 2, 'Pâté de porc à  l\'oignon pays et piment végétarien', '', '', 'Pâté de porc à  l\'oignon pays et piment végétarien', '', ''),
(175, 2, 'Pâté de campagne local', '', '', 'Pâté de campagne local', '', ''),
(176, 2, 'Saucisses orientales', '', '', 'Saucisses orientales', '', ''),
(177, 2, 'Fromage de tête local', '', '', 'Fromage de tête local', '', ''),
(178, 2, 'Saucisses lorraine nature', '', '', 'Saucisses lorraine nature', '', ''),
(179, 2, 'Saucisses lorraine raisin', '', '', 'Saucisses lorraine raisin', '', ''),
(180, 2, 'Saucisses lorraine nature', '', '', 'Saucisses lorraine nature', '', ''),
(181, 2, 'Burgers de volaille x 4', '', '', 'Burgers de volaille x 4', '', ''),
(182, 2, 'Burgers de volaille', '', '', 'Burgers de volaille', '', ''),
(183, 2, 'Terrine de volaille bôkail', '', '', 'Terrine de volaille bôkail', '', ''),
(184, 2, 'Saucisses de volaille', '', '', 'Saucisses de volaille', '', ''),
(185, 2, 'Terrine de volaille bôkail', '', '', 'Terrine de volaille bôkail', '', ''),
(186, 2, 'Saucisses Volaille', '', '', 'Saucisses Volaille', '', ''),
(187, 2, 'Confit d\'oignons piment doux', '', '', 'Confit d\'oignons piment doux', '', ''),
(189, 2, 'Confit d\'oignon gingembre &amp; piment doux', '', '', 'Confit d\'oignon gingembre &amp; piment doux', '', ''),
(191, 2, 'Confit d\'oignon gingembre &amp; piment fort', '', '', 'Confit d\'oignon gingembre &amp; piment fort', '', ''),
(192, 2, 'Confit d\'oignons piment doux', '', '', 'Confit d\'oignons piment doux', '', ''),
(193, 2, 'Confit d\'oignon gingembre &amp; piment fort', '', '', 'Confit d\'oignon gingembre &amp; piment fort', '', ''),
(194, 2, 'Confit d\'oignon gingembre &amp; piment doux', '', '', 'Confit d\'oignon gingembre &amp; piment doux', '', ''),
(195, 2, 'Curcuma Gingembre', '', '', 'Curcuma Gingembre', '', ''),
(196, 2, 'Curcuma Nature', '', '', 'Curcuma Nature', '', ''),
(201, 2, 'Pâte à  colombô pimenté', '', '', 'Pâte à  colombô pimenté', '', ''),
(202, 2, 'Curcuma nature', '', '', 'Curcuma nature', '', ''),
(203, 2, 'Curcuma gingembre', '', '', 'Curcuma gingembre', '', ''),
(204, 2, 'Crême de gingembre', '', '', 'Crême de gingembre', '', ''),
(205, 2, 'Purée de piment fort', '', '', 'Purée de piment fort', '', ''),
(206, 2, 'Orange sucrée', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Orange sucrée', '', ''),
(208, 2, 'Citron Vert', '', '', 'Citron Vert', '', ''),
(209, 2, 'Prune de cythère', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Prune de cythère', '', ''),
(210, 2, 'Gwozey Péyi', '', '', 'Gwozey Péyi', '', ''),
(211, 2, 'Gwozey Péyi', '', '', 'Gwozey Péyi', '', ''),
(212, 2, 'Piment végétarien bio', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Piment végétarien bio', '', ''),
(213, 2, 'Aubergines Bio', '&lt;p&gt;Cultivé en Martinique&lt;/p&gt;', '', 'Aubergines Bio', '', ''),
(214, 2, 'Chou Pommé BIO', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Chou Pommé BIO', '', ''),
(217, 2, 'Avocat', '', '', 'Avocat', '', ''),
(219, 2, 'Igname portugaise', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Igname portugaise', '', ''),
(220, 2, 'Igname pakala', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Igname pakala', '', ''),
(221, 2, 'Patate douce', '', '', 'Patate douce', '', ''),
(222, 2, 'Laitue', '', '', 'Laitue', '', ''),
(223, 2, 'Punch coco', '', '', 'Punch coco', '', ''),
(224, 2, 'Punch Atoumo', '', '', 'Punch Atoumo', '', ''),
(225, 2, 'Crystal Coco', '', '', 'Crystal Coco', '', ''),
(226, 2, 'Punch Citron', '', '', 'Punch Citron', '', ''),
(227, 2, 'Punch Anis', '', '', 'Punch Anis', '', ''),
(228, 2, 'Punch Bois bande', '', '', 'Punch Bois bande', '', ''),
(229, 2, 'Punch Menthe', '', '', 'Punch Menthe', '', ''),
(230, 2, 'Punch Gingembre', '', '', 'Punch Gingembre', '', ''),
(232, 2, 'Vivaneau entier vidé', '', '', 'Vivaneau entier vidé', '', ''),
(233, 1, 'Darnes vivaneau', '', '', 'Darnes vivaneau', '', ''),
(234, 2, 'Dorade entière', '', '', 'Dorade entière', '', ''),
(235, 2, 'Darnes de Dorade', '', '', 'Darnes de Dorade', '', ''),
(236, 2, 'Langouste Vivante', '', '', 'Langouste Vivante', '', ''),
(237, 2, 'Sarde rouge', '', '', 'Sarde rouge', '', ''),
(238, 2, 'Dorade nettoyée', '', '', 'Dorade nettoyée', '', ''),
(239, 2, 'Sarde rouge nettoyée', '', '', 'Sarde rouge nettoyée', '', ''),
(200, 1, 'Crême de gingembre', '&lt;p&gt;Idéal pour assaisonnement de volaille, viande rouge et poisson,&lt;/p&gt;\n\n&lt;p&gt;Très bonne base de sauce et vinaigrette,&lt;/p&gt;\n\n&lt;p&gt;Se sublime également dans un tartare.&lt;/p&gt;', '', 'Crême de gingembre', '', ''),
(218, 1, 'Banane jaune', '', '', 'Banane jaune', '', ''),
(52, 1, 'Assortiment de Porc à rôtir', '', '', 'Assortiment de Porc à rôtir', '', ''),
(53, 1, 'Assortiment pour salaison', '', '', 'Assortiment pour salaison', '', ''),
(54, 1, 'Boyaux de porc', '', '', 'Boyaux de porc', '', ''),
(55, 1, 'Rouelle de porc épaule x 2', '', '', 'Rouelle de porc épaule x 2', '', ''),
(56, 1, 'Rouelle de porc épaule', '', '', 'Rouelle de porc épaule', '', ''),
(57, 1, 'Rôti de porc farci à  l\'ananas', '', '', 'Rôti de porc farci à  l\'ananas', '', ''),
(58, 1, 'Sauté de porc sans os', '', '', 'Sauté de porc sans os', '', ''),
(59, 1, 'Coeur de Porc entier x 2', '', '', 'Coeur de Porc entier x 2', '', ''),
(60, 1, 'Foie de Porc en tranche x 2', '', '', 'Foie de Porc en tranche x 2', '', ''),
(61, 1, 'Fressure de Porc', '', '', 'Fressure de Porc', '', ''),
(64, 1, 'Tête de Porc/os', '', '', 'Tête de Porc/os', '', ''),
(65, 1, 'Sang de Porc', '', '', 'Sang de Porc', '', ''),
(66, 1, 'Gras de Porc', '', '', 'Gras de Porc', '', ''),
(67, 1, 'Rouelle de porc marinée cuite', '', '', 'Rouelle de porc marinée cuite', '', ''),
(69, 1, 'Côtes de Porc premières x 2', '', '', 'Côtes de Porc premières x 2', '', ''),
(72, 1, 'Poitrine Â de Porc 4 faces', '', '', 'Poitrine Â de Porc 4 faces', '', ''),
(73, 1, 'Rôti de porc ficelé', '', '', 'Rôti de porc ficelé', '', ''),
(74, 1, 'Filets mignon de porc', '', '', 'Filets mignon de porc', '', ''),
(75, 1, 'Poitrine de porc tranchée', '', '', 'Poitrine de porc tranchée', '', ''),
(76, 1, 'Ragoût de porc avec os', '', '', 'Ragoût de porc avec os', '', ''),
(63, 1, 'Rognons de Porc entier x 3', '', '', 'Rognons de Porc entier x 3', '', ''),
(79, 1, 'Joue de porc x 8', '', '', 'Joue de porc x 8', '', ''),
(80, 1, 'Sauté de porc sans os', '', '', 'Sauté de porc sans os', '', ''),
(81, 1, 'Côtes de Porc premières x 6', '', '', 'Côtes de Porc premières x 6', '', ''),
(86, 1, 'Travers de porc', '', '', 'Travers de porc', '', ''),
(245, 1, 'Steack Tranche de Boeuf', '', '', 'Steack Tranche de Boeuf', '', ''),
(90, 1, 'Côtes de porc', '', '', 'Côtes de porc', '', ''),
(83, 1, 'Assortiment de Porc à  griller nature', '', '', 'Assortiment de Porc à  griller nature', '', ''),
(84, 1, 'Filets mignon de porc', '', '', 'Filets mignon de porc', '', ''),
(85, 1, 'Ragoût de porc avec os', '', '', 'Ragoût de porc avec os', '', ''),
(88, 1, 'Côtes de porc filets x 6', '', '', 'Côtes de porc filets x 6', '', ''),
(89, 1, 'Rouelle de Porc Jambon', '', '', 'Rouelle de Porc Jambon', '', ''),
(91, 2, 'Côtes de Porc échines x 2', '', '', 'Côtes de Porc échines x 2', '', ''),
(92, 1, 'Côtes de porc filets x 2', '', '', 'Côtes de porc filets x 2', '', ''),
(93, 1, 'Rouelle de Porc Jambon', '', '', 'Rouelle de Porc Jambon', '', ''),
(94, 1, 'Jambon de Porc', '', '', 'Jambon de Porc', '', ''),
(95, 1, 'Carcasse de Porc sans tête', '', '', 'Carcasse de Porc sans tête', '', ''),
(96, 1, 'Porc prêt à  découper', '', '', 'Porc prêt à  découper', '', ''),
(71, 1, 'Longe de Porc', '', '', 'Longe de Porc', '', ''),
(77, 1, 'Travers de porc', '', '', 'Travers de porc', '', ''),
(98, 1, 'Assortiment de porc à  griller', '', '', 'Assortiment de porc à  griller', '', ''),
(99, 1, 'Assortiment de porc à  griller assaisonné', '', '', 'Assortiment de porc à  griller assaisonné', '', ''),
(100, 1, 'Sarde rouge', '', '', 'Sarde rouge', '', ''),
(101, 1, 'Sarde rouge nettoyée', '', '', 'Sarde rouge nettoyée', '', ''),
(102, 1, 'Lapin saveur thym citron', '', '', 'Lapin saveur thym citron', '', ''),
(103, 1, 'Lapin entier découpé', '', '', 'Lapin entier découpé', '', ''),
(104, 1, 'Râbles de Lapin', '', '', 'Râbles de Lapin', '', ''),
(105, 1, 'Demi Lapin découpé', '', '', 'Demi Lapin découpé', '', ''),
(106, 1, 'Cuisses de Lapin x 2', '', '', 'Cuisses de Lapin x 2', '', ''),
(107, 1, 'Fricassées de Lapins', '', '', 'Fricassées de Lapins', '', ''),
(108, 1, 'Lapin entier à (emballé)', '', '', 'Lapin entier à (emballé)', '', ''),
(109, 1, 'Lapin roti', '', '', 'Lapin roti', '', ''),
(110, 1, 'Assortiment de Lapin assaisonné pour grillade', '', '', 'Assortiment de Lapin assaisonné pour grillade', '', ''),
(111, 1, 'Lapin Entier', '', '', 'Lapin Entier', '', ''),
(112, 1, 'Rables de Lapin', '', '', 'Rables de Lapin', '', ''),
(115, 1, 'Assortiment de poulet saveur brasil', '', '', 'Assortiment de poulet saveur brasil', '', ''),
(116, 2, 'Assortiment de poulet saveur tomate basilic', '&lt;p&gt;4 Pilons et 2 Filets&lt;/p&gt;', '', 'Assortiment de poulet saveur tomate basilic', '', ''),
(117, 1, 'Poulet PAC x 1', '', '', 'Poulet PAC x 1', '', ''),
(118, 1, 'Poulet fermier', '', '', 'Poulet fermier', '', ''),
(119, 1, 'Cuisses de poulet', '', '', 'Cuisses de poulet', '', ''),
(120, 1, 'Pilons  de poulet x 6', '', '', 'Pilons  de poulet x 6', '', ''),
(121, 1, 'Assortiment de volaille pour grillade', '', '', 'Assortiment de volaille pour grillade', '', ''),
(122, 1, 'Assortiment  de volaille assaisonné pour grillade', '', '', 'Assortiment  de volaille assaisonné pour grillade', '', ''),
(113, 1, 'Assortiment de Poulet saveur brasil', '', '', 'Assortiment de Poulet saveur brasil', '', ''),
(114, 1, 'Assortiment de poulet saveur tomate basilic', '&lt;p&gt;3 Pilons et 3 Filets&lt;/p&gt;', '', 'Assortiment de poulet saveur tomate basilic', '', ''),
(116, 1, 'Assortiment de poulet saveur tomate basilic', '', '', 'Assortiment de poulet saveur tomate basilic', '', ''),
(63, 2, 'Rognons de Porc entier x 3', '&lt;p&gt;Les rognons sont prélevés dans l’abdomen de l’animal. BON À SAVOIR Ils ont un goût âcre et prononcé et une texture ferme. Les rognons hachés se prêtent bien à la préparation de nombreux mélanges (pains de viande, pâtés, burgers, etc.). Il faut retirer la fine pellicule qui les entoure, les couper en deux et retirer la graisse et les parties nerveuses. On peut se procurer ces abats dans plusieurs marchés ethniques et, sur commande, dans certaines boucheries et épiceries spécialisées.&lt;/p&gt;', '', 'Rognons de Porc entier x 3', '', ''),
(62, 2, 'Pied de Porc tranché x 3', '&lt;p&gt;Les pieds de porc avant ou arrière contiennent peu de viande. BON À SAVOIR L’ajout de pied de porc dans la cuisson donne du corps et de la saveur aux plats. Comme les jarrets, les pieds font partie des ingrédients de base du ragoût de pattes. Ils sont aussi délicieux dans les bouillons maison. Dans la cuisine cantonaise, on les sert traditionnellement à l’occasion du Nouvel An en guise de porte-bonheur. On peut se procurer assez facilement des pieds de cochon frais ou congelés.&lt;/p&gt;', '', 'Pied de Porc tranché x 3', '', ''),
(68, 2, 'Jarret de porc mariné cuit', '&lt;p&gt;Le jarret est la partie supérieure des pattes avant ou arrière. BON À SAVOIR Comme le porc a des pattes courtes, mais bien musclées, ses jarrets constituent une généreuse portion de viande et donnent l’impression d’être bourrés de gras. En réalité, la couenne et le gras entourant la viande s’enlèvent facilement en se détachant naturellement en cours de cuisson. On trouve dans le commerce des jarrets frais ou surgelés.&lt;/p&gt;', '', 'Jarret de porc mariné cuit', '', ''),
(70, 2, 'Escalopes de Porc x 5', '&lt;p&gt;Les escalopes sont habituellement taillées dans la fesse. On peut aussi acheter ou préparer soi-même des escalopes découpées dans le milieu de longe (dos). BON À SAVOIR Très maigres, avec une texture fine et une saveur douce, elles sont simples à préparer. Tranchées de biais dans le grain de la viande, les escalopes sont faciles à mastiquer. Acheter des escalopes de 6&amp;nbsp;mm (¼ po) d’épaisseur. Pour les émincer ou les égaliser, les écraser à l’aide d’un maillet entre deux feuilles de pellicule plastique. Les escalopes peuvent être panées ou farcies de fins morceaux de légumes ou de fruits, de fromage ou d’une farce de porc haché maigre. Garnies et ficelées ainsi, elles prennent le nom de paupiettes.&lt;/p&gt;', '', 'Escalopes de Porc x 5', '', ''),
(71, 2, 'Longe de Porc', '&lt;p&gt;Les rôtis de longe (dos) proviennent du milieu de longe, du bout de côtes et de la surlonge. BON À SAVOIR La longe fournit les rôtis les plus tendres, qui peuvent être désossés ou non. Cette pièce doit être commandée à l’avance au boucher. Il ne faut surtout pas enlever la mince couche de gras qui la recouvre, car elle préservera la tendreté de la viande pendant la cuisson.&lt;/p&gt;', '', 'Longe de Porc', '', ''),
(77, 2, 'Travers de porc', '&lt;p&gt;Les côtes levées proviennent du flanc (ventre) ou de la longe (dos). BON À SAVOIR Les côtes levées sont aussi appelées&amp;nbsp;« travers de porc&amp;nbsp;». La plus grande partie de la viande des côtes de flanc se trouve entre les os. La chair des côtes levées contient du tissu conjonctif qui fond à la cuisson, ce qui a pour effet d’attendrir. Dans les restaurants chinois, on les utilise pour faire les spareribs. Les côtes levées de dos (baby back ribs) sont moins grasses et ont une bonne épaisseur de viande sur les os, en plus de la chair qui les sépare. Les côtes levées assemblées forment un train de côtes, que l’on trouve souvent taillé en morceaux de 4&amp;nbsp;à&amp;nbsp;6&amp;nbsp;côtes au rayon des viandes.&lt;/p&gt;', '', 'Travers de porc', '', ''),
(86, 2, 'Travers de porc', '&lt;p&gt;Les côtes levées proviennent du flanc (ventre) ou de la longe (dos). BON À SAVOIR Les côtes levées sont aussi appelées&amp;nbsp;« travers de porc&amp;nbsp;». La plus grande partie de la viande des côtes de flanc se trouve entre les os. La chair des côtes levées contient du tissu conjonctif qui fond à la cuisson, ce qui a pour effet d’attendrir. Dans les restaurants chinois, on les utilise pour faire les spareribs. Les côtes levées de dos (baby back ribs) sont moins grasses et ont une bonne épaisseur de viande sur les os, en plus de la chair qui les sépare. Les côtes levées assemblées forment un train de côtes, que l’on trouve souvent taillé en morceaux de 4&amp;nbsp;à&amp;nbsp;6&amp;nbsp;côtes au rayon des viandes.&lt;/p&gt;', '', 'Travers de porc', '', ''),
(87, 1, 'Côtes de Porc échines x 6', '', '', 'Côtes de Porc échines x 6', '', ''),
(244, 1, 'Tendre de Tranche', '', '', 'Tendre de Tranche', '', ''),
(87, 2, 'Côtes de Porc échines x 6', '&lt;p&gt;Les côtes levées proviennent du flanc (ventre) ou de la longe (dos). BON À SAVOIR Les côtes levées sont aussi appelées&amp;nbsp;« travers de porc&amp;nbsp;». La plus grande partie de la viande des côtes de flanc se trouve entre les os. La chair des côtes levées contient du tissu conjonctif qui fond à la cuisson, ce qui a pour effet d’attendrir. Dans les restaurants chinois, on les utilise pour faire les spareribs. Les côtes levées de dos (baby back ribs) sont moins grasses et ont une bonne épaisseur de viande sur les os, en plus de la chair qui les sépare. Les côtes levées assemblées forment un train de côtes, que l’on trouve souvent taillé en morceaux de 4&amp;nbsp;à&amp;nbsp;6&amp;nbsp;côtes au rayon des viandes.&lt;/p&gt;', '', 'Côtes de Porc échines x 6', '', ''),
(90, 2, 'Côtes de porc', '&lt;p&gt;Les côtes levées proviennent du flanc (ventre) ou de la longe (dos). BON À SAVOIR : Les côtes levées sont aussi appelées&amp;nbsp;« travers de porc&amp;nbsp;». La plus grande partie de la viande des côtes de flanc se trouve entre les os. La chair des côtes levées contient du tissu conjonctif qui fond à la cuisson, ce qui a pour effet d’attendrir. Dans les restaurants chinois, on les utilise pour faire les spareribs. Les côtes levées de dos (baby back ribs) sont moins grasses et ont une bonne épaisseur de viande sur les os, en plus de la chair qui les sépare. Les côtes levées assemblées forment un train de côtes, que l’on trouve souvent taillé en morceaux de 4&amp;nbsp;à&amp;nbsp;6&amp;nbsp;côtes au rayon des viandes.&lt;/p&gt;', '', 'Côtes de porc', '', ''),
(197, 2, 'Pâte à  colombô  pimenté', '&lt;p&gt;En d’autres utilisations que le fameux plat «&amp;nbsp;Colombo&amp;nbsp;» la pâte s’avère être une formidable base d’assaisonnement pour grillade de volaille.&lt;/p&gt;', '', 'Pâte à  colombô  pimenté', '', ''),
(198, 2, 'Pâte à  colombô pimenté', '&lt;p&gt;En d’autres utilisations que le fameux plat «&amp;nbsp;Colombo&amp;nbsp;» la pâte s’avère être une formidable base d’assaisonnement pour grillade de volaille.&lt;/p&gt;', '', 'Pâte à  colombô pimenté', '', ''),
(188, 2, 'Confit d\'oignons piment doux', '&lt;p&gt;Idéal en toast, tapas ou topping dans un burger ou sur foie gras.&lt;/p&gt;', '', 'Confit d\'oignons piment doux', '', ''),
(190, 1, 'Confit d\'oignon gingembre &amp; piment doux', '', '', 'Confit d\'oignon gingembre &amp; piment doux', '', ''),
(190, 2, 'Confit d\'oignon gingembre &amp; piment doux', '&lt;p&gt;Idéal en toast, tapas ou topping dans un burger ou sur foie gras.&lt;/p&gt;\n\n&lt;p&gt;Ils peuvent également être utilisés lors d’assaisonnement.&amp;nbsp;&lt;/p&gt;', '', 'Confit d\'oignon gingembre &amp; piment doux', '', ''),
(231, 1, 'Sirop curcuma', '', '', 'Sirop curcuma', '', ''),
(231, 2, 'Sirop curcuma', '&lt;p&gt;Idéal en base de cocktail ou toutes autres boissons.&lt;/p&gt;', '', 'Sirop curcuma', '', ''),
(199, 2, 'Crême de gingembre', '&lt;p&gt;Idéal pour assaisonnement de volaille, viande rouge et poisson,&lt;/p&gt;\n\n&lt;p&gt;Très bonne base de sauce et vinaigrette,&lt;/p&gt;\n\n&lt;p&gt;Se sublime également dans un tartare.&lt;/p&gt;', '', 'Crême de gingembre', '', ''),
(155, 1, 'Boudin Créole rouge', '', '', 'Boudin Créole rouge', '', ''),
(156, 1, 'Boudin blanc', '', '', 'Boudin blanc', '', ''),
(157, 1, 'Boudin de lambis', '', '', 'Boudin de lambis', '', ''),
(158, 1, 'Boudin de crevette', '', '', 'Boudin de crevette', '', ''),
(159, 1, 'Boudin de morue', '', '', 'Boudin de morue', '', ''),
(160, 2, 'Boudin hareng-saur', '&lt;p&gt;Pain, Eau, Hareng saur, Oignons, Epices.&lt;/p&gt;', '', 'Boudin hareng-saur', '', ''),
(161, 1, 'Boudin poisson boucané', '', '', 'Boudin poisson boucané', '', ''),
(162, 1, 'Boudin poulet boucané', '', '', 'Boudin poulet boucané', '', ''),
(243, 1, 'Tendre de tranche (parage)', '', '', 'Tendre de tranche (parage)', '', ''),
(163, 2, 'Boudin végétarien', '&lt;p&gt;Pain, Eau, Légumes (giromon, carotte, concombre, poivron, tomate), Oignons, Epices&lt;/p&gt;', '', 'Boudin végétarien', '', ''),
(206, 1, 'Orange sucrée', '', '', 'Orange sucrée', '', ''),
(207, 1, 'Goyave', '', '', 'Goyave', '', ''),
(207, 2, 'Goyave', '&lt;p&gt;Fruit pour transformation&lt;/p&gt;\n\n&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Goyave', '', ''),
(212, 1, 'Piment végétarien bio', '', '', 'Piment végétarien bio', '', ''),
(213, 1, 'Aubergines Bio', '', '', 'Aubergines Bio', '', ''),
(214, 1, 'Chou Pommé BIO', '', '', 'Chou Pommé BIO', '', ''),
(215, 1, 'Concombre', '', '', 'Concombre', '', ''),
(215, 2, 'Concombre', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Concombre', '', ''),
(216, 1, 'Giraumon', '', '', 'Giraumon', '', ''),
(216, 2, 'Giraumon', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Giraumon', '', ''),
(218, 2, 'Banane jaune', '&lt;p&gt;&lt;strong&gt;Cultivé en Martinique&lt;/strong&gt;&lt;/p&gt;', '', 'Banane jaune', '', ''),
(219, 1, 'Igname portugaise', '', '', 'Igname portugaise', '', ''),
(209, 1, 'Prune de cythère', '', '', 'Prune de cythère', '', ''),
(220, 1, 'Igname pakala', '', '', 'Igname pakala', '', ''),
(240, 2, 'Vivaneau', '	\nécaillé et vidé', '', 'Vivaneau', '', ''),
(188, 1, 'Confit d\'oignons piment doux', '&lt;p&gt;Idéal en toast, tapas ou topping dans un burger ou sur foie gras.&lt;/p&gt;\n\n&lt;p&gt;Ils peuvent également être utilisés lors d’assaisonnement.&amp;nbsp;&lt;/p&gt;', '', 'Confit d\'oignons piment doux', '', ''),
(242, 1, 'Tranche Grasse (parage)', '', '', 'Tranche Grasse (parage)', '', ''),
(247, 1, 'Rôti de Boeuf', '', '', 'Rôti de Boeuf', '', ''),
(246, 1, 'semelle(parage)', '', '', 'semelle(parage)', '', ''),
(240, 1, 'Vivaneau', '	\nécaillé et vidé', '', 'Vivaneau', '', ''),
(241, 2, 'Viande à Fondue', '', '', 'Viande à Fondue', '', ''),
(242, 2, 'Tranche Grasse (parage)', '', '', 'Tranche Grasse (parage)', '', ''),
(243, 2, 'Tendre de tranche (parage)', '', '', 'Tendre de tranche (parage)', '', ''),
(244, 2, 'Tendre de Tranche', '', '', 'Tendre de Tranche', '', ''),
(245, 2, 'Steack Tranche de Boeuf', '', '', 'Steack Tranche de Boeuf', '', ''),
(246, 2, 'semelle(parage)', '', '', 'semelle(parage)', '', ''),
(247, 2, 'Rôti de Boeuf', '', '', 'Rôti de Boeuf', '', ''),
(248, 2, 'Rumsteack hanche', '', '', 'Rumsteack hanche', '', ''),
(249, 2, 'Rumsteack', '', '', 'Rumsteack', '', ''),
(250, 2, 'Ragoût de Boeuf avec os', '', '', 'Ragoût de Boeuf avec os', '', ''),
(251, 2, 'Queue de Boeuf', '', '', 'Queue de Boeuf', '', ''),
(252, 2, 'Poitrine de boeuf avec os', '', '', 'Poitrine de boeuf avec os', '', ''),
(253, 2, 'Plate côte de Boeuf avec os', '', '', 'Plate côte de Boeuf avec os', '', ''),
(254, 2, 'Pavé de Rumsteak', '', '', 'Pavé de Rumsteak', '', ''),
(255, 2, 'Paleron', '', '', 'Paleron', '', ''),
(256, 2, 'Os pour Soupe', '', '', 'Os pour Soupe', '', ''),
(257, 2, 'Milieu de train de Côtes', '', '', 'Milieu de train de Côtes', '', ''),
(258, 2, 'Le pis', '', '', 'Le pis', '', ''),
(259, 2, 'Le Panneau', '', '', 'Le Panneau', '', ''),
(260, 2, 'Jeux de Bavettes', '', '', 'Jeux de Bavettes', '', ''),
(261, 2, 'Jarret de Boeuf avec os', '', '', 'Jarret de Boeuf avec os', '', ''),
(262, 2, 'Gîte Noix', '', '', 'Gîte Noix', '', ''),
(263, 2, 'Gîte avant', '', '', 'Gîte avant', '', ''),
(264, 2, 'Gîte arrière', '', '', 'Gîte arrière', '', ''),
(265, 2, 'Filet de Boeuf', '', '', 'Filet de Boeuf', '', ''),
(266, 2, 'Faux Filets de boeuf', '', '', 'Faux Filets de boeuf', '', ''),
(267, 2, 'Epaule de Boeuf avec os', '', '', 'Epaule de Boeuf avec os', '', ''),
(268, 2, 'Epaule (raquette)', '', '', 'Epaule (raquette)', '', ''),
(269, 2, 'Entrecôte de Boeuf', '', '', 'Entrecôte de Boeuf', '', ''),
(270, 2, 'Déchets Animaux', '', '', 'Déchets Animaux', '', ''),
(271, 2, 'Côte de Boeuf', '', '', 'Côte de Boeuf', '', ''),
(272, 2, 'collier desossé', '', '', 'collier desossé', '', ''),
(273, 2, 'Collier de Boeuf', '', '', 'Collier de Boeuf', '', ''),
(274, 2, 'Bourguignon de Boeuf', '', '', 'Bourguignon de Boeuf', '', ''),
(275, 2, 'Bavette Flanchet de Boeuf', '', '', 'Bavette Flanchet de Boeuf', '', ''),
(276, 2, 'Bavette d\'Aloyau', '', '', 'Bavette d\'Aloyau', '', ''),
(277, 2, 'Basse côtes désossé', '', '', 'Basse côtes désossé', '', ''),
(278, 2, 'Basse Côte de Boeuf sans os', '', '', 'Basse Côte de Boeuf sans os', '', ''),
(279, 2, 'Basse Côte de Boeuf avec os', '', '', 'Basse Côte de Boeuf avec os', '', ''),
(280, 2, 'Assortiment de Boeuf à mijoter', '', '', 'Assortiment de Boeuf à mijoter', '', ''),
(281, 2, 'Assortiment de Boeuf à griller', '', '', 'Assortiment de Boeuf à griller', '', ''),
(282, 2, 'Aloyau dehanché', '', '', 'Aloyau dehanché', '', ''),
(248, 1, 'Rumsteack hanche', '', '', 'Rumsteack hanche', '', ''),
(249, 1, 'Rumsteack', '', '', 'Rumsteack', '', ''),
(250, 1, 'Ragoût de Boeuf avec os', '', '', 'Ragoût de Boeuf avec os', '', ''),
(251, 1, 'Queue de Boeuf', '', '', 'Queue de Boeuf', '', ''),
(252, 1, 'Poitrine de boeuf avec os', '', '', 'Poitrine de boeuf avec os', '', ''),
(253, 1, 'Plate côte de Boeuf avec os', '', '', 'Plate côte de Boeuf avec os', '', ''),
(254, 1, 'Pavé de Rumsteak', '', '', 'Pavé de Rumsteak', '', ''),
(255, 1, 'Paleron', '', '', 'Paleron', '', ''),
(256, 1, 'Os pour Soupe', '', '', 'Os pour Soupe', '', ''),
(257, 1, 'Milieu de train de Côtes', '', '', 'Milieu de train de Côtes', '', ''),
(258, 1, 'Le pis', '', '', 'Le pis', '', ''),
(259, 1, 'Le Panneau', '', '', 'Le Panneau', '', ''),
(260, 1, 'Jeux de Bavettes', '', '', 'Jeux de Bavettes', '', ''),
(261, 1, 'Jarret de Boeuf avec os', '', '', 'Jarret de Boeuf avec os', '', ''),
(262, 1, 'Gîte Noix', '', '', 'Gîte Noix', '', ''),
(263, 1, 'Gîte avant', '', '', 'Gîte avant', '', ''),
(264, 1, 'Gîte arrière', '', '', 'Gîte arrière', '', ''),
(265, 1, 'Filet de Boeuf', '', '', 'Filet de Boeuf', '', ''),
(266, 1, 'Faux Filets de boeuf', '', '', 'Faux Filets de boeuf', '', ''),
(267, 1, 'Epaule de Boeuf avec os', '', '', 'Epaule de Boeuf avec os', '', ''),
(268, 1, 'Epaule (raquette)', '', '', 'Epaule (raquette)', '', ''),
(269, 1, 'Entrecôte de Boeuf', '', '', 'Entrecôte de Boeuf', '', ''),
(270, 1, 'Déchets Animaux', '', '', 'Déchets Animaux', '', ''),
(271, 1, 'Côte de Boeuf', '', '', 'Côte de Boeuf', '', ''),
(272, 1, 'collier desossé', '', '', 'collier desossé', '', ''),
(273, 1, 'Collier de Boeuf', '', '', 'Collier de Boeuf', '', ''),
(274, 1, 'Bourguignon de Boeuf', '', '', 'Bourguignon de Boeuf', '', ''),
(275, 1, 'Bavette Flanchet de Boeuf', '', '', 'Bavette Flanchet de Boeuf', '', ''),
(276, 1, 'Bavette d\'Aloyau', '', '', 'Bavette d\'Aloyau', '', ''),
(277, 1, 'Basse côtes désossé', '', '', 'Basse côtes désossé', '', ''),
(278, 1, 'Basse Côte de Boeuf sans os', '', '', 'Basse Côte de Boeuf sans os', '', ''),
(279, 1, 'Basse Côte de Boeuf avec os', '', '', 'Basse Côte de Boeuf avec os', '', ''),
(280, 1, 'Assortiment de Boeuf à mijoter', '', '', 'Assortiment de Boeuf à mijoter', '', ''),
(281, 1, 'Assortiment de Boeuf à griller', '', '', 'Assortiment de Boeuf à griller', '', ''),
(282, 1, 'Aloyau dehanché', '', '', 'Aloyau dehanché', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_discount`
--

CREATE TABLE `migan_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_filter`
--

CREATE TABLE `migan_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_image`
--

CREATE TABLE `migan_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_option`
--

CREATE TABLE `migan_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_option_value`
--

CREATE TABLE `migan_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_recurring`
--

CREATE TABLE `migan_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_related`
--

CREATE TABLE `migan_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_reward`
--

CREATE TABLE `migan_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_special`
--

CREATE TABLE `migan_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_to_category`
--

CREATE TABLE `migan_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_product_to_category`
--

INSERT INTO `migan_product_to_category` (`product_id`, `category_id`) VALUES
(52, 59),
(52, 66),
(53, 59),
(53, 66),
(54, 59),
(54, 66),
(55, 59),
(55, 66),
(56, 59),
(56, 66),
(57, 59),
(57, 66),
(58, 59),
(58, 66),
(59, 59),
(59, 66),
(60, 59),
(60, 66),
(61, 59),
(61, 66),
(62, 59),
(62, 66),
(63, 59),
(63, 66),
(64, 59),
(64, 66),
(65, 59),
(65, 66),
(66, 59),
(66, 66),
(67, 59),
(67, 66),
(68, 59),
(68, 66),
(69, 59),
(69, 66),
(70, 59),
(70, 66),
(71, 59),
(71, 66),
(72, 59),
(72, 66),
(73, 59),
(73, 66),
(74, 59),
(74, 66),
(75, 59),
(75, 66),
(76, 59),
(76, 66),
(77, 59),
(77, 66),
(79, 59),
(79, 66),
(80, 59),
(80, 66),
(81, 59),
(81, 66),
(83, 59),
(83, 66),
(84, 59),
(84, 66),
(85, 59),
(85, 66),
(86, 59),
(86, 66),
(87, 59),
(87, 66),
(88, 59),
(88, 66),
(89, 59),
(89, 66),
(90, 59),
(90, 66),
(91, 59),
(91, 66),
(92, 59),
(92, 66),
(93, 59),
(93, 66),
(94, 59),
(94, 66),
(95, 59),
(95, 66),
(96, 59),
(96, 66),
(98, 59),
(98, 66),
(99, 59),
(99, 66),
(100, 59),
(100, 66),
(101, 59),
(101, 66),
(102, 59),
(102, 68),
(103, 59),
(103, 68),
(104, 59),
(104, 68),
(105, 59),
(105, 68),
(106, 59),
(106, 68),
(107, 59),
(107, 68),
(108, 59),
(108, 68),
(109, 59),
(109, 68),
(110, 59),
(110, 68),
(111, 59),
(111, 68),
(112, 59),
(112, 68),
(113, 59),
(113, 67),
(113, 78),
(114, 59),
(114, 67),
(114, 78),
(115, 59),
(115, 67),
(115, 78),
(116, 59),
(116, 67),
(116, 78),
(117, 59),
(117, 67),
(117, 78),
(118, 59),
(118, 67),
(118, 78),
(119, 59),
(119, 67),
(119, 78),
(120, 59),
(120, 67),
(120, 78),
(121, 59),
(121, 67),
(121, 78),
(122, 59),
(122, 67),
(122, 78),
(124, 59),
(124, 67),
(124, 78),
(125, 59),
(125, 67),
(125, 78),
(126, 59),
(126, 67),
(126, 78),
(127, 59),
(127, 67),
(127, 78),
(128, 59),
(128, 67),
(128, 78),
(129, 59),
(129, 67),
(129, 78),
(130, 59),
(130, 67),
(130, 78),
(131, 59),
(131, 67),
(131, 78),
(132, 59),
(132, 67),
(132, 78),
(133, 59),
(133, 67),
(133, 78),
(134, 59),
(134, 67),
(134, 78),
(135, 59),
(135, 67),
(135, 78),
(136, 59),
(136, 67),
(136, 78),
(137, 59),
(137, 67),
(137, 78),
(138, 59),
(138, 67),
(138, 79),
(139, 59),
(139, 67),
(139, 79),
(140, 59),
(140, 67),
(140, 79),
(141, 59),
(141, 67),
(141, 79),
(142, 59),
(142, 67),
(142, 79),
(143, 59),
(143, 67),
(143, 81),
(144, 59),
(144, 67),
(144, 81),
(145, 59),
(145, 67),
(145, 81),
(146, 59),
(146, 67),
(146, 80),
(147, 59),
(147, 67),
(147, 80),
(148, 59),
(148, 67),
(148, 80),
(149, 59),
(149, 67),
(149, 80),
(150, 59),
(150, 67),
(150, 80),
(151, 59),
(151, 67),
(151, 80),
(152, 59),
(152, 67),
(152, 80),
(153, 59),
(153, 67),
(153, 80),
(154, 59),
(154, 67),
(154, 80),
(155, 60),
(155, 71),
(156, 60),
(156, 71),
(157, 60),
(157, 71),
(158, 60),
(158, 71),
(159, 60),
(159, 71),
(160, 60),
(160, 71),
(161, 60),
(161, 71),
(162, 60),
(162, 71),
(163, 60),
(163, 71),
(164, 60),
(164, 69),
(165, 60),
(165, 69),
(166, 60),
(166, 69),
(167, 60),
(167, 69),
(168, 60),
(168, 69),
(169, 60),
(169, 69),
(170, 60),
(170, 69),
(171, 60),
(171, 69),
(172, 60),
(172, 69),
(173, 60),
(173, 69),
(174, 60),
(174, 69),
(175, 60),
(175, 69),
(176, 60),
(176, 69),
(177, 60),
(177, 69),
(178, 60),
(178, 69),
(179, 60),
(179, 69),
(180, 60),
(180, 69),
(181, 60),
(181, 70),
(182, 60),
(182, 70),
(183, 60),
(183, 70),
(184, 60),
(184, 70),
(185, 60),
(185, 70),
(186, 60),
(186, 70),
(187, 61),
(187, 72),
(188, 61),
(188, 72),
(189, 61),
(189, 72),
(190, 61),
(190, 72),
(191, 61),
(191, 72),
(192, 61),
(192, 72),
(193, 61),
(193, 72),
(194, 61),
(194, 72),
(195, 61),
(195, 73),
(196, 61),
(196, 73),
(197, 61),
(197, 73),
(198, 61),
(198, 73),
(199, 61),
(199, 73),
(200, 61),
(200, 73),
(201, 61),
(201, 73),
(202, 61),
(202, 73),
(203, 61),
(203, 73),
(204, 61),
(204, 73),
(205, 61),
(205, 73),
(206, 62),
(206, 74),
(207, 62),
(207, 74),
(208, 62),
(208, 74),
(209, 62),
(209, 74),
(210, 62),
(210, 74),
(211, 62),
(211, 74),
(212, 62),
(212, 75),
(213, 62),
(213, 75),
(214, 62),
(214, 75),
(215, 62),
(215, 75),
(216, 62),
(216, 75),
(217, 62),
(217, 75),
(218, 62),
(218, 75),
(219, 62),
(219, 75),
(220, 62),
(220, 75),
(221, 62),
(221, 75),
(222, 62),
(222, 75),
(223, 63),
(223, 76),
(224, 63),
(224, 76),
(225, 63),
(225, 76),
(226, 63),
(226, 76),
(227, 63),
(227, 76),
(228, 63),
(228, 76),
(229, 63),
(229, 76),
(230, 63),
(230, 76),
(231, 63),
(231, 77),
(232, 64),
(233, 64),
(234, 64),
(235, 64),
(236, 64),
(237, 64),
(238, 64),
(239, 64),
(240, 64),
(241, 59),
(241, 82),
(242, 59),
(242, 82),
(243, 59),
(243, 82),
(244, 59),
(244, 82),
(245, 59),
(245, 82),
(246, 59),
(246, 82),
(247, 59),
(247, 82),
(248, 59),
(248, 82),
(249, 59),
(249, 82),
(250, 59),
(250, 82),
(251, 59),
(251, 82),
(252, 59),
(252, 82),
(253, 59),
(253, 82),
(254, 59),
(254, 82),
(255, 59),
(255, 82),
(256, 59),
(256, 82),
(257, 59),
(257, 82),
(258, 59),
(258, 82),
(259, 59),
(259, 82),
(260, 59),
(260, 82),
(261, 59),
(261, 82),
(262, 59),
(262, 82),
(263, 59),
(263, 82),
(264, 59),
(264, 82),
(265, 59),
(265, 82),
(266, 59),
(266, 82),
(267, 59),
(267, 82),
(268, 59),
(268, 82),
(269, 59),
(269, 82),
(270, 59),
(270, 82),
(271, 59),
(271, 82),
(272, 59),
(272, 82),
(273, 59),
(273, 82),
(274, 59),
(274, 82),
(275, 59),
(275, 82),
(276, 59),
(276, 82),
(277, 59),
(277, 82),
(278, 59),
(278, 82),
(279, 59),
(279, 82),
(280, 59),
(280, 82),
(281, 59),
(281, 82),
(282, 59),
(282, 82);

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_to_download`
--

CREATE TABLE `migan_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_to_layout`
--

CREATE TABLE `migan_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_product_to_store`
--

CREATE TABLE `migan_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_product_to_store`
--

INSERT INTO `migan_product_to_store` (`product_id`, `store_id`) VALUES
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(79, 0),
(80, 0),
(81, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(200, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(209, 0),
(210, 0),
(211, 0),
(212, 0),
(213, 0),
(214, 0),
(215, 0),
(216, 0),
(217, 0),
(218, 0),
(219, 0),
(220, 0),
(221, 0),
(222, 0),
(223, 0),
(224, 0),
(225, 0),
(226, 0),
(227, 0),
(228, 0),
(229, 0),
(230, 0),
(231, 0),
(232, 0),
(233, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(241, 0),
(242, 0),
(243, 0),
(244, 0),
(245, 0),
(246, 0),
(247, 0),
(248, 0),
(249, 0),
(250, 0),
(251, 0),
(252, 0),
(253, 0),
(254, 0),
(255, 0),
(256, 0),
(257, 0),
(258, 0),
(259, 0),
(260, 0),
(261, 0),
(262, 0),
(263, 0),
(264, 0),
(265, 0),
(266, 0),
(267, 0),
(268, 0),
(269, 0),
(270, 0),
(271, 0),
(272, 0),
(273, 0),
(274, 0),
(275, 0),
(276, 0),
(277, 0),
(278, 0),
(279, 0),
(280, 0),
(281, 0),
(282, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_recette`
--

CREATE TABLE `migan_recette` (
  `recette_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `description` text,
  `meta_title` varchar(50) NOT NULL DEFAULT '0',
  `meta_description` text,
  `meta_keyword` varchar(50) NOT NULL DEFAULT '0',
  `image` varchar(250) NOT NULL DEFAULT '0',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `difficulte` int(11) NOT NULL,
  `preparation` int(11) NOT NULL,
  `cuisson` int(11) NOT NULL,
  `nb_personne` int(11) NOT NULL,
  `enavant` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `migan_recette`
--

INSERT INTO `migan_recette` (`recette_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `image`, `date_added`, `date_modified`, `difficulte`, `preparation`, `cuisson`, `nb_personne`, `enavant`, `status`, `sort_order`) VALUES
(1, 'tarte tatinx', '&lt;p&gt;la tarte tatin est une tarte&lt;/p&gt;', 'TATINe', 'description', 'tarte', 'catalog/produits/indispo.png', '2017-12-29 13:18:03', '2018-01-02 15:26:23', 3, 30, 2, 8, 1, 0, 1),
(2, 'Recette 2', '&lt;p&gt;Ceci est une deuxieme recette&lt;/p&gt;', 'Titre', '', '', 'catalog/profile-pic.png', '2018-01-02 15:32:48', '2018-01-02 15:33:04', 3, 50, 2, 5, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `migan_recette_image`
--

CREATE TABLE `migan_recette_image` (
  `recette_image_id` int(11) NOT NULL,
  `recette_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Contenu de la table `migan_recette_image`
--

INSERT INTO `migan_recette_image` (`recette_image_id`, `recette_id`, `image`, `sort_order`) VALUES
(2367, 1, 'catalog/tarte-tatin-640.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_recette_product`
--

CREATE TABLE `migan_recette_product` (
  `recette_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `migan_recette_product`
--

INSERT INTO `migan_recette_product` (`recette_id`, `product_id`) VALUES
(1, 55),
(1, 207),
(2, 155),
(2, 240);

-- --------------------------------------------------------

--
-- Structure de la table `migan_recurring`
--

CREATE TABLE `migan_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_recurring_description`
--

CREATE TABLE `migan_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_return`
--

CREATE TABLE `migan_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_return_action`
--

CREATE TABLE `migan_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_return_action`
--

INSERT INTO `migan_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Structure de la table `migan_return_history`
--

CREATE TABLE `migan_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_return_reason`
--

CREATE TABLE `migan_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_return_reason`
--

INSERT INTO `migan_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Structure de la table `migan_return_status`
--

CREATE TABLE `migan_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_return_status`
--

INSERT INTO `migan_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Structure de la table `migan_review`
--

CREATE TABLE `migan_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_seo_url`
--

CREATE TABLE `migan_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_seo_url`
--

INSERT INTO `migan_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(847, 0, 1, 'information_id=4', 'about_us'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(846, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Structure de la table `migan_session`
--

CREATE TABLE `migan_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_session`
--

INSERT INTO `migan_session` (`session_id`, `data`, `expire`) VALUES
('03a3128dd4d4adc145a4099d40', '{\"language\":\"fr-FR\",\"currency\":\"EUR\",\"user_id\":\"2\",\"user_token\":\"Feoa5msD8ZtSq88UR77ZOdozqtUJ65tB\",\"shipping_address\":{\"address_id\":\"80\",\"firstname\":\"Lovely\",\"lastname\":\"Regna\",\"company\":\"\",\"address_1\":\"R\\u00e9sidence Les Olympiades\",\"address_2\":\"\",\"postcode\":\"97228\",\"city\":\"Sainte-luce\",\"zone_id\":\"4270\",\"zone\":\"Sainte-Luce\",\"zone_code\":\"SL\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"80\",\"firstname\":\"Lovely\",\"lastname\":\"Regna\",\"company\":\"\",\"address_1\":\"R\\u00e9sidence Les Olympiades\",\"address_2\":\"\",\"postcode\":\"97228\",\"city\":\"Sainte-luce\",\"zone_id\":\"4270\",\"zone\":\"Sainte-Luce\",\"zone_code\":\"SL\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":null},\"customer_id\":\"85\"}', '2018-01-05 14:58:19'),
('04add5e27bcf1e96f5b05e2e4b', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"D2cmaBvRptXBKldoHz685xIpboz1fjVP\"}', '2017-12-26 22:23:29'),
('059a8e28346f36d1f8fdbfa910', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-03 20:20:02'),
('09cba716fec09c97eb10e620ea', '{\"user_id\":\"1\",\"user_token\":\"uAQ3EY6Qr3BqMxk6IxthIo4qgGL7iC4u\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2017-12-29 18:13:44'),
('107b81d616da9c4182fd5207c9', '{\"api_id\":\"1\"}', '2018-01-03 20:39:23'),
('170b13f51bc2e16402ff60ee31', '{\"api_id\":\"1\"}', '2017-12-22 13:32:01'),
('18e6bff6be5f216a15158c760b', '{\"api_id\":\"1\"}', '2018-01-03 20:23:04'),
('1ff418138a82d49b85b0e1f5b1', '{\"api_id\":\"1\"}', '2018-01-05 15:26:37'),
('2001ebec8c8ce0069fad7451c4', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\"}', '2018-01-05 14:18:52'),
('2285f081b80cdf9d94fc8ee9e2', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\"}', '2018-01-05 14:38:16'),
('2e29f0fc386b8d7847f6518ad3', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-04 18:49:50'),
('318fc75d8d8963ad17d4dd88d9', '{\"api_id\":\"1\"}', '2017-12-27 16:22:52'),
('38ddd34e5fcf48f181a28cbf80', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-03 20:22:22'),
('3ede9f8c3f6705e21b760162da', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\"}', '2018-01-05 14:20:27'),
('3ef7b318b8728abbfd7360e351', '{\"api_id\":\"1\"}', '2018-01-05 15:15:10'),
('46e69f98348dd9e217e88a644c', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\",\"customer\":{\"customer_id\":\"84\",\"customer_group_id\":\"1\",\"firstname\":\"Steffy\",\"lastname\":\"FORTUNE\",\"email\":\"steffy.fortune@izile.fr\",\"telephone\":\"0696753710\",\"custom_field\":{\"9\":\"\",\"4\":\"\",\"2\":\"\",\"3\":\"1992-07-18\"}},\"payment_address\":{\"firstname\":\"Steffy\",\"lastname\":\"FORTUNE\",\"company\":\"\",\"address_1\":\"aDD1\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"vILLE\",\"zone_id\":\"4244\",\"zone\":\"Fort-de-France\",\"zone_code\":\"FDF\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":[]},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Paiement \\u00e0 la livraison\",\"terms\":\"\",\"sort_order\":\"5\"}},\"shipping_address\":{\"firstname\":\"Steffy\",\"lastname\":\"FORTUNE\",\"company\":\"\",\"address_1\":\"aDD1\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"vILLE\",\"zone_id\":\"4244\",\"zone\":\"Fort-de-France\",\"zone_code\":\"FDF\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Forfait\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Taux d\'exp\\u00e9dition plat\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5.00\\u20ac\"}},\"sort_order\":\"1\",\"error\":false}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Paiement \\u00e0 la livraison\",\"terms\":\"\",\"sort_order\":\"5\"},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Taux d\'exp\\u00e9dition plat\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5.00\\u20ac\"}}', '2018-01-05 14:54:56'),
('49514c67e5407d60830b7418d1', '{\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-03 19:04:15'),
('49850d46e6518fda23e4568d11', '{\"api_id\":\"1\"}', '2018-01-03 20:39:30'),
('4a6f3f1c6bc4ae5f43dc07ddfc', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2017-12-22 13:34:26'),
('4c1ed4feb1ce07fd55bc2d7b62', '{\"api_id\":\"1\"}', '2017-12-20 22:45:08'),
('4e618fcc920ea38cf088c6ead8', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"41XUeF58Ze5xAuUJmqCAGnZHWEhDrFuS\"}', '2017-12-22 13:31:14'),
('51a36d0c2aa2c4a302351bd13d', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-05 14:22:59'),
('58b4831d7106ad6fb21f62d8d4', '{\"api_id\":\"1\"}', '2018-01-03 20:36:01'),
('5935c30203dfde359d817dc343', '{\"api_id\":\"1\"}', '2017-12-27 21:47:50'),
('594f76e82df43ecc5f7c0e7f9d', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-04 21:39:20'),
('5cd9220561e8d89d1ce00dc33b', '{\"api_id\":\"1\"}', '2018-01-03 19:36:56'),
('5dd92ab8efb9bcc8f5890c76b7', '{\"api_id\":\"1\"}', '2017-12-27 16:58:08'),
('6595b5fb2415858b2b83c52500', '{\"api_id\":\"1\"}', '2018-01-04 21:39:36'),
('69eb7bb1d885e0b9d3a70efa42', '{\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-05 13:08:55'),
('6ce90b316c5350ffcdcb6232f0', '{\"api_id\":\"1\"}', '2018-01-03 19:37:42'),
('6cfb8ba20b21bd670d686d4b99', 'false', '2017-12-22 15:11:07'),
('6e5d9aa6ffece39ec7f54fd2fc', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2017-12-26 21:04:33'),
('729a3c868e06c2591c0299ad75', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\",\"customer\":{\"customer_id\":\"84\",\"customer_group_id\":\"1\",\"firstname\":\"Steffy\",\"lastname\":\"FORTUNE\",\"email\":\"steffy.fortune@izile.fr\",\"telephone\":\"0696753710\",\"custom_field\":{\"9\":\"\",\"4\":\"\",\"2\":\"\",\"3\":\"1992-07-18\"}}}', '2018-01-05 14:39:44'),
('74fc15808db80be5e23f84304d', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\"}', '2018-01-05 14:33:32'),
('7767a7f91dcf89716c0d6ac9e3', '{\"api_id\":\"1\"}', '2018-01-03 20:18:23'),
('7e0d0724670fa80709898edd27', '{\"api_id\":\"1\"}', '2017-12-27 15:49:55'),
('7ff70f0771c8684253f1b49c18', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2017-12-27 13:17:39'),
('83bd3f5e84246143035ed890ce', '{\"api_id\":\"1\",\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2017-12-20 22:44:45'),
('85b75e2cf78324ee834b138511', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\"}', '2018-01-05 14:00:20'),
('878f82d38c167b4af6182ddb12', '{\"api_id\":\"1\"}', '2017-12-20 22:44:42'),
('8bb63e311a94afef154d4a3cd4', '{\"api_id\":\"1\"}', '2018-01-05 13:09:27'),
('8cbfa895a4b25840031bc8b6d5', '{\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-04 13:12:01'),
('8d89e206641cf224abd800a768', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2017-12-27 13:17:39'),
('9673247abdeb749fea95a808e6', '{\"api_id\":\"1\"}', '2017-12-20 22:27:45'),
('9bcdb9da919b9aa880395daf1c', '{\"user_id\":\"1\",\"user_token\":\"EvZzbF2i2sjGEUjqCWGlzHKNxpw2o28v\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"account\":\"register\",\"customer_id\":\"88\",\"shipping_address\":false}', '2018-01-05 15:26:59'),
('9dd166164152edd4bd06355a4e', '{\"api_id\":\"1\"}', '2018-01-05 14:00:02'),
('9f7e97bb93d10e765455a96b53', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\",\"customer\":{\"customer_id\":\"84\",\"customer_group_id\":\"1\",\"firstname\":\"Steffy\",\"lastname\":\"FORTUNE\",\"email\":\"steffy.fortune@izile.fr\",\"telephone\":\"0696753710\",\"custom_field\":{\"9\":\"\",\"4\":\"\",\"2\":\"\",\"3\":\"1992-07-18\"}},\"payment_address\":{\"firstname\":\"Steffy\",\"lastname\":\"FORTUNE\",\"company\":\"\",\"address_1\":\"aDD1\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"vILLE\",\"zone_id\":\"4244\",\"zone\":\"Fort-de-France\",\"zone_code\":\"FDF\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":[]},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Paiement \\u00e0 la livraison\",\"terms\":\"\",\"sort_order\":\"5\"}},\"shipping_address\":{\"firstname\":\"Steffy\",\"lastname\":\"FORTUNE\",\"company\":\"\",\"address_1\":\"aDD1\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"vILLE\",\"zone_id\":\"4244\",\"zone\":\"Fort-de-France\",\"zone_code\":\"FDF\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Forfait\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Taux d\'exp\\u00e9dition plat\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5.00\\u20ac\"}},\"sort_order\":\"1\",\"error\":false}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Paiement \\u00e0 la livraison\",\"terms\":\"\",\"sort_order\":\"5\"},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Taux d\'exp\\u00e9dition plat\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5.00\\u20ac\"}}', '2018-01-05 14:43:51'),
('9fe5e9ac220733591a82eca7de', '{\"api_id\":\"1\"}', '2017-12-21 14:07:46'),
('a1cfa08a41557a24d7ba66e9ff', '{\"api_id\":\"1\",\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2017-12-27 16:58:12'),
('a6fd9645509bdf56de1834111c', '{\"language\":\"fr-FR\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"xQBwJKYOWOHhfrAfm9DfHLJoXVQ7Oao3\",\"account\":\"guest\",\"customer_id\":\"73\",\"shipping_address\":{\"address_id\":\"69\",\"firstname\":\"Steffy\",\"lastname\":\"FORTUNE\",\"company\":\"\",\"address_1\":\"Adresse1\",\"address_2\":\"Adresse2\",\"postcode\":\"97200\",\"city\":\"Ville\",\"zone_id\":\"4244\",\"zone\":\"Fort-de-France\",\"zone_code\":\"FDF\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":null}}', '2018-01-03 22:20:25'),
('ac7055b123959fcde77ff6c778', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-03 20:22:11'),
('ac91480611c1deec5e17c04cc6', '{\"api_id\":\"1\"}', '2018-01-03 20:18:31'),
('add36963d994a8bb0e2e68818e', '{\"api_id\":\"1\"}', '2018-01-05 14:55:42'),
('b5e64c73da7ec70268f5764dc7', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-05 15:26:57'),
('b8191880539063c691e96c4aa8', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"73\"}', '2018-01-04 21:36:45'),
('bcb481df72985a698c00bf8ba8', '{\"api_id\":\"1\"}', '2018-01-04 18:49:12'),
('bd2ab84f077fc12585b13a92ff', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"84\"}', '2018-01-05 14:22:04'),
('be0779ff4cadc757668842089b', '{\"api_id\":\"1\",\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2017-12-27 16:29:29'),
('c08c220c80c016661e59aa41b8', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"gJA1klsMN4otYKTOIalzWer547qDi3Yr\"}', '2017-12-27 22:11:21'),
('c21b3fc30d84d88ac5fa01ce52', '{\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2017-12-28 21:34:34'),
('c2d12f716497f5a74060edfc5f', '{\"api_id\":\"1\"}', '2018-01-03 19:20:53'),
('c579b02f81e938b696bb03ddcb', '{\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-02 15:24:58'),
('c9fab829df48179102db1b0a8b', '{\"api_id\":\"1\"}', '2018-01-03 20:36:17'),
('cb553e715e1f3381ba97615645', '{\"api_id\":\"1\"}', '2018-01-03 20:17:42'),
('cc1bdbb81c1f15e3e134aa528a', '{\"api_id\":\"1\"}', '2018-01-04 21:39:24'),
('cf24294eb6b99e3d4829450aef', '{\"api_id\":\"1\"}', '2017-12-27 17:05:46'),
('d239bd23d94d57f374c7cffc83', '{\"api_id\":\"1\"}', '2017-12-27 19:25:18'),
('d3345bebf5f3ee9876dc6b7fcc', '{\"api_id\":\"1\"}', '2018-01-04 21:33:56'),
('d53ef8c80f210fda02e5e5e770', '{\"api_id\":\"1\"}', '2018-01-03 20:22:41'),
('d54f2404d27f06630258163b94', '{\"language\":\"fr-FR\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"2r5iVQ84auvNwZh3KNgkS1kiHkxfQZ57\",\"account\":\"register\",\"payment_address\":false,\"shipping_address\":false}', '2018-01-04 23:06:01'),
('d7bebebd960fb754e6a5c43187', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"gvsANBRvVMPmsF3gX8eXjFPOAw9xsHpX\"}', '2017-12-22 17:58:54'),
('d9031f26907e47bfc536db1be7', '{\"api_id\":\"1\"}', '2018-01-03 20:15:47'),
('dff95304dda947ae7af2f56d98', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-04 21:39:11'),
('e1e854d92d97e4a58cb7fe06fb', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-03 20:22:37'),
('e9fe8c9f473e32cca6b02a6c27', '{\"api_id\":\"1\"}', '2018-01-04 15:02:26'),
('eefa405a1cc572e7e1f4a04e98', '{\"api_id\":\"1\"}', '2018-01-04 21:33:48'),
('f0565424e695d2b7d05da22ff0', '{\"api_id\":\"1\"}', '2018-01-05 13:56:53'),
('f219bcd6ac3e1d19819eb7d626', '{\"api_id\":\"1\"}', '2018-01-05 15:08:46'),
('f4c1ba7794e3f809227df19142', '{\"user_id\":\"1\",\"user_token\":\"IL9pgBJT7SdTFvo0vqB4hqjWjLhxAzMk\",\"language\":\"en-gb\",\"currency\":\"EUR\",\"wishlist\":[\"50\"]}', '2017-12-20 22:55:16'),
('f4eabed6c52ab47b8176dd7632', '{\"api_id\":\"1\"}', '2017-12-21 14:47:35'),
('f5de3cf56dec6fd658dc58bba8', '{\"language\":\"fr-FR\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"Lrz3BdZvR44xnX61cMlBKcrY0Vs71GZl\",\"wishlist\":[\"137\"],\"compare\":[\"137\",\"199\"]}', '2017-12-28 21:53:39'),
('f79cfc7ed5d707e3cbe158525f', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\"}', '2018-01-03 20:20:10'),
('fa0a6706070cdea6943692c498', '{\"api_id\":\"1\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"customer_id\":\"87\",\"customer\":{\"customer_id\":\"87\",\"customer_group_id\":\"4\",\"firstname\":\"Pr\\u00e9nom\",\"lastname\":\"Nom\",\"email\":\"steffy.fortune@izile.fr\",\"telephone\":\"0696753710\",\"custom_field\":{\"9\":\"SOGECO\",\"4\":\"Carrefour DILLON\",\"2\":\"797878787878\",\"3\":\"\"}},\"payment_address\":{\"firstname\":\"Pr\\u00e9nom\",\"lastname\":\"Nom\",\"company\":\"SOGECO\",\"address_1\":\"Carrefour Dillon\",\"address_2\":\"\",\"postcode\":\"97200\",\"city\":\"Fdf\",\"zone_id\":\"4244\",\"zone\":\"Fort-de-France\",\"zone_code\":\"FDF\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":[]},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Paiement \\u00e0 la livraison\",\"terms\":\"\",\"sort_order\":\"5\"}},\"shipping_address\":{\"firstname\":\"Pr\\u00e9nom\",\"lastname\":\"Nom\",\"company\":\"Carrefour Dillon\",\"address_1\":\"Add1\",\"address_2\":\"Add2\",\"postcode\":\"97200\",\"city\":\"Ville\",\"zone_id\":\"4244\",\"zone\":\"Fort-de-France\",\"zone_code\":\"FDF\",\"country_id\":\"134\",\"country\":\"Martinique\",\"iso_code_2\":\"MQ\",\"iso_code_3\":\"MTQ\",\"address_format\":\"\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Forfait\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Taux d\'exp\\u00e9dition plat\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5.00\\u20ac\"}},\"sort_order\":\"1\",\"error\":false}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Paiement \\u00e0 la livraison\",\"terms\":\"\",\"sort_order\":\"5\"},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Taux d\'exp\\u00e9dition plat\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5.00\\u20ac\"}}', '2018-01-05 15:14:46'),
('fac1bf59af211247499977dfb9', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"install\":\"0ApQB5t0Vm\",\"user_id\":\"1\",\"user_token\":\"aTzvp9oG3N5rx956X22FGaceauOnzEpw\"}', '2017-12-21 22:27:13'),
('fd645fdb5d4db39f032e10f908', '{\"user_id\":\"1\",\"user_token\":\"u80eNZ154nOTDKWdnMysfH28p9cnHzqg\",\"language\":\"fr-FR\",\"currency\":\"EUR\",\"compare\":[]}', '2018-01-02 20:16:37'),
('fec22c21b73902e7226f8d8f73', '{\"api_id\":\"1\"}', '2017-12-20 22:27:38');

-- --------------------------------------------------------

--
-- Structure de la table `migan_setting`
--

CREATE TABLE `migan_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_setting`
--

INSERT INTO `migan_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1069, 0, 'developer', 'developer_sass', '0', 0),
(1413, 0, 'config', 'config_error_filename', 'error.log', 0),
(1412, 0, 'config', 'config_error_log', '1', 0),
(1411, 0, 'config', 'config_error_display', '1', 0),
(1403, 0, 'config', 'config_compression', '0', 0),
(1401, 0, 'config', 'config_seo_url', '0', 0),
(1402, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1409, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1408, 0, 'config', 'config_file_max_size', '300000', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(1410, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1405, 0, 'config', 'config_password', '1', 0),
(1406, 0, 'config', 'config_shared', '0', 0),
(1407, 0, 'config', 'config_encryption', '6l4TCEHplvHT0pXX6DcmT4aIGEQw3SRDcuRbTrEozzi65l50DRhx5oNcx2nqwcUkf1w4ppqTJAvnSc3SERCmpGTqZuE3Glcnn5ztZjdz2hgOjOPPM304h7n6OpRgy0bWJ6CSdLZt6SDiKf6mLYFSbOwMboRktDM9u0RlDUQ3Kwax0v2dEDQ6piVbvupHKe9D6gL2vlTP9bRNqOKLaWK1xKs7ZFleLhl01y1LWZqZfQ97Bv3ygCYYgBCwVodFVSomq74XSwxVuFraVUu6YcRQM1m0Bvni8r8DPHBOsAeAcsXk9soSKfZ7l1bt0n0z1HLoHgha9Zzib2s57wUr6HCUZJiZwVGpADmTnBCKQT7JkIw5XvGupqdkmRzqJ6ov19dgheE02Cn7P3SVzQqBdY643eR7kb6zJupzociMcTkjZKqY1OkSUvDXXLBVDZxXxZ5jMtpG7kT0j8VLIKevRbwCudejM77OxRD7IgOZPtvqB2F5ZGJuAkLxlWtWOq0yEbcRnSlAzYESDV54zdcMXFdz4Fjpb4LYCjVmodulQ2fcr0tWbEPypDKddyuDOxIpcvzZok4ElLv7wGOdKWNqvK3Oepjrzot2vAuuFKN13jseI5v0i9YY1NaMJuOa3kxFAP6oUfcTr1NL7PDYF4qxG9In64q3GYXnhQXtZkl3x3m9y1f5Irm4LSwebQmBNt5spn3OVa11tsyoSOk24pc5ALJIC3pWykDDN9fkHgcSgl6MW8yGhcdjdIy1L3IdaMFlXO98ASNghgVsa0hPgn6yNPwow6Ljg8JheJA5DXEUpuIEeFDkM2zO9zGIm6p75YWkirjKAaTg8L3SURIOF2G5e3fK4vv3yQvLCjfgh8KXnlWmrCkGUxgbiR1CUu3vzBDYBapYj4BhLyYZKWktBWwkwBR5jluQ5UB063Ivt88SppOCbkFLrDL7CTKCYUKJcmwGIyKSnDPaBWhMeBSCY0ddPla1LXA3lkAqLO40LMghBiZfyZNLU3PqexYDUMeO4Yt7yRFq', 0),
(1404, 0, 'config', 'config_secure', '0', 0),
(1400, 0, 'config', 'config_maintenance', '0', 0),
(1399, 0, 'config', 'config_mail_alert_email', '', 0),
(1398, 0, 'config', 'config_mail_alert', '[\"account\",\"order\"]', 1),
(1393, 0, 'config', 'config_mail_smtp_hostname', 'smtp.izile.fr', 0),
(1394, 0, 'config', 'config_mail_smtp_username', 'support@migan.fr', 0),
(1397, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1396, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1395, 0, 'config', 'config_mail_smtp_password', '@migan12', 0),
(1392, 0, 'config', 'config_mail_parameter', '', 0),
(1391, 0, 'config', 'config_mail_engine', 'smtp', 0),
(1390, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1389, 0, 'config', 'config_logo', 'catalog/logo_migan.png', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(125, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(126, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(127, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(132, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(134, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(138, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(146, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(147, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(148, 0, 'theme_default', 'theme_default_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(1068, 0, 'developer', 'developer_theme', '0', 0),
(1387, 0, 'config', 'config_captcha', '', 0),
(1388, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1386, 0, 'config', 'config_return_status_id', '2', 0),
(1385, 0, 'config', 'config_return_id', '0', 0),
(1384, 0, 'config', 'config_affiliate_id', '4', 0),
(1383, 0, 'config', 'config_affiliate_commission', '5', 0),
(1382, 0, 'config', 'config_affiliate_auto', '0', 0),
(1381, 0, 'config', 'config_affiliate_approval', '0', 0),
(1380, 0, 'config', 'config_affiliate_group_id', '2', 0),
(1379, 0, 'config', 'config_stock_checkout', '0', 0),
(1378, 0, 'config', 'config_stock_warning', '1', 0),
(1377, 0, 'config', 'config_stock_display', '0', 0),
(1376, 0, 'config', 'config_api_id', '1', 0),
(1375, 0, 'config', 'config_fraud_status_id', '7', 0),
(1374, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1373, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1372, 0, 'config', 'config_order_status_id', '1', 0),
(1371, 0, 'config', 'config_checkout_id', '5', 0),
(1370, 0, 'config', 'config_checkout_guest', '0', 0),
(1369, 0, 'config', 'config_cart_weight', '0', 0),
(1368, 0, 'config', 'config_invoice_prefix', 'INV-2018-00', 0),
(1367, 0, 'config', 'config_account_id', '3', 0),
(1366, 0, 'config', 'config_login_attempts', '5', 0),
(1365, 0, 'config', 'config_customer_price', '0', 0),
(1364, 0, 'config', 'config_customer_group_display', '[\"3\",\"2\",\"1\"]', 1),
(1363, 0, 'config', 'config_customer_group_id', '1', 0),
(1362, 0, 'config', 'config_customer_search', '1', 0),
(462, 0, 'export_import', 'export_import_settings_use_import_cache', '1', 0),
(463, 0, 'export_import', 'export_import_settings_use_export_cache', '0', 0),
(1361, 0, 'config', 'config_customer_activity', '1', 0),
(1360, 0, 'config', 'config_customer_online', '1', 0),
(1359, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1358, 0, 'config', 'config_tax_default', '', 0),
(1357, 0, 'config', 'config_tax', '1', 0),
(1356, 0, 'config', 'config_voucher_max', '1000', 0),
(1355, 0, 'config', 'config_voucher_min', '1', 0),
(1354, 0, 'config', 'config_review_guest', '0', 0),
(1353, 0, 'config', 'config_review_status', '1', 0),
(1352, 0, 'config', 'config_limit_admin', '20', 0),
(1351, 0, 'config', 'config_product_count', '1', 0),
(1350, 0, 'config', 'config_weight_class_id', '1', 0),
(1349, 0, 'config', 'config_length_class_id', '1', 0),
(1348, 0, 'config', 'config_currency_auto', '0', 0),
(1347, 0, 'config', 'config_currency', 'EUR', 0),
(1346, 0, 'config', 'config_admin_language', 'fr-FR', 0),
(1345, 0, 'config', 'config_language', 'fr-FR', 0),
(1344, 0, 'config', 'config_zone_id', '', 0),
(1343, 0, 'config', 'config_country_id', '134', 0),
(1342, 0, 'config', 'config_comment', '', 0),
(1341, 0, 'config', 'config_open', '', 0),
(1340, 0, 'config', 'config_image', '', 0),
(1339, 0, 'config', 'config_fax', '', 0),
(1338, 0, 'config', 'config_telephone', '0696753710', 0),
(1337, 0, 'config', 'config_email', 'steffy.fortune@izile.fr', 0),
(1336, 0, 'config', 'config_geocode', '', 0),
(1335, 0, 'config', 'config_address', 'Address 1', 0),
(1334, 0, 'config', 'config_owner', 'FORTUNE Steffy', 0),
(1333, 0, 'config', 'config_name', 'MIGAN', 0),
(1332, 0, 'config', 'config_layout_id', '4', 0),
(1331, 0, 'config', 'config_theme', 'default', 0),
(1330, 0, 'config', 'config_meta_keyword', '', 0),
(1329, 0, 'config', 'config_meta_description', 'Le marché de la martinique sur internet', 0),
(1328, 0, 'config', 'config_meta_title', 'MIGAN', 0);

-- --------------------------------------------------------

--
-- Structure de la table `migan_shipping_courier`
--

CREATE TABLE `migan_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_shipping_courier`
--

INSERT INTO `migan_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Structure de la table `migan_statistics`
--

CREATE TABLE `migan_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_statistics`
--

INSERT INTO `migan_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '1094.7900'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Structure de la table `migan_stock_status`
--

CREATE TABLE `migan_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_stock_status`
--

INSERT INTO `migan_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Structure de la table `migan_store`
--

CREATE TABLE `migan_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_tax_class`
--

CREATE TABLE `migan_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_tax_class`
--

INSERT INTO `migan_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Structure de la table `migan_tax_rate`
--

CREATE TABLE `migan_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_tax_rate`
--

INSERT INTO `migan_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Structure de la table `migan_tax_rate_to_customer_group`
--

CREATE TABLE `migan_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_tax_rate_to_customer_group`
--

INSERT INTO `migan_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Structure de la table `migan_tax_rule`
--

CREATE TABLE `migan_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_tax_rule`
--

INSERT INTO `migan_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Structure de la table `migan_theme`
--

CREATE TABLE `migan_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_translation`
--

CREATE TABLE `migan_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_upload`
--

CREATE TABLE `migan_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_user`
--

CREATE TABLE `migan_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_user`
--

INSERT INTO `migan_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '3c699a2ff99329e797824c76dcb13cb3f09c3b34', 'IPckyoFyU', 'John', 'Doe', 'steffy.fortune@izile.fr', '', '', '192.168.1.58', 1, '2017-12-20 16:40:49'),
(2, 1, 'lovely', 'e0fedf373410d73e5bdda599250067f13f4863cc', 'qsFT6DDGh', 'Lovely', 'REGNA', 'lovely.regna@izile.fr', '', '', '192.168.1.49', 1, '2017-12-22 09:00:46'),
(3, 1, 'gilles', '10e781bc8189cb6d3509704330507c76a098bde7', 'om2vu6jPC', 'Gilles', 'GELAN', 'gilles.gelan@izile.fr', '', '', '', 1, '2018-01-04 09:36:31');

-- --------------------------------------------------------

--
-- Structure de la table `migan_user_group`
--

CREATE TABLE `migan_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_user_group`
--

INSERT INTO `migan_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/goodie\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recette\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/goodie\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recette\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Structure de la table `migan_voucher`
--

CREATE TABLE `migan_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_voucher_history`
--

CREATE TABLE `migan_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migan_voucher_theme`
--

CREATE TABLE `migan_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_voucher_theme`
--

INSERT INTO `migan_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `migan_voucher_theme_description`
--

CREATE TABLE `migan_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_voucher_theme_description`
--

INSERT INTO `migan_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Structure de la table `migan_weight_class`
--

CREATE TABLE `migan_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_weight_class`
--

INSERT INTO `migan_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Structure de la table `migan_weight_class_description`
--

CREATE TABLE `migan_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_weight_class_description`
--

INSERT INTO `migan_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Structure de la table `migan_zone`
--

CREATE TABLE `migan_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_zone`
--

INSERT INTO `migan_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 0),
(2, 1, 'Badghis', 'BDG', 0),
(3, 1, 'Baghlan', 'BGL', 0),
(4, 1, 'Balkh', 'BAL', 0),
(5, 1, 'Bamian', 'BAM', 0),
(6, 1, 'Farah', 'FRA', 0),
(7, 1, 'Faryab', 'FYB', 0),
(8, 1, 'Ghazni', 'GHA', 0),
(9, 1, 'Ghowr', 'GHO', 0),
(10, 1, 'Helmand', 'HEL', 0),
(11, 1, 'Herat', 'HER', 0),
(12, 1, 'Jowzjan', 'JOW', 0),
(13, 1, 'Kabul', 'KAB', 0),
(14, 1, 'Kandahar', 'KAN', 0),
(15, 1, 'Kapisa', 'KAP', 0),
(16, 1, 'Khost', 'KHO', 0),
(17, 1, 'Konar', 'KNR', 0),
(18, 1, 'Kondoz', 'KDZ', 0),
(19, 1, 'Laghman', 'LAG', 0),
(20, 1, 'Lowgar', 'LOW', 0),
(21, 1, 'Nangrahar', 'NAN', 0),
(22, 1, 'Nimruz', 'NIM', 0),
(23, 1, 'Nurestan', 'NUR', 0),
(24, 1, 'Oruzgan', 'ORU', 0),
(25, 1, 'Paktia', 'PIA', 0),
(26, 1, 'Paktika', 'PKA', 0),
(27, 1, 'Parwan', 'PAR', 0),
(28, 1, 'Samangan', 'SAM', 0),
(29, 1, 'Sar-e Pol', 'SAR', 0),
(30, 1, 'Takhar', 'TAK', 0),
(31, 1, 'Wardak', 'WAR', 0),
(32, 1, 'Zabol', 'ZAB', 0),
(33, 2, 'Berat', 'BR', 0),
(34, 2, 'Bulqize', 'BU', 0),
(35, 2, 'Delvine', 'DL', 0),
(36, 2, 'Devoll', 'DV', 0),
(37, 2, 'Diber', 'DI', 0),
(38, 2, 'Durres', 'DR', 0),
(39, 2, 'Elbasan', 'EL', 0),
(40, 2, 'Kolonje', 'ER', 0),
(41, 2, 'Fier', 'FR', 0),
(42, 2, 'Gjirokaster', 'GJ', 0),
(43, 2, 'Gramsh', 'GR', 0),
(44, 2, 'Has', 'HA', 0),
(45, 2, 'Kavaje', 'KA', 0),
(46, 2, 'Kurbin', 'KB', 0),
(47, 2, 'Kucove', 'KC', 0),
(48, 2, 'Korce', 'KO', 0),
(49, 2, 'Kruje', 'KR', 0),
(50, 2, 'Kukes', 'KU', 0),
(51, 2, 'Librazhd', 'LB', 0),
(52, 2, 'Lezhe', 'LE', 0),
(53, 2, 'Lushnje', 'LU', 0),
(54, 2, 'Malesi e Madhe', 'MM', 0),
(55, 2, 'Mallakaster', 'MK', 0),
(56, 2, 'Mat', 'MT', 0),
(57, 2, 'Mirdite', 'MR', 0),
(58, 2, 'Peqin', 'PQ', 0),
(59, 2, 'Permet', 'PR', 0),
(60, 2, 'Pogradec', 'PG', 0),
(61, 2, 'Puke', 'PU', 0),
(62, 2, 'Shkoder', 'SH', 0),
(63, 2, 'Skrapar', 'SK', 0),
(64, 2, 'Sarande', 'SR', 0),
(65, 2, 'Tepelene', 'TE', 0),
(66, 2, 'Tropoje', 'TP', 0),
(67, 2, 'Tirane', 'TR', 0),
(68, 2, 'Vlore', 'VL', 0),
(69, 3, 'Adrar', 'ADR', 0),
(70, 3, 'Ain Defla', 'ADE', 0),
(71, 3, 'Ain Temouchent', 'ATE', 0),
(72, 3, 'Alger', 'ALG', 0),
(73, 3, 'Annaba', 'ANN', 0),
(74, 3, 'Batna', 'BAT', 0),
(75, 3, 'Bechar', 'BEC', 0),
(76, 3, 'Bejaia', 'BEJ', 0),
(77, 3, 'Biskra', 'BIS', 0),
(78, 3, 'Blida', 'BLI', 0),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 0),
(80, 3, 'Bouira', 'BOA', 0),
(81, 3, 'Boumerdes', 'BMD', 0),
(82, 3, 'Chlef', 'CHL', 0),
(83, 3, 'Constantine', 'CON', 0),
(84, 3, 'Djelfa', 'DJE', 0),
(85, 3, 'El Bayadh', 'EBA', 0),
(86, 3, 'El Oued', 'EOU', 0),
(87, 3, 'El Tarf', 'ETA', 0),
(88, 3, 'Ghardaia', 'GHA', 0),
(89, 3, 'Guelma', 'GUE', 0),
(90, 3, 'Illizi', 'ILL', 0),
(91, 3, 'Jijel', 'JIJ', 0),
(92, 3, 'Khenchela', 'KHE', 0),
(93, 3, 'Laghouat', 'LAG', 0),
(94, 3, 'Muaskar', 'MUA', 0),
(95, 3, 'Medea', 'MED', 0),
(96, 3, 'Mila', 'MIL', 0),
(97, 3, 'Mostaganem', 'MOS', 0),
(98, 3, 'M\'Sila', 'MSI', 0),
(99, 3, 'Naama', 'NAA', 0),
(100, 3, 'Oran', 'ORA', 0),
(101, 3, 'Ouargla', 'OUA', 0),
(102, 3, 'Oum el-Bouaghi', 'OEB', 0),
(103, 3, 'Relizane', 'REL', 0),
(104, 3, 'Saida', 'SAI', 0),
(105, 3, 'Setif', 'SET', 0),
(106, 3, 'Sidi Bel Abbes', 'SBA', 0),
(107, 3, 'Skikda', 'SKI', 0),
(108, 3, 'Souk Ahras', 'SAH', 0),
(109, 3, 'Tamanghasset', 'TAM', 0),
(110, 3, 'Tebessa', 'TEB', 0),
(111, 3, 'Tiaret', 'TIA', 0),
(112, 3, 'Tindouf', 'TIN', 0),
(113, 3, 'Tipaza', 'TIP', 0),
(114, 3, 'Tissemsilt', 'TIS', 0),
(115, 3, 'Tizi Ouzou', 'TOU', 0),
(116, 3, 'Tlemcen', 'TLE', 0),
(117, 4, 'Eastern', 'E', 0),
(118, 4, 'Manu\'a', 'M', 0),
(119, 4, 'Rose Island', 'R', 0),
(120, 4, 'Swains Island', 'S', 0),
(121, 4, 'Western', 'W', 0),
(122, 5, 'Andorra la Vella', 'ALV', 0),
(123, 5, 'Canillo', 'CAN', 0),
(124, 5, 'Encamp', 'ENC', 0),
(125, 5, 'Escaldes-Engordany', 'ESE', 0),
(126, 5, 'La Massana', 'LMA', 0),
(127, 5, 'Ordino', 'ORD', 0),
(128, 5, 'Sant Julia de Loria', 'SJL', 0),
(129, 6, 'Bengo', 'BGO', 0),
(130, 6, 'Benguela', 'BGU', 0),
(131, 6, 'Bie', 'BIE', 0),
(132, 6, 'Cabinda', 'CAB', 0),
(133, 6, 'Cuando-Cubango', 'CCU', 0),
(134, 6, 'Cuanza Norte', 'CNO', 0),
(135, 6, 'Cuanza Sul', 'CUS', 0),
(136, 6, 'Cunene', 'CNN', 0),
(137, 6, 'Huambo', 'HUA', 0),
(138, 6, 'Huila', 'HUI', 0),
(139, 6, 'Luanda', 'LUA', 0),
(140, 6, 'Lunda Norte', 'LNO', 0),
(141, 6, 'Lunda Sul', 'LSU', 0),
(142, 6, 'Malange', 'MAL', 0),
(143, 6, 'Moxico', 'MOX', 0),
(144, 6, 'Namibe', 'NAM', 0),
(145, 6, 'Uige', 'UIG', 0),
(146, 6, 'Zaire', 'ZAI', 0),
(147, 9, 'Saint George', 'ASG', 0),
(148, 9, 'Saint John', 'ASJ', 0),
(149, 9, 'Saint Mary', 'ASM', 0),
(150, 9, 'Saint Paul', 'ASL', 0),
(151, 9, 'Saint Peter', 'ASR', 0),
(152, 9, 'Saint Philip', 'ASH', 0),
(153, 9, 'Barbuda', 'BAR', 0),
(154, 9, 'Redonda', 'RED', 0),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 0),
(156, 10, 'Buenos Aires', 'BA', 0),
(157, 10, 'Catamarca', 'CA', 0),
(158, 10, 'Chaco', 'CH', 0),
(159, 10, 'Chubut', 'CU', 0),
(160, 10, 'Cordoba', 'CO', 0),
(161, 10, 'Corrientes', 'CR', 0),
(162, 10, 'Distrito Federal', 'DF', 0),
(163, 10, 'Entre Rios', 'ER', 0),
(164, 10, 'Formosa', 'FO', 0),
(165, 10, 'Jujuy', 'JU', 0),
(166, 10, 'La Pampa', 'LP', 0),
(167, 10, 'La Rioja', 'LR', 0),
(168, 10, 'Mendoza', 'ME', 0),
(169, 10, 'Misiones', 'MI', 0),
(170, 10, 'Neuquen', 'NE', 0),
(171, 10, 'Rio Negro', 'RN', 0),
(172, 10, 'Salta', 'SA', 0),
(173, 10, 'San Juan', 'SJ', 0),
(174, 10, 'San Luis', 'SL', 0),
(175, 10, 'Santa Cruz', 'SC', 0),
(176, 10, 'Santa Fe', 'SF', 0),
(177, 10, 'Santiago del Estero', 'SD', 0),
(178, 10, 'Tierra del Fuego', 'TF', 0),
(179, 10, 'Tucuman', 'TU', 0),
(180, 11, 'Aragatsotn', 'AGT', 0),
(181, 11, 'Ararat', 'ARR', 0),
(182, 11, 'Armavir', 'ARM', 0),
(183, 11, 'Geghark\'unik\'', 'GEG', 0),
(184, 11, 'Kotayk\'', 'KOT', 0),
(185, 11, 'Lorri', 'LOR', 0),
(186, 11, 'Shirak', 'SHI', 0),
(187, 11, 'Syunik\'', 'SYU', 0),
(188, 11, 'Tavush', 'TAV', 0),
(189, 11, 'Vayots\' Dzor', 'VAY', 0),
(190, 11, 'Yerevan', 'YER', 0),
(191, 13, 'Australian Capital Territory', 'ACT', 0),
(192, 13, 'New South Wales', 'NSW', 0),
(193, 13, 'Northern Territory', 'NT', 0),
(194, 13, 'Queensland', 'QLD', 0),
(195, 13, 'South Australia', 'SA', 0),
(196, 13, 'Tasmania', 'TAS', 0),
(197, 13, 'Victoria', 'VIC', 0),
(198, 13, 'Western Australia', 'WA', 0),
(199, 14, 'Burgenland', 'BUR', 0),
(200, 14, 'Kärnten', 'KAR', 0),
(201, 14, 'Niederösterreich', 'NOS', 0),
(202, 14, 'Oberösterreich', 'OOS', 0),
(203, 14, 'Salzburg', 'SAL', 0),
(204, 14, 'Steiermark', 'STE', 0),
(205, 14, 'Tirol', 'TIR', 0),
(206, 14, 'Vorarlberg', 'VOR', 0),
(207, 14, 'Wien', 'WIE', 0),
(208, 15, 'Ali Bayramli', 'AB', 0),
(209, 15, 'Abseron', 'ABS', 0),
(210, 15, 'AgcabAdi', 'AGC', 0),
(211, 15, 'Agdam', 'AGM', 0),
(212, 15, 'Agdas', 'AGS', 0),
(213, 15, 'Agstafa', 'AGA', 0),
(214, 15, 'Agsu', 'AGU', 0),
(215, 15, 'Astara', 'AST', 0),
(216, 15, 'Baki', 'BA', 0),
(217, 15, 'BabAk', 'BAB', 0),
(218, 15, 'BalakAn', 'BAL', 0),
(219, 15, 'BArdA', 'BAR', 0),
(220, 15, 'Beylaqan', 'BEY', 0),
(221, 15, 'Bilasuvar', 'BIL', 0),
(222, 15, 'Cabrayil', 'CAB', 0),
(223, 15, 'Calilabab', 'CAL', 0),
(224, 15, 'Culfa', 'CUL', 0),
(225, 15, 'Daskasan', 'DAS', 0),
(226, 15, 'Davaci', 'DAV', 0),
(227, 15, 'Fuzuli', 'FUZ', 0),
(228, 15, 'Ganca', 'GA', 0),
(229, 15, 'Gadabay', 'GAD', 0),
(230, 15, 'Goranboy', 'GOR', 0),
(231, 15, 'Goycay', 'GOY', 0),
(232, 15, 'Haciqabul', 'HAC', 0),
(233, 15, 'Imisli', 'IMI', 0),
(234, 15, 'Ismayilli', 'ISM', 0),
(235, 15, 'Kalbacar', 'KAL', 0),
(236, 15, 'Kurdamir', 'KUR', 0),
(237, 15, 'Lankaran', 'LA', 0),
(238, 15, 'Lacin', 'LAC', 0),
(239, 15, 'Lankaran', 'LAN', 0),
(240, 15, 'Lerik', 'LER', 0),
(241, 15, 'Masalli', 'MAS', 0),
(242, 15, 'Mingacevir', 'MI', 0),
(243, 15, 'Naftalan', 'NA', 0),
(244, 15, 'Neftcala', 'NEF', 0),
(245, 15, 'Oguz', 'OGU', 0),
(246, 15, 'Ordubad', 'ORD', 0),
(247, 15, 'Qabala', 'QAB', 0),
(248, 15, 'Qax', 'QAX', 0),
(249, 15, 'Qazax', 'QAZ', 0),
(250, 15, 'Qobustan', 'QOB', 0),
(251, 15, 'Quba', 'QBA', 0),
(252, 15, 'Qubadli', 'QBI', 0),
(253, 15, 'Qusar', 'QUS', 0),
(254, 15, 'Saki', 'SA', 0),
(255, 15, 'Saatli', 'SAT', 0),
(256, 15, 'Sabirabad', 'SAB', 0),
(257, 15, 'Sadarak', 'SAD', 0),
(258, 15, 'Sahbuz', 'SAH', 0),
(259, 15, 'Saki', 'SAK', 0),
(260, 15, 'Salyan', 'SAL', 0),
(261, 15, 'Sumqayit', 'SM', 0),
(262, 15, 'Samaxi', 'SMI', 0),
(263, 15, 'Samkir', 'SKR', 0),
(264, 15, 'Samux', 'SMX', 0),
(265, 15, 'Sarur', 'SAR', 0),
(266, 15, 'Siyazan', 'SIY', 0),
(267, 15, 'Susa', 'SS', 0),
(268, 15, 'Susa', 'SUS', 0),
(269, 15, 'Tartar', 'TAR', 0),
(270, 15, 'Tovuz', 'TOV', 0),
(271, 15, 'Ucar', 'UCA', 0),
(272, 15, 'Xankandi', 'XA', 0),
(273, 15, 'Xacmaz', 'XAC', 0),
(274, 15, 'Xanlar', 'XAN', 0),
(275, 15, 'Xizi', 'XIZ', 0),
(276, 15, 'Xocali', 'XCI', 0),
(277, 15, 'Xocavand', 'XVD', 0),
(278, 15, 'Yardimli', 'YAR', 0),
(279, 15, 'Yevlax', 'YEV', 0),
(280, 15, 'Zangilan', 'ZAN', 0),
(281, 15, 'Zaqatala', 'ZAQ', 0),
(282, 15, 'Zardab', 'ZAR', 0),
(283, 15, 'Naxcivan', 'NX', 0),
(284, 16, 'Acklins', 'ACK', 0),
(285, 16, 'Berry Islands', 'BER', 0),
(286, 16, 'Bimini', 'BIM', 0),
(287, 16, 'Black Point', 'BLK', 0),
(288, 16, 'Cat Island', 'CAT', 0),
(289, 16, 'Central Abaco', 'CAB', 0),
(290, 16, 'Central Andros', 'CAN', 0),
(291, 16, 'Central Eleuthera', 'CEL', 0),
(292, 16, 'City of Freeport', 'FRE', 0),
(293, 16, 'Crooked Island', 'CRO', 0),
(294, 16, 'East Grand Bahama', 'EGB', 0),
(295, 16, 'Exuma', 'EXU', 0),
(296, 16, 'Grand Cay', 'GRD', 0),
(297, 16, 'Harbour Island', 'HAR', 0),
(298, 16, 'Hope Town', 'HOP', 0),
(299, 16, 'Inagua', 'INA', 0),
(300, 16, 'Long Island', 'LNG', 0),
(301, 16, 'Mangrove Cay', 'MAN', 0),
(302, 16, 'Mayaguana', 'MAY', 0),
(303, 16, 'Moore\'s Island', 'MOO', 0),
(304, 16, 'North Abaco', 'NAB', 0),
(305, 16, 'North Andros', 'NAN', 0),
(306, 16, 'North Eleuthera', 'NEL', 0),
(307, 16, 'Ragged Island', 'RAG', 0),
(308, 16, 'Rum Cay', 'RUM', 0),
(309, 16, 'San Salvador', 'SAL', 0),
(310, 16, 'South Abaco', 'SAB', 0),
(311, 16, 'South Andros', 'SAN', 0),
(312, 16, 'South Eleuthera', 'SEL', 0),
(313, 16, 'Spanish Wells', 'SWE', 0),
(314, 16, 'West Grand Bahama', 'WGB', 0),
(315, 17, 'Capital', 'CAP', 0),
(316, 17, 'Central', 'CEN', 0),
(317, 17, 'Muharraq', 'MUH', 0),
(318, 17, 'Northern', 'NOR', 0),
(319, 17, 'Southern', 'SOU', 0),
(320, 18, 'Barisal', 'BAR', 0),
(321, 18, 'Chittagong', 'CHI', 0),
(322, 18, 'Dhaka', 'DHA', 0),
(323, 18, 'Khulna', 'KHU', 0),
(324, 18, 'Rajshahi', 'RAJ', 0),
(325, 18, 'Sylhet', 'SYL', 0),
(326, 19, 'Christ Church', 'CC', 0),
(327, 19, 'Saint Andrew', 'AND', 0),
(328, 19, 'Saint George', 'GEO', 0),
(329, 19, 'Saint James', 'JAM', 0),
(330, 19, 'Saint John', 'JOH', 0),
(331, 19, 'Saint Joseph', 'JOS', 0),
(332, 19, 'Saint Lucy', 'LUC', 0),
(333, 19, 'Saint Michael', 'MIC', 0),
(334, 19, 'Saint Peter', 'PET', 0),
(335, 19, 'Saint Philip', 'PHI', 0),
(336, 19, 'Saint Thomas', 'THO', 0),
(337, 20, 'Brestskaya (Brest)', 'BR', 0),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 0),
(339, 20, 'Horad Minsk', 'HM', 0),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 0),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 0),
(342, 20, 'Minskaya', 'MI', 0),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 0),
(344, 21, 'Antwerpen', 'VAN', 0),
(345, 21, 'Brabant Wallon', 'WBR', 0),
(346, 21, 'Hainaut', 'WHT', 0),
(347, 21, 'Liège', 'WLG', 0),
(348, 21, 'Limburg', 'VLI', 0),
(349, 21, 'Luxembourg', 'WLX', 0),
(350, 21, 'Namur', 'WNA', 0),
(351, 21, 'Oost-Vlaanderen', 'VOV', 0),
(352, 21, 'Vlaams Brabant', 'VBR', 0),
(353, 21, 'West-Vlaanderen', 'VWV', 0),
(354, 22, 'Belize', 'BZ', 0),
(355, 22, 'Cayo', 'CY', 0),
(356, 22, 'Corozal', 'CR', 0),
(357, 22, 'Orange Walk', 'OW', 0),
(358, 22, 'Stann Creek', 'SC', 0),
(359, 22, 'Toledo', 'TO', 0),
(360, 23, 'Alibori', 'AL', 0),
(361, 23, 'Atakora', 'AK', 0),
(362, 23, 'Atlantique', 'AQ', 0),
(363, 23, 'Borgou', 'BO', 0),
(364, 23, 'Collines', 'CO', 0),
(365, 23, 'Donga', 'DO', 0),
(366, 23, 'Kouffo', 'KO', 0),
(367, 23, 'Littoral', 'LI', 0),
(368, 23, 'Mono', 'MO', 0),
(369, 23, 'Oueme', 'OU', 0),
(370, 23, 'Plateau', 'PL', 0),
(371, 23, 'Zou', 'ZO', 0),
(372, 24, 'Devonshire', 'DS', 0),
(373, 24, 'Hamilton City', 'HC', 0),
(374, 24, 'Hamilton', 'HA', 0),
(375, 24, 'Paget', 'PG', 0),
(376, 24, 'Pembroke', 'PB', 0),
(377, 24, 'Saint George City', 'GC', 0),
(378, 24, 'Saint George\'s', 'SG', 0),
(379, 24, 'Sandys', 'SA', 0),
(380, 24, 'Smith\'s', 'SM', 0),
(381, 24, 'Southampton', 'SH', 0),
(382, 24, 'Warwick', 'WA', 0),
(383, 25, 'Bumthang', 'BUM', 0),
(384, 25, 'Chukha', 'CHU', 0),
(385, 25, 'Dagana', 'DAG', 0),
(386, 25, 'Gasa', 'GAS', 0),
(387, 25, 'Haa', 'HAA', 0),
(388, 25, 'Lhuntse', 'LHU', 0),
(389, 25, 'Mongar', 'MON', 0),
(390, 25, 'Paro', 'PAR', 0),
(391, 25, 'Pemagatshel', 'PEM', 0),
(392, 25, 'Punakha', 'PUN', 0),
(393, 25, 'Samdrup Jongkhar', 'SJO', 0),
(394, 25, 'Samtse', 'SAT', 0),
(395, 25, 'Sarpang', 'SAR', 0),
(396, 25, 'Thimphu', 'THI', 0),
(397, 25, 'Trashigang', 'TRG', 0),
(398, 25, 'Trashiyangste', 'TRY', 0),
(399, 25, 'Trongsa', 'TRO', 0),
(400, 25, 'Tsirang', 'TSI', 0),
(401, 25, 'Wangdue Phodrang', 'WPH', 0),
(402, 25, 'Zhemgang', 'ZHE', 0),
(403, 26, 'Beni', 'BEN', 0),
(404, 26, 'Chuquisaca', 'CHU', 0),
(405, 26, 'Cochabamba', 'COC', 0),
(406, 26, 'La Paz', 'LPZ', 0),
(407, 26, 'Oruro', 'ORU', 0),
(408, 26, 'Pando', 'PAN', 0),
(409, 26, 'Potosi', 'POT', 0),
(410, 26, 'Santa Cruz', 'SCZ', 0),
(411, 26, 'Tarija', 'TAR', 0),
(412, 27, 'Brcko district', 'BRO', 0),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 0),
(414, 27, 'Posavski Kanton', 'FPO', 0),
(415, 27, 'Tuzlanski Kanton', 'FTU', 0),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 0),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 0),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 0),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 0),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 0),
(421, 27, 'Kanton Sarajevo', 'FSA', 0),
(422, 27, 'Zapadnobosanska', 'FZA', 0),
(423, 27, 'Banja Luka', 'SBL', 0),
(424, 27, 'Doboj', 'SDO', 0),
(425, 27, 'Bijeljina', 'SBI', 0),
(426, 27, 'Vlasenica', 'SVL', 0),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 0),
(428, 27, 'Foca', 'SFO', 0),
(429, 27, 'Trebinje', 'STR', 0),
(430, 28, 'Central', 'CE', 0),
(431, 28, 'Ghanzi', 'GH', 0),
(432, 28, 'Kgalagadi', 'KD', 0),
(433, 28, 'Kgatleng', 'KT', 0),
(434, 28, 'Kweneng', 'KW', 0),
(435, 28, 'Ngamiland', 'NG', 0),
(436, 28, 'North East', 'NE', 0),
(437, 28, 'North West', 'NW', 0),
(438, 28, 'South East', 'SE', 0),
(439, 28, 'Southern', 'SO', 0),
(440, 30, 'Acre', 'AC', 0),
(441, 30, 'Alagoas', 'AL', 0),
(442, 30, 'Amapá', 'AP', 0),
(443, 30, 'Amazonas', 'AM', 0),
(444, 30, 'Bahia', 'BA', 0),
(445, 30, 'Ceará', 'CE', 0),
(446, 30, 'Distrito Federal', 'DF', 0),
(447, 30, 'Espírito Santo', 'ES', 0),
(448, 30, 'Goiás', 'GO', 0),
(449, 30, 'Maranhão', 'MA', 0),
(450, 30, 'Mato Grosso', 'MT', 0),
(451, 30, 'Mato Grosso do Sul', 'MS', 0),
(452, 30, 'Minas Gerais', 'MG', 0),
(453, 30, 'Pará', 'PA', 0),
(454, 30, 'Paraíba', 'PB', 0),
(455, 30, 'Paraná', 'PR', 0),
(456, 30, 'Pernambuco', 'PE', 0),
(457, 30, 'Piauí', 'PI', 0),
(458, 30, 'Rio de Janeiro', 'RJ', 0),
(459, 30, 'Rio Grande do Norte', 'RN', 0),
(460, 30, 'Rio Grande do Sul', 'RS', 0),
(461, 30, 'Rondônia', 'RO', 0),
(462, 30, 'Roraima', 'RR', 0),
(463, 30, 'Santa Catarina', 'SC', 0),
(464, 30, 'São Paulo', 'SP', 0),
(465, 30, 'Sergipe', 'SE', 0),
(466, 30, 'Tocantins', 'TO', 0),
(467, 31, 'Peros Banhos', 'PB', 0),
(468, 31, 'Salomon Islands', 'SI', 0),
(469, 31, 'Nelsons Island', 'NI', 0),
(470, 31, 'Three Brothers', 'TB', 0),
(471, 31, 'Eagle Islands', 'EA', 0),
(472, 31, 'Danger Island', 'DI', 0),
(473, 31, 'Egmont Islands', 'EG', 0),
(474, 31, 'Diego Garcia', 'DG', 0),
(475, 32, 'Belait', 'BEL', 0),
(476, 32, 'Brunei and Muara', 'BRM', 0),
(477, 32, 'Temburong', 'TEM', 0),
(478, 32, 'Tutong', 'TUT', 0),
(479, 33, 'Blagoevgrad', '', 0),
(480, 33, 'Burgas', '', 0),
(481, 33, 'Dobrich', '', 0),
(482, 33, 'Gabrovo', '', 0),
(483, 33, 'Haskovo', '', 0),
(484, 33, 'Kardjali', '', 0),
(485, 33, 'Kyustendil', '', 0),
(486, 33, 'Lovech', '', 0),
(487, 33, 'Montana', '', 0),
(488, 33, 'Pazardjik', '', 0),
(489, 33, 'Pernik', '', 0),
(490, 33, 'Pleven', '', 0),
(491, 33, 'Plovdiv', '', 0),
(492, 33, 'Razgrad', '', 0),
(493, 33, 'Shumen', '', 0),
(494, 33, 'Silistra', '', 0),
(495, 33, 'Sliven', '', 0),
(496, 33, 'Smolyan', '', 0),
(497, 33, 'Sofia', '', 0),
(498, 33, 'Sofia - town', '', 0),
(499, 33, 'Stara Zagora', '', 0),
(500, 33, 'Targovishte', '', 0),
(501, 33, 'Varna', '', 0),
(502, 33, 'Veliko Tarnovo', '', 0),
(503, 33, 'Vidin', '', 0),
(504, 33, 'Vratza', '', 0),
(505, 33, 'Yambol', '', 0),
(506, 34, 'Bale', 'BAL', 0),
(507, 34, 'Bam', 'BAM', 0),
(508, 34, 'Banwa', 'BAN', 0),
(509, 34, 'Bazega', 'BAZ', 0),
(510, 34, 'Bougouriba', 'BOR', 0),
(511, 34, 'Boulgou', 'BLG', 0),
(512, 34, 'Boulkiemde', 'BOK', 0),
(513, 34, 'Comoe', 'COM', 0),
(514, 34, 'Ganzourgou', 'GAN', 0),
(515, 34, 'Gnagna', 'GNA', 0),
(516, 34, 'Gourma', 'GOU', 0),
(517, 34, 'Houet', 'HOU', 0),
(518, 34, 'Ioba', 'IOA', 0),
(519, 34, 'Kadiogo', 'KAD', 0),
(520, 34, 'Kenedougou', 'KEN', 0),
(521, 34, 'Komondjari', 'KOD', 0),
(522, 34, 'Kompienga', 'KOP', 0),
(523, 34, 'Kossi', 'KOS', 0),
(524, 34, 'Koulpelogo', 'KOL', 0),
(525, 34, 'Kouritenga', 'KOT', 0),
(526, 34, 'Kourweogo', 'KOW', 0),
(527, 34, 'Leraba', 'LER', 0),
(528, 34, 'Loroum', 'LOR', 0),
(529, 34, 'Mouhoun', 'MOU', 0),
(530, 34, 'Nahouri', 'NAH', 0),
(531, 34, 'Namentenga', 'NAM', 0),
(532, 34, 'Nayala', 'NAY', 0),
(533, 34, 'Noumbiel', 'NOU', 0),
(534, 34, 'Oubritenga', 'OUB', 0),
(535, 34, 'Oudalan', 'OUD', 0),
(536, 34, 'Passore', 'PAS', 0),
(537, 34, 'Poni', 'PON', 0),
(538, 34, 'Sanguie', 'SAG', 0),
(539, 34, 'Sanmatenga', 'SAM', 0),
(540, 34, 'Seno', 'SEN', 0),
(541, 34, 'Sissili', 'SIS', 0),
(542, 34, 'Soum', 'SOM', 0),
(543, 34, 'Sourou', 'SOR', 0),
(544, 34, 'Tapoa', 'TAP', 0),
(545, 34, 'Tuy', 'TUY', 0),
(546, 34, 'Yagha', 'YAG', 0),
(547, 34, 'Yatenga', 'YAT', 0),
(548, 34, 'Ziro', 'ZIR', 0),
(549, 34, 'Zondoma', 'ZOD', 0),
(550, 34, 'Zoundweogo', 'ZOW', 0),
(551, 35, 'Bubanza', 'BB', 0),
(552, 35, 'Bujumbura', 'BJ', 0),
(553, 35, 'Bururi', 'BR', 0),
(554, 35, 'Cankuzo', 'CA', 0),
(555, 35, 'Cibitoke', 'CI', 0),
(556, 35, 'Gitega', 'GI', 0),
(557, 35, 'Karuzi', 'KR', 0),
(558, 35, 'Kayanza', 'KY', 0),
(559, 35, 'Kirundo', 'KI', 0),
(560, 35, 'Makamba', 'MA', 0),
(561, 35, 'Muramvya', 'MU', 0),
(562, 35, 'Muyinga', 'MY', 0),
(563, 35, 'Mwaro', 'MW', 0),
(564, 35, 'Ngozi', 'NG', 0),
(565, 35, 'Rutana', 'RT', 0),
(566, 35, 'Ruyigi', 'RY', 0),
(567, 36, 'Phnom Penh', 'PP', 0),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 0),
(569, 36, 'Pailin', 'PA', 0),
(570, 36, 'Keb', 'KB', 0),
(571, 36, 'Banteay Meanchey', 'BM', 0),
(572, 36, 'Battambang', 'BA', 0),
(573, 36, 'Kampong Cham', 'KM', 0),
(574, 36, 'Kampong Chhnang', 'KN', 0),
(575, 36, 'Kampong Speu', 'KU', 0),
(576, 36, 'Kampong Som', 'KO', 0),
(577, 36, 'Kampong Thom', 'KT', 0),
(578, 36, 'Kampot', 'KP', 0),
(579, 36, 'Kandal', 'KL', 0),
(580, 36, 'Kaoh Kong', 'KK', 0),
(581, 36, 'Kratie', 'KR', 0),
(582, 36, 'Mondul Kiri', 'MK', 0),
(583, 36, 'Oddar Meancheay', 'OM', 0),
(584, 36, 'Pursat', 'PU', 0),
(585, 36, 'Preah Vihear', 'PR', 0),
(586, 36, 'Prey Veng', 'PG', 0),
(587, 36, 'Ratanak Kiri', 'RK', 0),
(588, 36, 'Siemreap', 'SI', 0),
(589, 36, 'Stung Treng', 'ST', 0),
(590, 36, 'Svay Rieng', 'SR', 0),
(591, 36, 'Takeo', 'TK', 0),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 0),
(593, 37, 'Centre', 'CEN', 0),
(594, 37, 'East (Est)', 'EST', 0),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 0),
(596, 37, 'Littoral', 'LIT', 0),
(597, 37, 'North (Nord)', 'NOR', 0),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 0),
(599, 37, 'West (Ouest)', 'OUE', 0),
(600, 37, 'South (Sud)', 'SUD', 0),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 0),
(602, 38, 'Alberta', 'AB', 0),
(603, 38, 'British Columbia', 'BC', 0),
(604, 38, 'Manitoba', 'MB', 0),
(605, 38, 'New Brunswick', 'NB', 0),
(606, 38, 'Newfoundland and Labrador', 'NL', 0),
(607, 38, 'Northwest Territories', 'NT', 0),
(608, 38, 'Nova Scotia', 'NS', 0),
(609, 38, 'Nunavut', 'NU', 0),
(610, 38, 'Ontario', 'ON', 0),
(611, 38, 'Prince Edward Island', 'PE', 0),
(612, 38, 'Qu&eacute;bec', 'QC', 0),
(613, 38, 'Saskatchewan', 'SK', 0),
(614, 38, 'Yukon Territory', 'YT', 0),
(615, 39, 'Boa Vista', 'BV', 0),
(616, 39, 'Brava', 'BR', 0),
(617, 39, 'Calheta de Sao Miguel', 'CS', 0),
(618, 39, 'Maio', 'MA', 0),
(619, 39, 'Mosteiros', 'MO', 0),
(620, 39, 'Paul', 'PA', 0),
(621, 39, 'Porto Novo', 'PN', 0),
(622, 39, 'Praia', 'PR', 0),
(623, 39, 'Ribeira Grande', 'RG', 0),
(624, 39, 'Sal', 'SL', 0),
(625, 39, 'Santa Catarina', 'CA', 0),
(626, 39, 'Santa Cruz', 'CR', 0),
(627, 39, 'Sao Domingos', 'SD', 0),
(628, 39, 'Sao Filipe', 'SF', 0),
(629, 39, 'Sao Nicolau', 'SN', 0),
(630, 39, 'Sao Vicente', 'SV', 0),
(631, 39, 'Tarrafal', 'TA', 0),
(632, 40, 'Creek', 'CR', 0),
(633, 40, 'Eastern', 'EA', 0),
(634, 40, 'Midland', 'ML', 0),
(635, 40, 'South Town', 'ST', 0),
(636, 40, 'Spot Bay', 'SP', 0),
(637, 40, 'Stake Bay', 'SK', 0),
(638, 40, 'West End', 'WD', 0),
(639, 40, 'Western', 'WN', 0),
(640, 41, 'Bamingui-Bangoran', 'BBA', 0),
(641, 41, 'Basse-Kotto', 'BKO', 0),
(642, 41, 'Haute-Kotto', 'HKO', 0),
(643, 41, 'Haut-Mbomou', 'HMB', 0),
(644, 41, 'Kemo', 'KEM', 0),
(645, 41, 'Lobaye', 'LOB', 0),
(646, 41, 'Mambere-KadeÔ', 'MKD', 0),
(647, 41, 'Mbomou', 'MBO', 0),
(648, 41, 'Nana-Mambere', 'NMM', 0),
(649, 41, 'Ombella-M\'Poko', 'OMP', 0),
(650, 41, 'Ouaka', 'OUK', 0),
(651, 41, 'Ouham', 'OUH', 0),
(652, 41, 'Ouham-Pende', 'OPE', 0),
(653, 41, 'Vakaga', 'VAK', 0),
(654, 41, 'Nana-Grebizi', 'NGR', 0),
(655, 41, 'Sangha-Mbaere', 'SMB', 0),
(656, 41, 'Bangui', 'BAN', 0),
(657, 42, 'Batha', 'BA', 0),
(658, 42, 'Biltine', 'BI', 0),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 0),
(660, 42, 'Chari-Baguirmi', 'CB', 0),
(661, 42, 'Guera', 'GU', 0),
(662, 42, 'Kanem', 'KA', 0),
(663, 42, 'Lac', 'LA', 0),
(664, 42, 'Logone Occidental', 'LC', 0),
(665, 42, 'Logone Oriental', 'LR', 0),
(666, 42, 'Mayo-Kebbi', 'MK', 0),
(667, 42, 'Moyen-Chari', 'MC', 0),
(668, 42, 'Ouaddai', 'OU', 0),
(669, 42, 'Salamat', 'SA', 0),
(670, 42, 'Tandjile', 'TA', 0),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 0),
(672, 43, 'Antofagasta', 'AN', 0),
(673, 43, 'Araucania', 'AR', 0),
(674, 43, 'Atacama', 'AT', 0),
(675, 43, 'Bio-Bio', 'BI', 0),
(676, 43, 'Coquimbo', 'CO', 0),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 0),
(678, 43, 'Los Lagos', 'LL', 0),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 0),
(680, 43, 'Maule', 'ML', 0),
(681, 43, 'Region Metropolitana', 'RM', 0),
(682, 43, 'Tarapaca', 'TA', 0),
(683, 43, 'Valparaiso', 'VS', 0),
(684, 44, 'Anhui', 'AN', 0),
(685, 44, 'Beijing', 'BE', 0),
(686, 44, 'Chongqing', 'CH', 0),
(687, 44, 'Fujian', 'FU', 0),
(688, 44, 'Gansu', 'GA', 0),
(689, 44, 'Guangdong', 'GU', 0),
(690, 44, 'Guangxi', 'GX', 0),
(691, 44, 'Guizhou', 'GZ', 0),
(692, 44, 'Hainan', 'HA', 0),
(693, 44, 'Hebei', 'HB', 0),
(694, 44, 'Heilongjiang', 'HL', 0),
(695, 44, 'Henan', 'HE', 0),
(696, 44, 'Hong Kong', 'HK', 0),
(697, 44, 'Hubei', 'HU', 0),
(698, 44, 'Hunan', 'HN', 0),
(699, 44, 'Inner Mongolia', 'IM', 0),
(700, 44, 'Jiangsu', 'JI', 0),
(701, 44, 'Jiangxi', 'JX', 0),
(702, 44, 'Jilin', 'JL', 0),
(703, 44, 'Liaoning', 'LI', 0),
(704, 44, 'Macau', 'MA', 0),
(705, 44, 'Ningxia', 'NI', 0),
(706, 44, 'Shaanxi', 'SH', 0),
(707, 44, 'Shandong', 'SA', 0),
(708, 44, 'Shanghai', 'SG', 0),
(709, 44, 'Shanxi', 'SX', 0),
(710, 44, 'Sichuan', 'SI', 0),
(711, 44, 'Tianjin', 'TI', 0),
(712, 44, 'Xinjiang', 'XI', 0),
(713, 44, 'Yunnan', 'YU', 0),
(714, 44, 'Zhejiang', 'ZH', 0),
(715, 46, 'Direction Island', 'D', 0),
(716, 46, 'Home Island', 'H', 0),
(717, 46, 'Horsburgh Island', 'O', 0),
(718, 46, 'South Island', 'S', 0),
(719, 46, 'West Island', 'W', 0),
(720, 47, 'Amazonas', 'AMZ', 0),
(721, 47, 'Antioquia', 'ANT', 0),
(722, 47, 'Arauca', 'ARA', 0),
(723, 47, 'Atlantico', 'ATL', 0),
(724, 47, 'Bogota D.C.', 'BDC', 0),
(725, 47, 'Bolivar', 'BOL', 0),
(726, 47, 'Boyaca', 'BOY', 0),
(727, 47, 'Caldas', 'CAL', 0),
(728, 47, 'Caqueta', 'CAQ', 0),
(729, 47, 'Casanare', 'CAS', 0),
(730, 47, 'Cauca', 'CAU', 0),
(731, 47, 'Cesar', 'CES', 0),
(732, 47, 'Choco', 'CHO', 0),
(733, 47, 'Cordoba', 'COR', 0),
(734, 47, 'Cundinamarca', 'CAM', 0),
(735, 47, 'Guainia', 'GNA', 0),
(736, 47, 'Guajira', 'GJR', 0),
(737, 47, 'Guaviare', 'GVR', 0),
(738, 47, 'Huila', 'HUI', 0),
(739, 47, 'Magdalena', 'MAG', 0),
(740, 47, 'Meta', 'MET', 0),
(741, 47, 'Narino', 'NAR', 0),
(742, 47, 'Norte de Santander', 'NDS', 0),
(743, 47, 'Putumayo', 'PUT', 0),
(744, 47, 'Quindio', 'QUI', 0),
(745, 47, 'Risaralda', 'RIS', 0),
(746, 47, 'San Andres y Providencia', 'SAP', 0),
(747, 47, 'Santander', 'SAN', 0),
(748, 47, 'Sucre', 'SUC', 0),
(749, 47, 'Tolima', 'TOL', 0),
(750, 47, 'Valle del Cauca', 'VDC', 0),
(751, 47, 'Vaupes', 'VAU', 0),
(752, 47, 'Vichada', 'VIC', 0),
(753, 48, 'Grande Comore', 'G', 0),
(754, 48, 'Anjouan', 'A', 0),
(755, 48, 'Moheli', 'M', 0),
(756, 49, 'Bouenza', 'BO', 0),
(757, 49, 'Brazzaville', 'BR', 0),
(758, 49, 'Cuvette', 'CU', 0),
(759, 49, 'Cuvette-Ouest', 'CO', 0),
(760, 49, 'Kouilou', 'KO', 0),
(761, 49, 'Lekoumou', 'LE', 0),
(762, 49, 'Likouala', 'LI', 0),
(763, 49, 'Niari', 'NI', 0),
(764, 49, 'Plateaux', 'PL', 0),
(765, 49, 'Pool', 'PO', 0),
(766, 49, 'Sangha', 'SA', 0),
(767, 50, 'Pukapuka', 'PU', 0),
(768, 50, 'Rakahanga', 'RK', 0),
(769, 50, 'Manihiki', 'MK', 0),
(770, 50, 'Penrhyn', 'PE', 0),
(771, 50, 'Nassau Island', 'NI', 0),
(772, 50, 'Surwarrow', 'SU', 0),
(773, 50, 'Palmerston', 'PA', 0),
(774, 50, 'Aitutaki', 'AI', 0),
(775, 50, 'Manuae', 'MA', 0),
(776, 50, 'Takutea', 'TA', 0),
(777, 50, 'Mitiaro', 'MT', 0),
(778, 50, 'Atiu', 'AT', 0),
(779, 50, 'Mauke', 'MU', 0),
(780, 50, 'Rarotonga', 'RR', 0),
(781, 50, 'Mangaia', 'MG', 0),
(782, 51, 'Alajuela', 'AL', 0),
(783, 51, 'Cartago', 'CA', 0),
(784, 51, 'Guanacaste', 'GU', 0),
(785, 51, 'Heredia', 'HE', 0),
(786, 51, 'Limon', 'LI', 0),
(787, 51, 'Puntarenas', 'PU', 0),
(788, 51, 'San Jose', 'SJ', 0),
(789, 52, 'Abengourou', 'ABE', 0),
(790, 52, 'Abidjan', 'ABI', 0),
(791, 52, 'Aboisso', 'ABO', 0),
(792, 52, 'Adiake', 'ADI', 0),
(793, 52, 'Adzope', 'ADZ', 0),
(794, 52, 'Agboville', 'AGB', 0),
(795, 52, 'Agnibilekrou', 'AGN', 0),
(796, 52, 'Alepe', 'ALE', 0),
(797, 52, 'Bocanda', 'BOC', 0),
(798, 52, 'Bangolo', 'BAN', 0),
(799, 52, 'Beoumi', 'BEO', 0),
(800, 52, 'Biankouma', 'BIA', 0),
(801, 52, 'Bondoukou', 'BDK', 0),
(802, 52, 'Bongouanou', 'BGN', 0),
(803, 52, 'Bouafle', 'BFL', 0),
(804, 52, 'Bouake', 'BKE', 0),
(805, 52, 'Bouna', 'BNA', 0),
(806, 52, 'Boundiali', 'BDL', 0),
(807, 52, 'Dabakala', 'DKL', 0),
(808, 52, 'Dabou', 'DBU', 0),
(809, 52, 'Daloa', 'DAL', 0),
(810, 52, 'Danane', 'DAN', 0),
(811, 52, 'Daoukro', 'DAO', 0),
(812, 52, 'Dimbokro', 'DIM', 0),
(813, 52, 'Divo', 'DIV', 0),
(814, 52, 'Duekoue', 'DUE', 0),
(815, 52, 'Ferkessedougou', 'FER', 0),
(816, 52, 'Gagnoa', 'GAG', 0),
(817, 52, 'Grand-Bassam', 'GBA', 0),
(818, 52, 'Grand-Lahou', 'GLA', 0),
(819, 52, 'Guiglo', 'GUI', 0),
(820, 52, 'Issia', 'ISS', 0),
(821, 52, 'Jacqueville', 'JAC', 0),
(822, 52, 'Katiola', 'KAT', 0),
(823, 52, 'Korhogo', 'KOR', 0),
(824, 52, 'Lakota', 'LAK', 0),
(825, 52, 'Man', 'MAN', 0),
(826, 52, 'Mankono', 'MKN', 0),
(827, 52, 'Mbahiakro', 'MBA', 0),
(828, 52, 'Odienne', 'ODI', 0),
(829, 52, 'Oume', 'OUM', 0),
(830, 52, 'Sakassou', 'SAK', 0),
(831, 52, 'San-Pedro', 'SPE', 0),
(832, 52, 'Sassandra', 'SAS', 0),
(833, 52, 'Seguela', 'SEG', 0),
(834, 52, 'Sinfra', 'SIN', 0),
(835, 52, 'Soubre', 'SOU', 0),
(836, 52, 'Tabou', 'TAB', 0),
(837, 52, 'Tanda', 'TAN', 0),
(838, 52, 'Tiebissou', 'TIE', 0),
(839, 52, 'Tingrela', 'TIN', 0),
(840, 52, 'Tiassale', 'TIA', 0),
(841, 52, 'Touba', 'TBA', 0),
(842, 52, 'Toulepleu', 'TLP', 0),
(843, 52, 'Toumodi', 'TMD', 0),
(844, 52, 'Vavoua', 'VAV', 0),
(845, 52, 'Yamoussoukro', 'YAM', 0),
(846, 52, 'Zuenoula', 'ZUE', 0),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 0),
(848, 53, 'Grad Zagreb', 'GZ', 0),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 0),
(850, 53, 'Istarska', 'IS', 0),
(851, 53, 'Karlovačka', 'KA', 0),
(852, 53, 'Koprivničko-križevačka', 'KK', 0),
(853, 53, 'Krapinsko-zagorska', 'KZ', 0),
(854, 53, 'Ličko-senjska', 'LS', 0),
(855, 53, 'Međimurska', 'ME', 0),
(856, 53, 'Osječko-baranjska', 'OB', 0),
(857, 53, 'Požeško-slavonska', 'PS', 0),
(858, 53, 'Primorsko-goranska', 'PG', 0),
(859, 53, 'Šibensko-kninska', 'SK', 0),
(860, 53, 'Sisačko-moslavačka', 'SM', 0),
(861, 53, 'Brodsko-posavska', 'BP', 0),
(862, 53, 'Splitsko-dalmatinska', 'SD', 0),
(863, 53, 'Varaždinska', 'VA', 0),
(864, 53, 'Virovitičko-podravska', 'VP', 0),
(865, 53, 'Vukovarsko-srijemska', 'VS', 0),
(866, 53, 'Zadarska', 'ZA', 0),
(867, 53, 'Zagrebačka', 'ZG', 0),
(868, 54, 'Camaguey', 'CA', 0),
(869, 54, 'Ciego de Avila', 'CD', 0),
(870, 54, 'Cienfuegos', 'CI', 0),
(871, 54, 'Ciudad de La Habana', 'CH', 0),
(872, 54, 'Granma', 'GR', 0),
(873, 54, 'Guantanamo', 'GU', 0),
(874, 54, 'Holguin', 'HO', 0),
(875, 54, 'Isla de la Juventud', 'IJ', 0),
(876, 54, 'La Habana', 'LH', 0),
(877, 54, 'Las Tunas', 'LT', 0),
(878, 54, 'Matanzas', 'MA', 0),
(879, 54, 'Pinar del Rio', 'PR', 0),
(880, 54, 'Sancti Spiritus', 'SS', 0),
(881, 54, 'Santiago de Cuba', 'SC', 0),
(882, 54, 'Villa Clara', 'VC', 0),
(883, 55, 'Famagusta', 'F', 0),
(884, 55, 'Kyrenia', 'K', 0),
(885, 55, 'Larnaca', 'A', 0),
(886, 55, 'Limassol', 'I', 0),
(887, 55, 'Nicosia', 'N', 0),
(888, 55, 'Paphos', 'P', 0),
(889, 56, 'Ústecký', 'U', 0),
(890, 56, 'Jihočeský', 'C', 0),
(891, 56, 'Jihomoravský', 'B', 0),
(892, 56, 'Karlovarský', 'K', 0),
(893, 56, 'Královehradecký', 'H', 0),
(894, 56, 'Liberecký', 'L', 0),
(895, 56, 'Moravskoslezský', 'T', 0),
(896, 56, 'Olomoucký', 'M', 0),
(897, 56, 'Pardubický', 'E', 0),
(898, 56, 'Plzeňský', 'P', 0),
(899, 56, 'Praha', 'A', 0),
(900, 56, 'Středočeský', 'S', 0),
(901, 56, 'Vysočina', 'J', 0),
(902, 56, 'Zlínský', 'Z', 0),
(903, 57, 'Arhus', 'AR', 0),
(904, 57, 'Bornholm', 'BH', 0),
(905, 57, 'Copenhagen', 'CO', 0),
(906, 57, 'Faroe Islands', 'FO', 0),
(907, 57, 'Frederiksborg', 'FR', 0),
(908, 57, 'Fyn', 'FY', 0),
(909, 57, 'Kobenhavn', 'KO', 0),
(910, 57, 'Nordjylland', 'NO', 0),
(911, 57, 'Ribe', 'RI', 0),
(912, 57, 'Ringkobing', 'RK', 0),
(913, 57, 'Roskilde', 'RO', 0),
(914, 57, 'Sonderjylland', 'SO', 0),
(915, 57, 'Storstrom', 'ST', 0),
(916, 57, 'Vejle', 'VK', 0),
(917, 57, 'Vestj&aelig;lland', 'VJ', 0),
(918, 57, 'Viborg', 'VB', 0),
(919, 58, '\'Ali Sabih', 'S', 0),
(920, 58, 'Dikhil', 'K', 0),
(921, 58, 'Djibouti', 'J', 0),
(922, 58, 'Obock', 'O', 0),
(923, 58, 'Tadjoura', 'T', 0),
(924, 59, 'Saint Andrew Parish', 'AND', 0),
(925, 59, 'Saint David Parish', 'DAV', 0),
(926, 59, 'Saint George Parish', 'GEO', 0),
(927, 59, 'Saint John Parish', 'JOH', 0),
(928, 59, 'Saint Joseph Parish', 'JOS', 0),
(929, 59, 'Saint Luke Parish', 'LUK', 0),
(930, 59, 'Saint Mark Parish', 'MAR', 0),
(931, 59, 'Saint Patrick Parish', 'PAT', 0),
(932, 59, 'Saint Paul Parish', 'PAU', 0),
(933, 59, 'Saint Peter Parish', 'PET', 0),
(934, 60, 'Distrito Nacional', 'DN', 0),
(935, 60, 'Azua', 'AZ', 0),
(936, 60, 'Baoruco', 'BC', 0),
(937, 60, 'Barahona', 'BH', 0),
(938, 60, 'Dajabon', 'DJ', 0),
(939, 60, 'Duarte', 'DU', 0),
(940, 60, 'Elias Pina', 'EL', 0),
(941, 60, 'El Seybo', 'SY', 0),
(942, 60, 'Espaillat', 'ET', 0),
(943, 60, 'Hato Mayor', 'HM', 0),
(944, 60, 'Independencia', 'IN', 0),
(945, 60, 'La Altagracia', 'AL', 0),
(946, 60, 'La Romana', 'RO', 0),
(947, 60, 'La Vega', 'VE', 0),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 0),
(949, 60, 'Monsenor Nouel', 'MN', 0),
(950, 60, 'Monte Cristi', 'MC', 0),
(951, 60, 'Monte Plata', 'MP', 0),
(952, 60, 'Pedernales', 'PD', 0),
(953, 60, 'Peravia (Bani)', 'PR', 0),
(954, 60, 'Puerto Plata', 'PP', 0),
(955, 60, 'Salcedo', 'SL', 0),
(956, 60, 'Samana', 'SM', 0),
(957, 60, 'Sanchez Ramirez', 'SH', 0),
(958, 60, 'San Cristobal', 'SC', 0),
(959, 60, 'San Jose de Ocoa', 'JO', 0),
(960, 60, 'San Juan', 'SJ', 0),
(961, 60, 'San Pedro de Macoris', 'PM', 0),
(962, 60, 'Santiago', 'SA', 0),
(963, 60, 'Santiago Rodriguez', 'ST', 0),
(964, 60, 'Santo Domingo', 'SD', 0),
(965, 60, 'Valverde', 'VA', 0),
(966, 61, 'Aileu', 'AL', 0),
(967, 61, 'Ainaro', 'AN', 0),
(968, 61, 'Baucau', 'BA', 0),
(969, 61, 'Bobonaro', 'BO', 0),
(970, 61, 'Cova Lima', 'CO', 0),
(971, 61, 'Dili', 'DI', 0),
(972, 61, 'Ermera', 'ER', 0),
(973, 61, 'Lautem', 'LA', 0),
(974, 61, 'Liquica', 'LI', 0),
(975, 61, 'Manatuto', 'MT', 0),
(976, 61, 'Manufahi', 'MF', 0),
(977, 61, 'Oecussi', 'OE', 0),
(978, 61, 'Viqueque', 'VI', 0),
(979, 62, 'Azuay', 'AZU', 0),
(980, 62, 'Bolivar', 'BOL', 0),
(981, 62, 'Ca&ntilde;ar', 'CAN', 0),
(982, 62, 'Carchi', 'CAR', 0),
(983, 62, 'Chimborazo', 'CHI', 0),
(984, 62, 'Cotopaxi', 'COT', 0),
(985, 62, 'El Oro', 'EOR', 0),
(986, 62, 'Esmeraldas', 'ESM', 0),
(987, 62, 'Gal&aacute;pagos', 'GPS', 0),
(988, 62, 'Guayas', 'GUA', 0),
(989, 62, 'Imbabura', 'IMB', 0),
(990, 62, 'Loja', 'LOJ', 0),
(991, 62, 'Los Rios', 'LRO', 0),
(992, 62, 'Manab&iacute;', 'MAN', 0),
(993, 62, 'Morona Santiago', 'MSA', 0),
(994, 62, 'Napo', 'NAP', 0),
(995, 62, 'Orellana', 'ORE', 0),
(996, 62, 'Pastaza', 'PAS', 0),
(997, 62, 'Pichincha', 'PIC', 0),
(998, 62, 'Sucumb&iacute;os', 'SUC', 0),
(999, 62, 'Tungurahua', 'TUN', 0),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 0),
(1001, 63, 'Ad Daqahliyah', 'DHY', 0),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 0),
(1003, 63, 'Al Buhayrah', 'BHY', 0),
(1004, 63, 'Al Fayyum', 'FYM', 0),
(1005, 63, 'Al Gharbiyah', 'GBY', 0),
(1006, 63, 'Al Iskandariyah', 'IDR', 0),
(1007, 63, 'Al Isma\'iliyah', 'IML', 0),
(1008, 63, 'Al Jizah', 'JZH', 0),
(1009, 63, 'Al Minufiyah', 'MFY', 0),
(1010, 63, 'Al Minya', 'MNY', 0),
(1011, 63, 'Al Qahirah', 'QHR', 0),
(1012, 63, 'Al Qalyubiyah', 'QLY', 0),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 0),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 0),
(1015, 63, 'As Suways', 'SWY', 0),
(1016, 63, 'Aswan', 'ASW', 0),
(1017, 63, 'Asyut', 'ASY', 0),
(1018, 63, 'Bani Suwayf', 'BSW', 0),
(1019, 63, 'Bur Sa\'id', 'BSD', 0),
(1020, 63, 'Dumyat', 'DMY', 0),
(1021, 63, 'Janub Sina\'', 'JNS', 0),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 0),
(1023, 63, 'Matruh', 'MAT', 0),
(1024, 63, 'Qina', 'QIN', 0),
(1025, 63, 'Shamal Sina\'', 'SHS', 0),
(1026, 63, 'Suhaj', 'SUH', 0),
(1027, 64, 'Ahuachapan', 'AH', 0),
(1028, 64, 'Cabanas', 'CA', 0),
(1029, 64, 'Chalatenango', 'CH', 0),
(1030, 64, 'Cuscatlan', 'CU', 0),
(1031, 64, 'La Libertad', 'LB', 0),
(1032, 64, 'La Paz', 'PZ', 0),
(1033, 64, 'La Union', 'UN', 0),
(1034, 64, 'Morazan', 'MO', 0),
(1035, 64, 'San Miguel', 'SM', 0),
(1036, 64, 'San Salvador', 'SS', 0),
(1037, 64, 'San Vicente', 'SV', 0),
(1038, 64, 'Santa Ana', 'SA', 0),
(1039, 64, 'Sonsonate', 'SO', 0),
(1040, 64, 'Usulutan', 'US', 0),
(1041, 65, 'Provincia Annobon', 'AN', 0),
(1042, 65, 'Provincia Bioko Norte', 'BN', 0),
(1043, 65, 'Provincia Bioko Sur', 'BS', 0),
(1044, 65, 'Provincia Centro Sur', 'CS', 0),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 0),
(1046, 65, 'Provincia Litoral', 'LI', 0),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 0),
(1048, 66, 'Central (Maekel)', 'MA', 0),
(1049, 66, 'Anseba (Keren)', 'KE', 0),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 0),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 0),
(1052, 66, 'Southern (Debub)', 'DE', 0),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 0),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 0),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 0),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 0),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 0),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 0),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 0),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 0),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 0),
(1062, 67, 'Polvamaa (Polva)', 'PO', 0),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 0),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 0),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 0),
(1066, 67, 'Valgamaa (Valga)', 'VA', 0),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 0),
(1068, 67, 'Vorumaa (Voru)', 'VO', 0),
(1069, 68, 'Afar', 'AF', 0),
(1070, 68, 'Amhara', 'AH', 0),
(1071, 68, 'Benishangul-Gumaz', 'BG', 0),
(1072, 68, 'Gambela', 'GB', 0),
(1073, 68, 'Hariai', 'HR', 0),
(1074, 68, 'Oromia', 'OR', 0),
(1075, 68, 'Somali', 'SM', 0),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 0),
(1077, 68, 'Tigray', 'TG', 0),
(1078, 68, 'Addis Ababa', 'AA', 0),
(1079, 68, 'Dire Dawa', 'DD', 0),
(1080, 71, 'Central Division', 'C', 0),
(1081, 71, 'Northern Division', 'N', 0),
(1082, 71, 'Eastern Division', 'E', 0),
(1083, 71, 'Western Division', 'W', 0),
(1084, 71, 'Rotuma', 'R', 0),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 0),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 0),
(1087, 72, 'Itä-Suomen lääni', 'IS', 0),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 0),
(1089, 72, 'Lapin lääni', 'LA', 0),
(1090, 72, 'Oulun lääni', 'OU', 0),
(1114, 74, 'Ain', '01', 0),
(1115, 74, 'Aisne', '02', 0),
(1116, 74, 'Allier', '03', 0),
(1117, 74, 'Alpes de Haute Provence', '04', 0),
(1118, 74, 'Hautes-Alpes', '05', 0),
(1119, 74, 'Alpes Maritimes', '06', 0),
(1120, 74, 'Ard&egrave;che', '07', 0),
(1121, 74, 'Ardennes', '08', 0),
(1122, 74, 'Ari&egrave;ge', '09', 0),
(1123, 74, 'Aube', '10', 0),
(1124, 74, 'Aude', '11', 0),
(1125, 74, 'Aveyron', '12', 0),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 0),
(1127, 74, 'Calvados', '14', 0),
(1128, 74, 'Cantal', '15', 0),
(1129, 74, 'Charente', '16', 0),
(1130, 74, 'Charente Maritime', '17', 0),
(1131, 74, 'Cher', '18', 0),
(1132, 74, 'Corr&egrave;ze', '19', 0),
(1133, 74, 'Corse du Sud', '2A', 0),
(1134, 74, 'Haute Corse', '2B', 0),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 0),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 0),
(1137, 74, 'Creuse', '23', 0),
(1138, 74, 'Dordogne', '24', 0),
(1139, 74, 'Doubs', '25', 0),
(1140, 74, 'Dr&ocirc;me', '26', 0),
(1141, 74, 'Eure', '27', 0),
(1142, 74, 'Eure et Loir', '28', 0),
(1143, 74, 'Finist&egrave;re', '29', 0),
(1144, 74, 'Gard', '30', 0),
(1145, 74, 'Haute Garonne', '31', 0),
(1146, 74, 'Gers', '32', 0),
(1147, 74, 'Gironde', '33', 0),
(1148, 74, 'H&eacute;rault', '34', 0),
(1149, 74, 'Ille et Vilaine', '35', 0),
(1150, 74, 'Indre', '36', 0),
(1151, 74, 'Indre et Loire', '37', 0),
(1152, 74, 'Is&eacute;re', '38', 0),
(1153, 74, 'Jura', '39', 0),
(1154, 74, 'Landes', '40', 0),
(1155, 74, 'Loir et Cher', '41', 0),
(1156, 74, 'Loire', '42', 0),
(1157, 74, 'Haute Loire', '43', 0),
(1158, 74, 'Loire Atlantique', '44', 0),
(1159, 74, 'Loiret', '45', 0),
(1160, 74, 'Lot', '46', 0),
(1161, 74, 'Lot et Garonne', '47', 0),
(1162, 74, 'Loz&egrave;re', '48', 0),
(1163, 74, 'Maine et Loire', '49', 0),
(1164, 74, 'Manche', '50', 0),
(1165, 74, 'Marne', '51', 0),
(1166, 74, 'Haute Marne', '52', 0),
(1167, 74, 'Mayenne', '53', 0),
(1168, 74, 'Meurthe et Moselle', '54', 0),
(1169, 74, 'Meuse', '55', 0),
(1170, 74, 'Morbihan', '56', 0),
(1171, 74, 'Moselle', '57', 0),
(1172, 74, 'Ni&egrave;vre', '58', 0),
(1173, 74, 'Nord', '59', 0),
(1174, 74, 'Oise', '60', 0),
(1175, 74, 'Orne', '61', 0),
(1176, 74, 'Pas de Calais', '62', 0),
(1177, 74, 'Puy de D&ocirc;me', '63', 0),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 0),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 0),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 0),
(1181, 74, 'Bas Rhin', '67', 0),
(1182, 74, 'Haut Rhin', '68', 0),
(1183, 74, 'Rh&ocirc;ne', '69', 0),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 0),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 0),
(1186, 74, 'Sarthe', '72', 0),
(1187, 74, 'Savoie', '73', 0),
(1188, 74, 'Haute Savoie', '74', 0),
(1189, 74, 'Paris', '75', 0),
(1190, 74, 'Seine Maritime', '76', 0),
(1191, 74, 'Seine et Marne', '77', 0),
(1192, 74, 'Yvelines', '78', 0),
(1193, 74, 'Deux S&egrave;vres', '79', 0),
(1194, 74, 'Somme', '80', 0),
(1195, 74, 'Tarn', '81', 0),
(1196, 74, 'Tarn et Garonne', '82', 0),
(1197, 74, 'Var', '83', 0),
(1198, 74, 'Vaucluse', '84', 0),
(1199, 74, 'Vend&eacute;e', '85', 0),
(1200, 74, 'Vienne', '86', 0),
(1201, 74, 'Haute Vienne', '87', 0),
(1202, 74, 'Vosges', '88', 0),
(1203, 74, 'Yonne', '89', 0),
(1204, 74, 'Territoire de Belfort', '90', 0),
(1205, 74, 'Essonne', '91', 0),
(1206, 74, 'Hauts de Seine', '92', 0),
(1207, 74, 'Seine St-Denis', '93', 0),
(1208, 74, 'Val de Marne', '94', 0),
(1209, 74, 'Val d\'Oise', '95', 0),
(1210, 76, 'Archipel des Marquises', 'M', 0),
(1211, 76, 'Archipel des Tuamotu', 'T', 0),
(1212, 76, 'Archipel des Tubuai', 'I', 0),
(1213, 76, 'Iles du Vent', 'V', 0),
(1214, 76, 'Iles Sous-le-Vent', 'S', 0),
(1215, 77, 'Iles Crozet', 'C', 0),
(1216, 77, 'Iles Kerguelen', 'K', 0),
(1217, 77, 'Ile Amsterdam', 'A', 0),
(1218, 77, 'Ile Saint-Paul', 'P', 0),
(1219, 77, 'Adelie Land', 'D', 0),
(1220, 78, 'Estuaire', 'ES', 0),
(1221, 78, 'Haut-Ogooue', 'HO', 0),
(1222, 78, 'Moyen-Ogooue', 'MO', 0),
(1223, 78, 'Ngounie', 'NG', 0),
(1224, 78, 'Nyanga', 'NY', 0),
(1225, 78, 'Ogooue-Ivindo', 'OI', 0),
(1226, 78, 'Ogooue-Lolo', 'OL', 0),
(1227, 78, 'Ogooue-Maritime', 'OM', 0),
(1228, 78, 'Woleu-Ntem', 'WN', 0),
(1229, 79, 'Banjul', 'BJ', 0),
(1230, 79, 'Basse', 'BS', 0),
(1231, 79, 'Brikama', 'BR', 0),
(1232, 79, 'Janjangbure', 'JA', 0),
(1233, 79, 'Kanifeng', 'KA', 0),
(1234, 79, 'Kerewan', 'KE', 0),
(1235, 79, 'Kuntaur', 'KU', 0),
(1236, 79, 'Mansakonko', 'MA', 0),
(1237, 79, 'Lower River', 'LR', 0),
(1238, 79, 'Central River', 'CR', 0),
(1239, 79, 'North Bank', 'NB', 0),
(1240, 79, 'Upper River', 'UR', 0),
(1241, 79, 'Western', 'WE', 0),
(1242, 80, 'Abkhazia', 'AB', 0),
(1243, 80, 'Ajaria', 'AJ', 0),
(1244, 80, 'Tbilisi', 'TB', 0),
(1245, 80, 'Guria', 'GU', 0),
(1246, 80, 'Imereti', 'IM', 0),
(1247, 80, 'Kakheti', 'KA', 0),
(1248, 80, 'Kvemo Kartli', 'KK', 0),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 0),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 0),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 0),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 0),
(1253, 80, 'Shida Kartli', 'SK', 0),
(1254, 81, 'Baden-Württemberg', 'BAW', 0),
(1255, 81, 'Bayern', 'BAY', 0),
(1256, 81, 'Berlin', 'BER', 0),
(1257, 81, 'Brandenburg', 'BRG', 0),
(1258, 81, 'Bremen', 'BRE', 0),
(1259, 81, 'Hamburg', 'HAM', 0),
(1260, 81, 'Hessen', 'HES', 0),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 0),
(1262, 81, 'Niedersachsen', 'NDS', 0),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 0),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 0),
(1265, 81, 'Saarland', 'SAR', 0),
(1266, 81, 'Sachsen', 'SAS', 0),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 0),
(1268, 81, 'Schleswig-Holstein', 'SCN', 0),
(1269, 81, 'Thüringen', 'THE', 0),
(1270, 82, 'Ashanti Region', 'AS', 0),
(1271, 82, 'Brong-Ahafo Region', 'BA', 0),
(1272, 82, 'Central Region', 'CE', 0),
(1273, 82, 'Eastern Region', 'EA', 0),
(1274, 82, 'Greater Accra Region', 'GA', 0),
(1275, 82, 'Northern Region', 'NO', 0),
(1276, 82, 'Upper East Region', 'UE', 0),
(1277, 82, 'Upper West Region', 'UW', 0),
(1278, 82, 'Volta Region', 'VO', 0),
(1279, 82, 'Western Region', 'WE', 0),
(1280, 84, 'Attica', 'AT', 0),
(1281, 84, 'Central Greece', 'CN', 0),
(1282, 84, 'Central Macedonia', 'CM', 0),
(1283, 84, 'Crete', 'CR', 0),
(1284, 84, 'East Macedonia and Thrace', 'EM', 0),
(1285, 84, 'Epirus', 'EP', 0),
(1286, 84, 'Ionian Islands', 'II', 0),
(1287, 84, 'North Aegean', 'NA', 0),
(1288, 84, 'Peloponnesos', 'PP', 0),
(1289, 84, 'South Aegean', 'SA', 0),
(1290, 84, 'Thessaly', 'TH', 0),
(1291, 84, 'West Greece', 'WG', 0),
(1292, 84, 'West Macedonia', 'WM', 0),
(1293, 85, 'Avannaa', 'A', 0),
(1294, 85, 'Tunu', 'T', 0),
(1295, 85, 'Kitaa', 'K', 0),
(1296, 86, 'Saint Andrew', 'A', 0),
(1297, 86, 'Saint David', 'D', 0),
(1298, 86, 'Saint George', 'G', 0),
(1299, 86, 'Saint John', 'J', 0),
(1300, 86, 'Saint Mark', 'M', 0),
(1301, 86, 'Saint Patrick', 'P', 0),
(1302, 86, 'Carriacou', 'C', 0),
(1303, 86, 'Petit Martinique', 'Q', 0),
(1304, 89, 'Alta Verapaz', 'AV', 0),
(1305, 89, 'Baja Verapaz', 'BV', 0),
(1306, 89, 'Chimaltenango', 'CM', 0),
(1307, 89, 'Chiquimula', 'CQ', 0),
(1308, 89, 'El Peten', 'PE', 0),
(1309, 89, 'El Progreso', 'PR', 0),
(1310, 89, 'El Quiche', 'QC', 0),
(1311, 89, 'Escuintla', 'ES', 0),
(1312, 89, 'Guatemala', 'GU', 0),
(1313, 89, 'Huehuetenango', 'HU', 0),
(1314, 89, 'Izabal', 'IZ', 0),
(1315, 89, 'Jalapa', 'JA', 0),
(1316, 89, 'Jutiapa', 'JU', 0),
(1317, 89, 'Quetzaltenango', 'QZ', 0),
(1318, 89, 'Retalhuleu', 'RE', 0),
(1319, 89, 'Sacatepequez', 'ST', 0),
(1320, 89, 'San Marcos', 'SM', 0),
(1321, 89, 'Santa Rosa', 'SR', 0),
(1322, 89, 'Solola', 'SO', 0),
(1323, 89, 'Suchitepequez', 'SU', 0),
(1324, 89, 'Totonicapan', 'TO', 0),
(1325, 89, 'Zacapa', 'ZA', 0),
(1326, 90, 'Conakry', 'CNK', 0),
(1327, 90, 'Beyla', 'BYL', 0),
(1328, 90, 'Boffa', 'BFA', 0),
(1329, 90, 'Boke', 'BOK', 0),
(1330, 90, 'Coyah', 'COY', 0),
(1331, 90, 'Dabola', 'DBL', 0),
(1332, 90, 'Dalaba', 'DLB', 0),
(1333, 90, 'Dinguiraye', 'DGR', 0),
(1334, 90, 'Dubreka', 'DBR', 0),
(1335, 90, 'Faranah', 'FRN', 0),
(1336, 90, 'Forecariah', 'FRC', 0),
(1337, 90, 'Fria', 'FRI', 0),
(1338, 90, 'Gaoual', 'GAO', 0),
(1339, 90, 'Gueckedou', 'GCD', 0),
(1340, 90, 'Kankan', 'KNK', 0),
(1341, 90, 'Kerouane', 'KRN', 0),
(1342, 90, 'Kindia', 'KND', 0),
(1343, 90, 'Kissidougou', 'KSD', 0),
(1344, 90, 'Koubia', 'KBA', 0),
(1345, 90, 'Koundara', 'KDA', 0),
(1346, 90, 'Kouroussa', 'KRA', 0),
(1347, 90, 'Labe', 'LAB', 0),
(1348, 90, 'Lelouma', 'LLM', 0),
(1349, 90, 'Lola', 'LOL', 0),
(1350, 90, 'Macenta', 'MCT', 0),
(1351, 90, 'Mali', 'MAL', 0),
(1352, 90, 'Mamou', 'MAM', 0),
(1353, 90, 'Mandiana', 'MAN', 0),
(1354, 90, 'Nzerekore', 'NZR', 0),
(1355, 90, 'Pita', 'PIT', 0),
(1356, 90, 'Siguiri', 'SIG', 0),
(1357, 90, 'Telimele', 'TLM', 0),
(1358, 90, 'Tougue', 'TOG', 0),
(1359, 90, 'Yomou', 'YOM', 0),
(1360, 91, 'Bafata Region', 'BF', 0),
(1361, 91, 'Biombo Region', 'BB', 0),
(1362, 91, 'Bissau Region', 'BS', 0),
(1363, 91, 'Bolama Region', 'BL', 0),
(1364, 91, 'Cacheu Region', 'CA', 0),
(1365, 91, 'Gabu Region', 'GA', 0),
(1366, 91, 'Oio Region', 'OI', 0),
(1367, 91, 'Quinara Region', 'QU', 0),
(1368, 91, 'Tombali Region', 'TO', 0),
(1369, 92, 'Barima-Waini', 'BW', 0),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 0),
(1371, 92, 'Demerara-Mahaica', 'DM', 0),
(1372, 92, 'East Berbice-Corentyne', 'EC', 0),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 0),
(1374, 92, 'Mahaica-Berbice', 'MB', 0),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 0),
(1376, 92, 'Potaro-Siparuni', 'PI', 0),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 0),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 0),
(1379, 93, 'Artibonite', 'AR', 0),
(1380, 93, 'Centre', 'CE', 0),
(1381, 93, 'Grand\'Anse', 'GA', 0),
(1382, 93, 'Nord', 'ND', 0),
(1383, 93, 'Nord-Est', 'NE', 0),
(1384, 93, 'Nord-Ouest', 'NO', 0),
(1385, 93, 'Ouest', 'OU', 0),
(1386, 93, 'Sud', 'SD', 0),
(1387, 93, 'Sud-Est', 'SE', 0),
(1388, 94, 'Flat Island', 'F', 0),
(1389, 94, 'McDonald Island', 'M', 0),
(1390, 94, 'Shag Island', 'S', 0),
(1391, 94, 'Heard Island', 'H', 0),
(1392, 95, 'Atlantida', 'AT', 0),
(1393, 95, 'Choluteca', 'CH', 0),
(1394, 95, 'Colon', 'CL', 0),
(1395, 95, 'Comayagua', 'CM', 0),
(1396, 95, 'Copan', 'CP', 0),
(1397, 95, 'Cortes', 'CR', 0),
(1398, 95, 'El Paraiso', 'PA', 0),
(1399, 95, 'Francisco Morazan', 'FM', 0),
(1400, 95, 'Gracias a Dios', 'GD', 0),
(1401, 95, 'Intibuca', 'IN', 0),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 0),
(1403, 95, 'La Paz', 'PZ', 0),
(1404, 95, 'Lempira', 'LE', 0),
(1405, 95, 'Ocotepeque', 'OC', 0),
(1406, 95, 'Olancho', 'OL', 0),
(1407, 95, 'Santa Barbara', 'SB', 0),
(1408, 95, 'Valle', 'VA', 0),
(1409, 95, 'Yoro', 'YO', 0),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 0),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 0),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 0),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 0),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 0),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 0),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 0),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 0),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 0),
(1419, 96, 'Islands New Territories', 'NIS', 0),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 0),
(1421, 96, 'North New Territories', 'NNO', 0),
(1422, 96, 'Sai Kung New Territories', 'NSK', 0),
(1423, 96, 'Sha Tin New Territories', 'NST', 0),
(1424, 96, 'Tai Po New Territories', 'NTP', 0),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 0),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 0),
(1427, 96, 'Yuen Long New Territories', 'NYL', 0),
(1467, 98, 'Austurland', 'AL', 0),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 0),
(1469, 98, 'Norourland eystra', 'NE', 0),
(1470, 98, 'Norourland vestra', 'NV', 0),
(1471, 98, 'Suourland', 'SL', 0),
(1472, 98, 'Suournes', 'SN', 0),
(1473, 98, 'Vestfiroir', 'VF', 0),
(1474, 98, 'Vesturland', 'VL', 0),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 0),
(1476, 99, 'Andhra Pradesh', 'AP', 0),
(1477, 99, 'Arunachal Pradesh', 'AR', 0),
(1478, 99, 'Assam', 'AS', 0),
(1479, 99, 'Bihar', 'BI', 0),
(1480, 99, 'Chandigarh', 'CH', 0),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 0),
(1482, 99, 'Daman and Diu', 'DM', 0),
(1483, 99, 'Delhi', 'DE', 0),
(1484, 99, 'Goa', 'GO', 0),
(1485, 99, 'Gujarat', 'GU', 0),
(1486, 99, 'Haryana', 'HA', 0),
(1487, 99, 'Himachal Pradesh', 'HP', 0),
(1488, 99, 'Jammu and Kashmir', 'JA', 0),
(1489, 99, 'Karnataka', 'KA', 0),
(1490, 99, 'Kerala', 'KE', 0),
(1491, 99, 'Lakshadweep Islands', 'LI', 0),
(1492, 99, 'Madhya Pradesh', 'MP', 0),
(1493, 99, 'Maharashtra', 'MA', 0),
(1494, 99, 'Manipur', 'MN', 0),
(1495, 99, 'Meghalaya', 'ME', 0),
(1496, 99, 'Mizoram', 'MI', 0),
(1497, 99, 'Nagaland', 'NA', 0),
(1498, 99, 'Orissa', 'OR', 0),
(1499, 99, 'Puducherry', 'PO', 0),
(1500, 99, 'Punjab', 'PU', 0),
(1501, 99, 'Rajasthan', 'RA', 0),
(1502, 99, 'Sikkim', 'SI', 0),
(1503, 99, 'Tamil Nadu', 'TN', 0),
(1504, 99, 'Tripura', 'TR', 0),
(1505, 99, 'Uttar Pradesh', 'UP', 0),
(1506, 99, 'West Bengal', 'WB', 0),
(1507, 100, 'Aceh', 'AC', 0),
(1508, 100, 'Bali', 'BA', 0),
(1509, 100, 'Banten', 'BT', 0),
(1510, 100, 'Bengkulu', 'BE', 0),
(1511, 100, 'Kalimantan Utara', 'BD', 0),
(1512, 100, 'Gorontalo', 'GO', 0),
(1513, 100, 'Jakarta', 'JK', 0),
(1514, 100, 'Jambi', 'JA', 0),
(1515, 100, 'Jawa Barat', 'JB', 0),
(1516, 100, 'Jawa Tengah', 'JT', 0),
(1517, 100, 'Jawa Timur', 'JI', 0),
(1518, 100, 'Kalimantan Barat', 'KB', 0),
(1519, 100, 'Kalimantan Selatan', 'KS', 0),
(1520, 100, 'Kalimantan Tengah', 'KT', 0),
(1521, 100, 'Kalimantan Timur', 'KI', 0),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 0),
(1523, 100, 'Lampung', 'LA', 0),
(1524, 100, 'Maluku', 'MA', 0),
(1525, 100, 'Maluku Utara', 'MU', 0),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 0),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 0),
(1528, 100, 'Papua', 'PA', 0),
(1529, 100, 'Riau', 'RI', 0),
(1530, 100, 'Sulawesi Selatan', 'SN', 0),
(1531, 100, 'Sulawesi Tengah', 'ST', 0),
(1532, 100, 'Sulawesi Tenggara', 'SG', 0),
(1533, 100, 'Sulawesi Utara', 'SA', 0),
(1534, 100, 'Sumatera Barat', 'SB', 0),
(1535, 100, 'Sumatera Selatan', 'SS', 0),
(1536, 100, 'Sumatera Utara', 'SU', 0),
(1537, 100, 'Yogyakarta', 'YO', 0),
(1538, 101, 'Tehran', 'TEH', 0),
(1539, 101, 'Qom', 'QOM', 0),
(1540, 101, 'Markazi', 'MKZ', 0),
(1541, 101, 'Qazvin', 'QAZ', 0),
(1542, 101, 'Gilan', 'GIL', 0),
(1543, 101, 'Ardabil', 'ARD', 0),
(1544, 101, 'Zanjan', 'ZAN', 0),
(1545, 101, 'East Azarbaijan', 'EAZ', 0),
(1546, 101, 'West Azarbaijan', 'WEZ', 0),
(1547, 101, 'Kurdistan', 'KRD', 0),
(1548, 101, 'Hamadan', 'HMD', 0),
(1549, 101, 'Kermanshah', 'KRM', 0),
(1550, 101, 'Ilam', 'ILM', 0),
(1551, 101, 'Lorestan', 'LRS', 0),
(1552, 101, 'Khuzestan', 'KZT', 0),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 0),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 0),
(1555, 101, 'Bushehr', 'BSH', 0),
(1556, 101, 'Fars', 'FAR', 0),
(1557, 101, 'Hormozgan', 'HRM', 0),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 0),
(1559, 101, 'Kerman', 'KRB', 0),
(1560, 101, 'Yazd', 'YZD', 0),
(1561, 101, 'Esfahan', 'EFH', 0),
(1562, 101, 'Semnan', 'SMN', 0),
(1563, 101, 'Mazandaran', 'MZD', 0),
(1564, 101, 'Golestan', 'GLS', 0),
(1565, 101, 'North Khorasan', 'NKH', 0),
(1566, 101, 'Razavi Khorasan', 'RKH', 0),
(1567, 101, 'South Khorasan', 'SKH', 0),
(1568, 102, 'Baghdad', 'BD', 0),
(1569, 102, 'Salah ad Din', 'SD', 0),
(1570, 102, 'Diyala', 'DY', 0),
(1571, 102, 'Wasit', 'WS', 0),
(1572, 102, 'Maysan', 'MY', 0),
(1573, 102, 'Al Basrah', 'BA', 0),
(1574, 102, 'Dhi Qar', 'DQ', 0),
(1575, 102, 'Al Muthanna', 'MU', 0),
(1576, 102, 'Al Qadisyah', 'QA', 0),
(1577, 102, 'Babil', 'BB', 0),
(1578, 102, 'Al Karbala', 'KB', 0),
(1579, 102, 'An Najaf', 'NJ', 0),
(1580, 102, 'Al Anbar', 'AB', 0),
(1581, 102, 'Ninawa', 'NN', 0),
(1582, 102, 'Dahuk', 'DH', 0),
(1583, 102, 'Arbil', 'AL', 0),
(1584, 102, 'At Ta\'mim', 'TM', 0),
(1585, 102, 'As Sulaymaniyah', 'SL', 0),
(1586, 103, 'Carlow', 'CA', 0),
(1587, 103, 'Cavan', 'CV', 0),
(1588, 103, 'Clare', 'CL', 0),
(1589, 103, 'Cork', 'CO', 0),
(1590, 103, 'Donegal', 'DO', 0),
(1591, 103, 'Dublin', 'DU', 0),
(1592, 103, 'Galway', 'GA', 0),
(1593, 103, 'Kerry', 'KE', 0),
(1594, 103, 'Kildare', 'KI', 0),
(1595, 103, 'Kilkenny', 'KL', 0),
(1596, 103, 'Laois', 'LA', 0),
(1597, 103, 'Leitrim', 'LE', 0);
INSERT INTO `migan_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 0),
(1599, 103, 'Longford', 'LO', 0),
(1600, 103, 'Louth', 'LU', 0),
(1601, 103, 'Mayo', 'MA', 0),
(1602, 103, 'Meath', 'ME', 0),
(1603, 103, 'Monaghan', 'MO', 0),
(1604, 103, 'Offaly', 'OF', 0),
(1605, 103, 'Roscommon', 'RO', 0),
(1606, 103, 'Sligo', 'SL', 0),
(1607, 103, 'Tipperary', 'TI', 0),
(1608, 103, 'Waterford', 'WA', 0),
(1609, 103, 'Westmeath', 'WE', 0),
(1610, 103, 'Wexford', 'WX', 0),
(1611, 103, 'Wicklow', 'WI', 0),
(1612, 104, 'Be\'er Sheva', 'BS', 0),
(1613, 104, 'Bika\'at Hayarden', 'BH', 0),
(1614, 104, 'Eilat and Arava', 'EA', 0),
(1615, 104, 'Galil', 'GA', 0),
(1616, 104, 'Haifa', 'HA', 0),
(1617, 104, 'Jehuda Mountains', 'JM', 0),
(1618, 104, 'Jerusalem', 'JE', 0),
(1619, 104, 'Negev', 'NE', 0),
(1620, 104, 'Semaria', 'SE', 0),
(1621, 104, 'Sharon', 'SH', 0),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 0),
(3860, 105, 'Caltanissetta', 'CL', 0),
(3842, 105, 'Agrigento', 'AG', 0),
(3843, 105, 'Alessandria', 'AL', 0),
(3844, 105, 'Ancona', 'AN', 0),
(3845, 105, 'Aosta', 'AO', 0),
(3846, 105, 'Arezzo', 'AR', 0),
(3847, 105, 'Ascoli Piceno', 'AP', 0),
(3848, 105, 'Asti', 'AT', 0),
(3849, 105, 'Avellino', 'AV', 0),
(3850, 105, 'Bari', 'BA', 0),
(3851, 105, 'Belluno', 'BL', 0),
(3852, 105, 'Benevento', 'BN', 0),
(3853, 105, 'Bergamo', 'BG', 0),
(3854, 105, 'Biella', 'BI', 0),
(3855, 105, 'Bologna', 'BO', 0),
(3856, 105, 'Bolzano', 'BZ', 0),
(3857, 105, 'Brescia', 'BS', 0),
(3858, 105, 'Brindisi', 'BR', 0),
(3859, 105, 'Cagliari', 'CA', 0),
(1643, 106, 'Clarendon Parish', 'CLA', 0),
(1644, 106, 'Hanover Parish', 'HAN', 0),
(1645, 106, 'Kingston Parish', 'KIN', 0),
(1646, 106, 'Manchester Parish', 'MAN', 0),
(1647, 106, 'Portland Parish', 'POR', 0),
(1648, 106, 'Saint Andrew Parish', 'AND', 0),
(1649, 106, 'Saint Ann Parish', 'ANN', 0),
(1650, 106, 'Saint Catherine Parish', 'CAT', 0),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 0),
(1652, 106, 'Saint James Parish', 'JAM', 0),
(1653, 106, 'Saint Mary Parish', 'MAR', 0),
(1654, 106, 'Saint Thomas Parish', 'THO', 0),
(1655, 106, 'Trelawny Parish', 'TRL', 0),
(1656, 106, 'Westmoreland Parish', 'WML', 0),
(1657, 107, 'Aichi', 'AI', 0),
(1658, 107, 'Akita', 'AK', 0),
(1659, 107, 'Aomori', 'AO', 0),
(1660, 107, 'Chiba', 'CH', 0),
(1661, 107, 'Ehime', 'EH', 0),
(1662, 107, 'Fukui', 'FK', 0),
(1663, 107, 'Fukuoka', 'FU', 0),
(1664, 107, 'Fukushima', 'FS', 0),
(1665, 107, 'Gifu', 'GI', 0),
(1666, 107, 'Gumma', 'GU', 0),
(1667, 107, 'Hiroshima', 'HI', 0),
(1668, 107, 'Hokkaido', 'HO', 0),
(1669, 107, 'Hyogo', 'HY', 0),
(1670, 107, 'Ibaraki', 'IB', 0),
(1671, 107, 'Ishikawa', 'IS', 0),
(1672, 107, 'Iwate', 'IW', 0),
(1673, 107, 'Kagawa', 'KA', 0),
(1674, 107, 'Kagoshima', 'KG', 0),
(1675, 107, 'Kanagawa', 'KN', 0),
(1676, 107, 'Kochi', 'KO', 0),
(1677, 107, 'Kumamoto', 'KU', 0),
(1678, 107, 'Kyoto', 'KY', 0),
(1679, 107, 'Mie', 'MI', 0),
(1680, 107, 'Miyagi', 'MY', 0),
(1681, 107, 'Miyazaki', 'MZ', 0),
(1682, 107, 'Nagano', 'NA', 0),
(1683, 107, 'Nagasaki', 'NG', 0),
(1684, 107, 'Nara', 'NR', 0),
(1685, 107, 'Niigata', 'NI', 0),
(1686, 107, 'Oita', 'OI', 0),
(1687, 107, 'Okayama', 'OK', 0),
(1688, 107, 'Okinawa', 'ON', 0),
(1689, 107, 'Osaka', 'OS', 0),
(1690, 107, 'Saga', 'SA', 0),
(1691, 107, 'Saitama', 'SI', 0),
(1692, 107, 'Shiga', 'SH', 0),
(1693, 107, 'Shimane', 'SM', 0),
(1694, 107, 'Shizuoka', 'SZ', 0),
(1695, 107, 'Tochigi', 'TO', 0),
(1696, 107, 'Tokushima', 'TS', 0),
(1697, 107, 'Tokyo', 'TK', 0),
(1698, 107, 'Tottori', 'TT', 0),
(1699, 107, 'Toyama', 'TY', 0),
(1700, 107, 'Wakayama', 'WA', 0),
(1701, 107, 'Yamagata', 'YA', 0),
(1702, 107, 'Yamaguchi', 'YM', 0),
(1703, 107, 'Yamanashi', 'YN', 0),
(1704, 108, '\'Amman', 'AM', 0),
(1705, 108, 'Ajlun', 'AJ', 0),
(1706, 108, 'Al \'Aqabah', 'AA', 0),
(1707, 108, 'Al Balqa\'', 'AB', 0),
(1708, 108, 'Al Karak', 'AK', 0),
(1709, 108, 'Al Mafraq', 'AL', 0),
(1710, 108, 'At Tafilah', 'AT', 0),
(1711, 108, 'Az Zarqa\'', 'AZ', 0),
(1712, 108, 'Irbid', 'IR', 0),
(1713, 108, 'Jarash', 'JA', 0),
(1714, 108, 'Ma\'an', 'MA', 0),
(1715, 108, 'Madaba', 'MD', 0),
(1716, 109, 'Almaty', 'AL', 0),
(1717, 109, 'Almaty City', 'AC', 0),
(1718, 109, 'Aqmola', 'AM', 0),
(1719, 109, 'Aqtobe', 'AQ', 0),
(1720, 109, 'Astana City', 'AS', 0),
(1721, 109, 'Atyrau', 'AT', 0),
(1722, 109, 'Batys Qazaqstan', 'BA', 0),
(1723, 109, 'Bayqongyr City', 'BY', 0),
(1724, 109, 'Mangghystau', 'MA', 0),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 0),
(1726, 109, 'Pavlodar', 'PA', 0),
(1727, 109, 'Qaraghandy', 'QA', 0),
(1728, 109, 'Qostanay', 'QO', 0),
(1729, 109, 'Qyzylorda', 'QY', 0),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 0),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 0),
(1732, 109, 'Zhambyl', 'ZH', 0),
(1733, 110, 'Central', 'CE', 0),
(1734, 110, 'Coast', 'CO', 0),
(1735, 110, 'Eastern', 'EA', 0),
(1736, 110, 'Nairobi Area', 'NA', 0),
(1737, 110, 'North Eastern', 'NE', 0),
(1738, 110, 'Nyanza', 'NY', 0),
(1739, 110, 'Rift Valley', 'RV', 0),
(1740, 110, 'Western', 'WE', 0),
(1741, 111, 'Abaiang', 'AG', 0),
(1742, 111, 'Abemama', 'AM', 0),
(1743, 111, 'Aranuka', 'AK', 0),
(1744, 111, 'Arorae', 'AO', 0),
(1745, 111, 'Banaba', 'BA', 0),
(1746, 111, 'Beru', 'BE', 0),
(1747, 111, 'Butaritari', 'bT', 0),
(1748, 111, 'Kanton', 'KA', 0),
(1749, 111, 'Kiritimati', 'KR', 0),
(1750, 111, 'Kuria', 'KU', 0),
(1751, 111, 'Maiana', 'MI', 0),
(1752, 111, 'Makin', 'MN', 0),
(1753, 111, 'Marakei', 'ME', 0),
(1754, 111, 'Nikunau', 'NI', 0),
(1755, 111, 'Nonouti', 'NO', 0),
(1756, 111, 'Onotoa', 'ON', 0),
(1757, 111, 'Tabiteuea', 'TT', 0),
(1758, 111, 'Tabuaeran', 'TR', 0),
(1759, 111, 'Tamana', 'TM', 0),
(1760, 111, 'Tarawa', 'TW', 0),
(1761, 111, 'Teraina', 'TE', 0),
(1762, 112, 'Chagang-do', 'CHA', 0),
(1763, 112, 'Hamgyong-bukto', 'HAB', 0),
(1764, 112, 'Hamgyong-namdo', 'HAN', 0),
(1765, 112, 'Hwanghae-bukto', 'HWB', 0),
(1766, 112, 'Hwanghae-namdo', 'HWN', 0),
(1767, 112, 'Kangwon-do', 'KAN', 0),
(1768, 112, 'P\'yongan-bukto', 'PYB', 0),
(1769, 112, 'P\'yongan-namdo', 'PYN', 0),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 0),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 0),
(1772, 112, 'P\'yongyang Special City', 'PYO', 0),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 0),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 0),
(1775, 113, 'Cheju-do', 'CD', 0),
(1776, 113, 'Cholla-bukto', 'CB', 0),
(1777, 113, 'Cholla-namdo', 'CN', 0),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 0),
(1779, 113, 'Kangwon-do', 'KA', 0),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 0),
(1781, 113, 'Kyonggi-do', 'KD', 0),
(1782, 113, 'Kyongsang-bukto', 'KB', 0),
(1783, 113, 'Kyongsang-namdo', 'KN', 0),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 0),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 0),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 0),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 0),
(1788, 114, 'Al \'Asimah', 'AL', 0),
(1789, 114, 'Al Ahmadi', 'AA', 0),
(1790, 114, 'Al Farwaniyah', 'AF', 0),
(1791, 114, 'Al Jahra\'', 'AJ', 0),
(1792, 114, 'Hawalli', 'HA', 0),
(1793, 115, 'Bishkek', 'GB', 0),
(1794, 115, 'Batken', 'B', 0),
(1795, 115, 'Chu', 'C', 0),
(1796, 115, 'Jalal-Abad', 'J', 0),
(1797, 115, 'Naryn', 'N', 0),
(1798, 115, 'Osh', 'O', 0),
(1799, 115, 'Talas', 'T', 0),
(1800, 115, 'Ysyk-Kol', 'Y', 0),
(1801, 116, 'Vientiane', 'VT', 0),
(1802, 116, 'Attapu', 'AT', 0),
(1803, 116, 'Bokeo', 'BK', 0),
(1804, 116, 'Bolikhamxai', 'BL', 0),
(1805, 116, 'Champasak', 'CH', 0),
(1806, 116, 'Houaphan', 'HO', 0),
(1807, 116, 'Khammouan', 'KH', 0),
(1808, 116, 'Louang Namtha', 'LM', 0),
(1809, 116, 'Louangphabang', 'LP', 0),
(1810, 116, 'Oudomxai', 'OU', 0),
(1811, 116, 'Phongsali', 'PH', 0),
(1812, 116, 'Salavan', 'SL', 0),
(1813, 116, 'Savannakhet', 'SV', 0),
(1814, 116, 'Vientiane', 'VI', 0),
(1815, 116, 'Xaignabouli', 'XA', 0),
(1816, 116, 'Xekong', 'XE', 0),
(1817, 116, 'Xiangkhoang', 'XI', 0),
(1818, 116, 'Xaisomboun', 'XN', 0),
(1852, 119, 'Berea', 'BE', 0),
(1853, 119, 'Butha-Buthe', 'BB', 0),
(1854, 119, 'Leribe', 'LE', 0),
(1855, 119, 'Mafeteng', 'MF', 0),
(1856, 119, 'Maseru', 'MS', 0),
(1857, 119, 'Mohale\'s Hoek', 'MH', 0),
(1858, 119, 'Mokhotlong', 'MK', 0),
(1859, 119, 'Qacha\'s Nek', 'QN', 0),
(1860, 119, 'Quthing', 'QT', 0),
(1861, 119, 'Thaba-Tseka', 'TT', 0),
(1862, 120, 'Bomi', 'BI', 0),
(1863, 120, 'Bong', 'BG', 0),
(1864, 120, 'Grand Bassa', 'GB', 0),
(1865, 120, 'Grand Cape Mount', 'CM', 0),
(1866, 120, 'Grand Gedeh', 'GG', 0),
(1867, 120, 'Grand Kru', 'GK', 0),
(1868, 120, 'Lofa', 'LO', 0),
(1869, 120, 'Margibi', 'MG', 0),
(1870, 120, 'Maryland', 'ML', 0),
(1871, 120, 'Montserrado', 'MS', 0),
(1872, 120, 'Nimba', 'NB', 0),
(1873, 120, 'River Cess', 'RC', 0),
(1874, 120, 'Sinoe', 'SN', 0),
(1875, 121, 'Ajdabiya', 'AJ', 0),
(1876, 121, 'Al \'Aziziyah', 'AZ', 0),
(1877, 121, 'Al Fatih', 'FA', 0),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 0),
(1879, 121, 'Al Jufrah', 'JU', 0),
(1880, 121, 'Al Khums', 'KH', 0),
(1881, 121, 'Al Kufrah', 'KU', 0),
(1882, 121, 'An Nuqat al Khams', 'NK', 0),
(1883, 121, 'Ash Shati\'', 'AS', 0),
(1884, 121, 'Awbari', 'AW', 0),
(1885, 121, 'Az Zawiyah', 'ZA', 0),
(1886, 121, 'Banghazi', 'BA', 0),
(1887, 121, 'Darnah', 'DA', 0),
(1888, 121, 'Ghadamis', 'GD', 0),
(1889, 121, 'Gharyan', 'GY', 0),
(1890, 121, 'Misratah', 'MI', 0),
(1891, 121, 'Murzuq', 'MZ', 0),
(1892, 121, 'Sabha', 'SB', 0),
(1893, 121, 'Sawfajjin', 'SW', 0),
(1894, 121, 'Surt', 'SU', 0),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 0),
(1896, 121, 'Tarhunah', 'TH', 0),
(1897, 121, 'Tubruq', 'TU', 0),
(1898, 121, 'Yafran', 'YA', 0),
(1899, 121, 'Zlitan', 'ZL', 0),
(1900, 122, 'Vaduz', 'V', 0),
(1901, 122, 'Schaan', 'A', 0),
(1902, 122, 'Balzers', 'B', 0),
(1903, 122, 'Triesen', 'N', 0),
(1904, 122, 'Eschen', 'E', 0),
(1905, 122, 'Mauren', 'M', 0),
(1906, 122, 'Triesenberg', 'T', 0),
(1907, 122, 'Ruggell', 'R', 0),
(1908, 122, 'Gamprin', 'G', 0),
(1909, 122, 'Schellenberg', 'L', 0),
(1910, 122, 'Planken', 'P', 0),
(1911, 123, 'Alytus', 'AL', 0),
(1912, 123, 'Kaunas', 'KA', 0),
(1913, 123, 'Klaipeda', 'KL', 0),
(1914, 123, 'Marijampole', 'MA', 0),
(1915, 123, 'Panevezys', 'PA', 0),
(1916, 123, 'Siauliai', 'SI', 0),
(1917, 123, 'Taurage', 'TA', 0),
(1918, 123, 'Telsiai', 'TE', 0),
(1919, 123, 'Utena', 'UT', 0),
(1920, 123, 'Vilnius', 'VI', 0),
(1921, 124, 'Diekirch', 'DD', 0),
(1922, 124, 'Clervaux', 'DC', 0),
(1923, 124, 'Redange', 'DR', 0),
(1924, 124, 'Vianden', 'DV', 0),
(1925, 124, 'Wiltz', 'DW', 0),
(1926, 124, 'Grevenmacher', 'GG', 0),
(1927, 124, 'Echternach', 'GE', 0),
(1928, 124, 'Remich', 'GR', 0),
(1929, 124, 'Luxembourg', 'LL', 0),
(1930, 124, 'Capellen', 'LC', 0),
(1931, 124, 'Esch-sur-Alzette', 'LE', 0),
(1932, 124, 'Mersch', 'LM', 0),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 0),
(1934, 125, 'St. Anthony Parish', 'ANT', 0),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 0),
(1936, 125, 'Cathedral Parish', 'CAT', 0),
(1937, 125, 'St. Lawrence Parish', 'LAW', 0),
(1938, 127, 'Antananarivo', 'AN', 0),
(1939, 127, 'Antsiranana', 'AS', 0),
(1940, 127, 'Fianarantsoa', 'FN', 0),
(1941, 127, 'Mahajanga', 'MJ', 0),
(1942, 127, 'Toamasina', 'TM', 0),
(1943, 127, 'Toliara', 'TL', 0),
(1944, 128, 'Balaka', 'BLK', 0),
(1945, 128, 'Blantyre', 'BLT', 0),
(1946, 128, 'Chikwawa', 'CKW', 0),
(1947, 128, 'Chiradzulu', 'CRD', 0),
(1948, 128, 'Chitipa', 'CTP', 0),
(1949, 128, 'Dedza', 'DDZ', 0),
(1950, 128, 'Dowa', 'DWA', 0),
(1951, 128, 'Karonga', 'KRG', 0),
(1952, 128, 'Kasungu', 'KSG', 0),
(1953, 128, 'Likoma', 'LKM', 0),
(1954, 128, 'Lilongwe', 'LLG', 0),
(1955, 128, 'Machinga', 'MCG', 0),
(1956, 128, 'Mangochi', 'MGC', 0),
(1957, 128, 'Mchinji', 'MCH', 0),
(1958, 128, 'Mulanje', 'MLJ', 0),
(1959, 128, 'Mwanza', 'MWZ', 0),
(1960, 128, 'Mzimba', 'MZM', 0),
(1961, 128, 'Ntcheu', 'NTU', 0),
(1962, 128, 'Nkhata Bay', 'NKB', 0),
(1963, 128, 'Nkhotakota', 'NKH', 0),
(1964, 128, 'Nsanje', 'NSJ', 0),
(1965, 128, 'Ntchisi', 'NTI', 0),
(1966, 128, 'Phalombe', 'PHL', 0),
(1967, 128, 'Rumphi', 'RMP', 0),
(1968, 128, 'Salima', 'SLM', 0),
(1969, 128, 'Thyolo', 'THY', 0),
(1970, 128, 'Zomba', 'ZBA', 0),
(1971, 129, 'Johor', 'MY-01', 0),
(1972, 129, 'Kedah', 'MY-02', 0),
(1973, 129, 'Kelantan', 'MY-03', 0),
(1974, 129, 'Labuan', 'MY-15', 0),
(1975, 129, 'Melaka', 'MY-04', 0),
(1976, 129, 'Negeri Sembilan', 'MY-05', 0),
(1977, 129, 'Pahang', 'MY-06', 0),
(1978, 129, 'Perak', 'MY-08', 0),
(1979, 129, 'Perlis', 'MY-09', 0),
(1980, 129, 'Pulau Pinang', 'MY-07', 0),
(1981, 129, 'Sabah', 'MY-12', 0),
(1982, 129, 'Sarawak', 'MY-13', 0),
(1983, 129, 'Selangor', 'MY-10', 0),
(1984, 129, 'Terengganu', 'MY-11', 0),
(1985, 129, 'Kuala Lumpur', 'MY-14', 0),
(4035, 129, 'Putrajaya', 'MY-16', 0),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 0),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 0),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 0),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 0),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 0),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 0),
(1992, 130, 'Faadhippolhu', 'FAA', 0),
(1993, 130, 'Male Atoll', 'MAA', 0),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 0),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 0),
(1996, 130, 'Felidhe Atoll', 'FEA', 0),
(1997, 130, 'Mulaku Atoll', 'MUA', 0),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 0),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 0),
(2000, 130, 'Kolhumadulu', 'KLH', 0),
(2001, 130, 'Hadhdhunmathi', 'HDH', 0),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 0),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 0),
(2004, 130, 'Fua Mulaku', 'FMU', 0),
(2005, 130, 'Addu', 'ADD', 0),
(2006, 131, 'Gao', 'GA', 0),
(2007, 131, 'Kayes', 'KY', 0),
(2008, 131, 'Kidal', 'KD', 0),
(2009, 131, 'Koulikoro', 'KL', 0),
(2010, 131, 'Mopti', 'MP', 0),
(2011, 131, 'Segou', 'SG', 0),
(2012, 131, 'Sikasso', 'SK', 0),
(2013, 131, 'Tombouctou', 'TB', 0),
(2014, 131, 'Bamako Capital District', 'CD', 0),
(2015, 132, 'Attard', 'ATT', 0),
(2016, 132, 'Balzan', 'BAL', 0),
(2017, 132, 'Birgu', 'BGU', 0),
(2018, 132, 'Birkirkara', 'BKK', 0),
(2019, 132, 'Birzebbuga', 'BRZ', 0),
(2020, 132, 'Bormla', 'BOR', 0),
(2021, 132, 'Dingli', 'DIN', 0),
(2022, 132, 'Fgura', 'FGU', 0),
(2023, 132, 'Floriana', 'FLO', 0),
(2024, 132, 'Gudja', 'GDJ', 0),
(2025, 132, 'Gzira', 'GZR', 0),
(2026, 132, 'Gargur', 'GRG', 0),
(2027, 132, 'Gaxaq', 'GXQ', 0),
(2028, 132, 'Hamrun', 'HMR', 0),
(2029, 132, 'Iklin', 'IKL', 0),
(2030, 132, 'Isla', 'ISL', 0),
(2031, 132, 'Kalkara', 'KLK', 0),
(2032, 132, 'Kirkop', 'KRK', 0),
(2033, 132, 'Lija', 'LIJ', 0),
(2034, 132, 'Luqa', 'LUQ', 0),
(2035, 132, 'Marsa', 'MRS', 0),
(2036, 132, 'Marsaskala', 'MKL', 0),
(2037, 132, 'Marsaxlokk', 'MXL', 0),
(2038, 132, 'Mdina', 'MDN', 0),
(2039, 132, 'Melliea', 'MEL', 0),
(2040, 132, 'Mgarr', 'MGR', 0),
(2041, 132, 'Mosta', 'MST', 0),
(2042, 132, 'Mqabba', 'MQA', 0),
(2043, 132, 'Msida', 'MSI', 0),
(2044, 132, 'Mtarfa', 'MTF', 0),
(2045, 132, 'Naxxar', 'NAX', 0),
(2046, 132, 'Paola', 'PAO', 0),
(2047, 132, 'Pembroke', 'PEM', 0),
(2048, 132, 'Pieta', 'PIE', 0),
(2049, 132, 'Qormi', 'QOR', 0),
(2050, 132, 'Qrendi', 'QRE', 0),
(2051, 132, 'Rabat', 'RAB', 0),
(2052, 132, 'Safi', 'SAF', 0),
(2053, 132, 'San Giljan', 'SGI', 0),
(2054, 132, 'Santa Lucija', 'SLU', 0),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 0),
(2056, 132, 'San Gwann', 'SGW', 0),
(2057, 132, 'Santa Venera', 'SVE', 0),
(2058, 132, 'Siggiewi', 'SIG', 0),
(2059, 132, 'Sliema', 'SLM', 0),
(2060, 132, 'Swieqi', 'SWQ', 0),
(2061, 132, 'Ta Xbiex', 'TXB', 0),
(2062, 132, 'Tarxien', 'TRX', 0),
(2063, 132, 'Valletta', 'VLT', 0),
(2064, 132, 'Xgajra', 'XGJ', 0),
(2065, 132, 'Zabbar', 'ZBR', 0),
(2066, 132, 'Zebbug', 'ZBG', 0),
(2067, 132, 'Zejtun', 'ZJT', 0),
(2068, 132, 'Zurrieq', 'ZRQ', 0),
(2069, 132, 'Fontana', 'FNT', 0),
(2070, 132, 'Ghajnsielem', 'GHJ', 0),
(2071, 132, 'Gharb', 'GHR', 0),
(2072, 132, 'Ghasri', 'GHS', 0),
(2073, 132, 'Kercem', 'KRC', 0),
(2074, 132, 'Munxar', 'MUN', 0),
(2075, 132, 'Nadur', 'NAD', 0),
(2076, 132, 'Qala', 'QAL', 0),
(2077, 132, 'Victoria', 'VIC', 0),
(2078, 132, 'San Lawrenz', 'SLA', 0),
(2079, 132, 'Sannat', 'SNT', 0),
(2080, 132, 'Xagra', 'ZAG', 0),
(2081, 132, 'Xewkija', 'XEW', 0),
(2082, 132, 'Zebbug', 'ZEB', 0),
(2083, 133, 'Ailinginae', 'ALG', 0),
(2084, 133, 'Ailinglaplap', 'ALL', 0),
(2085, 133, 'Ailuk', 'ALK', 0),
(2086, 133, 'Arno', 'ARN', 0),
(2087, 133, 'Aur', 'AUR', 0),
(2088, 133, 'Bikar', 'BKR', 0),
(2089, 133, 'Bikini', 'BKN', 0),
(2090, 133, 'Bokak', 'BKK', 0),
(2091, 133, 'Ebon', 'EBN', 0),
(2092, 133, 'Enewetak', 'ENT', 0),
(2093, 133, 'Erikub', 'EKB', 0),
(2094, 133, 'Jabat', 'JBT', 0),
(2095, 133, 'Jaluit', 'JLT', 0),
(2096, 133, 'Jemo', 'JEM', 0),
(2097, 133, 'Kili', 'KIL', 0),
(2098, 133, 'Kwajalein', 'KWJ', 0),
(2099, 133, 'Lae', 'LAE', 0),
(2100, 133, 'Lib', 'LIB', 0),
(2101, 133, 'Likiep', 'LKP', 0),
(2102, 133, 'Majuro', 'MJR', 0),
(2103, 133, 'Maloelap', 'MLP', 0),
(2104, 133, 'Mejit', 'MJT', 0),
(2105, 133, 'Mili', 'MIL', 0),
(2106, 133, 'Namorik', 'NMK', 0),
(2107, 133, 'Namu', 'NAM', 0),
(2108, 133, 'Rongelap', 'RGL', 0),
(2109, 133, 'Rongrik', 'RGK', 0),
(2110, 133, 'Toke', 'TOK', 0),
(2111, 133, 'Ujae', 'UJA', 0),
(2112, 133, 'Ujelang', 'UJL', 0),
(2113, 133, 'Utirik', 'UTK', 0),
(2114, 133, 'Wotho', 'WTH', 0),
(2115, 133, 'Wotje', 'WTJ', 0),
(2116, 135, 'Adrar', 'AD', 0),
(2117, 135, 'Assaba', 'AS', 0),
(2118, 135, 'Brakna', 'BR', 0),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 0),
(2120, 135, 'Gorgol', 'GO', 0),
(2121, 135, 'Guidimaka', 'GM', 0),
(2122, 135, 'Hodh Ech Chargui', 'HC', 0),
(2123, 135, 'Hodh El Gharbi', 'HG', 0),
(2124, 135, 'Inchiri', 'IN', 0),
(2125, 135, 'Tagant', 'TA', 0),
(2126, 135, 'Tiris Zemmour', 'TZ', 0),
(2127, 135, 'Trarza', 'TR', 0),
(2128, 135, 'Nouakchott', 'NO', 0),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 0),
(2130, 136, 'Curepipe', 'CU', 0),
(2131, 136, 'Port Louis', 'PU', 0),
(2132, 136, 'Quatre Bornes', 'QB', 0),
(2133, 136, 'Vacoas-Phoenix', 'VP', 0),
(2134, 136, 'Agalega Islands', 'AG', 0),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 0),
(2136, 136, 'Rodrigues', 'RO', 0),
(2137, 136, 'Black River', 'BL', 0),
(2138, 136, 'Flacq', 'FL', 0),
(2139, 136, 'Grand Port', 'GP', 0),
(2140, 136, 'Moka', 'MO', 0),
(2141, 136, 'Pamplemousses', 'PA', 0),
(2142, 136, 'Plaines Wilhems', 'PW', 0),
(2143, 136, 'Port Louis', 'PL', 0),
(2144, 136, 'Riviere du Rempart', 'RR', 0),
(2145, 136, 'Savanne', 'SA', 0),
(2146, 138, 'Baja California Norte', 'BN', 0),
(2147, 138, 'Baja California Sur', 'BS', 0),
(2148, 138, 'Campeche', 'CA', 0),
(2149, 138, 'Chiapas', 'CI', 0),
(2150, 138, 'Chihuahua', 'CH', 0),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 0),
(2152, 138, 'Colima', 'CL', 0),
(2153, 138, 'Distrito Federal', 'DF', 0),
(2154, 138, 'Durango', 'DU', 0),
(2155, 138, 'Guanajuato', 'GA', 0),
(2156, 138, 'Guerrero', 'GE', 0),
(2157, 138, 'Hidalgo', 'HI', 0),
(2158, 138, 'Jalisco', 'JA', 0),
(2159, 138, 'Mexico', 'ME', 0),
(2160, 138, 'Michoacan de Ocampo', 'MI', 0),
(2161, 138, 'Morelos', 'MO', 0),
(2162, 138, 'Nayarit', 'NA', 0),
(2163, 138, 'Nuevo Leon', 'NL', 0),
(2164, 138, 'Oaxaca', 'OA', 0),
(2165, 138, 'Puebla', 'PU', 0),
(2166, 138, 'Queretaro de Arteaga', 'QA', 0),
(2167, 138, 'Quintana Roo', 'QR', 0),
(2168, 138, 'San Luis Potosi', 'SA', 0),
(2169, 138, 'Sinaloa', 'SI', 0),
(2170, 138, 'Sonora', 'SO', 0),
(2171, 138, 'Tabasco', 'TB', 0),
(2172, 138, 'Tamaulipas', 'TM', 0),
(2173, 138, 'Tlaxcala', 'TL', 0),
(2174, 138, 'Veracruz-Llave', 'VE', 0),
(2175, 138, 'Yucatan', 'YU', 0),
(2176, 138, 'Zacatecas', 'ZA', 0),
(2177, 139, 'Chuuk', 'C', 0),
(2178, 139, 'Kosrae', 'K', 0),
(2179, 139, 'Pohnpei', 'P', 0),
(2180, 139, 'Yap', 'Y', 0),
(2181, 140, 'Gagauzia', 'GA', 0),
(2182, 140, 'Chisinau', 'CU', 0),
(2183, 140, 'Balti', 'BA', 0),
(2184, 140, 'Cahul', 'CA', 0),
(2185, 140, 'Edinet', 'ED', 0),
(2186, 140, 'Lapusna', 'LA', 0),
(2187, 140, 'Orhei', 'OR', 0),
(2188, 140, 'Soroca', 'SO', 0),
(2189, 140, 'Tighina', 'TI', 0),
(2190, 140, 'Ungheni', 'UN', 0),
(2191, 140, 'St‚nga Nistrului', 'SN', 0),
(2192, 141, 'Fontvieille', 'FV', 0),
(2193, 141, 'La Condamine', 'LC', 0),
(2194, 141, 'Monaco-Ville', 'MV', 0),
(2195, 141, 'Monte-Carlo', 'MC', 0),
(2196, 142, 'Ulanbaatar', '1', 0),
(2197, 142, 'Orhon', '035', 0),
(2198, 142, 'Darhan uul', '037', 0),
(2199, 142, 'Hentiy', '039', 0),
(2200, 142, 'Hovsgol', '041', 0),
(2201, 142, 'Hovd', '043', 0),
(2202, 142, 'Uvs', '046', 0),
(2203, 142, 'Tov', '047', 0),
(2204, 142, 'Selenge', '049', 0),
(2205, 142, 'Suhbaatar', '051', 0),
(2206, 142, 'Omnogovi', '053', 0),
(2207, 142, 'Ovorhangay', '055', 0),
(2208, 142, 'Dzavhan', '057', 0),
(2209, 142, 'DundgovL', '059', 0),
(2210, 142, 'Dornod', '061', 0),
(2211, 142, 'Dornogov', '063', 0),
(2212, 142, 'Govi-Sumber', '064', 0),
(2213, 142, 'Govi-Altay', '065', 0),
(2214, 142, 'Bulgan', '067', 0),
(2215, 142, 'Bayanhongor', '069', 0),
(2216, 142, 'Bayan-Olgiy', '071', 0),
(2217, 142, 'Arhangay', '073', 0),
(2218, 143, 'Saint Anthony', 'A', 0),
(2219, 143, 'Saint Georges', 'G', 0),
(2220, 143, 'Saint Peter', 'P', 0),
(2221, 144, 'Agadir', 'AGD', 0),
(2222, 144, 'Al Hoceima', 'HOC', 0),
(2223, 144, 'Azilal', 'AZI', 0),
(2224, 144, 'Beni Mellal', 'BME', 0),
(2225, 144, 'Ben Slimane', 'BSL', 0),
(2226, 144, 'Boulemane', 'BLM', 0),
(2227, 144, 'Casablanca', 'CBL', 0),
(2228, 144, 'Chaouen', 'CHA', 0),
(2229, 144, 'El Jadida', 'EJA', 0),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 0),
(2231, 144, 'Er Rachidia', 'ERA', 0),
(2232, 144, 'Essaouira', 'ESS', 0),
(2233, 144, 'Fes', 'FES', 0),
(2234, 144, 'Figuig', 'FIG', 0),
(2235, 144, 'Guelmim', 'GLM', 0),
(2236, 144, 'Ifrane', 'IFR', 0),
(2237, 144, 'Kenitra', 'KEN', 0),
(2238, 144, 'Khemisset', 'KHM', 0),
(2239, 144, 'Khenifra', 'KHN', 0),
(2240, 144, 'Khouribga', 'KHO', 0),
(2241, 144, 'Laayoune', 'LYN', 0),
(2242, 144, 'Larache', 'LAR', 0),
(2243, 144, 'Marrakech', 'MRK', 0),
(2244, 144, 'Meknes', 'MKN', 0),
(2245, 144, 'Nador', 'NAD', 0),
(2246, 144, 'Ouarzazate', 'ORZ', 0),
(2247, 144, 'Oujda', 'OUJ', 0),
(2248, 144, 'Rabat-Sale', 'RSA', 0),
(2249, 144, 'Safi', 'SAF', 0),
(2250, 144, 'Settat', 'SET', 0),
(2251, 144, 'Sidi Kacem', 'SKA', 0),
(2252, 144, 'Tangier', 'TGR', 0),
(2253, 144, 'Tan-Tan', 'TAN', 0),
(2254, 144, 'Taounate', 'TAO', 0),
(2255, 144, 'Taroudannt', 'TRD', 0),
(2256, 144, 'Tata', 'TAT', 0),
(2257, 144, 'Taza', 'TAZ', 0),
(2258, 144, 'Tetouan', 'TET', 0),
(2259, 144, 'Tiznit', 'TIZ', 0),
(2260, 144, 'Ad Dakhla', 'ADK', 0),
(2261, 144, 'Boujdour', 'BJD', 0),
(2262, 144, 'Es Smara', 'ESM', 0),
(2263, 145, 'Cabo Delgado', 'CD', 0),
(2264, 145, 'Gaza', 'GZ', 0),
(2265, 145, 'Inhambane', 'IN', 0),
(2266, 145, 'Manica', 'MN', 0),
(2267, 145, 'Maputo (city)', 'MC', 0),
(2268, 145, 'Maputo', 'MP', 0),
(2269, 145, 'Nampula', 'NA', 0),
(2270, 145, 'Niassa', 'NI', 0),
(2271, 145, 'Sofala', 'SO', 0),
(2272, 145, 'Tete', 'TE', 0),
(2273, 145, 'Zambezia', 'ZA', 0),
(2274, 146, 'Ayeyarwady', 'AY', 0),
(2275, 146, 'Bago', 'BG', 0),
(2276, 146, 'Magway', 'MG', 0),
(2277, 146, 'Mandalay', 'MD', 0),
(2278, 146, 'Sagaing', 'SG', 0),
(2279, 146, 'Tanintharyi', 'TN', 0),
(2280, 146, 'Yangon', 'YG', 0),
(2281, 146, 'Chin State', 'CH', 0),
(2282, 146, 'Kachin State', 'KC', 0),
(2283, 146, 'Kayah State', 'KH', 0),
(2284, 146, 'Kayin State', 'KN', 0),
(2285, 146, 'Mon State', 'MN', 0),
(2286, 146, 'Rakhine State', 'RK', 0),
(2287, 146, 'Shan State', 'SH', 0),
(2288, 147, 'Caprivi', 'CA', 0),
(2289, 147, 'Erongo', 'ER', 0),
(2290, 147, 'Hardap', 'HA', 0),
(2291, 147, 'Karas', 'KR', 0),
(2292, 147, 'Kavango', 'KV', 0),
(2293, 147, 'Khomas', 'KH', 0),
(2294, 147, 'Kunene', 'KU', 0),
(2295, 147, 'Ohangwena', 'OW', 0),
(2296, 147, 'Omaheke', 'OK', 0),
(2297, 147, 'Omusati', 'OT', 0),
(2298, 147, 'Oshana', 'ON', 0),
(2299, 147, 'Oshikoto', 'OO', 0),
(2300, 147, 'Otjozondjupa', 'OJ', 0),
(2301, 148, 'Aiwo', 'AO', 0),
(2302, 148, 'Anabar', 'AA', 0),
(2303, 148, 'Anetan', 'AT', 0),
(2304, 148, 'Anibare', 'AI', 0),
(2305, 148, 'Baiti', 'BA', 0),
(2306, 148, 'Boe', 'BO', 0),
(2307, 148, 'Buada', 'BU', 0),
(2308, 148, 'Denigomodu', 'DE', 0),
(2309, 148, 'Ewa', 'EW', 0),
(2310, 148, 'Ijuw', 'IJ', 0),
(2311, 148, 'Meneng', 'ME', 0),
(2312, 148, 'Nibok', 'NI', 0),
(2313, 148, 'Uaboe', 'UA', 0),
(2314, 148, 'Yaren', 'YA', 0),
(2315, 149, 'Bagmati', 'BA', 0),
(2316, 149, 'Bheri', 'BH', 0),
(2317, 149, 'Dhawalagiri', 'DH', 0),
(2318, 149, 'Gandaki', 'GA', 0),
(2319, 149, 'Janakpur', 'JA', 0),
(2320, 149, 'Karnali', 'KA', 0),
(2321, 149, 'Kosi', 'KO', 0),
(2322, 149, 'Lumbini', 'LU', 0),
(2323, 149, 'Mahakali', 'MA', 0),
(2324, 149, 'Mechi', 'ME', 0),
(2325, 149, 'Narayani', 'NA', 0),
(2326, 149, 'Rapti', 'RA', 0),
(2327, 149, 'Sagarmatha', 'SA', 0),
(2328, 149, 'Seti', 'SE', 0),
(2329, 150, 'Drenthe', 'DR', 0),
(2330, 150, 'Flevoland', 'FL', 0),
(2331, 150, 'Friesland', 'FR', 0),
(2332, 150, 'Gelderland', 'GE', 0),
(2333, 150, 'Groningen', 'GR', 0),
(2334, 150, 'Limburg', 'LI', 0),
(2335, 150, 'Noord-Brabant', 'NB', 0),
(2336, 150, 'Noord-Holland', 'NH', 0),
(2337, 150, 'Overijssel', 'OV', 0),
(2338, 150, 'Utrecht', 'UT', 0),
(2339, 150, 'Zeeland', 'ZE', 0),
(2340, 150, 'Zuid-Holland', 'ZH', 0),
(2341, 152, 'Iles Loyaute', 'L', 0),
(2342, 152, 'Nord', 'N', 0),
(2343, 152, 'Sud', 'S', 0),
(2344, 153, 'Auckland', 'AUK', 0),
(2345, 153, 'Bay of Plenty', 'BOP', 0),
(2346, 153, 'Canterbury', 'CAN', 0),
(2347, 153, 'Coromandel', 'COR', 0),
(2348, 153, 'Gisborne', 'GIS', 0),
(2349, 153, 'Fiordland', 'FIO', 0),
(2350, 153, 'Hawke\'s Bay', 'HKB', 0),
(2351, 153, 'Marlborough', 'MBH', 0),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 0),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 0),
(2354, 153, 'Nelson', 'NSN', 0),
(2355, 153, 'Northland', 'NTL', 0),
(2356, 153, 'Otago', 'OTA', 0),
(2357, 153, 'Southland', 'STL', 0),
(2358, 153, 'Taranaki', 'TKI', 0),
(2359, 153, 'Wellington', 'WGN', 0),
(2360, 153, 'Waikato', 'WKO', 0),
(2361, 153, 'Wairarapa', 'WAI', 0),
(2362, 153, 'West Coast', 'WTC', 0),
(2363, 154, 'Atlantico Norte', 'AN', 0),
(2364, 154, 'Atlantico Sur', 'AS', 0),
(2365, 154, 'Boaco', 'BO', 0),
(2366, 154, 'Carazo', 'CA', 0),
(2367, 154, 'Chinandega', 'CI', 0),
(2368, 154, 'Chontales', 'CO', 0),
(2369, 154, 'Esteli', 'ES', 0),
(2370, 154, 'Granada', 'GR', 0),
(2371, 154, 'Jinotega', 'JI', 0),
(2372, 154, 'Leon', 'LE', 0),
(2373, 154, 'Madriz', 'MD', 0),
(2374, 154, 'Managua', 'MN', 0),
(2375, 154, 'Masaya', 'MS', 0),
(2376, 154, 'Matagalpa', 'MT', 0),
(2377, 154, 'Nuevo Segovia', 'NS', 0),
(2378, 154, 'Rio San Juan', 'RS', 0),
(2379, 154, 'Rivas', 'RI', 0),
(2380, 155, 'Agadez', 'AG', 0),
(2381, 155, 'Diffa', 'DF', 0),
(2382, 155, 'Dosso', 'DS', 0),
(2383, 155, 'Maradi', 'MA', 0),
(2384, 155, 'Niamey', 'NM', 0),
(2385, 155, 'Tahoua', 'TH', 0),
(2386, 155, 'Tillaberi', 'TL', 0),
(2387, 155, 'Zinder', 'ZD', 0),
(2388, 156, 'Abia', 'AB', 0),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 0),
(2390, 156, 'Adamawa', 'AD', 0),
(2391, 156, 'Akwa Ibom', 'AK', 0),
(2392, 156, 'Anambra', 'AN', 0),
(2393, 156, 'Bauchi', 'BC', 0),
(2394, 156, 'Bayelsa', 'BY', 0),
(2395, 156, 'Benue', 'BN', 0),
(2396, 156, 'Borno', 'BO', 0),
(2397, 156, 'Cross River', 'CR', 0),
(2398, 156, 'Delta', 'DE', 0),
(2399, 156, 'Ebonyi', 'EB', 0),
(2400, 156, 'Edo', 'ED', 0),
(2401, 156, 'Ekiti', 'EK', 0),
(2402, 156, 'Enugu', 'EN', 0),
(2403, 156, 'Gombe', 'GO', 0),
(2404, 156, 'Imo', 'IM', 0),
(2405, 156, 'Jigawa', 'JI', 0),
(2406, 156, 'Kaduna', 'KD', 0),
(2407, 156, 'Kano', 'KN', 0),
(2408, 156, 'Katsina', 'KT', 0),
(2409, 156, 'Kebbi', 'KE', 0),
(2410, 156, 'Kogi', 'KO', 0),
(2411, 156, 'Kwara', 'KW', 0),
(2412, 156, 'Lagos', 'LA', 0),
(2413, 156, 'Nassarawa', 'NA', 0),
(2414, 156, 'Niger', 'NI', 0),
(2415, 156, 'Ogun', 'OG', 0),
(2416, 156, 'Ondo', 'ONG', 0),
(2417, 156, 'Osun', 'OS', 0),
(2418, 156, 'Oyo', 'OY', 0),
(2419, 156, 'Plateau', 'PL', 0),
(2420, 156, 'Rivers', 'RI', 0),
(2421, 156, 'Sokoto', 'SO', 0),
(2422, 156, 'Taraba', 'TA', 0),
(2423, 156, 'Yobe', 'YO', 0),
(2424, 156, 'Zamfara', 'ZA', 0),
(2425, 159, 'Northern Islands', 'N', 0),
(2426, 159, 'Rota', 'R', 0),
(2427, 159, 'Saipan', 'S', 0),
(2428, 159, 'Tinian', 'T', 0),
(2429, 160, 'Akershus', 'AK', 0),
(2430, 160, 'Aust-Agder', 'AA', 0),
(2431, 160, 'Buskerud', 'BU', 0),
(2432, 160, 'Finnmark', 'FM', 0),
(2433, 160, 'Hedmark', 'HM', 0),
(2434, 160, 'Hordaland', 'HL', 0),
(2435, 160, 'More og Romdal', 'MR', 0),
(2436, 160, 'Nord-Trondelag', 'NT', 0),
(2437, 160, 'Nordland', 'NL', 0),
(2438, 160, 'Ostfold', 'OF', 0),
(2439, 160, 'Oppland', 'OP', 0),
(2440, 160, 'Oslo', 'OL', 0),
(2441, 160, 'Rogaland', 'RL', 0),
(2442, 160, 'Sor-Trondelag', 'ST', 0),
(2443, 160, 'Sogn og Fjordane', 'SJ', 0),
(2444, 160, 'Svalbard', 'SV', 0),
(2445, 160, 'Telemark', 'TM', 0),
(2446, 160, 'Troms', 'TR', 0),
(2447, 160, 'Vest-Agder', 'VA', 0),
(2448, 160, 'Vestfold', 'VF', 0),
(2449, 161, 'Ad Dakhiliyah', 'DA', 0),
(2450, 161, 'Al Batinah', 'BA', 0),
(2451, 161, 'Al Wusta', 'WU', 0),
(2452, 161, 'Ash Sharqiyah', 'SH', 0),
(2453, 161, 'Az Zahirah', 'ZA', 0),
(2454, 161, 'Masqat', 'MA', 0),
(2455, 161, 'Musandam', 'MU', 0),
(2456, 161, 'Zufar', 'ZU', 0),
(2457, 162, 'Balochistan', 'B', 0),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 0),
(2459, 162, 'Islamabad Capital Territory', 'I', 0),
(2460, 162, 'North-West Frontier', 'N', 0),
(2461, 162, 'Punjab', 'P', 0),
(2462, 162, 'Sindh', 'S', 0),
(2463, 163, 'Aimeliik', 'AM', 0),
(2464, 163, 'Airai', 'AR', 0),
(2465, 163, 'Angaur', 'AN', 0),
(2466, 163, 'Hatohobei', 'HA', 0),
(2467, 163, 'Kayangel', 'KA', 0),
(2468, 163, 'Koror', 'KO', 0),
(2469, 163, 'Melekeok', 'ME', 0),
(2470, 163, 'Ngaraard', 'NA', 0),
(2471, 163, 'Ngarchelong', 'NG', 0),
(2472, 163, 'Ngardmau', 'ND', 0),
(2473, 163, 'Ngatpang', 'NT', 0),
(2474, 163, 'Ngchesar', 'NC', 0),
(2475, 163, 'Ngeremlengui', 'NR', 0),
(2476, 163, 'Ngiwal', 'NW', 0),
(2477, 163, 'Peleliu', 'PE', 0),
(2478, 163, 'Sonsorol', 'SO', 0),
(2479, 164, 'Bocas del Toro', 'BT', 0),
(2480, 164, 'Chiriqui', 'CH', 0),
(2481, 164, 'Cocle', 'CC', 0),
(2482, 164, 'Colon', 'CL', 0),
(2483, 164, 'Darien', 'DA', 0),
(2484, 164, 'Herrera', 'HE', 0),
(2485, 164, 'Los Santos', 'LS', 0),
(2486, 164, 'Panama', 'PA', 0),
(2487, 164, 'San Blas', 'SB', 0),
(2488, 164, 'Veraguas', 'VG', 0),
(2489, 165, 'Bougainville', 'BV', 0),
(2490, 165, 'Central', 'CE', 0),
(2491, 165, 'Chimbu', 'CH', 0),
(2492, 165, 'Eastern Highlands', 'EH', 0),
(2493, 165, 'East New Britain', 'EB', 0),
(2494, 165, 'East Sepik', 'ES', 0),
(2495, 165, 'Enga', 'EN', 0),
(2496, 165, 'Gulf', 'GU', 0),
(2497, 165, 'Madang', 'MD', 0),
(2498, 165, 'Manus', 'MN', 0),
(2499, 165, 'Milne Bay', 'MB', 0),
(2500, 165, 'Morobe', 'MR', 0),
(2501, 165, 'National Capital', 'NC', 0),
(2502, 165, 'New Ireland', 'NI', 0),
(2503, 165, 'Northern', 'NO', 0),
(2504, 165, 'Sandaun', 'SA', 0),
(2505, 165, 'Southern Highlands', 'SH', 0),
(2506, 165, 'Western', 'WE', 0),
(2507, 165, 'Western Highlands', 'WH', 0),
(2508, 165, 'West New Britain', 'WB', 0),
(2509, 166, 'Alto Paraguay', 'AG', 0),
(2510, 166, 'Alto Parana', 'AN', 0),
(2511, 166, 'Amambay', 'AM', 0),
(2512, 166, 'Asuncion', 'AS', 0),
(2513, 166, 'Boqueron', 'BO', 0),
(2514, 166, 'Caaguazu', 'CG', 0),
(2515, 166, 'Caazapa', 'CZ', 0),
(2516, 166, 'Canindeyu', 'CN', 0),
(2517, 166, 'Central', 'CE', 0),
(2518, 166, 'Concepcion', 'CC', 0),
(2519, 166, 'Cordillera', 'CD', 0),
(2520, 166, 'Guaira', 'GU', 0),
(2521, 166, 'Itapua', 'IT', 0),
(2522, 166, 'Misiones', 'MI', 0),
(2523, 166, 'Neembucu', 'NE', 0),
(2524, 166, 'Paraguari', 'PA', 0),
(2525, 166, 'Presidente Hayes', 'PH', 0),
(2526, 166, 'San Pedro', 'SP', 0),
(2527, 167, 'Amazonas', 'AM', 0),
(2528, 167, 'Ancash', 'AN', 0),
(2529, 167, 'Apurimac', 'AP', 0),
(2530, 167, 'Arequipa', 'AR', 0),
(2531, 167, 'Ayacucho', 'AY', 0),
(2532, 167, 'Cajamarca', 'CJ', 0),
(2533, 167, 'Callao', 'CL', 0),
(2534, 167, 'Cusco', 'CU', 0),
(2535, 167, 'Huancavelica', 'HV', 0),
(2536, 167, 'Huanuco', 'HO', 0),
(2537, 167, 'Ica', 'IC', 0),
(2538, 167, 'Junin', 'JU', 0),
(2539, 167, 'La Libertad', 'LD', 0),
(2540, 167, 'Lambayeque', 'LY', 0),
(2541, 167, 'Lima', 'LI', 0),
(2542, 167, 'Loreto', 'LO', 0),
(2543, 167, 'Madre de Dios', 'MD', 0),
(2544, 167, 'Moquegua', 'MO', 0),
(2545, 167, 'Pasco', 'PA', 0),
(2546, 167, 'Piura', 'PI', 0),
(2547, 167, 'Puno', 'PU', 0),
(2548, 167, 'San Martin', 'SM', 0),
(2549, 167, 'Tacna', 'TA', 0),
(2550, 167, 'Tumbes', 'TU', 0),
(2551, 167, 'Ucayali', 'UC', 0),
(2552, 168, 'Abra', 'ABR', 0),
(2553, 168, 'Agusan del Norte', 'ANO', 0),
(2554, 168, 'Agusan del Sur', 'ASU', 0),
(2555, 168, 'Aklan', 'AKL', 0),
(2556, 168, 'Albay', 'ALB', 0),
(2557, 168, 'Antique', 'ANT', 0),
(2558, 168, 'Apayao', 'APY', 0),
(2559, 168, 'Aurora', 'AUR', 0),
(2560, 168, 'Basilan', 'BAS', 0),
(2561, 168, 'Bataan', 'BTA', 0),
(2562, 168, 'Batanes', 'BTE', 0),
(2563, 168, 'Batangas', 'BTG', 0),
(2564, 168, 'Biliran', 'BLR', 0),
(2565, 168, 'Benguet', 'BEN', 0),
(2566, 168, 'Bohol', 'BOL', 0),
(2567, 168, 'Bukidnon', 'BUK', 0),
(2568, 168, 'Bulacan', 'BUL', 0),
(2569, 168, 'Cagayan', 'CAG', 0),
(2570, 168, 'Camarines Norte', 'CNO', 0),
(2571, 168, 'Camarines Sur', 'CSU', 0),
(2572, 168, 'Camiguin', 'CAM', 0),
(2573, 168, 'Capiz', 'CAP', 0),
(2574, 168, 'Catanduanes', 'CAT', 0),
(2575, 168, 'Cavite', 'CAV', 0),
(2576, 168, 'Cebu', 'CEB', 0),
(2577, 168, 'Compostela', 'CMP', 0),
(2578, 168, 'Davao del Norte', 'DNO', 0),
(2579, 168, 'Davao del Sur', 'DSU', 0),
(2580, 168, 'Davao Oriental', 'DOR', 0),
(2581, 168, 'Eastern Samar', 'ESA', 0),
(2582, 168, 'Guimaras', 'GUI', 0),
(2583, 168, 'Ifugao', 'IFU', 0),
(2584, 168, 'Ilocos Norte', 'INO', 0),
(2585, 168, 'Ilocos Sur', 'ISU', 0),
(2586, 168, 'Iloilo', 'ILO', 0),
(2587, 168, 'Isabela', 'ISA', 0),
(2588, 168, 'Kalinga', 'KAL', 0),
(2589, 168, 'Laguna', 'LAG', 0),
(2590, 168, 'Lanao del Norte', 'LNO', 0),
(2591, 168, 'Lanao del Sur', 'LSU', 0),
(2592, 168, 'La Union', 'UNI', 0),
(2593, 168, 'Leyte', 'LEY', 0),
(2594, 168, 'Maguindanao', 'MAG', 0),
(2595, 168, 'Marinduque', 'MRN', 0),
(2596, 168, 'Masbate', 'MSB', 0),
(2597, 168, 'Mindoro Occidental', 'MIC', 0),
(2598, 168, 'Mindoro Oriental', 'MIR', 0),
(2599, 168, 'Misamis Occidental', 'MSC', 0),
(2600, 168, 'Misamis Oriental', 'MOR', 0),
(2601, 168, 'Mountain', 'MOP', 0),
(2602, 168, 'Negros Occidental', 'NOC', 0),
(2603, 168, 'Negros Oriental', 'NOR', 0),
(2604, 168, 'North Cotabato', 'NCT', 0),
(2605, 168, 'Northern Samar', 'NSM', 0),
(2606, 168, 'Nueva Ecija', 'NEC', 0),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 0),
(2608, 168, 'Palawan', 'PLW', 0),
(2609, 168, 'Pampanga', 'PMP', 0),
(2610, 168, 'Pangasinan', 'PNG', 0),
(2611, 168, 'Quezon', 'QZN', 0),
(2612, 168, 'Quirino', 'QRN', 0),
(2613, 168, 'Rizal', 'RIZ', 0),
(2614, 168, 'Romblon', 'ROM', 0),
(2615, 168, 'Samar', 'SMR', 0),
(2616, 168, 'Sarangani', 'SRG', 0),
(2617, 168, 'Siquijor', 'SQJ', 0),
(2618, 168, 'Sorsogon', 'SRS', 0),
(2619, 168, 'South Cotabato', 'SCO', 0),
(2620, 168, 'Southern Leyte', 'SLE', 0),
(2621, 168, 'Sultan Kudarat', 'SKU', 0),
(2622, 168, 'Sulu', 'SLU', 0),
(2623, 168, 'Surigao del Norte', 'SNO', 0),
(2624, 168, 'Surigao del Sur', 'SSU', 0),
(2625, 168, 'Tarlac', 'TAR', 0),
(2626, 168, 'Tawi-Tawi', 'TAW', 0),
(2627, 168, 'Zambales', 'ZBL', 0),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 0),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 0),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 0),
(2631, 170, 'Dolnoslaskie', 'DO', 0),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 0),
(2633, 170, 'Lodzkie', 'LO', 0),
(2634, 170, 'Lubelskie', 'LL', 0),
(2635, 170, 'Lubuskie', 'LU', 0),
(2636, 170, 'Malopolskie', 'ML', 0),
(2637, 170, 'Mazowieckie', 'MZ', 0),
(2638, 170, 'Opolskie', 'OP', 0),
(2639, 170, 'Podkarpackie', 'PP', 0),
(2640, 170, 'Podlaskie', 'PL', 0),
(2641, 170, 'Pomorskie', 'PM', 0),
(2642, 170, 'Slaskie', 'SL', 0),
(2643, 170, 'Swietokrzyskie', 'SW', 0),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 0),
(2645, 170, 'Wielkopolskie', 'WP', 0),
(2646, 170, 'Zachodniopomorskie', 'ZA', 0),
(2647, 198, 'Saint Pierre', 'P', 0),
(2648, 198, 'Miquelon', 'M', 0),
(2649, 171, 'A&ccedil;ores', 'AC', 0),
(2650, 171, 'Aveiro', 'AV', 0),
(2651, 171, 'Beja', 'BE', 0),
(2652, 171, 'Braga', 'BR', 0),
(2653, 171, 'Bragan&ccedil;a', 'BA', 0),
(2654, 171, 'Castelo Branco', 'CB', 0),
(2655, 171, 'Coimbra', 'CO', 0),
(2656, 171, '&Eacute;vora', 'EV', 0),
(2657, 171, 'Faro', 'FA', 0),
(2658, 171, 'Guarda', 'GU', 0),
(2659, 171, 'Leiria', 'LE', 0),
(2660, 171, 'Lisboa', 'LI', 0),
(2661, 171, 'Madeira', 'ME', 0),
(2662, 171, 'Portalegre', 'PO', 0),
(2663, 171, 'Porto', 'PR', 0),
(2664, 171, 'Santar&eacute;m', 'SA', 0),
(2665, 171, 'Set&uacute;bal', 'SE', 0),
(2666, 171, 'Viana do Castelo', 'VC', 0),
(2667, 171, 'Vila Real', 'VR', 0),
(2668, 171, 'Viseu', 'VI', 0),
(2669, 173, 'Ad Dawhah', 'DW', 0),
(2670, 173, 'Al Ghuwayriyah', 'GW', 0),
(2671, 173, 'Al Jumayliyah', 'JM', 0),
(2672, 173, 'Al Khawr', 'KR', 0),
(2673, 173, 'Al Wakrah', 'WK', 0),
(2674, 173, 'Ar Rayyan', 'RN', 0),
(2675, 173, 'Jarayan al Batinah', 'JB', 0),
(2676, 173, 'Madinat ash Shamal', 'MS', 0),
(2677, 173, 'Umm Sa\'id', 'UD', 0),
(2678, 173, 'Umm Salal', 'UL', 0),
(2679, 175, 'Alba', 'AB', 0),
(2680, 175, 'Arad', 'AR', 0),
(2681, 175, 'Arges', 'AG', 0),
(2682, 175, 'Bacau', 'BC', 0),
(2683, 175, 'Bihor', 'BH', 0),
(2684, 175, 'Bistrita-Nasaud', 'BN', 0),
(2685, 175, 'Botosani', 'BT', 0),
(2686, 175, 'Brasov', 'BV', 0),
(2687, 175, 'Braila', 'BR', 0),
(2688, 175, 'Bucuresti', 'B', 0),
(2689, 175, 'Buzau', 'BZ', 0),
(2690, 175, 'Caras-Severin', 'CS', 0),
(2691, 175, 'Calarasi', 'CL', 0),
(2692, 175, 'Cluj', 'CJ', 0),
(2693, 175, 'Constanta', 'CT', 0),
(2694, 175, 'Covasna', 'CV', 0),
(2695, 175, 'Dimbovita', 'DB', 0),
(2696, 175, 'Dolj', 'DJ', 0),
(2697, 175, 'Galati', 'GL', 0),
(2698, 175, 'Giurgiu', 'GR', 0),
(2699, 175, 'Gorj', 'GJ', 0),
(2700, 175, 'Harghita', 'HR', 0),
(2701, 175, 'Hunedoara', 'HD', 0),
(2702, 175, 'Ialomita', 'IL', 0),
(2703, 175, 'Iasi', 'IS', 0),
(2704, 175, 'Ilfov', 'IF', 0),
(2705, 175, 'Maramures', 'MM', 0),
(2706, 175, 'Mehedinti', 'MH', 0),
(2707, 175, 'Mures', 'MS', 0),
(2708, 175, 'Neamt', 'NT', 0),
(2709, 175, 'Olt', 'OT', 0),
(2710, 175, 'Prahova', 'PH', 0),
(2711, 175, 'Satu-Mare', 'SM', 0),
(2712, 175, 'Salaj', 'SJ', 0),
(2713, 175, 'Sibiu', 'SB', 0),
(2714, 175, 'Suceava', 'SV', 0),
(2715, 175, 'Teleorman', 'TR', 0),
(2716, 175, 'Timis', 'TM', 0),
(2717, 175, 'Tulcea', 'TL', 0),
(2718, 175, 'Vaslui', 'VS', 0),
(2719, 175, 'Valcea', 'VL', 0),
(2720, 175, 'Vrancea', 'VN', 0),
(2721, 176, 'Abakan', 'AB', 0),
(2722, 176, 'Aginskoye', 'AG', 0),
(2723, 176, 'Anadyr', 'AN', 0),
(2724, 176, 'Arkahangelsk', 'AR', 0),
(2725, 176, 'Astrakhan', 'AS', 0),
(2726, 176, 'Barnaul', 'BA', 0),
(2727, 176, 'Belgorod', 'BE', 0),
(2728, 176, 'Birobidzhan', 'BI', 0),
(2729, 176, 'Blagoveshchensk', 'BL', 0),
(2730, 176, 'Bryansk', 'BR', 0),
(2731, 176, 'Cheboksary', 'CH', 0),
(2732, 176, 'Chelyabinsk', 'CL', 0),
(2733, 176, 'Cherkessk', 'CR', 0),
(2734, 176, 'Chita', 'CI', 0),
(2735, 176, 'Dudinka', 'DU', 0),
(2736, 176, 'Elista', 'EL', 0),
(2738, 176, 'Gorno-Altaysk', 'GA', 0),
(2739, 176, 'Groznyy', 'GR', 0),
(2740, 176, 'Irkutsk', 'IR', 0),
(2741, 176, 'Ivanovo', 'IV', 0),
(2742, 176, 'Izhevsk', 'IZ', 0),
(2743, 176, 'Kalinigrad', 'KA', 0),
(2744, 176, 'Kaluga', 'KL', 0),
(2745, 176, 'Kasnodar', 'KS', 0),
(2746, 176, 'Kazan', 'KZ', 0),
(2747, 176, 'Kemerovo', 'KE', 0),
(2748, 176, 'Khabarovsk', 'KH', 0),
(2749, 176, 'Khanty-Mansiysk', 'KM', 0),
(2750, 176, 'Kostroma', 'KO', 0),
(2751, 176, 'Krasnodar', 'KR', 0),
(2752, 176, 'Krasnoyarsk', 'KN', 0),
(2753, 176, 'Kudymkar', 'KU', 0),
(2754, 176, 'Kurgan', 'KG', 0),
(2755, 176, 'Kursk', 'KK', 0),
(2756, 176, 'Kyzyl', 'KY', 0),
(2757, 176, 'Lipetsk', 'LI', 0),
(2758, 176, 'Magadan', 'MA', 0),
(2759, 176, 'Makhachkala', 'MK', 0),
(2760, 176, 'Maykop', 'MY', 0),
(2761, 176, 'Moscow', 'MO', 0),
(2762, 176, 'Murmansk', 'MU', 0),
(2763, 176, 'Nalchik', 'NA', 0),
(2764, 176, 'Naryan Mar', 'NR', 0),
(2765, 176, 'Nazran', 'NZ', 0),
(2766, 176, 'Nizhniy Novgorod', 'NI', 0),
(2767, 176, 'Novgorod', 'NO', 0),
(2768, 176, 'Novosibirsk', 'NV', 0),
(2769, 176, 'Omsk', 'OM', 0),
(2770, 176, 'Orel', 'OR', 0),
(2771, 176, 'Orenburg', 'OE', 0),
(2772, 176, 'Palana', 'PA', 0),
(2773, 176, 'Penza', 'PE', 0),
(2774, 176, 'Perm', 'PR', 0),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 0),
(2776, 176, 'Petrozavodsk', 'PT', 0),
(2777, 176, 'Pskov', 'PS', 0),
(2778, 176, 'Rostov-na-Donu', 'RO', 0),
(2779, 176, 'Ryazan', 'RY', 0),
(2780, 176, 'Salekhard', 'SL', 0),
(2781, 176, 'Samara', 'SA', 0),
(2782, 176, 'Saransk', 'SR', 0),
(2783, 176, 'Saratov', 'SV', 0),
(2784, 176, 'Smolensk', 'SM', 0),
(2785, 176, 'St. Petersburg', 'SP', 0),
(2786, 176, 'Stavropol', 'ST', 0),
(2787, 176, 'Syktyvkar', 'SY', 0),
(2788, 176, 'Tambov', 'TA', 0),
(2789, 176, 'Tomsk', 'TO', 0),
(2790, 176, 'Tula', 'TU', 0),
(2791, 176, 'Tura', 'TR', 0),
(2792, 176, 'Tver', 'TV', 0),
(2793, 176, 'Tyumen', 'TY', 0),
(2794, 176, 'Ufa', 'UF', 0),
(2795, 176, 'Ul\'yanovsk', 'UL', 0),
(2796, 176, 'Ulan-Ude', 'UU', 0),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 0),
(2798, 176, 'Vladikavkaz', 'VL', 0),
(2799, 176, 'Vladimir', 'VA', 0),
(2800, 176, 'Vladivostok', 'VV', 0),
(2801, 176, 'Volgograd', 'VG', 0),
(2802, 176, 'Vologda', 'VD', 0),
(2803, 176, 'Voronezh', 'VO', 0),
(2804, 176, 'Vyatka', 'VY', 0),
(2805, 176, 'Yakutsk', 'YA', 0),
(2806, 176, 'Yaroslavl', 'YR', 0),
(2807, 176, 'Yekaterinburg', 'YE', 0),
(2808, 176, 'Yoshkar-Ola', 'YO', 0),
(2809, 177, 'Butare', 'BU', 0),
(2810, 177, 'Byumba', 'BY', 0),
(2811, 177, 'Cyangugu', 'CY', 0),
(2812, 177, 'Gikongoro', 'GK', 0),
(2813, 177, 'Gisenyi', 'GS', 0),
(2814, 177, 'Gitarama', 'GT', 0),
(2815, 177, 'Kibungo', 'KG', 0),
(2816, 177, 'Kibuye', 'KY', 0),
(2817, 177, 'Kigali Rurale', 'KR', 0),
(2818, 177, 'Kigali-ville', 'KV', 0),
(2819, 177, 'Ruhengeri', 'RU', 0),
(2820, 177, 'Umutara', 'UM', 0),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 0),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 0),
(2823, 178, 'Saint George Basseterre', 'SGB', 0),
(2824, 178, 'Saint George Gingerland', 'SGG', 0),
(2825, 178, 'Saint James Windward', 'SJW', 0),
(2826, 178, 'Saint John Capesterre', 'SJC', 0),
(2827, 178, 'Saint John Figtree', 'SJF', 0),
(2828, 178, 'Saint Mary Cayon', 'SMC', 0),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 0),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 0),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 0),
(2832, 178, 'Saint Thomas Lowland', 'STL', 0),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 0),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 0),
(2835, 179, 'Anse-la-Raye', 'AR', 0),
(2836, 179, 'Castries', 'CA', 0),
(2837, 179, 'Choiseul', 'CH', 0),
(2838, 179, 'Dauphin', 'DA', 0),
(2839, 179, 'Dennery', 'DE', 0),
(2840, 179, 'Gros-Islet', 'GI', 0),
(2841, 179, 'Laborie', 'LA', 0),
(2842, 179, 'Micoud', 'MI', 0),
(2843, 179, 'Praslin', 'PR', 0),
(2844, 179, 'Soufriere', 'SO', 0),
(2845, 179, 'Vieux-Fort', 'VF', 0),
(2846, 180, 'Charlotte', 'C', 0),
(2847, 180, 'Grenadines', 'R', 0),
(2848, 180, 'Saint Andrew', 'A', 0),
(2849, 180, 'Saint David', 'D', 0),
(2850, 180, 'Saint George', 'G', 0),
(2851, 180, 'Saint Patrick', 'P', 0),
(2852, 181, 'A\'ana', 'AN', 0),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 0),
(2854, 181, 'Atua', 'AT', 0),
(2855, 181, 'Fa\'asaleleaga', 'FA', 0),
(2856, 181, 'Gaga\'emauga', 'GE', 0),
(2857, 181, 'Gagaifomauga', 'GF', 0),
(2858, 181, 'Palauli', 'PA', 0),
(2859, 181, 'Satupa\'itea', 'SA', 0),
(2860, 181, 'Tuamasaga', 'TU', 0),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 0),
(2862, 181, 'Vaisigano', 'VS', 0),
(2863, 182, 'Acquaviva', 'AC', 0),
(2864, 182, 'Borgo Maggiore', 'BM', 0),
(2865, 182, 'Chiesanuova', 'CH', 0),
(2866, 182, 'Domagnano', 'DO', 0),
(2867, 182, 'Faetano', 'FA', 0),
(2868, 182, 'Fiorentino', 'FI', 0),
(2869, 182, 'Montegiardino', 'MO', 0),
(2870, 182, 'Citta di San Marino', 'SM', 0),
(2871, 182, 'Serravalle', 'SE', 0),
(2872, 183, 'Sao Tome', 'S', 0),
(2873, 183, 'Principe', 'P', 0),
(2874, 184, 'Al Bahah', 'BH', 0),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 0),
(2876, 184, 'Al Jawf', 'JF', 0),
(2877, 184, 'Al Madinah', 'MD', 0),
(2878, 184, 'Al Qasim', 'QS', 0),
(2879, 184, 'Ar Riyad', 'RD', 0),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 0),
(2881, 184, '\'Asir', 'AS', 0),
(2882, 184, 'Ha\'il', 'HL', 0),
(2883, 184, 'Jizan', 'JZ', 0),
(2884, 184, 'Makkah', 'ML', 0),
(2885, 184, 'Najran', 'NR', 0),
(2886, 184, 'Tabuk', 'TB', 0),
(2887, 185, 'Dakar', 'DA', 0),
(2888, 185, 'Diourbel', 'DI', 0),
(2889, 185, 'Fatick', 'FA', 0),
(2890, 185, 'Kaolack', 'KA', 0),
(2891, 185, 'Kolda', 'KO', 0),
(2892, 185, 'Louga', 'LO', 0),
(2893, 185, 'Matam', 'MA', 0),
(2894, 185, 'Saint-Louis', 'SL', 0),
(2895, 185, 'Tambacounda', 'TA', 0),
(2896, 185, 'Thies', 'TH', 0),
(2897, 185, 'Ziguinchor', 'ZI', 0),
(2898, 186, 'Anse aux Pins', 'AP', 0),
(2899, 186, 'Anse Boileau', 'AB', 0),
(2900, 186, 'Anse Etoile', 'AE', 0),
(2901, 186, 'Anse Louis', 'AL', 0),
(2902, 186, 'Anse Royale', 'AR', 0),
(2903, 186, 'Baie Lazare', 'BL', 0),
(2904, 186, 'Baie Sainte Anne', 'BS', 0),
(2905, 186, 'Beau Vallon', 'BV', 0),
(2906, 186, 'Bel Air', 'BA', 0),
(2907, 186, 'Bel Ombre', 'BO', 0),
(2908, 186, 'Cascade', 'CA', 0),
(2909, 186, 'Glacis', 'GL', 0),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 0),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 0),
(2912, 186, 'La Digue', 'DG', 0),
(2913, 186, 'La Riviere Anglaise', 'RA', 0),
(2914, 186, 'Mont Buxton', 'MB', 0),
(2915, 186, 'Mont Fleuri', 'MF', 0),
(2916, 186, 'Plaisance', 'PL', 0),
(2917, 186, 'Pointe La Rue', 'PR', 0),
(2918, 186, 'Port Glaud', 'PG', 0),
(2919, 186, 'Saint Louis', 'SL', 0),
(2920, 186, 'Takamaka', 'TA', 0),
(2921, 187, 'Eastern', 'E', 0),
(2922, 187, 'Northern', 'N', 0),
(2923, 187, 'Southern', 'S', 0),
(2924, 187, 'Western', 'W', 0),
(2925, 189, 'Banskobystrický', 'BA', 0),
(2926, 189, 'Bratislavský', 'BR', 0),
(2927, 189, 'Košický', 'KO', 0),
(2928, 189, 'Nitriansky', 'NI', 0),
(2929, 189, 'Prešovský', 'PR', 0),
(2930, 189, 'Trenčiansky', 'TC', 0),
(2931, 189, 'Trnavský', 'TV', 0),
(2932, 189, 'Žilinský', 'ZI', 0),
(2933, 191, 'Central', 'CE', 0),
(2934, 191, 'Choiseul', 'CH', 0),
(2935, 191, 'Guadalcanal', 'GC', 0),
(2936, 191, 'Honiara', 'HO', 0),
(2937, 191, 'Isabel', 'IS', 0),
(2938, 191, 'Makira', 'MK', 0),
(2939, 191, 'Malaita', 'ML', 0),
(2940, 191, 'Rennell and Bellona', 'RB', 0),
(2941, 191, 'Temotu', 'TM', 0),
(2942, 191, 'Western', 'WE', 0),
(2943, 192, 'Awdal', 'AW', 0),
(2944, 192, 'Bakool', 'BK', 0),
(2945, 192, 'Banaadir', 'BN', 0),
(2946, 192, 'Bari', 'BR', 0),
(2947, 192, 'Bay', 'BY', 0),
(2948, 192, 'Galguduud', 'GA', 0),
(2949, 192, 'Gedo', 'GE', 0),
(2950, 192, 'Hiiraan', 'HI', 0),
(2951, 192, 'Jubbada Dhexe', 'JD', 0),
(2952, 192, 'Jubbada Hoose', 'JH', 0),
(2953, 192, 'Mudug', 'MU', 0),
(2954, 192, 'Nugaal', 'NU', 0),
(2955, 192, 'Sanaag', 'SA', 0),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 0),
(2957, 192, 'Shabeellaha Hoose', 'SH', 0),
(2958, 192, 'Sool', 'SL', 0),
(2959, 192, 'Togdheer', 'TO', 0),
(2960, 192, 'Woqooyi Galbeed', 'WG', 0),
(2961, 193, 'Eastern Cape', 'EC', 0),
(2962, 193, 'Free State', 'FS', 0),
(2963, 193, 'Gauteng', 'GT', 0),
(2964, 193, 'KwaZulu-Natal', 'KN', 0),
(2965, 193, 'Limpopo', 'LP', 0),
(2966, 193, 'Mpumalanga', 'MP', 0),
(2967, 193, 'North West', 'NW', 0),
(2968, 193, 'Northern Cape', 'NC', 0),
(2969, 193, 'Western Cape', 'WC', 0),
(2970, 195, 'La Coru&ntilde;a', 'CA', 0),
(2971, 195, '&Aacute;lava', 'AL', 0),
(2972, 195, 'Albacete', 'AB', 0),
(2973, 195, 'Alicante', 'AC', 0),
(2974, 195, 'Almeria', 'AM', 0),
(2975, 195, 'Asturias', 'AS', 0),
(2976, 195, '&Aacute;vila', 'AV', 0),
(2977, 195, 'Badajoz', 'BJ', 0),
(2978, 195, 'Baleares', 'IB', 0),
(2979, 195, 'Barcelona', 'BA', 0),
(2980, 195, 'Burgos', 'BU', 0),
(2981, 195, 'C&aacute;ceres', 'CC', 0),
(2982, 195, 'C&aacute;diz', 'CZ', 0),
(2983, 195, 'Cantabria', 'CT', 0),
(2984, 195, 'Castell&oacute;n', 'CL', 0),
(2985, 195, 'Ceuta', 'CE', 0),
(2986, 195, 'Ciudad Real', 'CR', 0),
(2987, 195, 'C&oacute;rdoba', 'CD', 0),
(2988, 195, 'Cuenca', 'CU', 0),
(2989, 195, 'Girona', 'GI', 0),
(2990, 195, 'Granada', 'GD', 0),
(2991, 195, 'Guadalajara', 'GJ', 0),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 0),
(2993, 195, 'Huelva', 'HL', 0),
(2994, 195, 'Huesca', 'HS', 0),
(2995, 195, 'Ja&eacute;n', 'JN', 0),
(2996, 195, 'La Rioja', 'RJ', 0),
(2997, 195, 'Las Palmas', 'PM', 0),
(2998, 195, 'Leon', 'LE', 0),
(2999, 195, 'Lleida', 'LL', 0),
(3000, 195, 'Lugo', 'LG', 0),
(3001, 195, 'Madrid', 'MD', 0),
(3002, 195, 'Malaga', 'MA', 0),
(3003, 195, 'Melilla', 'ML', 0),
(3004, 195, 'Murcia', 'MU', 0),
(3005, 195, 'Navarra', 'NV', 0),
(3006, 195, 'Ourense', 'OU', 0),
(3007, 195, 'Palencia', 'PL', 0),
(3008, 195, 'Pontevedra', 'PO', 0),
(3009, 195, 'Salamanca', 'SL', 0),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 0),
(3011, 195, 'Segovia', 'SG', 0),
(3012, 195, 'Sevilla', 'SV', 0),
(3013, 195, 'Soria', 'SO', 0),
(3014, 195, 'Tarragona', 'TA', 0),
(3015, 195, 'Teruel', 'TE', 0),
(3016, 195, 'Toledo', 'TO', 0),
(3017, 195, 'Valencia', 'VC', 0),
(3018, 195, 'Valladolid', 'VD', 0),
(3019, 195, 'Vizcaya', 'VZ', 0),
(3020, 195, 'Zamora', 'ZM', 0),
(3021, 195, 'Zaragoza', 'ZR', 0),
(3022, 196, 'Central', 'CE', 0),
(3023, 196, 'Eastern', 'EA', 0),
(3024, 196, 'North Central', 'NC', 0),
(3025, 196, 'Northern', 'NO', 0),
(3026, 196, 'North Western', 'NW', 0),
(3027, 196, 'Sabaragamuwa', 'SA', 0),
(3028, 196, 'Southern', 'SO', 0),
(3029, 196, 'Uva', 'UV', 0),
(3030, 196, 'Western', 'WE', 0),
(3032, 197, 'Saint Helena', 'S', 0),
(3034, 199, 'A\'ali an Nil', 'ANL', 0),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 0),
(3036, 199, 'Al Buhayrat', 'BRT', 0),
(3037, 199, 'Al Jazirah', 'JZR', 0),
(3038, 199, 'Al Khartum', 'KRT', 0),
(3039, 199, 'Al Qadarif', 'QDR', 0),
(3040, 199, 'Al Wahdah', 'WDH', 0),
(3041, 199, 'An Nil al Abyad', 'ANB', 0),
(3042, 199, 'An Nil al Azraq', 'ANZ', 0),
(3043, 199, 'Ash Shamaliyah', 'ASH', 0),
(3044, 199, 'Bahr al Jabal', 'BJA', 0),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 0),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 0),
(3047, 199, 'Gharb Darfur', 'GDA', 0),
(3048, 199, 'Gharb Kurdufan', 'GKU', 0),
(3049, 199, 'Janub Darfur', 'JDA', 0),
(3050, 199, 'Janub Kurdufan', 'JKU', 0),
(3051, 199, 'Junqali', 'JQL', 0),
(3052, 199, 'Kassala', 'KSL', 0),
(3053, 199, 'Nahr an Nil', 'NNL', 0),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 0),
(3055, 199, 'Shamal Darfur', 'SDA', 0),
(3056, 199, 'Shamal Kurdufan', 'SKU', 0),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 0),
(3058, 199, 'Sinnar', 'SNR', 0),
(3059, 199, 'Warab', 'WRB', 0),
(3060, 200, 'Brokopondo', 'BR', 0),
(3061, 200, 'Commewijne', 'CM', 0),
(3062, 200, 'Coronie', 'CR', 0),
(3063, 200, 'Marowijne', 'MA', 0),
(3064, 200, 'Nickerie', 'NI', 0),
(3065, 200, 'Para', 'PA', 0),
(3066, 200, 'Paramaribo', 'PM', 0),
(3067, 200, 'Saramacca', 'SA', 0),
(3068, 200, 'Sipaliwini', 'SI', 0),
(3069, 200, 'Wanica', 'WA', 0),
(3070, 202, 'Hhohho', 'H', 0),
(3071, 202, 'Lubombo', 'L', 0),
(3072, 202, 'Manzini', 'M', 0),
(3073, 202, 'Shishelweni', 'S', 0),
(3074, 203, 'Blekinge', 'K', 0),
(3075, 203, 'Dalarna', 'W', 0),
(3076, 203, 'Gävleborg', 'X', 0),
(3077, 203, 'Gotland', 'I', 0),
(3078, 203, 'Halland', 'N', 0),
(3079, 203, 'Jämtland', 'Z', 0),
(3080, 203, 'Jönköping', 'F', 0),
(3081, 203, 'Kalmar', 'H', 0),
(3082, 203, 'Kronoberg', 'G', 0),
(3083, 203, 'Norrbotten', 'BD', 0),
(3084, 203, 'Örebro', 'T', 0),
(3085, 203, 'Östergötland', 'E', 0),
(3086, 203, 'Sk&aring;ne', 'M', 0),
(3087, 203, 'Södermanland', 'D', 0),
(3088, 203, 'Stockholm', 'AB', 0),
(3089, 203, 'Uppsala', 'C', 0),
(3090, 203, 'Värmland', 'S', 0),
(3091, 203, 'Västerbotten', 'AC', 0),
(3092, 203, 'Västernorrland', 'Y', 0),
(3093, 203, 'Västmanland', 'U', 0),
(3094, 203, 'Västra Götaland', 'O', 0),
(3095, 204, 'Aargau', 'AG', 0),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 0),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 0),
(3098, 204, 'Basel-Stadt', 'BS', 0),
(3099, 204, 'Basel-Landschaft', 'BL', 0),
(3100, 204, 'Bern', 'BE', 0),
(3101, 204, 'Fribourg', 'FR', 0),
(3102, 204, 'Gen&egrave;ve', 'GE', 0),
(3103, 204, 'Glarus', 'GL', 0),
(3104, 204, 'Graubünden', 'GR', 0),
(3105, 204, 'Jura', 'JU', 0),
(3106, 204, 'Luzern', 'LU', 0),
(3107, 204, 'Neuch&acirc;tel', 'NE', 0),
(3108, 204, 'Nidwald', 'NW', 0),
(3109, 204, 'Obwald', 'OW', 0),
(3110, 204, 'St. Gallen', 'SG', 0),
(3111, 204, 'Schaffhausen', 'SH', 0),
(3112, 204, 'Schwyz', 'SZ', 0),
(3113, 204, 'Solothurn', 'SO', 0),
(3114, 204, 'Thurgau', 'TG', 0),
(3115, 204, 'Ticino', 'TI', 0),
(3116, 204, 'Uri', 'UR', 0),
(3117, 204, 'Valais', 'VS', 0),
(3118, 204, 'Vaud', 'VD', 0),
(3119, 204, 'Zug', 'ZG', 0),
(3120, 204, 'Zürich', 'ZH', 0),
(3121, 205, 'Al Hasakah', 'HA', 0),
(3122, 205, 'Al Ladhiqiyah', 'LA', 0),
(3123, 205, 'Al Qunaytirah', 'QU', 0),
(3124, 205, 'Ar Raqqah', 'RQ', 0),
(3125, 205, 'As Suwayda', 'SU', 0),
(3126, 205, 'Dara', 'DA', 0),
(3127, 205, 'Dayr az Zawr', 'DZ', 0),
(3128, 205, 'Dimashq', 'DI', 0),
(3129, 205, 'Halab', 'HL', 0),
(3130, 205, 'Hamah', 'HM', 0),
(3131, 205, 'Hims', 'HI', 0),
(3132, 205, 'Idlib', 'ID', 0),
(3133, 205, 'Rif Dimashq', 'RD', 0),
(3134, 205, 'Tartus', 'TA', 0),
(3135, 206, 'Chang-hua', 'CH', 0),
(3136, 206, 'Chia-i', 'CI', 0);
INSERT INTO `migan_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 0),
(3138, 206, 'Hua-lien', 'HL', 0),
(3139, 206, 'I-lan', 'IL', 0),
(3140, 206, 'Kao-hsiung county', 'KH', 0),
(3141, 206, 'Kin-men', 'KM', 0),
(3142, 206, 'Lien-chiang', 'LC', 0),
(3143, 206, 'Miao-li', 'ML', 0),
(3144, 206, 'Nan-t\'ou', 'NT', 0),
(3145, 206, 'P\'eng-hu', 'PH', 0),
(3146, 206, 'P\'ing-tung', 'PT', 0),
(3147, 206, 'T\'ai-chung', 'TG', 0),
(3148, 206, 'T\'ai-nan', 'TA', 0),
(3149, 206, 'T\'ai-pei county', 'TP', 0),
(3150, 206, 'T\'ai-tung', 'TT', 0),
(3151, 206, 'T\'ao-yuan', 'TY', 0),
(3152, 206, 'Yun-lin', 'YL', 0),
(3153, 206, 'Chia-i city', 'CC', 0),
(3154, 206, 'Chi-lung', 'CL', 0),
(3155, 206, 'Hsin-chu', 'HC', 0),
(3156, 206, 'T\'ai-chung', 'TH', 0),
(3157, 206, 'T\'ai-nan', 'TN', 0),
(3158, 206, 'Kao-hsiung city', 'KC', 0),
(3159, 206, 'T\'ai-pei city', 'TC', 0),
(3160, 207, 'Gorno-Badakhstan', 'GB', 0),
(3161, 207, 'Khatlon', 'KT', 0),
(3162, 207, 'Sughd', 'SU', 0),
(3163, 208, 'Arusha', 'AR', 0),
(3164, 208, 'Dar es Salaam', 'DS', 0),
(3165, 208, 'Dodoma', 'DO', 0),
(3166, 208, 'Iringa', 'IR', 0),
(3167, 208, 'Kagera', 'KA', 0),
(3168, 208, 'Kigoma', 'KI', 0),
(3169, 208, 'Kilimanjaro', 'KJ', 0),
(3170, 208, 'Lindi', 'LN', 0),
(3171, 208, 'Manyara', 'MY', 0),
(3172, 208, 'Mara', 'MR', 0),
(3173, 208, 'Mbeya', 'MB', 0),
(3174, 208, 'Morogoro', 'MO', 0),
(3175, 208, 'Mtwara', 'MT', 0),
(3176, 208, 'Mwanza', 'MW', 0),
(3177, 208, 'Pemba North', 'PN', 0),
(3178, 208, 'Pemba South', 'PS', 0),
(3179, 208, 'Pwani', 'PW', 0),
(3180, 208, 'Rukwa', 'RK', 0),
(3181, 208, 'Ruvuma', 'RV', 0),
(3182, 208, 'Shinyanga', 'SH', 0),
(3183, 208, 'Singida', 'SI', 0),
(3184, 208, 'Tabora', 'TB', 0),
(3185, 208, 'Tanga', 'TN', 0),
(3186, 208, 'Zanzibar Central/South', 'ZC', 0),
(3187, 208, 'Zanzibar North', 'ZN', 0),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 0),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 0),
(3190, 209, 'Ang Thong', 'Ang Thong', 0),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 0),
(3192, 209, 'Bangkok', 'Bangkok', 0),
(3193, 209, 'Buriram', 'Buriram', 0),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 0),
(3195, 209, 'Chai Nat', 'Chai Nat', 0),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 0),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 0),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 0),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 0),
(3200, 209, 'Chon Buri', 'Chon Buri', 0),
(3201, 209, 'Chumphon', 'Chumphon', 0),
(3202, 209, 'Kalasin', 'Kalasin', 0),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 0),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 0),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 0),
(3206, 209, 'Krabi', 'Krabi', 0),
(3207, 209, 'Lampang', 'Lampang', 0),
(3208, 209, 'Lamphun', 'Lamphun', 0),
(3209, 209, 'Loei', 'Loei', 0),
(3210, 209, 'Lop Buri', 'Lop Buri', 0),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 0),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 0),
(3213, 209, 'Mukdahan', 'Mukdahan', 0),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 0),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 0),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 0),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 0),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 0),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 0),
(3220, 209, 'Nan', 'Nan', 0),
(3221, 209, 'Narathiwat', 'Narathiwat', 0),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 0),
(3223, 209, 'Nong Khai', 'Nong Khai', 0),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 0),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 0),
(3226, 209, 'Pattani', 'Pattani', 0),
(3227, 209, 'Phangnga', 'Phangnga', 0),
(3228, 209, 'Phatthalung', 'Phatthalung', 0),
(3229, 209, 'Phayao', 'Phayao', 0),
(3230, 209, 'Phetchabun', 'Phetchabun', 0),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 0),
(3232, 209, 'Phichit', 'Phichit', 0),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 0),
(3234, 209, 'Phrae', 'Phrae', 0),
(3235, 209, 'Phuket', 'Phuket', 0),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 0),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 0),
(3238, 209, 'Ranong', 'Ranong', 0),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 0),
(3240, 209, 'Rayong', 'Rayong', 0),
(3241, 209, 'Roi Et', 'Roi Et', 0),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 0),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 0),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 0),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 0),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 0),
(3247, 209, 'Sara Buri', 'Sara Buri', 0),
(3248, 209, 'Satun', 'Satun', 0),
(3249, 209, 'Sing Buri', 'Sing Buri', 0),
(3250, 209, 'Sisaket', 'Sisaket', 0),
(3251, 209, 'Songkhla', 'Songkhla', 0),
(3252, 209, 'Sukhothai', 'Sukhothai', 0),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 0),
(3254, 209, 'Surat Thani', 'Surat Thani', 0),
(3255, 209, 'Surin', 'Surin', 0),
(3256, 209, 'Tak', 'Tak', 0),
(3257, 209, 'Trang', 'Trang', 0),
(3258, 209, 'Trat', 'Trat', 0),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 0),
(3260, 209, 'Udon Thani', 'Udon Thani', 0),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 0),
(3262, 209, 'Uttaradit', 'Uttaradit', 0),
(3263, 209, 'Yala', 'Yala', 0),
(3264, 209, 'Yasothon', 'Yasothon', 0),
(3265, 210, 'Kara', 'K', 0),
(3266, 210, 'Plateaux', 'P', 0),
(3267, 210, 'Savanes', 'S', 0),
(3268, 210, 'Centrale', 'C', 0),
(3269, 210, 'Maritime', 'M', 0),
(3270, 211, 'Atafu', 'A', 0),
(3271, 211, 'Fakaofo', 'F', 0),
(3272, 211, 'Nukunonu', 'N', 0),
(3273, 212, 'Ha\'apai', 'H', 0),
(3274, 212, 'Tongatapu', 'T', 0),
(3275, 212, 'Vava\'u', 'V', 0),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 0),
(3277, 213, 'Diego Martin', 'DM', 0),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 0),
(3279, 213, 'Penal/Debe', 'PD', 0),
(3280, 213, 'Princes Town', 'PT', 0),
(3281, 213, 'Sangre Grande', 'SG', 0),
(3282, 213, 'San Juan/Laventille', 'SL', 0),
(3283, 213, 'Siparia', 'SI', 0),
(3284, 213, 'Tunapuna/Piarco', 'TP', 0),
(3285, 213, 'Port of Spain', 'PS', 0),
(3286, 213, 'San Fernando', 'SF', 0),
(3287, 213, 'Arima', 'AR', 0),
(3288, 213, 'Point Fortin', 'PF', 0),
(3289, 213, 'Chaguanas', 'CH', 0),
(3290, 213, 'Tobago', 'TO', 0),
(3291, 214, 'Ariana', 'AR', 0),
(3292, 214, 'Beja', 'BJ', 0),
(3293, 214, 'Ben Arous', 'BA', 0),
(3294, 214, 'Bizerte', 'BI', 0),
(3295, 214, 'Gabes', 'GB', 0),
(3296, 214, 'Gafsa', 'GF', 0),
(3297, 214, 'Jendouba', 'JE', 0),
(3298, 214, 'Kairouan', 'KR', 0),
(3299, 214, 'Kasserine', 'KS', 0),
(3300, 214, 'Kebili', 'KB', 0),
(3301, 214, 'Kef', 'KF', 0),
(3302, 214, 'Mahdia', 'MH', 0),
(3303, 214, 'Manouba', 'MN', 0),
(3304, 214, 'Medenine', 'ME', 0),
(3305, 214, 'Monastir', 'MO', 0),
(3306, 214, 'Nabeul', 'NA', 0),
(3307, 214, 'Sfax', 'SF', 0),
(3308, 214, 'Sidi', 'SD', 0),
(3309, 214, 'Siliana', 'SL', 0),
(3310, 214, 'Sousse', 'SO', 0),
(3311, 214, 'Tataouine', 'TA', 0),
(3312, 214, 'Tozeur', 'TO', 0),
(3313, 214, 'Tunis', 'TU', 0),
(3314, 214, 'Zaghouan', 'ZA', 0),
(3315, 215, 'Adana', 'ADA', 0),
(3316, 215, 'Adıyaman', 'ADI', 0),
(3317, 215, 'Afyonkarahisar', 'AFY', 0),
(3318, 215, 'Ağrı', 'AGR', 0),
(3319, 215, 'Aksaray', 'AKS', 0),
(3320, 215, 'Amasya', 'AMA', 0),
(3321, 215, 'Ankara', 'ANK', 0),
(3322, 215, 'Antalya', 'ANT', 0),
(3323, 215, 'Ardahan', 'ARD', 0),
(3324, 215, 'Artvin', 'ART', 0),
(3325, 215, 'Aydın', 'AYI', 0),
(3326, 215, 'Balıkesir', 'BAL', 0),
(3327, 215, 'Bartın', 'BAR', 0),
(3328, 215, 'Batman', 'BAT', 0),
(3329, 215, 'Bayburt', 'BAY', 0),
(3330, 215, 'Bilecik', 'BIL', 0),
(3331, 215, 'Bingöl', 'BIN', 0),
(3332, 215, 'Bitlis', 'BIT', 0),
(3333, 215, 'Bolu', 'BOL', 0),
(3334, 215, 'Burdur', 'BRD', 0),
(3335, 215, 'Bursa', 'BRS', 0),
(3336, 215, 'Çanakkale', 'CKL', 0),
(3337, 215, 'Çankırı', 'CKR', 0),
(3338, 215, 'Çorum', 'COR', 0),
(3339, 215, 'Denizli', 'DEN', 0),
(3340, 215, 'Diyarbakır', 'DIY', 0),
(3341, 215, 'Düzce', 'DUZ', 0),
(3342, 215, 'Edirne', 'EDI', 0),
(3343, 215, 'Elazığ', 'ELA', 0),
(3344, 215, 'Erzincan', 'EZC', 0),
(3345, 215, 'Erzurum', 'EZR', 0),
(3346, 215, 'Eskişehir', 'ESK', 0),
(3347, 215, 'Gaziantep', 'GAZ', 0),
(3348, 215, 'Giresun', 'GIR', 0),
(3349, 215, 'Gümüşhane', 'GMS', 0),
(3350, 215, 'Hakkari', 'HKR', 0),
(3351, 215, 'Hatay', 'HTY', 0),
(3352, 215, 'Iğdır', 'IGD', 0),
(3353, 215, 'Isparta', 'ISP', 0),
(3354, 215, 'İstanbul', 'IST', 0),
(3355, 215, 'İzmir', 'IZM', 0),
(3356, 215, 'Kahramanmaraş', 'KAH', 0),
(3357, 215, 'Karabük', 'KRB', 0),
(3358, 215, 'Karaman', 'KRM', 0),
(3359, 215, 'Kars', 'KRS', 0),
(3360, 215, 'Kastamonu', 'KAS', 0),
(3361, 215, 'Kayseri', 'KAY', 0),
(3362, 215, 'Kilis', 'KLS', 0),
(3363, 215, 'Kırıkkale', 'KRK', 0),
(3364, 215, 'Kırklareli', 'KLR', 0),
(3365, 215, 'Kırşehir', 'KRH', 0),
(3366, 215, 'Kocaeli', 'KOC', 0),
(3367, 215, 'Konya', 'KON', 0),
(3368, 215, 'Kütahya', 'KUT', 0),
(3369, 215, 'Malatya', 'MAL', 0),
(3370, 215, 'Manisa', 'MAN', 0),
(3371, 215, 'Mardin', 'MAR', 0),
(3372, 215, 'Mersin', 'MER', 0),
(3373, 215, 'Muğla', 'MUG', 0),
(3374, 215, 'Muş', 'MUS', 0),
(3375, 215, 'Nevşehir', 'NEV', 0),
(3376, 215, 'Niğde', 'NIG', 0),
(3377, 215, 'Ordu', 'ORD', 0),
(3378, 215, 'Osmaniye', 'OSM', 0),
(3379, 215, 'Rize', 'RIZ', 0),
(3380, 215, 'Sakarya', 'SAK', 0),
(3381, 215, 'Samsun', 'SAM', 0),
(3382, 215, 'Şanlıurfa', 'SAN', 0),
(3383, 215, 'Siirt', 'SII', 0),
(3384, 215, 'Sinop', 'SIN', 0),
(3385, 215, 'Şırnak', 'SIR', 0),
(3386, 215, 'Sivas', 'SIV', 0),
(3387, 215, 'Tekirdağ', 'TEL', 0),
(3388, 215, 'Tokat', 'TOK', 0),
(3389, 215, 'Trabzon', 'TRA', 0),
(3390, 215, 'Tunceli', 'TUN', 0),
(3391, 215, 'Uşak', 'USK', 0),
(3392, 215, 'Van', 'VAN', 0),
(3393, 215, 'Yalova', 'YAL', 0),
(3394, 215, 'Yozgat', 'YOZ', 0),
(3395, 215, 'Zonguldak', 'ZON', 0),
(3396, 216, 'Ahal Welayaty', 'A', 0),
(3397, 216, 'Balkan Welayaty', 'B', 0),
(3398, 216, 'Dashhowuz Welayaty', 'D', 0),
(3399, 216, 'Lebap Welayaty', 'L', 0),
(3400, 216, 'Mary Welayaty', 'M', 0),
(3401, 217, 'Ambergris Cays', 'AC', 0),
(3402, 217, 'Dellis Cay', 'DC', 0),
(3403, 217, 'French Cay', 'FC', 0),
(3404, 217, 'Little Water Cay', 'LW', 0),
(3405, 217, 'Parrot Cay', 'RC', 0),
(3406, 217, 'Pine Cay', 'PN', 0),
(3407, 217, 'Salt Cay', 'SL', 0),
(3408, 217, 'Grand Turk', 'GT', 0),
(3409, 217, 'South Caicos', 'SC', 0),
(3410, 217, 'East Caicos', 'EC', 0),
(3411, 217, 'Middle Caicos', 'MC', 0),
(3412, 217, 'North Caicos', 'NC', 0),
(3413, 217, 'Providenciales', 'PR', 0),
(3414, 217, 'West Caicos', 'WC', 0),
(3415, 218, 'Nanumanga', 'NMG', 0),
(3416, 218, 'Niulakita', 'NLK', 0),
(3417, 218, 'Niutao', 'NTO', 0),
(3418, 218, 'Funafuti', 'FUN', 0),
(3419, 218, 'Nanumea', 'NME', 0),
(3420, 218, 'Nui', 'NUI', 0),
(3421, 218, 'Nukufetau', 'NFT', 0),
(3422, 218, 'Nukulaelae', 'NLL', 0),
(3423, 218, 'Vaitupu', 'VAI', 0),
(3424, 219, 'Kalangala', 'KAL', 0),
(3425, 219, 'Kampala', 'KMP', 0),
(3426, 219, 'Kayunga', 'KAY', 0),
(3427, 219, 'Kiboga', 'KIB', 0),
(3428, 219, 'Luwero', 'LUW', 0),
(3429, 219, 'Masaka', 'MAS', 0),
(3430, 219, 'Mpigi', 'MPI', 0),
(3431, 219, 'Mubende', 'MUB', 0),
(3432, 219, 'Mukono', 'MUK', 0),
(3433, 219, 'Nakasongola', 'NKS', 0),
(3434, 219, 'Rakai', 'RAK', 0),
(3435, 219, 'Sembabule', 'SEM', 0),
(3436, 219, 'Wakiso', 'WAK', 0),
(3437, 219, 'Bugiri', 'BUG', 0),
(3438, 219, 'Busia', 'BUS', 0),
(3439, 219, 'Iganga', 'IGA', 0),
(3440, 219, 'Jinja', 'JIN', 0),
(3441, 219, 'Kaberamaido', 'KAB', 0),
(3442, 219, 'Kamuli', 'KML', 0),
(3443, 219, 'Kapchorwa', 'KPC', 0),
(3444, 219, 'Katakwi', 'KTK', 0),
(3445, 219, 'Kumi', 'KUM', 0),
(3446, 219, 'Mayuge', 'MAY', 0),
(3447, 219, 'Mbale', 'MBA', 0),
(3448, 219, 'Pallisa', 'PAL', 0),
(3449, 219, 'Sironko', 'SIR', 0),
(3450, 219, 'Soroti', 'SOR', 0),
(3451, 219, 'Tororo', 'TOR', 0),
(3452, 219, 'Adjumani', 'ADJ', 0),
(3453, 219, 'Apac', 'APC', 0),
(3454, 219, 'Arua', 'ARU', 0),
(3455, 219, 'Gulu', 'GUL', 0),
(3456, 219, 'Kitgum', 'KIT', 0),
(3457, 219, 'Kotido', 'KOT', 0),
(3458, 219, 'Lira', 'LIR', 0),
(3459, 219, 'Moroto', 'MRT', 0),
(3460, 219, 'Moyo', 'MOY', 0),
(3461, 219, 'Nakapiripirit', 'NAK', 0),
(3462, 219, 'Nebbi', 'NEB', 0),
(3463, 219, 'Pader', 'PAD', 0),
(3464, 219, 'Yumbe', 'YUM', 0),
(3465, 219, 'Bundibugyo', 'BUN', 0),
(3466, 219, 'Bushenyi', 'BSH', 0),
(3467, 219, 'Hoima', 'HOI', 0),
(3468, 219, 'Kabale', 'KBL', 0),
(3469, 219, 'Kabarole', 'KAR', 0),
(3470, 219, 'Kamwenge', 'KAM', 0),
(3471, 219, 'Kanungu', 'KAN', 0),
(3472, 219, 'Kasese', 'KAS', 0),
(3473, 219, 'Kibaale', 'KBA', 0),
(3474, 219, 'Kisoro', 'KIS', 0),
(3475, 219, 'Kyenjojo', 'KYE', 0),
(3476, 219, 'Masindi', 'MSN', 0),
(3477, 219, 'Mbarara', 'MBR', 0),
(3478, 219, 'Ntungamo', 'NTU', 0),
(3479, 219, 'Rukungiri', 'RUK', 0),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 0),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 0),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 0),
(3483, 220, 'Crimea', '43', 0),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 0),
(3485, 220, 'Donets\'ka Oblast\'', '14', 0),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 0),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 0),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 0),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 0),
(3490, 220, 'Kyiv', '30', 0),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 0),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 0),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 0),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 0),
(3495, 220, 'Odes\'ka Oblast\'', '51', 0),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 0),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 0),
(3498, 220, 'Sevastopol\'', '40', 0),
(3499, 220, 'Sums\'ka Oblast\'', '59', 0),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 0),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 0),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 0),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 0),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 0),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 0),
(3506, 221, 'Abu Dhabi', 'ADH', 0),
(3507, 221, '\'Ajman', 'AJ', 0),
(3508, 221, 'Al Fujayrah', 'FU', 0),
(3509, 221, 'Ash Shariqah', 'SH', 0),
(3510, 221, 'Dubai', 'DU', 0),
(3511, 221, 'R\'as al Khaymah', 'RK', 0),
(3512, 221, 'Umm al Qaywayn', 'UQ', 0),
(3513, 222, 'Aberdeen', 'ABN', 0),
(3514, 222, 'Aberdeenshire', 'ABNS', 0),
(3515, 222, 'Anglesey', 'ANG', 0),
(3516, 222, 'Angus', 'AGS', 0),
(3517, 222, 'Argyll and Bute', 'ARY', 0),
(3518, 222, 'Bedfordshire', 'BEDS', 0),
(3519, 222, 'Berkshire', 'BERKS', 0),
(3520, 222, 'Blaenau Gwent', 'BLA', 0),
(3521, 222, 'Bridgend', 'BRI', 0),
(3522, 222, 'Bristol', 'BSTL', 0),
(3523, 222, 'Buckinghamshire', 'BUCKS', 0),
(3524, 222, 'Caerphilly', 'CAE', 0),
(3525, 222, 'Cambridgeshire', 'CAMBS', 0),
(3526, 222, 'Cardiff', 'CDF', 0),
(3527, 222, 'Carmarthenshire', 'CARM', 0),
(3528, 222, 'Ceredigion', 'CDGN', 0),
(3529, 222, 'Cheshire', 'CHES', 0),
(3530, 222, 'Clackmannanshire', 'CLACK', 0),
(3531, 222, 'Conwy', 'CON', 0),
(3532, 222, 'Cornwall', 'CORN', 0),
(3533, 222, 'Denbighshire', 'DNBG', 0),
(3534, 222, 'Derbyshire', 'DERBY', 0),
(3535, 222, 'Devon', 'DVN', 0),
(3536, 222, 'Dorset', 'DOR', 0),
(3537, 222, 'Dumfries and Galloway', 'DGL', 0),
(3538, 222, 'Dundee', 'DUND', 0),
(3539, 222, 'Durham', 'DHM', 0),
(3540, 222, 'East Ayrshire', 'ARYE', 0),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 0),
(3542, 222, 'East Lothian', 'LOTE', 0),
(3543, 222, 'East Renfrewshire', 'RENE', 0),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 0),
(3545, 222, 'East Sussex', 'SXE', 0),
(3546, 222, 'Edinburgh', 'EDIN', 0),
(3547, 222, 'Essex', 'ESX', 0),
(3548, 222, 'Falkirk', 'FALK', 0),
(3549, 222, 'Fife', 'FFE', 0),
(3550, 222, 'Flintshire', 'FLINT', 0),
(3551, 222, 'Glasgow', 'GLAS', 0),
(3552, 222, 'Gloucestershire', 'GLOS', 0),
(3553, 222, 'Greater London', 'LDN', 0),
(3554, 222, 'Greater Manchester', 'MCH', 0),
(3555, 222, 'Gwynedd', 'GDD', 0),
(3556, 222, 'Hampshire', 'HANTS', 0),
(3557, 222, 'Herefordshire', 'HWR', 0),
(3558, 222, 'Hertfordshire', 'HERTS', 0),
(3559, 222, 'Highlands', 'HLD', 0),
(3560, 222, 'Inverclyde', 'IVER', 0),
(3561, 222, 'Isle of Wight', 'IOW', 0),
(3562, 222, 'Kent', 'KNT', 0),
(3563, 222, 'Lancashire', 'LANCS', 0),
(3564, 222, 'Leicestershire', 'LEICS', 0),
(3565, 222, 'Lincolnshire', 'LINCS', 0),
(3566, 222, 'Merseyside', 'MSY', 0),
(3567, 222, 'Merthyr Tydfil', 'MERT', 0),
(3568, 222, 'Midlothian', 'MLOT', 0),
(3569, 222, 'Monmouthshire', 'MMOUTH', 0),
(3570, 222, 'Moray', 'MORAY', 0),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 0),
(3572, 222, 'Newport', 'NEWPT', 0),
(3573, 222, 'Norfolk', 'NOR', 0),
(3574, 222, 'North Ayrshire', 'ARYN', 0),
(3575, 222, 'North Lanarkshire', 'LANN', 0),
(3576, 222, 'North Yorkshire', 'YSN', 0),
(3577, 222, 'Northamptonshire', 'NHM', 0),
(3578, 222, 'Northumberland', 'NLD', 0),
(3579, 222, 'Nottinghamshire', 'NOT', 0),
(3580, 222, 'Orkney Islands', 'ORK', 0),
(3581, 222, 'Oxfordshire', 'OFE', 0),
(3582, 222, 'Pembrokeshire', 'PEM', 0),
(3583, 222, 'Perth and Kinross', 'PERTH', 0),
(3584, 222, 'Powys', 'PWS', 0),
(3585, 222, 'Renfrewshire', 'REN', 0),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 0),
(3587, 222, 'Rutland', 'RUT', 0),
(3588, 222, 'Scottish Borders', 'BOR', 0),
(3589, 222, 'Shetland Islands', 'SHET', 0),
(3590, 222, 'Shropshire', 'SPE', 0),
(3591, 222, 'Somerset', 'SOM', 0),
(3592, 222, 'South Ayrshire', 'ARYS', 0),
(3593, 222, 'South Lanarkshire', 'LANS', 0),
(3594, 222, 'South Yorkshire', 'YSS', 0),
(3595, 222, 'Staffordshire', 'SFD', 0),
(3596, 222, 'Stirling', 'STIR', 0),
(3597, 222, 'Suffolk', 'SFK', 0),
(3598, 222, 'Surrey', 'SRY', 0),
(3599, 222, 'Swansea', 'SWAN', 0),
(3600, 222, 'Torfaen', 'TORF', 0),
(3601, 222, 'Tyne and Wear', 'TWR', 0),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 0),
(3603, 222, 'Warwickshire', 'WARKS', 0),
(3604, 222, 'West Dunbartonshire', 'WDUN', 0),
(3605, 222, 'West Lothian', 'WLOT', 0),
(3606, 222, 'West Midlands', 'WMD', 0),
(3607, 222, 'West Sussex', 'SXW', 0),
(3608, 222, 'West Yorkshire', 'YSW', 0),
(3609, 222, 'Western Isles', 'WIL', 0),
(3610, 222, 'Wiltshire', 'WLT', 0),
(3611, 222, 'Worcestershire', 'WORCS', 0),
(3612, 222, 'Wrexham', 'WRX', 0),
(3613, 223, 'Alabama', 'AL', 0),
(3614, 223, 'Alaska', 'AK', 0),
(3615, 223, 'American Samoa', 'AS', 0),
(3616, 223, 'Arizona', 'AZ', 0),
(3617, 223, 'Arkansas', 'AR', 0),
(3618, 223, 'Armed Forces Africa', 'AF', 0),
(3619, 223, 'Armed Forces Americas', 'AA', 0),
(3620, 223, 'Armed Forces Canada', 'AC', 0),
(3621, 223, 'Armed Forces Europe', 'AE', 0),
(3622, 223, 'Armed Forces Middle East', 'AM', 0),
(3623, 223, 'Armed Forces Pacific', 'AP', 0),
(3624, 223, 'California', 'CA', 0),
(3625, 223, 'Colorado', 'CO', 0),
(3626, 223, 'Connecticut', 'CT', 0),
(3627, 223, 'Delaware', 'DE', 0),
(3628, 223, 'District of Columbia', 'DC', 0),
(3629, 223, 'Federated States Of Micronesia', 'FM', 0),
(3630, 223, 'Florida', 'FL', 0),
(3631, 223, 'Georgia', 'GA', 0),
(3632, 223, 'Guam', 'GU', 0),
(3633, 223, 'Hawaii', 'HI', 0),
(3634, 223, 'Idaho', 'ID', 0),
(3635, 223, 'Illinois', 'IL', 0),
(3636, 223, 'Indiana', 'IN', 0),
(3637, 223, 'Iowa', 'IA', 0),
(3638, 223, 'Kansas', 'KS', 0),
(3639, 223, 'Kentucky', 'KY', 0),
(3640, 223, 'Louisiana', 'LA', 0),
(3641, 223, 'Maine', 'ME', 0),
(3642, 223, 'Marshall Islands', 'MH', 0),
(3643, 223, 'Maryland', 'MD', 0),
(3644, 223, 'Massachusetts', 'MA', 0),
(3645, 223, 'Michigan', 'MI', 0),
(3646, 223, 'Minnesota', 'MN', 0),
(3647, 223, 'Mississippi', 'MS', 0),
(3648, 223, 'Missouri', 'MO', 0),
(3649, 223, 'Montana', 'MT', 0),
(3650, 223, 'Nebraska', 'NE', 0),
(3651, 223, 'Nevada', 'NV', 0),
(3652, 223, 'New Hampshire', 'NH', 0),
(3653, 223, 'New Jersey', 'NJ', 0),
(3654, 223, 'New Mexico', 'NM', 0),
(3655, 223, 'New York', 'NY', 0),
(3656, 223, 'North Carolina', 'NC', 0),
(3657, 223, 'North Dakota', 'ND', 0),
(3658, 223, 'Northern Mariana Islands', 'MP', 0),
(3659, 223, 'Ohio', 'OH', 0),
(3660, 223, 'Oklahoma', 'OK', 0),
(3661, 223, 'Oregon', 'OR', 0),
(3662, 223, 'Palau', 'PW', 0),
(3663, 223, 'Pennsylvania', 'PA', 0),
(3664, 223, 'Puerto Rico', 'PR', 0),
(3665, 223, 'Rhode Island', 'RI', 0),
(3666, 223, 'South Carolina', 'SC', 0),
(3667, 223, 'South Dakota', 'SD', 0),
(3668, 223, 'Tennessee', 'TN', 0),
(3669, 223, 'Texas', 'TX', 0),
(3670, 223, 'Utah', 'UT', 0),
(3671, 223, 'Vermont', 'VT', 0),
(3672, 223, 'Virgin Islands', 'VI', 0),
(3673, 223, 'Virginia', 'VA', 0),
(3674, 223, 'Washington', 'WA', 0),
(3675, 223, 'West Virginia', 'WV', 0),
(3676, 223, 'Wisconsin', 'WI', 0),
(3677, 223, 'Wyoming', 'WY', 0),
(3678, 224, 'Baker Island', 'BI', 0),
(3679, 224, 'Howland Island', 'HI', 0),
(3680, 224, 'Jarvis Island', 'JI', 0),
(3681, 224, 'Johnston Atoll', 'JA', 0),
(3682, 224, 'Kingman Reef', 'KR', 0),
(3683, 224, 'Midway Atoll', 'MA', 0),
(3684, 224, 'Navassa Island', 'NI', 0),
(3685, 224, 'Palmyra Atoll', 'PA', 0),
(3686, 224, 'Wake Island', 'WI', 0),
(3687, 225, 'Artigas', 'AR', 0),
(3688, 225, 'Canelones', 'CA', 0),
(3689, 225, 'Cerro Largo', 'CL', 0),
(3690, 225, 'Colonia', 'CO', 0),
(3691, 225, 'Durazno', 'DU', 0),
(3692, 225, 'Flores', 'FS', 0),
(3693, 225, 'Florida', 'FA', 0),
(3694, 225, 'Lavalleja', 'LA', 0),
(3695, 225, 'Maldonado', 'MA', 0),
(3696, 225, 'Montevideo', 'MO', 0),
(3697, 225, 'Paysandu', 'PA', 0),
(3698, 225, 'Rio Negro', 'RN', 0),
(3699, 225, 'Rivera', 'RV', 0),
(3700, 225, 'Rocha', 'RO', 0),
(3701, 225, 'Salto', 'SL', 0),
(3702, 225, 'San Jose', 'SJ', 0),
(3703, 225, 'Soriano', 'SO', 0),
(3704, 225, 'Tacuarembo', 'TA', 0),
(3705, 225, 'Treinta y Tres', 'TT', 0),
(3706, 226, 'Andijon', 'AN', 0),
(3707, 226, 'Buxoro', 'BU', 0),
(3708, 226, 'Farg\'ona', 'FA', 0),
(3709, 226, 'Jizzax', 'JI', 0),
(3710, 226, 'Namangan', 'NG', 0),
(3711, 226, 'Navoiy', 'NW', 0),
(3712, 226, 'Qashqadaryo', 'QA', 0),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 0),
(3714, 226, 'Samarqand', 'SA', 0),
(3715, 226, 'Sirdaryo', 'SI', 0),
(3716, 226, 'Surxondaryo', 'SU', 0),
(3717, 226, 'Toshkent City', 'TK', 0),
(3718, 226, 'Toshkent Region', 'TO', 0),
(3719, 226, 'Xorazm', 'XO', 0),
(3720, 227, 'Malampa', 'MA', 0),
(3721, 227, 'Penama', 'PE', 0),
(3722, 227, 'Sanma', 'SA', 0),
(3723, 227, 'Shefa', 'SH', 0),
(3724, 227, 'Tafea', 'TA', 0),
(3725, 227, 'Torba', 'TO', 0),
(3726, 229, 'Amazonas', 'AM', 0),
(3727, 229, 'Anzoategui', 'AN', 0),
(3728, 229, 'Apure', 'AP', 0),
(3729, 229, 'Aragua', 'AR', 0),
(3730, 229, 'Barinas', 'BA', 0),
(3731, 229, 'Bolivar', 'BO', 0),
(3732, 229, 'Carabobo', 'CA', 0),
(3733, 229, 'Cojedes', 'CO', 0),
(3734, 229, 'Delta Amacuro', 'DA', 0),
(3735, 229, 'Dependencias Federales', 'DF', 0),
(3736, 229, 'Distrito Federal', 'DI', 0),
(3737, 229, 'Falcon', 'FA', 0),
(3738, 229, 'Guarico', 'GU', 0),
(3739, 229, 'Lara', 'LA', 0),
(3740, 229, 'Merida', 'ME', 0),
(3741, 229, 'Miranda', 'MI', 0),
(3742, 229, 'Monagas', 'MO', 0),
(3743, 229, 'Nueva Esparta', 'NE', 0),
(3744, 229, 'Portuguesa', 'PO', 0),
(3745, 229, 'Sucre', 'SU', 0),
(3746, 229, 'Tachira', 'TA', 0),
(3747, 229, 'Trujillo', 'TR', 0),
(3748, 229, 'Vargas', 'VA', 0),
(3749, 229, 'Yaracuy', 'YA', 0),
(3750, 229, 'Zulia', 'ZU', 0),
(3751, 230, 'An Giang', 'AG', 0),
(3752, 230, 'Bac Giang', 'BG', 0),
(3753, 230, 'Bac Kan', 'BK', 0),
(3754, 230, 'Bac Lieu', 'BL', 0),
(3755, 230, 'Bac Ninh', 'BC', 0),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 0),
(3757, 230, 'Ben Tre', 'BN', 0),
(3758, 230, 'Binh Dinh', 'BH', 0),
(3759, 230, 'Binh Duong', 'BU', 0),
(3760, 230, 'Binh Phuoc', 'BP', 0),
(3761, 230, 'Binh Thuan', 'BT', 0),
(3762, 230, 'Ca Mau', 'CM', 0),
(3763, 230, 'Can Tho', 'CT', 0),
(3764, 230, 'Cao Bang', 'CB', 0),
(3765, 230, 'Dak Lak', 'DL', 0),
(3766, 230, 'Dak Nong', 'DG', 0),
(3767, 230, 'Da Nang', 'DN', 0),
(3768, 230, 'Dien Bien', 'DB', 0),
(3769, 230, 'Dong Nai', 'DI', 0),
(3770, 230, 'Dong Thap', 'DT', 0),
(3771, 230, 'Gia Lai', 'GL', 0),
(3772, 230, 'Ha Giang', 'HG', 0),
(3773, 230, 'Hai Duong', 'HD', 0),
(3774, 230, 'Hai Phong', 'HP', 0),
(3775, 230, 'Ha Nam', 'HM', 0),
(3776, 230, 'Ha Noi', 'HI', 0),
(3777, 230, 'Ha Tay', 'HT', 0),
(3778, 230, 'Ha Tinh', 'HH', 0),
(3779, 230, 'Hoa Binh', 'HB', 0),
(3780, 230, 'Ho Chi Minh City', 'HC', 0),
(3781, 230, 'Hau Giang', 'HU', 0),
(3782, 230, 'Hung Yen', 'HY', 0),
(3783, 232, 'Saint Croix', 'C', 0),
(3784, 232, 'Saint John', 'J', 0),
(3785, 232, 'Saint Thomas', 'T', 0),
(3786, 233, 'Alo', 'A', 0),
(3787, 233, 'Sigave', 'S', 0),
(3788, 233, 'Wallis', 'W', 0),
(3789, 235, 'Abyan', 'AB', 0),
(3790, 235, 'Adan', 'AD', 0),
(3791, 235, 'Amran', 'AM', 0),
(3792, 235, 'Al Bayda', 'BA', 0),
(3793, 235, 'Ad Dali', 'DA', 0),
(3794, 235, 'Dhamar', 'DH', 0),
(3795, 235, 'Hadramawt', 'HD', 0),
(3796, 235, 'Hajjah', 'HJ', 0),
(3797, 235, 'Al Hudaydah', 'HU', 0),
(3798, 235, 'Ibb', 'IB', 0),
(3799, 235, 'Al Jawf', 'JA', 0),
(3800, 235, 'Lahij', 'LA', 0),
(3801, 235, 'Ma\'rib', 'MA', 0),
(3802, 235, 'Al Mahrah', 'MR', 0),
(3803, 235, 'Al Mahwit', 'MW', 0),
(3804, 235, 'Sa\'dah', 'SD', 0),
(3805, 235, 'San\'a', 'SN', 0),
(3806, 235, 'Shabwah', 'SH', 0),
(3807, 235, 'Ta\'izz', 'TA', 0),
(3812, 237, 'Bas-Congo', 'BC', 0),
(3813, 237, 'Bandundu', 'BN', 0),
(3814, 237, 'Equateur', 'EQ', 0),
(3815, 237, 'Katanga', 'KA', 0),
(3816, 237, 'Kasai-Oriental', 'KE', 0),
(3817, 237, 'Kinshasa', 'KN', 0),
(3818, 237, 'Kasai-Occidental', 'KW', 0),
(3819, 237, 'Maniema', 'MA', 0),
(3820, 237, 'Nord-Kivu', 'NK', 0),
(3821, 237, 'Orientale', 'OR', 0),
(3822, 237, 'Sud-Kivu', 'SK', 0),
(3823, 238, 'Central', 'CE', 0),
(3824, 238, 'Copperbelt', 'CB', 0),
(3825, 238, 'Eastern', 'EA', 0),
(3826, 238, 'Luapula', 'LP', 0),
(3827, 238, 'Lusaka', 'LK', 0),
(3828, 238, 'Northern', 'NO', 0),
(3829, 238, 'North-Western', 'NW', 0),
(3830, 238, 'Southern', 'SO', 0),
(3831, 238, 'Western', 'WE', 0),
(3832, 239, 'Bulawayo', 'BU', 0),
(3833, 239, 'Harare', 'HA', 0),
(3834, 239, 'Manicaland', 'ML', 0),
(3835, 239, 'Mashonaland Central', 'MC', 0),
(3836, 239, 'Mashonaland East', 'ME', 0),
(3837, 239, 'Mashonaland West', 'MW', 0),
(3838, 239, 'Masvingo', 'MV', 0),
(3839, 239, 'Matabeleland North', 'MN', 0),
(3840, 239, 'Matabeleland South', 'MS', 0),
(3841, 239, 'Midlands', 'MD', 0),
(3861, 105, 'Campobasso', 'CB', 0),
(3863, 105, 'Caserta', 'CE', 0),
(3864, 105, 'Catania', 'CT', 0),
(3865, 105, 'Catanzaro', 'CZ', 0),
(3866, 105, 'Chieti', 'CH', 0),
(3867, 105, 'Como', 'CO', 0),
(3868, 105, 'Cosenza', 'CS', 0),
(3869, 105, 'Cremona', 'CR', 0),
(3870, 105, 'Crotone', 'KR', 0),
(3871, 105, 'Cuneo', 'CN', 0),
(3872, 105, 'Enna', 'EN', 0),
(3873, 105, 'Ferrara', 'FE', 0),
(3874, 105, 'Firenze', 'FI', 0),
(3875, 105, 'Foggia', 'FG', 0),
(3876, 105, 'Forli-Cesena', 'FC', 0),
(3877, 105, 'Frosinone', 'FR', 0),
(3878, 105, 'Genova', 'GE', 0),
(3879, 105, 'Gorizia', 'GO', 0),
(3880, 105, 'Grosseto', 'GR', 0),
(3881, 105, 'Imperia', 'IM', 0),
(3882, 105, 'Isernia', 'IS', 0),
(3883, 105, 'L&#39;Aquila', 'AQ', 0),
(3884, 105, 'La Spezia', 'SP', 0),
(3885, 105, 'Latina', 'LT', 0),
(3886, 105, 'Lecce', 'LE', 0),
(3887, 105, 'Lecco', 'LC', 0),
(3888, 105, 'Livorno', 'LI', 0),
(3889, 105, 'Lodi', 'LO', 0),
(3890, 105, 'Lucca', 'LU', 0),
(3891, 105, 'Macerata', 'MC', 0),
(3892, 105, 'Mantova', 'MN', 0),
(3893, 105, 'Massa-Carrara', 'MS', 0),
(3894, 105, 'Matera', 'MT', 0),
(3896, 105, 'Messina', 'ME', 0),
(3897, 105, 'Milano', 'MI', 0),
(3898, 105, 'Modena', 'MO', 0),
(3899, 105, 'Napoli', 'NA', 0),
(3900, 105, 'Novara', 'NO', 0),
(3901, 105, 'Nuoro', 'NU', 0),
(3904, 105, 'Oristano', 'OR', 0),
(3905, 105, 'Padova', 'PD', 0),
(3906, 105, 'Palermo', 'PA', 0),
(3907, 105, 'Parma', 'PR', 0),
(3908, 105, 'Pavia', 'PV', 0),
(3909, 105, 'Perugia', 'PG', 0),
(3910, 105, 'Pesaro e Urbino', 'PU', 0),
(3911, 105, 'Pescara', 'PE', 0),
(3912, 105, 'Piacenza', 'PC', 0),
(3913, 105, 'Pisa', 'PI', 0),
(3914, 105, 'Pistoia', 'PT', 0),
(3915, 105, 'Pordenone', 'PN', 0),
(3916, 105, 'Potenza', 'PZ', 0),
(3917, 105, 'Prato', 'PO', 0),
(3918, 105, 'Ragusa', 'RG', 0),
(3919, 105, 'Ravenna', 'RA', 0),
(3920, 105, 'Reggio Calabria', 'RC', 0),
(3921, 105, 'Reggio Emilia', 'RE', 0),
(3922, 105, 'Rieti', 'RI', 0),
(3923, 105, 'Rimini', 'RN', 0),
(3924, 105, 'Roma', 'RM', 0),
(3925, 105, 'Rovigo', 'RO', 0),
(3926, 105, 'Salerno', 'SA', 0),
(3927, 105, 'Sassari', 'SS', 0),
(3928, 105, 'Savona', 'SV', 0),
(3929, 105, 'Siena', 'SI', 0),
(3930, 105, 'Siracusa', 'SR', 0),
(3931, 105, 'Sondrio', 'SO', 0),
(3932, 105, 'Taranto', 'TA', 0),
(3933, 105, 'Teramo', 'TE', 0),
(3934, 105, 'Terni', 'TR', 0),
(3935, 105, 'Torino', 'TO', 0),
(3936, 105, 'Trapani', 'TP', 0),
(3937, 105, 'Trento', 'TN', 0),
(3938, 105, 'Treviso', 'TV', 0),
(3939, 105, 'Trieste', 'TS', 0),
(3940, 105, 'Udine', 'UD', 0),
(3941, 105, 'Varese', 'VA', 0),
(3942, 105, 'Venezia', 'VE', 0),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 0),
(3944, 105, 'Vercelli', 'VC', 0),
(3945, 105, 'Verona', 'VR', 0),
(3946, 105, 'Vibo Valentia', 'VV', 0),
(3947, 105, 'Vicenza', 'VI', 0),
(3948, 105, 'Viterbo', 'VT', 0),
(3949, 222, 'County Antrim', 'ANT', 0),
(3950, 222, 'County Armagh', 'ARM', 0),
(3951, 222, 'County Down', 'DOW', 0),
(3952, 222, 'County Fermanagh', 'FER', 0),
(3953, 222, 'County Londonderry', 'LDY', 0),
(3954, 222, 'County Tyrone', 'TYR', 0),
(3955, 222, 'Cumbria', 'CMA', 0),
(3956, 190, 'Pomurska', '1', 0),
(3957, 190, 'Podravska', '2', 0),
(3958, 190, 'Koroška', '3', 0),
(3959, 190, 'Savinjska', '4', 0),
(3960, 190, 'Zasavska', '5', 0),
(3961, 190, 'Spodnjeposavska', '6', 0),
(3962, 190, 'Jugovzhodna Slovenija', '7', 0),
(3963, 190, 'Osrednjeslovenska', '8', 0),
(3964, 190, 'Gorenjska', '9', 0),
(3965, 190, 'Notranjsko-kraška', '10', 0),
(3966, 190, 'Goriška', '11', 0),
(3967, 190, 'Obalno-kraška', '12', 0),
(3968, 33, 'Ruse', '', 0),
(3969, 101, 'Alborz', 'ALB', 0),
(3970, 21, 'Brussels-Capital Region', 'BRU', 0),
(3971, 138, 'Aguascalientes', 'AG', 0),
(3973, 242, 'Andrijevica', '01', 0),
(3974, 242, 'Bar', '02', 0),
(3975, 242, 'Berane', '03', 0),
(3976, 242, 'Bijelo Polje', '04', 0),
(3977, 242, 'Budva', '05', 0),
(3978, 242, 'Cetinje', '06', 0),
(3979, 242, 'Danilovgrad', '07', 0),
(3980, 242, 'Herceg-Novi', '08', 0),
(3981, 242, 'Kolašin', '09', 0),
(3982, 242, 'Kotor', '10', 0),
(3983, 242, 'Mojkovac', '11', 0),
(3984, 242, 'Nikšić', '12', 0),
(3985, 242, 'Plav', '13', 0),
(3986, 242, 'Pljevlja', '14', 0),
(3987, 242, 'Plužine', '15', 0),
(3988, 242, 'Podgorica', '16', 0),
(3989, 242, 'Rožaje', '17', 0),
(3990, 242, 'Šavnik', '18', 0),
(3991, 242, 'Tivat', '19', 0),
(3992, 242, 'Ulcinj', '20', 0),
(3993, 242, 'Žabljak', '21', 0),
(3994, 243, 'Belgrade', '00', 0),
(3995, 243, 'North Bačka', '01', 0),
(3996, 243, 'Central Banat', '02', 0),
(3997, 243, 'North Banat', '03', 0),
(3998, 243, 'South Banat', '04', 0),
(3999, 243, 'West Bačka', '05', 0),
(4000, 243, 'South Bačka', '06', 0),
(4001, 243, 'Srem', '07', 0),
(4002, 243, 'Mačva', '08', 0),
(4003, 243, 'Kolubara', '09', 0),
(4004, 243, 'Podunavlje', '10', 0),
(4005, 243, 'Braničevo', '11', 0),
(4006, 243, 'Šumadija', '12', 0),
(4007, 243, 'Pomoravlje', '13', 0),
(4008, 243, 'Bor', '14', 0),
(4009, 243, 'Zaječar', '15', 0),
(4010, 243, 'Zlatibor', '16', 0),
(4011, 243, 'Moravica', '17', 0),
(4012, 243, 'Raška', '18', 0),
(4013, 243, 'Rasina', '19', 0),
(4014, 243, 'Nišava', '20', 0),
(4015, 243, 'Toplica', '21', 0),
(4016, 243, 'Pirot', '22', 0),
(4017, 243, 'Jablanica', '23', 0),
(4018, 243, 'Pčinja', '24', 0),
(4020, 245, 'Bonaire', 'BO', 0),
(4021, 245, 'Saba', 'SA', 0),
(4022, 245, 'Sint Eustatius', 'SE', 0),
(4023, 248, 'Central Equatoria', 'EC', 0),
(4024, 248, 'Eastern Equatoria', 'EE', 0),
(4025, 248, 'Jonglei', 'JG', 0),
(4026, 248, 'Lakes', 'LK', 0),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 0),
(4028, 248, 'Unity', 'UY', 0),
(4029, 248, 'Upper Nile', 'NU', 0),
(4030, 248, 'Warrap', 'WR', 0),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 0),
(4032, 248, 'Western Equatoria', 'EW', 0),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 0),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 0),
(4038, 117, 'Aizkraukles novads', '0320200', 0),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 0),
(4040, 117, 'Aizputes novads', '0640600', 0),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 0),
(4042, 117, 'Aknīstes novads', '0560800', 0),
(4043, 117, 'Aloja, Alojas novads', '0661007', 0),
(4044, 117, 'Alojas novads', '0661000', 0),
(4045, 117, 'Alsungas novads', '0624200', 0),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 0),
(4047, 117, 'Alūksnes novads', '0360200', 0),
(4048, 117, 'Amatas novads', '0424701', 0),
(4049, 117, 'Ape, Apes novads', '0360805', 0),
(4050, 117, 'Apes novads', '0360800', 0),
(4051, 117, 'Auce, Auces novads', '0460805', 0),
(4052, 117, 'Auces novads', '0460800', 0),
(4053, 117, 'Ādažu novads', '0804400', 0),
(4054, 117, 'Babītes novads', '0804900', 0),
(4055, 117, 'Baldone, Baldones novads', '0800605', 0),
(4056, 117, 'Baldones novads', '0800600', 0),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 0),
(4058, 117, 'Baltinavas novads', '0384400', 0),
(4059, 117, 'Balvi, Balvu novads', '0380201', 0),
(4060, 117, 'Balvu novads', '0380200', 0),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 0),
(4062, 117, 'Bauskas novads', '0400200', 0),
(4063, 117, 'Beverīnas novads', '0964700', 0),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 0),
(4065, 117, 'Brocēnu novads', '0840601', 0),
(4066, 117, 'Burtnieku novads', '0967101', 0),
(4067, 117, 'Carnikavas novads', '0805200', 0),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 0),
(4069, 117, 'Cesvaines novads', '0700800', 0),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 0),
(4071, 117, 'Cēsu novads', '0420200', 0),
(4072, 117, 'Ciblas novads', '0684901', 0),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 0),
(4074, 117, 'Dagdas novads', '0601000', 0),
(4075, 117, 'Daugavpils', '0050000', 0),
(4076, 117, 'Daugavpils novads', '0440200', 0),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 0),
(4078, 117, 'Dobeles novads', '0460200', 0),
(4079, 117, 'Dundagas novads', '0885100', 0),
(4080, 117, 'Durbe, Durbes novads', '0640807', 0),
(4081, 117, 'Durbes novads', '0640801', 0),
(4082, 117, 'Engures novads', '0905100', 0),
(4083, 117, 'Ērgļu novads', '0705500', 0),
(4084, 117, 'Garkalnes novads', '0806000', 0),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 0),
(4086, 117, 'Grobiņas novads', '0641000', 0),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 0),
(4088, 117, 'Gulbenes novads', '0500200', 0),
(4089, 117, 'Iecavas novads', '0406400', 0),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 0),
(4091, 117, 'Ikšķiles novads', '0740600', 0),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 0),
(4093, 117, 'Ilūkstes novads', '0440801', 0),
(4094, 117, 'Inčukalna novads', '0801800', 0),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 0),
(4096, 117, 'Jaunjelgavas novads', '0321000', 0),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 0),
(4098, 117, 'Jaunpils novads', '0905700', 0),
(4099, 117, 'Jelgava', '0090000', 0),
(4100, 117, 'Jelgavas novads', '0540200', 0),
(4101, 117, 'Jēkabpils', '0110000', 0),
(4102, 117, 'Jēkabpils novads', '0560200', 0),
(4103, 117, 'Jūrmala', '0130000', 0),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 0),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 0),
(4106, 117, 'Kandavas novads', '0901201', 0),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 0),
(4108, 117, 'Kārsavas novads', '0681000', 0),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 0),
(4110, 117, 'Kokneses novads', '0326100', 0),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 0),
(4112, 117, 'Krāslavas novads', '0600202', 0),
(4113, 117, 'Krimuldas novads', '0806900', 0),
(4114, 117, 'Krustpils novads', '0566900', 0),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 0),
(4116, 117, 'Kuldīgas novads', '0620200', 0),
(4117, 117, 'Ķeguma novads', '0741001', 0),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 0),
(4119, 117, 'Ķekavas novads', '0800800', 0),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 0),
(4121, 117, 'Lielvārdes novads', '0741401', 0),
(4122, 117, 'Liepāja', '0170000', 0),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 0),
(4124, 117, 'Limbažu novads', '0660200', 0),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 0),
(4126, 117, 'Līgatnes novads', '0421200', 0),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 0),
(4128, 117, 'Līvānu novads', '0761201', 0),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 0),
(4130, 117, 'Lubānas novads', '0701400', 0),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 0),
(4132, 117, 'Ludzas novads', '0680200', 0),
(4133, 117, 'Madona, Madonas novads', '0700201', 0),
(4134, 117, 'Madonas novads', '0700200', 0),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 0),
(4136, 117, 'Mazsalacas novads', '0961000', 0),
(4137, 117, 'Mālpils novads', '0807400', 0),
(4138, 117, 'Mārupes novads', '0807600', 0),
(4139, 117, 'Mērsraga novads', '0887600', 0),
(4140, 117, 'Naukšēnu novads', '0967300', 0),
(4141, 117, 'Neretas novads', '0327100', 0),
(4142, 117, 'Nīcas novads', '0647900', 0),
(4143, 117, 'Ogre, Ogres novads', '0740201', 0),
(4144, 117, 'Ogres novads', '0740202', 0),
(4145, 117, 'Olaine, Olaines novads', '0801009', 0),
(4146, 117, 'Olaines novads', '0801000', 0),
(4147, 117, 'Ozolnieku novads', '0546701', 0),
(4148, 117, 'Pārgaujas novads', '0427500', 0),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 0),
(4150, 117, 'Pāvilostas novads', '0641401', 0),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 0),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 0),
(4153, 117, 'Pļaviņu novads', '0321400', 0),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 0),
(4155, 117, 'Preiļu novads', '0760202', 0),
(4156, 117, 'Priekule, Priekules novads', '0641615', 0),
(4157, 117, 'Priekules novads', '0641600', 0),
(4158, 117, 'Priekuļu novads', '0427300', 0),
(4159, 117, 'Raunas novads', '0427700', 0),
(4160, 117, 'Rēzekne', '0210000', 0),
(4161, 117, 'Rēzeknes novads', '0780200', 0),
(4162, 117, 'Riebiņu novads', '0766300', 0),
(4163, 117, 'Rīga', '0010000', 0),
(4164, 117, 'Rojas novads', '0888300', 0),
(4165, 117, 'Ropažu novads', '0808400', 0),
(4166, 117, 'Rucavas novads', '0648500', 0),
(4167, 117, 'Rugāju novads', '0387500', 0),
(4168, 117, 'Rundāles novads', '0407700', 0),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 0),
(4170, 117, 'Rūjienas novads', '0961600', 0),
(4171, 117, 'Sabile, Talsu novads', '0880213', 0),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 0),
(4173, 117, 'Salacgrīvas novads', '0661400', 0),
(4174, 117, 'Salas novads', '0568700', 0),
(4175, 117, 'Salaspils novads', '0801200', 0),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 0),
(4177, 117, 'Saldus novads', '0840200', 0),
(4178, 117, 'Saldus, Saldus novads', '0840201', 0),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 0),
(4180, 117, 'Saulkrastu novads', '0801400', 0),
(4181, 117, 'Seda, Strenču novads', '0941813', 0),
(4182, 117, 'Sējas novads', '0809200', 0),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 0),
(4184, 117, 'Siguldas novads', '0801601', 0),
(4185, 117, 'Skrīveru novads', '0328200', 0),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 0),
(4187, 117, 'Skrundas novads', '0621200', 0),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 0),
(4189, 117, 'Smiltenes novads', '0941600', 0),
(4190, 117, 'Staicele, Alojas novads', '0661017', 0),
(4191, 117, 'Stende, Talsu novads', '0880215', 0),
(4192, 117, 'Stopiņu novads', '0809600', 0),
(4193, 117, 'Strenči, Strenču novads', '0941817', 0),
(4194, 117, 'Strenču novads', '0941800', 0),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 0),
(4196, 117, 'Talsi, Talsu novads', '0880201', 0),
(4197, 117, 'Talsu novads', '0880200', 0),
(4198, 117, 'Tērvetes novads', '0468900', 0),
(4199, 117, 'Tukuma novads', '0900200', 0),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 0),
(4201, 117, 'Vaiņodes novads', '0649300', 0),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 0),
(4203, 117, 'Valka, Valkas novads', '0940201', 0),
(4204, 117, 'Valkas novads', '0940200', 0),
(4205, 117, 'Valmiera', '0250000', 0),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 0),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 0),
(4208, 117, 'Varakļānu novads', '0701800', 0),
(4209, 117, 'Vārkavas novads', '0769101', 0),
(4210, 117, 'Vecpiebalgas novads', '0429300', 0),
(4211, 117, 'Vecumnieku novads', '0409500', 0),
(4212, 117, 'Ventspils', '0270000', 0),
(4213, 117, 'Ventspils novads', '0980200', 0),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 0),
(4215, 117, 'Viesītes novads', '0561800', 0),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 0),
(4217, 117, 'Viļakas novads', '0381600', 0),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 0),
(4219, 117, 'Viļānu novads', '0781800', 0),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 0),
(4221, 117, 'Zilupes novads', '0681801', 0),
(4222, 43, 'Arica y Parinacota', 'AP', 0),
(4223, 43, 'Los Rios', 'LR', 0),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 0),
(4225, 118, 'Beirut', 'LB-BR', 0),
(4226, 118, 'Bekaa', 'LB-BE', 0),
(4227, 118, 'Mount Lebanon', 'LB-ML', 0),
(4228, 118, 'Nabatieh', 'LB-NB', 0),
(4229, 118, 'North', 'LB-NR', 0),
(4230, 118, 'South', 'LB-ST', 0),
(4231, 99, 'Telangana', 'TS', 0),
(4232, 44, 'Qinghai', 'QH', 0),
(4233, 100, 'Papua Barat', 'PB', 0),
(4234, 100, 'Sulawesi Barat', 'SR', 0),
(4235, 100, 'Kepulauan Riau', 'KR', 0),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 0),
(4237, 105, 'Fermo', 'FM', 0),
(4238, 105, 'Monza Brianza', 'MB', 0),
(4239, 134, 'Basse-Pointe', 'BP', 1),
(4240, 134, 'Bellefontaine', 'BF', 1),
(4241, 134, 'Case-Pilote', 'CP', 1),
(4242, 134, 'Ducos', 'DCS', 1),
(4243, 134, 'Fonds-Saint-Denis', 'FSD', 1),
(4244, 134, 'Fort-de-France', 'FDF', 1),
(4245, 134, 'Grand-Rivière', 'GR', 1),
(4246, 134, 'Gros-Morne', 'GM', 1),
(4247, 134, 'Ajoupa-Bouillon', 'AP', 1),
(4248, 134, 'Trinité', 'TNT', 1),
(4249, 134, 'Carbet', 'CBT', 1),
(4250, 134, 'Diamant', 'DM', 1),
(4251, 134, 'François', 'FRS', 1),
(4252, 134, 'Lamentin', 'LMT', 1),
(4253, 134, 'Lorrain', 'LRN', 1),
(4254, 134, 'Marigot', 'MRG', 1),
(4255, 134, 'Marin', 'MRN', 1),
(4256, 134, 'Morne-Rouge', 'MNG', 1),
(4257, 134, 'Morne-Vert', 'MNV', 1),
(4258, 134, 'Prêcheur', 'PRC', 1),
(4259, 134, 'Robert ', 'RBT', 1),
(4260, 134, 'Vauclin', 'VCL', 1),
(4261, 134, 'Anses-d\'Arlet', 'AA', 1),
(4262, 134, 'Trois-Ilets', 'TI', 1),
(4263, 134, 'Macouba', 'MCB', 1),
(4264, 134, 'Rivière-Pilote', 'RP', 1),
(4265, 134, 'Rivière-Salée', 'RS', 1),
(4266, 134, 'Saint-Esprit', 'SE', 1),
(4267, 134, 'Saint-Joseph', 'SJ', 1),
(4268, 134, 'Saint-Pierre', 'SP', 1),
(4269, 134, 'Sainte-Anne', 'SA', 1),
(4270, 134, 'Sainte-Luce', 'SL', 1),
(4271, 134, 'Sainte-Marie', 'SM', 1),
(4272, 134, 'Schœlcher', 'SH', 1);

-- --------------------------------------------------------

--
-- Structure de la table `migan_zone_to_geo_zone`
--

CREATE TABLE `migan_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migan_zone_to_geo_zone`
--

INSERT INTO `migan_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `migan_address`
--
ALTER TABLE `migan_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Index pour la table `migan_api`
--
ALTER TABLE `migan_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Index pour la table `migan_api_ip`
--
ALTER TABLE `migan_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Index pour la table `migan_api_session`
--
ALTER TABLE `migan_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Index pour la table `migan_attribute`
--
ALTER TABLE `migan_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Index pour la table `migan_attribute_description`
--
ALTER TABLE `migan_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Index pour la table `migan_attribute_group`
--
ALTER TABLE `migan_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Index pour la table `migan_attribute_group_description`
--
ALTER TABLE `migan_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Index pour la table `migan_banner`
--
ALTER TABLE `migan_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Index pour la table `migan_banner_image`
--
ALTER TABLE `migan_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Index pour la table `migan_cart`
--
ALTER TABLE `migan_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Index pour la table `migan_category`
--
ALTER TABLE `migan_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Index pour la table `migan_category_description`
--
ALTER TABLE `migan_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `migan_category_filter`
--
ALTER TABLE `migan_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Index pour la table `migan_category_path`
--
ALTER TABLE `migan_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Index pour la table `migan_category_to_layout`
--
ALTER TABLE `migan_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Index pour la table `migan_category_to_store`
--
ALTER TABLE `migan_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Index pour la table `migan_country`
--
ALTER TABLE `migan_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Index pour la table `migan_coupon`
--
ALTER TABLE `migan_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Index pour la table `migan_coupon_category`
--
ALTER TABLE `migan_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Index pour la table `migan_coupon_history`
--
ALTER TABLE `migan_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Index pour la table `migan_coupon_product`
--
ALTER TABLE `migan_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Index pour la table `migan_currency`
--
ALTER TABLE `migan_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Index pour la table `migan_customer`
--
ALTER TABLE `migan_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `migan_customer_activity`
--
ALTER TABLE `migan_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Index pour la table `migan_customer_affiliate`
--
ALTER TABLE `migan_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `migan_customer_approval`
--
ALTER TABLE `migan_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Index pour la table `migan_customer_group`
--
ALTER TABLE `migan_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Index pour la table `migan_customer_group_description`
--
ALTER TABLE `migan_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Index pour la table `migan_customer_history`
--
ALTER TABLE `migan_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Index pour la table `migan_customer_ip`
--
ALTER TABLE `migan_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Index pour la table `migan_customer_login`
--
ALTER TABLE `migan_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Index pour la table `migan_customer_online`
--
ALTER TABLE `migan_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Index pour la table `migan_customer_reward`
--
ALTER TABLE `migan_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Index pour la table `migan_customer_search`
--
ALTER TABLE `migan_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Index pour la table `migan_customer_transaction`
--
ALTER TABLE `migan_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Index pour la table `migan_customer_wishlist`
--
ALTER TABLE `migan_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Index pour la table `migan_custom_field`
--
ALTER TABLE `migan_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Index pour la table `migan_custom_field_customer_group`
--
ALTER TABLE `migan_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Index pour la table `migan_custom_field_description`
--
ALTER TABLE `migan_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Index pour la table `migan_custom_field_value`
--
ALTER TABLE `migan_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Index pour la table `migan_custom_field_value_description`
--
ALTER TABLE `migan_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Index pour la table `migan_download`
--
ALTER TABLE `migan_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Index pour la table `migan_download_description`
--
ALTER TABLE `migan_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Index pour la table `migan_event`
--
ALTER TABLE `migan_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Index pour la table `migan_extension`
--
ALTER TABLE `migan_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Index pour la table `migan_extension_install`
--
ALTER TABLE `migan_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Index pour la table `migan_extension_path`
--
ALTER TABLE `migan_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Index pour la table `migan_filter`
--
ALTER TABLE `migan_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Index pour la table `migan_filter_description`
--
ALTER TABLE `migan_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Index pour la table `migan_filter_group`
--
ALTER TABLE `migan_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Index pour la table `migan_filter_group_description`
--
ALTER TABLE `migan_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Index pour la table `migan_geo_zone`
--
ALTER TABLE `migan_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Index pour la table `migan_goodie`
--
ALTER TABLE `migan_goodie`
  ADD PRIMARY KEY (`goodie_id`);

--
-- Index pour la table `migan_goodie_couleur`
--
ALTER TABLE `migan_goodie_couleur`
  ADD PRIMARY KEY (`idcouleur`);

--
-- Index pour la table `migan_goodie_sexe`
--
ALTER TABLE `migan_goodie_sexe`
  ADD PRIMARY KEY (`idsexe`);

--
-- Index pour la table `migan_goodie_taille`
--
ALTER TABLE `migan_goodie_taille`
  ADD PRIMARY KEY (`idtaille`);

--
-- Index pour la table `migan_goodie_type`
--
ALTER TABLE `migan_goodie_type`
  ADD PRIMARY KEY (`idtype_lot`);

--
-- Index pour la table `migan_information`
--
ALTER TABLE `migan_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Index pour la table `migan_information_description`
--
ALTER TABLE `migan_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Index pour la table `migan_information_to_layout`
--
ALTER TABLE `migan_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Index pour la table `migan_information_to_store`
--
ALTER TABLE `migan_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Index pour la table `migan_language`
--
ALTER TABLE `migan_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `migan_layout`
--
ALTER TABLE `migan_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Index pour la table `migan_layout_module`
--
ALTER TABLE `migan_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Index pour la table `migan_layout_route`
--
ALTER TABLE `migan_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Index pour la table `migan_length_class`
--
ALTER TABLE `migan_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Index pour la table `migan_length_class_description`
--
ALTER TABLE `migan_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Index pour la table `migan_location`
--
ALTER TABLE `migan_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `migan_manufacturer`
--
ALTER TABLE `migan_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Index pour la table `migan_manufacturer_to_store`
--
ALTER TABLE `migan_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Index pour la table `migan_marketing`
--
ALTER TABLE `migan_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Index pour la table `migan_modification`
--
ALTER TABLE `migan_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Index pour la table `migan_module`
--
ALTER TABLE `migan_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Index pour la table `migan_option`
--
ALTER TABLE `migan_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Index pour la table `migan_option_description`
--
ALTER TABLE `migan_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Index pour la table `migan_option_value`
--
ALTER TABLE `migan_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Index pour la table `migan_option_value_description`
--
ALTER TABLE `migan_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Index pour la table `migan_order`
--
ALTER TABLE `migan_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `migan_order_goodie`
--
ALTER TABLE `migan_order_goodie`
  ADD KEY `goodie_id` (`goodie_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `migan_order_history`
--
ALTER TABLE `migan_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Index pour la table `migan_order_option`
--
ALTER TABLE `migan_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Index pour la table `migan_order_product`
--
ALTER TABLE `migan_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `migan_order_recurring`
--
ALTER TABLE `migan_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Index pour la table `migan_order_recurring_transaction`
--
ALTER TABLE `migan_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Index pour la table `migan_order_shipment`
--
ALTER TABLE `migan_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Index pour la table `migan_order_status`
--
ALTER TABLE `migan_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Index pour la table `migan_order_total`
--
ALTER TABLE `migan_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `migan_order_voucher`
--
ALTER TABLE `migan_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Index pour la table `migan_product`
--
ALTER TABLE `migan_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `migan_product_attribute`
--
ALTER TABLE `migan_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Index pour la table `migan_product_description`
--
ALTER TABLE `migan_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `migan_product_discount`
--
ALTER TABLE `migan_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `migan_product_filter`
--
ALTER TABLE `migan_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Index pour la table `migan_product_image`
--
ALTER TABLE `migan_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `migan_product_option`
--
ALTER TABLE `migan_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Index pour la table `migan_product_option_value`
--
ALTER TABLE `migan_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Index pour la table `migan_product_recurring`
--
ALTER TABLE `migan_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Index pour la table `migan_product_related`
--
ALTER TABLE `migan_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Index pour la table `migan_product_reward`
--
ALTER TABLE `migan_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Index pour la table `migan_product_special`
--
ALTER TABLE `migan_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `migan_product_to_category`
--
ALTER TABLE `migan_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `migan_product_to_download`
--
ALTER TABLE `migan_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Index pour la table `migan_product_to_layout`
--
ALTER TABLE `migan_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Index pour la table `migan_product_to_store`
--
ALTER TABLE `migan_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Index pour la table `migan_recette`
--
ALTER TABLE `migan_recette`
  ADD PRIMARY KEY (`recette_id`);

--
-- Index pour la table `migan_recette_image`
--
ALTER TABLE `migan_recette_image`
  ADD PRIMARY KEY (`recette_image_id`),
  ADD KEY `product_id` (`recette_id`);

--
-- Index pour la table `migan_recette_product`
--
ALTER TABLE `migan_recette_product`
  ADD PRIMARY KEY (`recette_id`,`product_id`);

--
-- Index pour la table `migan_recurring`
--
ALTER TABLE `migan_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Index pour la table `migan_recurring_description`
--
ALTER TABLE `migan_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Index pour la table `migan_return`
--
ALTER TABLE `migan_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Index pour la table `migan_return_action`
--
ALTER TABLE `migan_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Index pour la table `migan_return_history`
--
ALTER TABLE `migan_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Index pour la table `migan_return_reason`
--
ALTER TABLE `migan_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Index pour la table `migan_return_status`
--
ALTER TABLE `migan_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Index pour la table `migan_review`
--
ALTER TABLE `migan_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `migan_seo_url`
--
ALTER TABLE `migan_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Index pour la table `migan_session`
--
ALTER TABLE `migan_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Index pour la table `migan_setting`
--
ALTER TABLE `migan_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Index pour la table `migan_shipping_courier`
--
ALTER TABLE `migan_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Index pour la table `migan_statistics`
--
ALTER TABLE `migan_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Index pour la table `migan_stock_status`
--
ALTER TABLE `migan_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Index pour la table `migan_store`
--
ALTER TABLE `migan_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Index pour la table `migan_tax_class`
--
ALTER TABLE `migan_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Index pour la table `migan_tax_rate`
--
ALTER TABLE `migan_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Index pour la table `migan_tax_rate_to_customer_group`
--
ALTER TABLE `migan_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Index pour la table `migan_tax_rule`
--
ALTER TABLE `migan_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Index pour la table `migan_theme`
--
ALTER TABLE `migan_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Index pour la table `migan_translation`
--
ALTER TABLE `migan_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Index pour la table `migan_upload`
--
ALTER TABLE `migan_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Index pour la table `migan_user`
--
ALTER TABLE `migan_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `migan_user_group`
--
ALTER TABLE `migan_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Index pour la table `migan_voucher`
--
ALTER TABLE `migan_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Index pour la table `migan_voucher_history`
--
ALTER TABLE `migan_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Index pour la table `migan_voucher_theme`
--
ALTER TABLE `migan_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Index pour la table `migan_voucher_theme_description`
--
ALTER TABLE `migan_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Index pour la table `migan_weight_class`
--
ALTER TABLE `migan_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Index pour la table `migan_weight_class_description`
--
ALTER TABLE `migan_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Index pour la table `migan_zone`
--
ALTER TABLE `migan_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `migan_zone_to_geo_zone`
--
ALTER TABLE `migan_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `migan_address`
--
ALTER TABLE `migan_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT pour la table `migan_api`
--
ALTER TABLE `migan_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `migan_api_ip`
--
ALTER TABLE `migan_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migan_api_session`
--
ALTER TABLE `migan_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `migan_attribute`
--
ALTER TABLE `migan_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `migan_attribute_group`
--
ALTER TABLE `migan_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `migan_banner`
--
ALTER TABLE `migan_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `migan_banner_image`
--
ALTER TABLE `migan_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT pour la table `migan_cart`
--
ALTER TABLE `migan_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `migan_category`
--
ALTER TABLE `migan_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT pour la table `migan_country`
--
ALTER TABLE `migan_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT pour la table `migan_coupon`
--
ALTER TABLE `migan_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `migan_coupon_history`
--
ALTER TABLE `migan_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_coupon_product`
--
ALTER TABLE `migan_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_currency`
--
ALTER TABLE `migan_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migan_customer`
--
ALTER TABLE `migan_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT pour la table `migan_customer_activity`
--
ALTER TABLE `migan_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `migan_customer_approval`
--
ALTER TABLE `migan_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `migan_customer_group`
--
ALTER TABLE `migan_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `migan_customer_history`
--
ALTER TABLE `migan_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_customer_ip`
--
ALTER TABLE `migan_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `migan_customer_login`
--
ALTER TABLE `migan_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `migan_customer_reward`
--
ALTER TABLE `migan_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_customer_search`
--
ALTER TABLE `migan_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_customer_transaction`
--
ALTER TABLE `migan_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `migan_custom_field`
--
ALTER TABLE `migan_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `migan_custom_field_value`
--
ALTER TABLE `migan_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `migan_download`
--
ALTER TABLE `migan_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_event`
--
ALTER TABLE `migan_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `migan_extension`
--
ALTER TABLE `migan_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `migan_extension_install`
--
ALTER TABLE `migan_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `migan_extension_path`
--
ALTER TABLE `migan_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;
--
-- AUTO_INCREMENT pour la table `migan_filter`
--
ALTER TABLE `migan_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_filter_group`
--
ALTER TABLE `migan_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_geo_zone`
--
ALTER TABLE `migan_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `migan_goodie`
--
ALTER TABLE `migan_goodie`
  MODIFY `goodie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `migan_goodie_couleur`
--
ALTER TABLE `migan_goodie_couleur`
  MODIFY `idcouleur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `migan_goodie_sexe`
--
ALTER TABLE `migan_goodie_sexe`
  MODIFY `idsexe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migan_goodie_taille`
--
ALTER TABLE `migan_goodie_taille`
  MODIFY `idtaille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `migan_goodie_type`
--
ALTER TABLE `migan_goodie_type`
  MODIFY `idtype_lot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migan_information`
--
ALTER TABLE `migan_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `migan_language`
--
ALTER TABLE `migan_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `migan_layout`
--
ALTER TABLE `migan_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `migan_layout_module`
--
ALTER TABLE `migan_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT pour la table `migan_layout_route`
--
ALTER TABLE `migan_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT pour la table `migan_length_class`
--
ALTER TABLE `migan_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migan_location`
--
ALTER TABLE `migan_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_manufacturer`
--
ALTER TABLE `migan_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `migan_marketing`
--
ALTER TABLE `migan_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_modification`
--
ALTER TABLE `migan_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `migan_module`
--
ALTER TABLE `migan_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `migan_option`
--
ALTER TABLE `migan_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `migan_option_value`
--
ALTER TABLE `migan_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `migan_order`
--
ALTER TABLE `migan_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `migan_order_history`
--
ALTER TABLE `migan_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `migan_order_option`
--
ALTER TABLE `migan_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_order_product`
--
ALTER TABLE `migan_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `migan_order_recurring`
--
ALTER TABLE `migan_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_order_recurring_transaction`
--
ALTER TABLE `migan_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_order_shipment`
--
ALTER TABLE `migan_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_order_status`
--
ALTER TABLE `migan_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `migan_order_total`
--
ALTER TABLE `migan_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT pour la table `migan_order_voucher`
--
ALTER TABLE `migan_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_product`
--
ALTER TABLE `migan_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT pour la table `migan_product_discount`
--
ALTER TABLE `migan_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT pour la table `migan_product_image`
--
ALTER TABLE `migan_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2352;
--
-- AUTO_INCREMENT pour la table `migan_product_option`
--
ALTER TABLE `migan_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT pour la table `migan_product_option_value`
--
ALTER TABLE `migan_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `migan_product_reward`
--
ALTER TABLE `migan_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;
--
-- AUTO_INCREMENT pour la table `migan_product_special`
--
ALTER TABLE `migan_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT pour la table `migan_recette`
--
ALTER TABLE `migan_recette`
  MODIFY `recette_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `migan_recette_image`
--
ALTER TABLE `migan_recette_image`
  MODIFY `recette_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2368;
--
-- AUTO_INCREMENT pour la table `migan_recurring`
--
ALTER TABLE `migan_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_return`
--
ALTER TABLE `migan_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_return_action`
--
ALTER TABLE `migan_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migan_return_history`
--
ALTER TABLE `migan_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_return_reason`
--
ALTER TABLE `migan_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `migan_return_status`
--
ALTER TABLE `migan_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migan_review`
--
ALTER TABLE `migan_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_seo_url`
--
ALTER TABLE `migan_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=848;
--
-- AUTO_INCREMENT pour la table `migan_setting`
--
ALTER TABLE `migan_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1414;
--
-- AUTO_INCREMENT pour la table `migan_statistics`
--
ALTER TABLE `migan_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `migan_stock_status`
--
ALTER TABLE `migan_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `migan_store`
--
ALTER TABLE `migan_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_tax_class`
--
ALTER TABLE `migan_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `migan_tax_rate`
--
ALTER TABLE `migan_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT pour la table `migan_tax_rule`
--
ALTER TABLE `migan_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT pour la table `migan_theme`
--
ALTER TABLE `migan_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `migan_translation`
--
ALTER TABLE `migan_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `migan_upload`
--
ALTER TABLE `migan_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_user`
--
ALTER TABLE `migan_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migan_user_group`
--
ALTER TABLE `migan_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `migan_voucher`
--
ALTER TABLE `migan_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_voucher_history`
--
ALTER TABLE `migan_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migan_voucher_theme`
--
ALTER TABLE `migan_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `migan_weight_class`
--
ALTER TABLE `migan_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `migan_zone`
--
ALTER TABLE `migan_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4273;
--
-- AUTO_INCREMENT pour la table `migan_zone_to_geo_zone`
--
ALTER TABLE `migan_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
