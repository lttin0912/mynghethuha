-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2017 at 04:41 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oc_grand`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
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
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'minh', 'nguyễn', '', '15-12 t05 timecity', '', 'hai ba trung', '084', 222, 3525, ''),
(2, 2, 'demo', 'plaza', '', 'plaza', 'plaza', 'plaza', 'plaza', 222, 3519, ''),
(3, 3, 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza1234', 222, 3519, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
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
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'ACf52xtrxt4KpMIEBimwpsw56dLa88pgBpCYxnORIV5KfMlSm75ESwkDkNrLI3OwxYadrySWOtIcdrMfGcpySs6MOEAItgGroB6DUdGQXBlOz0Ka74nAciPEEksR3sHbpqvXGEwHVysMLZ9csMbtEUzGL0A6oLGWcIEnTUgSk9LwWetiBQXDcbyfyIW22zM1MEUfVwaPyaOKFq8gzO1uyyqgMyj3IHwMkgAe35ydiJX2RlI9pYskSbXzHRTMGQV8', 1, '2016-12-06 08:39:36', '2016-12-06 08:39:36'),
(2, 'Default', 'zXr03Atbc2TgLOuqd7WCvCwUULBjPnVJTBraZxXAqmN82ymda1IGmzro2WXWqUGXmWLQz1T5HU9aUpxFUO0D1uiyg0A0NCNkPVAzvkXssHLcUS8Th1y30VX6qo30kWJnoa4cwzKBZIlM2lrair5tDzgZcmkCjmUMPr5C7vgySbD5jaHTFpyEIq2zKHFlE1zUsUFZaw5qFEPiSlI2sN524sF2taLDx7rPVgciU3GB1MmOmuIUF8STsf9pJadErDEr', 1, '2017-02-14 01:56:46', '2017-02-14 01:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_article`
--

CREATE TABLE `oc_article` (
  `article_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article`
--

INSERT INTO `oc_article` (`article_id`, `sort_order`, `status`, `date_added`, `date_modified`, `image`, `author`) VALUES
(5, 11, 1, '2015-07-22 14:11:01', '2017-03-03 15:41:49', 'catalog/demo/img-block/blog3.jpg', 'towerthemes'),
(9, 6, 1, '2015-07-24 17:18:16', '2017-03-03 15:42:31', 'catalog/demo/img-block/blog2.jpg', 'towerthemes'),
(10, 7, 1, '2015-07-24 17:18:17', '2017-03-03 15:41:11', 'catalog/demo/img-block/blog3.jpg', 'towerthemes'),
(12, 9, 1, '2016-07-30 12:24:11', '2017-03-03 15:42:41', 'catalog/demo/img-block/blog1.jpg', 'towerthemes'),
(13, 10, 1, '2016-07-30 12:24:11', '2017-03-03 15:42:52', 'catalog/demo/img-block/blog2.jpg', 'towerthemes'),
(14, 1, 1, '2017-03-03 15:49:26', '2017-03-24 10:34:02', 'catalog/demo/img-block/blog4.jpg', ''),
(15, 1, 1, '2017-03-03 15:51:21', '2017-03-24 10:34:12', 'catalog/demo/img-block/blog5.jpg', ''),
(16, 1, 1, '2017-03-03 15:52:34', '2017-03-24 10:34:07', 'catalog/demo/img-block/blog6.jpg', ''),
(17, 1, 1, '2017-03-03 15:56:01', '2017-03-24 10:33:57', 'catalog/demo/img-block/blog5.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_description`
--

CREATE TABLE `oc_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `intro_text` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article_description`
--

INSERT INTO `oc_article_description` (`article_id`, `language_id`, `name`, `description`, `intro_text`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 1, 'Fram nonummy nibh euismod', '&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt. Lorem ipsum dolor sit amet, consectetuer...', 'Fram nonummy nibh euismod', '', ''),
(5, 2, 'Fram nonummy nibh euismod', '&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt. Lorem ipsum dolor sit amet, consectetuer...', 'Fram nonummy nibh euismod', '', ''),
(9, 1, 'Foluptate velit essecillum', '&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt. Lorem ipsum dolor sit amet, consectetuer...', 'Foluptate velit essecillum', '', ''),
(9, 2, 'Foluptate velit essecillum', '&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt. Lorem ipsum dolor sit amet, consectetuer...', 'Foluptate velit essecillum', '', ''),
(10, 1, 'The Annual Dining Sale has begun!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Find everything you need for modern dining - tables, chairs, stools,storage and accessories - and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'The Annual Dining Sale has begun!', '', ''),
(10, 2, 'The Annual Dining Sale has begun!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Find everything you need for modern dining - tables, chairs, stools,storage and accessories - and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'The Annual Dining Sale has begun!', '', ''),
(12, 1, 'Fashion Meets Furniture', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'Fashion Meets Furniture', '', ''),
(12, 2, 'Fashion Meets Furniture', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'Fashion Meets Furniture', '', ''),
(13, 1, 'Excepteur sint occaecat ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'Excepteur sint occaecat ', '', ''),
(13, 2, 'Excepteur sint occaecat ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'Excepteur sint occaecat ', '', ''),
(14, 1, 'The Annual Dining Sale has begun!', 'Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'The Annual Dining Sale has begun!', '', ''),
(14, 2, 'The Annual Dining Sale has begun!', 'Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'The Annual Dining Sale has begun!', '', ''),
(15, 1, 'Fashion Meets Degital', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'Fashion Meets Degital', '', ''),
(15, 2, 'Fashion Meets Degital', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'Fashion Meets Degital', '', ''),
(16, 1, 'Furniture Meets Fashion', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'Furniture Meets Fashion', '', ''),
(16, 2, 'Furniture Meets Fashion', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'The next vignette featured two colorful outfits inspired by Hans Christian Andersens character Gerda, who discovers an enchanted flower garden while looking for her friend Kay.', 'Furniture Meets Fashion', '', ''),
(17, 1, 'The Onnuel Xining Dale has begun!', 'Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'The Onnuel Xining Dale has begun!', '', ''),
(17, 2, 'The Onnuel Xining Dale has begun!', 'Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'Find everything you need for modern dining tables, chairs, stools, storage and accessories and save 15% during the Annual Dining Sale. The sale even includes the new Odin Extension Table.', 'The Onnuel Xining Dale has begun!', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_list`
--

CREATE TABLE `oc_article_list` (
  `article_list_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article_list`
--

INSERT INTO `oc_article_list` (`article_list_id`, `name`, `status`) VALUES
(44, 'Blog Home 1', 1),
(45, 'Blog Home 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_to_list`
--

CREATE TABLE `oc_article_to_list` (
  `article_list_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article_to_list`
--

INSERT INTO `oc_article_to_list` (`article_list_id`, `article_id`) VALUES
(44, 5),
(44, 10),
(44, 13),
(44, 12),
(44, 9),
(45, 15),
(45, 17),
(45, 16),
(45, 10),
(45, 14);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_to_store`
--

CREATE TABLE `oc_article_to_store` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_article_to_store`
--

INSERT INTO `oc_article_to_store` (`article_id`, `store_id`) VALUES
(11, 0),
(11, 5),
(1, 0),
(1, 1),
(1, 2),
(1, 3),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(7, 0),
(7, 1),
(7, 2),
(7, 3),
(8, 0),
(8, 1),
(8, 2),
(8, 3),
(10, 0),
(5, 0),
(9, 0),
(12, 0),
(13, 0),
(17, 0),
(17, 1),
(17, 2),
(14, 0),
(14, 1),
(14, 2),
(16, 0),
(16, 1),
(16, 2),
(15, 0),
(15, 1),
(15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, 'Manufacturers 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 0, '', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 0, '', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(125, 8, 1, 'Logo8', '', 'catalog/demo/manufacturer/7.png', 0),
(124, 8, 1, 'Logo7', '', 'catalog/demo/manufacturer/9.png', 0),
(123, 8, 1, 'Logo1', '', 'catalog/demo/manufacturer/8.png', 0),
(80, 7, 0, '', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(122, 8, 1, 'Logo2', '', 'catalog/demo/manufacturer/10.png', 0),
(121, 8, 1, 'Logo3', '', 'catalog/demo/manufacturer/9.png', 0),
(120, 8, 1, 'Logo4', '', 'catalog/demo/manufacturer/8.png', 0),
(119, 8, 1, 'Logo5', '', 'catalog/demo/manufacturer/7.png', 0),
(118, 8, 1, 'Logo6', '', 'catalog/demo/manufacturer/10.png', 0),
(126, 9, 1, 'Logo 1', '', 'catalog/demo/manufacturer/1.jpg', 0),
(127, 9, 1, 'Logo 2', '', 'catalog/demo/manufacturer/2.jpg', 0),
(128, 9, 1, 'Logo 3', '', 'catalog/demo/manufacturer/3.jpg', 0),
(129, 9, 1, 'Logo 4', '', 'catalog/demo/manufacturer/4.jpg', 0),
(130, 9, 1, 'Logo 5', '', 'catalog/demo/manufacturer/5.jpg', 0),
(131, 9, 1, 'Logo 6', '', 'catalog/demo/manufacturer/2.jpg', 0),
(132, 9, 1, 'Logo 7', '', 'catalog/demo/manufacturer/4.jpg', 0),
(133, 9, 1, 'Logo 8', '', 'catalog/demo/manufacturer/3.jpg', 0),
(134, 8, 2, 'Logo8', '', 'catalog/demo/manufacturer/7.png', 0),
(135, 8, 2, 'Logo7', '', 'catalog/demo/manufacturer/9.png', 0),
(136, 8, 2, 'Logo1', '', 'catalog/demo/manufacturer/8.png', 0),
(137, 8, 2, 'Logo2', '', 'catalog/demo/manufacturer/10.png', 0),
(138, 8, 2, 'Logo3', '', 'catalog/demo/manufacturer/9.png', 0),
(139, 8, 2, 'Logo4', '', 'catalog/demo/manufacturer/8.png', 0),
(140, 8, 2, 'Logo5', '', 'catalog/demo/manufacturer/7.png', 0),
(141, 8, 2, 'Logo6', '', 'catalog/demo/manufacturer/10.png', 0),
(142, 9, 2, 'Logo 1', '', 'catalog/demo/manufacturer/1.jpg', 0),
(143, 9, 2, 'Logo 2', '', 'catalog/demo/manufacturer/2.jpg', 0),
(144, 9, 2, 'Logo 3', '', 'catalog/demo/manufacturer/3.jpg', 0),
(145, 9, 2, 'Logo 4', '', 'catalog/demo/manufacturer/4.jpg', 0),
(146, 9, 2, 'Logo 5', '', 'catalog/demo/manufacturer/5.jpg', 0),
(147, 9, 2, 'Logo 6', '', 'catalog/demo/manufacturer/2.jpg', 0),
(148, 9, 2, 'Logo 7', '', 'catalog/demo/manufacturer/4.jpg', 0),
(149, 9, 2, 'Logo 8', '', 'catalog/demo/manufacturer/3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
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
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(10, 0, 2, '2ondr5nrik0i7249s7frhdfkk0', 44, 0, '[]', 1, '2017-03-23 11:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `homethumb_image` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `thumbnail_image`, `homethumb_image`, `featured`) VALUES
(172, '', 171, 0, 1, 0, 1, '2017-03-01 10:04:13', '2017-03-20 21:39:45', NULL, NULL, 0),
(173, '', 171, 0, 1, 0, 1, '2017-03-01 10:04:35', '2017-03-20 21:39:33', NULL, NULL, 0),
(163, '', 161, 0, 1, 0, 1, '2017-03-01 09:49:43', '2017-03-20 21:43:53', NULL, NULL, 0),
(164, '', 161, 0, 1, 0, 1, '2017-03-01 09:50:02', '2017-03-20 21:44:13', NULL, NULL, 0),
(165, '', 161, 0, 1, 0, 1, '2017-03-01 09:52:55', '2017-03-20 21:44:05', NULL, NULL, 0),
(166, 'catalog/demo/img-block/bg_header.jpg', 124, 0, 1, 0, 1, '2017-03-01 09:54:20', '2017-03-20 21:40:34', NULL, NULL, 0),
(167, '', 166, 0, 1, 0, 1, '2017-03-01 09:55:13', '2017-03-20 21:40:48', NULL, NULL, 0),
(168, '', 166, 0, 1, 0, 1, '2017-03-01 09:55:35', '2017-03-20 21:40:55', NULL, NULL, 0),
(169, '', 166, 0, 1, 0, 1, '2017-03-01 09:58:48', '2017-03-20 21:41:01', NULL, NULL, 0),
(170, '', 166, 0, 1, 0, 1, '2017-03-01 09:59:58', '2017-03-20 21:41:07', NULL, NULL, 0),
(171, 'catalog/demo/img-block/bg_header.jpg', 124, 0, 1, 0, 1, '2017-03-01 10:03:40', '2017-03-20 21:39:28', NULL, NULL, 0),
(160, '', 156, 0, 1, 0, 1, '2017-03-01 09:44:37', '2017-03-20 21:43:11', NULL, NULL, 0),
(159, '', 156, 0, 1, 0, 1, '2017-03-01 09:44:14', '2017-03-20 21:42:57', NULL, NULL, 0),
(158, '', 156, 0, 1, 0, 1, '2017-03-01 09:43:53', '2017-03-20 21:43:04', NULL, NULL, 0),
(162, '', 161, 0, 1, 0, 1, '2017-03-01 09:49:24', '2017-03-20 21:43:58', NULL, NULL, 0),
(161, 'catalog/demo/img-block/bg_header.jpg', 125, 0, 1, 0, 1, '2017-03-01 09:48:17', '2017-03-20 21:43:18', NULL, NULL, 0),
(147, '', 146, 0, 1, 0, 1, '2017-03-01 09:33:39', '2017-03-20 21:41:36', NULL, NULL, 0),
(148, '', 146, 0, 1, 0, 1, '2017-03-01 09:34:04', '2017-03-20 21:41:52', NULL, NULL, 0),
(149, '', 146, 0, 1, 0, 1, '2017-03-01 09:34:28', '2017-03-01 09:34:28', NULL, NULL, 0),
(150, '', 146, 0, 1, 0, 1, '2017-03-01 09:34:53', '2017-03-20 21:41:57', NULL, NULL, 0),
(151, 'catalog/demo/img-block/bg_header.jpg', 125, 0, 1, 0, 1, '2017-03-01 09:35:45', '2017-03-20 21:42:04', NULL, NULL, 0),
(152, '', 151, 0, 1, 0, 1, '2017-03-01 09:36:24', '2017-03-20 21:42:09', NULL, NULL, 0),
(153, '', 151, 0, 1, 0, 1, '2017-03-01 09:37:21', '2017-03-20 21:42:15', NULL, NULL, 0),
(154, '', 151, 0, 1, 0, 1, '2017-03-01 09:37:49', '2017-03-20 21:42:22', NULL, NULL, 0),
(155, '', 151, 0, 1, 0, 1, '2017-03-01 09:38:35', '2017-03-20 21:42:29', NULL, NULL, 0),
(156, 'catalog/demo/img-block/bg_header.jpg', 125, 0, 1, 0, 1, '2017-03-01 09:42:22', '2017-03-20 21:42:35', NULL, NULL, 0),
(157, '', 156, 0, 1, 0, 1, '2017-03-01 09:43:34', '2017-03-20 21:42:50', NULL, NULL, 0),
(127, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-02-27 14:25:38', '2017-03-20 21:44:31', 'catalog/demo/icon1/5-1.png', 'catalog/demo/icon1/5.png', 1),
(128, 'catalog/demo/img-block/bg_header.jpg', 123, 0, 1, 0, 1, '2017-03-01 09:13:50', '2017-03-20 21:35:57', NULL, NULL, 0),
(129, '', 128, 0, 1, 0, 1, '2017-03-01 09:15:02', '2017-03-20 21:36:11', NULL, NULL, 0),
(130, '', 128, 0, 1, 0, 1, '2017-03-01 09:15:21', '2017-03-20 21:36:30', NULL, NULL, 0),
(131, '', 128, 0, 1, 0, 1, '2017-03-01 09:16:00', '2017-03-20 21:36:18', NULL, NULL, 0),
(132, '', 128, 0, 1, 0, 1, '2017-03-01 09:16:22', '2017-03-20 21:36:24', NULL, NULL, 0),
(133, '', 128, 0, 1, 0, 1, '2017-03-01 09:19:32', '2017-03-20 21:36:04', NULL, NULL, 0),
(134, '', 123, 0, 1, 0, 1, '2017-03-01 09:20:27', '2017-03-20 21:38:34', NULL, NULL, 0),
(135, '', 134, 0, 1, 0, 1, '2017-03-01 09:21:21', '2017-03-20 21:38:41', NULL, NULL, 0),
(136, '', 134, 0, 1, 0, 1, '2017-03-01 09:21:42', '2017-03-20 21:39:02', NULL, NULL, 0),
(137, '', 134, 0, 1, 0, 1, '2017-03-01 09:22:06', '2017-03-20 21:38:48', NULL, NULL, 0),
(138, '', 134, 0, 1, 0, 1, '2017-03-01 09:23:50', '2017-03-20 21:39:15', NULL, NULL, 0),
(139, '', 134, 0, 1, 0, 1, '2017-03-01 09:25:02', '2017-03-20 21:39:09', NULL, NULL, 0),
(140, 'catalog/demo/img-block/bg_header.jpg', 123, 0, 1, 0, 1, '2017-03-01 09:27:37', '2017-03-20 21:36:37', NULL, NULL, 0),
(141, '', 140, 0, 1, 0, 1, '2017-03-01 09:28:09', '2017-03-20 21:37:47', NULL, NULL, 0),
(142, '', 140, 0, 1, 0, 1, '2017-03-01 09:28:34', '2017-03-20 21:37:34', NULL, NULL, 0),
(143, '', 140, 0, 1, 0, 1, '2017-03-01 09:28:54', '2017-03-20 21:37:11', NULL, NULL, 0),
(144, '', 140, 0, 1, 0, 1, '2017-03-01 09:30:06', '2017-03-20 21:36:58', NULL, NULL, 0),
(145, '', 140, 0, 1, 0, 1, '2017-03-01 09:30:24', '2017-03-20 21:36:44', NULL, NULL, 0),
(146, 'catalog/demo/img-block/bg_header.jpg', 125, 0, 1, 0, 1, '2017-03-01 09:32:20', '2017-03-20 21:41:29', NULL, NULL, 0),
(123, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-02-27 14:15:14', '2017-03-20 21:35:51', 'catalog/demo/icon1/6-1.png', 'catalog/demo/icon1/6.png', 1),
(124, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-02-27 14:17:20', '2017-03-20 21:39:23', 'catalog/demo/icon1/3-1.png', 'catalog/demo/icon1/3.png', 1),
(125, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-02-27 14:20:11', '2017-03-20 21:41:23', 'catalog/demo/icon1/1-1.png', 'catalog/demo/icon1/1.png', 1),
(126, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-02-27 14:22:37', '2017-03-20 21:41:13', 'catalog/demo/icon1/2-1.png', 'catalog/demo/icon1/2.png', 1),
(174, '', 171, 0, 1, 0, 1, '2017-03-01 10:04:55', '2017-03-20 21:39:39', NULL, NULL, 0),
(175, '', 171, 0, 1, 0, 1, '2017-03-01 10:05:28', '2017-03-20 21:39:51', NULL, NULL, 0),
(176, 'catalog/demo/img-block/bg_header.jpg', 124, 0, 1, 0, 1, '2017-03-01 10:06:45', '2017-03-20 21:39:57', NULL, NULL, 0),
(177, '', 176, 0, 1, 0, 1, '2017-03-01 10:07:13', '2017-03-20 21:40:12', NULL, NULL, 0),
(178, '', 176, 0, 1, 0, 1, '2017-03-01 10:07:32', '2017-03-20 21:40:27', NULL, NULL, 0),
(179, '', 176, 0, 1, 0, 1, '2017-03-01 10:07:52', '2017-03-20 21:40:19', NULL, NULL, 0),
(180, '', 176, 0, 1, 0, 1, '2017-03-01 10:08:11', '2017-03-20 21:40:06', NULL, NULL, 0),
(181, 'catalog/demo/img-block/bg_header.jpg', 127, 0, 1, 0, 1, '2017-03-01 10:09:02', '2017-03-20 21:44:36', NULL, NULL, 0),
(182, '', 181, 0, 1, 0, 1, '2017-03-01 10:09:27', '2017-03-20 21:45:02', NULL, NULL, 0),
(183, '', 181, 0, 1, 0, 1, '2017-03-01 10:09:49', '2017-03-20 21:44:56', NULL, NULL, 0),
(184, '', 181, 0, 1, 0, 1, '2017-03-01 10:10:08', '2017-03-20 21:44:51', NULL, NULL, 0),
(185, '', 181, 0, 1, 0, 1, '2017-03-01 10:10:28', '2017-03-20 21:44:45', NULL, NULL, 0),
(186, 'catalog/demo/img-block/bg_header.jpg', 127, 0, 1, 0, 1, '2017-03-01 10:12:45', '2017-03-20 21:45:09', NULL, NULL, 0),
(187, '', 186, 0, 1, 0, 1, '2017-03-01 10:13:27', '2017-03-20 21:45:18', NULL, NULL, 0),
(188, '', 186, 0, 1, 0, 1, '2017-03-01 10:13:48', '2017-03-20 21:45:26', NULL, NULL, 0),
(189, '', 186, 0, 1, 0, 1, '2017-03-01 10:14:06', '2017-03-20 21:45:39', NULL, NULL, 0),
(190, '', 186, 0, 1, 0, 1, '2017-03-01 10:14:26', '2017-03-20 21:45:45', NULL, NULL, 0),
(191, '', 0, 0, 1, 0, 1, '2017-03-17 16:39:42', '2017-03-20 21:35:45', 'catalog/demo/icon1/4-1.png', 'catalog/demo/icon1/4.png', 1),
(192, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-03-20 16:26:08', '2017-03-20 16:26:08', 'catalog/demo/icon/1-1.png', 'catalog/demo/icon/1.png', 1),
(193, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-03-20 16:47:44', '2017-03-20 16:47:44', 'catalog/demo/icon/3-1.png', 'catalog/demo/icon/3.png', 1),
(194, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-03-20 16:49:18', '2017-03-20 16:49:18', 'catalog/demo/icon/6-1.png', 'catalog/demo/icon/6.png', 1),
(195, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-03-20 16:51:04', '2017-03-20 16:51:04', 'catalog/demo/icon/5-1.png', 'catalog/demo/icon/5.png', 1),
(196, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-03-20 16:56:18', '2017-03-20 16:56:18', 'catalog/demo/icon/4-1.png', 'catalog/demo/icon/4.png', 1),
(197, 'catalog/demo/img-block/bg_header.jpg', 0, 0, 1, 0, 1, '2017-03-20 17:01:09', '2017-03-20 17:01:09', 'catalog/demo/icon/2-1.png', 'catalog/demo/icon/2.png', 1),
(198, 'catalog/demo/img-block/bg_header.jpg', 192, 0, 1, 0, 1, '2017-03-20 22:37:33', '2017-03-20 22:39:49', NULL, NULL, 0),
(199, '', 198, 0, 1, 0, 1, '2017-03-20 22:40:30', '2017-03-20 22:40:30', NULL, NULL, 0),
(200, 'catalog/demo/img-block/bg_header.jpg', 198, 0, 1, 0, 1, '2017-03-20 22:42:48', '2017-03-20 22:42:48', NULL, NULL, 0),
(201, '', 198, 0, 1, 0, 1, '2017-03-20 22:43:12', '2017-03-20 22:43:12', NULL, NULL, 0),
(202, '', 198, 0, 1, 0, 1, '2017-03-20 22:43:30', '2017-03-20 22:43:30', NULL, NULL, 0),
(203, '', 198, 0, 1, 0, 1, '2017-03-20 22:43:51', '2017-03-20 22:43:51', NULL, NULL, 0),
(204, 'catalog/demo/img-block/bg_header.jpg', 192, 0, 1, 0, 1, '2017-03-20 22:45:37', '2017-03-20 22:45:37', NULL, NULL, 0),
(205, '', 204, 0, 1, 0, 1, '2017-03-20 22:47:25', '2017-03-20 22:47:25', NULL, NULL, 0),
(206, '', 204, 0, 1, 0, 1, '2017-03-20 22:47:50', '2017-03-20 22:47:50', NULL, NULL, 0),
(207, '', 204, 0, 1, 0, 1, '2017-03-20 22:48:16', '2017-03-20 22:48:16', NULL, NULL, 0),
(208, '', 204, 0, 1, 0, 1, '2017-03-20 22:48:48', '2017-03-20 22:48:48', NULL, NULL, 0),
(209, '', 204, 0, 1, 0, 1, '2017-03-20 22:50:08', '2017-03-20 22:50:08', NULL, NULL, 0),
(210, 'catalog/demo/img-block/bg_header.jpg', 192, 0, 1, 0, 1, '2017-03-21 08:52:49', '2017-03-21 08:52:49', NULL, NULL, 0),
(211, '', 210, 0, 1, 0, 1, '2017-03-21 08:53:18', '2017-03-21 08:53:18', NULL, NULL, 0),
(212, '', 210, 0, 1, 0, 1, '2017-03-21 08:53:39', '2017-03-21 08:53:39', NULL, NULL, 0),
(213, '', 210, 0, 1, 0, 1, '2017-03-21 08:54:03', '2017-03-21 08:54:03', NULL, NULL, 0),
(214, '', 210, 0, 1, 0, 1, '2017-03-21 08:54:22', '2017-03-21 08:54:22', NULL, NULL, 0),
(215, '', 210, 0, 1, 0, 1, '2017-03-21 08:54:41', '2017-03-21 08:54:41', NULL, NULL, 0),
(216, 'catalog/demo/img-block/bg_header.jpg', 192, 0, 1, 0, 1, '2017-03-21 08:56:33', '2017-03-21 08:56:33', NULL, NULL, 0),
(217, '', 216, 0, 1, 0, 1, '2017-03-21 08:57:07', '2017-03-21 08:57:07', NULL, NULL, 0),
(218, '', 216, 0, 1, 0, 1, '2017-03-21 08:57:26', '2017-03-21 08:57:26', NULL, NULL, 0),
(219, '', 216, 0, 1, 0, 1, '2017-03-21 08:57:48', '2017-03-21 08:57:48', NULL, NULL, 0),
(220, '', 216, 0, 1, 0, 1, '2017-03-21 08:58:07', '2017-03-21 08:58:07', NULL, NULL, 0),
(221, '', 216, 0, 1, 0, 1, '2017-03-21 08:58:35', '2017-03-21 08:58:35', NULL, NULL, 0),
(222, 'catalog/demo/img-block/bg_header.jpg', 193, 0, 1, 0, 1, '2017-03-21 09:00:09', '2017-03-21 09:00:09', NULL, NULL, 0),
(223, '', 222, 0, 1, 0, 1, '2017-03-21 09:00:51', '2017-03-21 09:00:51', NULL, NULL, 0),
(224, '', 222, 0, 1, 0, 1, '2017-03-21 09:01:10', '2017-03-21 09:01:10', NULL, NULL, 0),
(225, '', 222, 0, 1, 0, 1, '2017-03-21 09:01:41', '2017-03-21 09:01:41', NULL, NULL, 0),
(226, '', 222, 0, 1, 0, 1, '2017-03-21 09:01:59', '2017-03-21 09:01:59', NULL, NULL, 0),
(227, 'catalog/demo/img-block/bg_header.jpg', 193, 0, 1, 0, 1, '2017-03-21 09:03:37', '2017-03-21 09:03:37', NULL, NULL, 0),
(228, '', 227, 0, 1, 0, 1, '2017-03-21 09:04:29', '2017-03-21 09:04:29', NULL, NULL, 0),
(229, '', 227, 0, 1, 0, 1, '2017-03-21 09:04:51', '2017-03-21 09:04:51', NULL, NULL, 0),
(230, '', 227, 0, 1, 0, 1, '2017-03-21 09:05:12', '2017-03-21 09:05:12', NULL, NULL, 0),
(231, '', 227, 0, 1, 0, 1, '2017-03-21 09:05:36', '2017-03-21 09:05:36', NULL, NULL, 0),
(232, 'catalog/demo/img-block/bg_header.jpg', 193, 0, 1, 0, 1, '2017-03-21 09:07:05', '2017-03-21 09:07:05', NULL, NULL, 0),
(233, '', 232, 0, 1, 0, 1, '2017-03-21 09:07:41', '2017-03-21 09:07:41', NULL, NULL, 0),
(234, '', 232, 0, 1, 0, 1, '2017-03-21 09:08:01', '2017-03-21 09:08:01', NULL, NULL, 0),
(235, '', 232, 0, 1, 0, 1, '2017-03-21 09:08:20', '2017-03-21 09:08:20', NULL, NULL, 0),
(236, '', 232, 0, 1, 0, 1, '2017-03-21 09:08:41', '2017-03-21 09:08:41', NULL, NULL, 0),
(237, 'catalog/demo/img-block/bg_header.jpg', 194, 0, 1, 0, 1, '2017-03-21 09:10:26', '2017-03-21 09:10:26', NULL, NULL, 0),
(238, '', 237, 0, 1, 0, 1, '2017-03-21 09:10:53', '2017-03-21 09:10:53', NULL, NULL, 0),
(239, '', 237, 0, 1, 0, 1, '2017-03-21 09:11:14', '2017-03-21 09:11:14', NULL, NULL, 0),
(240, '', 237, 0, 1, 0, 1, '2017-03-21 09:11:35', '2017-03-21 09:11:35', NULL, NULL, 0),
(241, '', 237, 0, 1, 0, 1, '2017-03-21 09:12:10', '2017-03-21 09:12:10', NULL, NULL, 0),
(242, 'catalog/demo/img-block/bg_header.jpg', 194, 0, 1, 0, 1, '2017-03-21 09:13:43', '2017-03-21 09:13:43', NULL, NULL, 0),
(243, '', 242, 0, 1, 0, 1, '2017-03-21 09:14:23', '2017-03-21 09:14:23', NULL, NULL, 0),
(244, '', 242, 0, 1, 0, 1, '2017-03-21 09:14:49', '2017-03-21 09:14:49', NULL, NULL, 0),
(245, '', 242, 0, 1, 0, 1, '2017-03-21 09:15:08', '2017-03-21 09:15:08', NULL, NULL, 0),
(246, '', 242, 0, 1, 0, 1, '2017-03-21 09:15:27', '2017-03-21 09:15:27', NULL, NULL, 0),
(247, 'catalog/demo/img-block/bg_header.jpg', 195, 0, 1, 0, 1, '2017-03-21 09:16:55', '2017-03-21 09:16:55', NULL, NULL, 0),
(248, '', 247, 0, 1, 0, 1, '2017-03-21 09:17:22', '2017-03-21 09:17:22', NULL, NULL, 0),
(249, '', 247, 0, 1, 0, 1, '2017-03-21 09:17:41', '2017-03-21 09:17:41', NULL, NULL, 0),
(250, '', 247, 0, 1, 0, 1, '2017-03-21 09:17:59', '2017-03-21 09:17:59', NULL, NULL, 0),
(251, '', 247, 0, 1, 0, 1, '2017-03-21 09:18:19', '2017-03-21 09:18:19', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(243, 1, 'Heeled sandals', '', 'Heeled sandals', '', ''),
(242, 2, 'Dining sets', '', 'Dining sets', '', ''),
(243, 2, 'Heeled sandals', '', 'Heeled sandals', '', ''),
(123, 1, 'Bedroom', '', 'Bedroom', '', ''),
(123, 2, 'Bedroom', '', 'Bedroom', '', ''),
(124, 2, 'Chair', '', 'Chair', '', ''),
(124, 1, 'Chair', '', 'Chair', '', ''),
(127, 2, 'Sofa', '', 'Sofa', '', ''),
(125, 2, 'Living room', '', 'Living room', '', ''),
(125, 1, 'Living room', '', 'Living room', '', ''),
(127, 1, 'Sofa', '', 'Sofa', '', ''),
(126, 1, 'Dining Room', '', 'Dining Room', '', ''),
(126, 2, 'Dining Room', '', 'Dining Room', '', ''),
(128, 2, 'Beds', '', 'Beds', '', ''),
(128, 1, 'Beds', '', 'Beds', '', ''),
(129, 2, 'Platform Beds', '', 'Platform Beds', '', ''),
(129, 1, 'Platform Beds', '', 'Platform Beds', '', ''),
(130, 2, 'Storage Beds', '', 'Storage Beds', '', ''),
(130, 1, 'Storage Beds', '', 'Storage Beds', '', ''),
(131, 2, 'Regular Beds', '', 'Regular Beds', '', ''),
(131, 1, 'Regular Beds', '', 'Regular Beds', '', ''),
(132, 2, 'Sleigh Beds', '', 'Sleigh Beds', '', ''),
(132, 1, 'Sleigh Beds', '', 'Sleigh Beds', '', ''),
(133, 2, 'Modern beds', '', 'Modern beds', '', ''),
(133, 1, 'Modern beds', '', 'Modern beds', '', ''),
(134, 2, 'Nightstands', '', 'Nightstands', '', ''),
(134, 1, 'Nightstands', '', 'Nightstands', '', ''),
(135, 2, 'Brown Finish', '', 'Brown Finish', '', ''),
(135, 1, 'Brown Finish', '', 'Brown Finish', '', ''),
(136, 1, 'Distressed', '', 'Distressed', '', ''),
(136, 2, 'Distressed', '', 'Distressed', '', ''),
(137, 2, 'Cherry Finish', '', 'Cherry Finish', '', ''),
(137, 1, 'Cherry Finish', '', 'Cherry Finish', '', ''),
(138, 2, 'Weathered', '', 'Weathered', '', ''),
(138, 1, 'Weathered', '', 'Weathered', '', ''),
(139, 2, 'Laundry', '', 'Laundry', '', ''),
(139, 1, 'Laundry', '', 'Laundry', '', ''),
(140, 2, 'Headboards', '', 'Headboards', '', ''),
(140, 1, 'Headboards', '', 'Headboards', '', ''),
(141, 2, 'Upholstered', '', 'Upholstered', '', ''),
(141, 1, 'Upholstered', '', 'Upholstered', '', ''),
(142, 1, 'Tufted', '', 'Tufted', '', ''),
(142, 2, 'Tufted', '', 'Tufted', '', ''),
(143, 1, 'Storage', '', 'Storage', '', ''),
(143, 2, 'Storage', '', 'Storage', '', ''),
(144, 2, 'Padded', '', 'Padded', '', ''),
(144, 1, 'Padded', '', 'Padded', '', ''),
(145, 2, 'Outdoor', '', 'Outdoor', '', ''),
(145, 1, 'Outdoor', '', 'Outdoor', '', ''),
(146, 2, 'Living Chairs', '', 'Living Chairs', '', ''),
(146, 1, 'Living Chairs', '', 'Living Chairs', '', ''),
(147, 2, 'Armchairs', '', 'Armchairs', '', ''),
(147, 1, 'Armchairs', '', 'Armchairs', '', ''),
(148, 2, 'Mattress', '', 'Mattress', '', ''),
(148, 1, 'Mattress', '', 'Mattress', '', ''),
(149, 1, 'Bunk bed', '', 'Bunk bed', '', ''),
(149, 2, 'Bunk bed', '', 'Bunk bed', '', ''),
(150, 2, 'Sideboard', '', 'Sideboard', '', ''),
(150, 1, 'Sideboard', '', 'Sideboard', '', ''),
(151, 2, 'Living Tables', '', 'Living Tables', '', ''),
(151, 1, 'Living Tables', '', 'Living Tables', '', ''),
(152, 2, 'Bedspread', '', 'Bedspread', '', ''),
(152, 1, 'Bedspread', '', 'Bedspread', '', ''),
(153, 2, 'Chest', '', 'Chest', '', ''),
(153, 1, 'Chest', '', 'Chest', '', ''),
(154, 2, 'Trunk', '', 'Trunk', '', ''),
(154, 1, 'Trunk', '', 'Trunk', '', ''),
(155, 2, 'Wardrobe', '', 'Wardrobe', '', ''),
(155, 1, 'Wardrobe', '', 'Wardrobe', '', ''),
(156, 2, 'Ottomans', '', 'Ottomans', '', ''),
(156, 1, 'Ottomans', '', 'Ottomans', '', ''),
(157, 1, 'Bootees Bags', '', 'Bootees Bags', '', ''),
(157, 2, 'Bootees Bags', '', 'Bootees Bags', '', ''),
(158, 2, 'Shelf', '', 'Shelf', '', ''),
(158, 1, 'Shelf', '', 'Shelf', '', ''),
(159, 2, 'Jackets', '', 'Jackets', '', ''),
(159, 1, 'Jackets', '', 'Jackets', '', ''),
(160, 2, 'Shoes', '', 'Shoes', '', ''),
(160, 1, 'Shoes', '', 'Shoes', '', ''),
(161, 2, 'Sink', '', 'Sink', '', ''),
(161, 1, 'Sink', '', 'Sink', '', ''),
(162, 1, 'Shorts', '', 'Shorts', '', ''),
(162, 2, 'Shorts', '', 'Shorts', '', ''),
(163, 1, 'Dresses', '', 'Dresses', '', ''),
(163, 2, 'Dresses', '', 'Dresses', '', ''),
(164, 2, 'Trousers', '', 'Trousers', '', ''),
(164, 1, 'Trousers', '', 'Trousers', '', ''),
(165, 2, 'Skirts', '', 'Skirts', '', ''),
(165, 1, 'Skirts', '', 'Skirts', '', ''),
(166, 2, 'Dining tables', '', 'Dining tables', '', ''),
(166, 1, 'Dining tables', '', 'Dining tables', '', ''),
(167, 1, 'Crochet', '', 'Crochet', '', ''),
(167, 2, 'Crochet', '', 'Crochet', '', ''),
(168, 2, 'Sleeveless', '', 'Sleeveless', '', ''),
(168, 1, 'Sleeveless', '', 'Sleeveless', '', ''),
(169, 2, 'Stripes', '', 'Stripes', '', ''),
(169, 1, 'Stripes', '', 'Stripes', '', ''),
(170, 2, 'Sweaters', '', 'Sweaters', '', ''),
(170, 1, 'Sweaters', '', 'Sweaters', '', ''),
(171, 2, 'Dining chairs', '', 'Dining chairs', '', ''),
(171, 1, 'Dining chairs', '', 'Dining chairs', '', ''),
(172, 2, 'Hoodies', '', 'Hoodies', '', ''),
(172, 1, 'Hoodies', '', 'Hoodies', '', ''),
(173, 2, 'Ankle', '', 'Ankle', '', ''),
(173, 1, 'Ankle', '', 'Ankle', '', ''),
(174, 2, 'Footwear', '', 'Footwear', '', ''),
(174, 1, 'Footwear', '', 'Footwear', '', ''),
(175, 2, 'Wedges', '', 'Wedges', '', ''),
(175, 1, 'Wedges', '', 'Wedges', '', ''),
(176, 2, 'Dining sets', '', 'Dining sets', '', ''),
(176, 1, 'Dining sets', '', 'Dining sets', '', ''),
(177, 2, 'Long Sleeve', '', 'Long Sleeve', '', ''),
(177, 1, 'Long Sleeve', '', 'Long Sleeve', '', ''),
(178, 2, 'Short Sleeve', '', 'Short Sleeve', '', ''),
(178, 1, 'Short Sleeve', '', 'Short Sleeve', '', ''),
(179, 2, 'Polo Short Sleeve', '', 'Polo Short Sleeve', '', ''),
(179, 1, 'Polo Short Sleeve', '', 'Polo Short Sleeve', '', ''),
(180, 2, 'Heeled sandals', '', 'Heeled sandals', '', ''),
(180, 1, 'Heeled sandals', '', 'Heeled sandals', '', ''),
(181, 2, 'Furniture', '', 'Furniture', '', ''),
(181, 1, 'Furniture', '', 'Furniture', '', ''),
(182, 2, 'Wood', '', 'Wood', '', ''),
(182, 1, 'Wood', '', 'Wood', '', ''),
(183, 2, 'Sofa', '', 'Sofa', '', ''),
(183, 1, 'Sofa', '', 'Sofa', '', ''),
(184, 2, 'Mahogany', '', 'Mahogany', '', ''),
(184, 1, 'Mahogany', '', 'Mahogany', '', ''),
(185, 2, 'Glass', '', 'Glass', '', ''),
(185, 1, 'Glass', '', 'Glass', '', ''),
(186, 2, 'Storage', '', 'Storage', '', ''),
(186, 1, 'Storage', '', 'Storage', '', ''),
(187, 2, 'Blazers', '', 'Blazers', '', ''),
(187, 1, 'Blazers', '', 'Blazers', '', ''),
(188, 2, 'Jackets', '', 'Jackets', '', ''),
(188, 1, 'Jackets', '', 'Jackets', '', ''),
(189, 1, 'Raincoats', '', 'Raincoats', '', ''),
(189, 2, 'Raincoats', '', 'Raincoats', '', ''),
(190, 2, 'Trousers', '', 'Trousers', '', ''),
(190, 1, 'Trousers', '', 'Trousers', '', ''),
(191, 2, 'Armchair', '', 'Armchair', '', ''),
(191, 1, 'Armchair', '', 'Armchair', '', ''),
(192, 1, 'Seating', '', 'Seating', '', ''),
(192, 2, 'Seating', '', 'Seating', '', ''),
(193, 1, 'Sleeping or lying', '', 'Sleeping or lying', '', ''),
(193, 2, 'Sleeping or lying', '', 'Sleeping or lying', '', ''),
(194, 1, 'Entertainment', '', 'Entertainment', '', ''),
(194, 2, 'Entertainment', '', 'Entertainment', '', ''),
(195, 1, 'Tables', '', 'Tables', '', ''),
(195, 2, 'Tables', '', 'Tables', '', ''),
(196, 1, 'Storage', '', 'Storage', '', ''),
(196, 2, 'Storage', '', 'Storage', '', ''),
(197, 1, 'Sets', '', 'Sets', '', ''),
(197, 2, 'Sets', '', 'Sets', '', ''),
(242, 1, 'Dining sets', '', 'Dining sets', '', ''),
(198, 1, 'Bedroom', '', 'Bedroom', '', ''),
(198, 2, 'Bedroom', '', 'Bedroom', '', ''),
(199, 1, 'Modern beds', '', 'Modern beds', '', ''),
(199, 2, 'Modern beds', '', 'Modern beds', '', ''),
(200, 1, 'Platform Beds', '', 'Platform Beds', '', ''),
(200, 2, 'Platform Beds', '', 'Platform Beds', '', ''),
(201, 1, 'Regular Beds', '', 'Regular Beds', '', ''),
(201, 2, 'Regular Beds', '', 'Regular Beds', '', ''),
(202, 1, 'Sleigh Beds', '', 'Sleigh Beds', '', ''),
(202, 2, 'Sleigh Beds', '', 'Sleigh Beds', '', ''),
(203, 1, 'Storage Beds', '', 'Storage Beds', '', ''),
(203, 2, 'Storage Beds', '', 'Storage Beds', '', ''),
(204, 1, 'Headboards', '', 'Headboards', '', ''),
(204, 2, 'Headboards', '', 'Headboards', '', ''),
(205, 1, 'Outdoor', '', 'Outdoor', '', ''),
(205, 2, 'Outdoor', '', 'Outdoor', '', ''),
(206, 1, 'Padded', '', 'Padded', '', ''),
(206, 2, 'Padded', '', 'Padded', '', ''),
(207, 1, 'Storage', '', 'Storage', '', ''),
(207, 2, 'Storage', '', 'Storage', '', ''),
(208, 1, 'Tufted', '', 'Tufted', '', ''),
(208, 2, 'Tufted', '', 'Tufted', '', ''),
(209, 1, 'Upholstered', '', 'Upholstered', '', ''),
(209, 2, 'Upholstered', '', 'Upholstered', '', ''),
(210, 1, 'Nightstands', '', 'Nightstands', '', ''),
(210, 2, 'Nightstands', '', 'Nightstands', '', ''),
(211, 1, 'Brown Finish', '', 'Brown Finish', '', ''),
(211, 2, 'Brown Finish', '', 'Brown Finish', '', ''),
(212, 1, 'Cherry Finish', '', 'Cherry Finish', '', ''),
(212, 2, 'Cherry Finish', '', 'Cherry Finish', '', ''),
(213, 1, 'Distressed', '', 'Distressed', '', ''),
(213, 2, 'Distressed', '', 'Distressed', '', ''),
(214, 1, 'Laundry', '', 'Laundry', '', ''),
(214, 2, 'Laundry', '', 'Laundry', '', ''),
(215, 1, 'Weathered', '', 'Weathered', '', ''),
(215, 2, 'Weathered', '', 'Weathered', '', ''),
(216, 1, 'Living Chairs', '', 'Living Chairs', '', ''),
(216, 2, 'Living Chairs', '', 'Living Chairs', '', ''),
(217, 1, 'Armchairs', '', 'Armchairs', '', ''),
(217, 2, 'Armchairs', '', 'Armchairs', '', ''),
(218, 1, 'Bunk bed', '', 'Bunk bed', '', ''),
(218, 2, 'Bunk bed', '', 'Bunk bed', '', ''),
(219, 1, 'Mattress', '', 'Mattress', '', ''),
(219, 2, 'Mattress', '', 'Mattress', '', ''),
(220, 1, 'Sideboard', '', 'Sideboard', '', ''),
(220, 2, 'Sideboard', '', 'Sideboard', '', ''),
(221, 1, 'Modern beds', '', 'Modern beds', '', ''),
(221, 2, 'Modern beds', '', 'Modern beds', '', ''),
(222, 1, 'Living Tables', '', 'Living Tables', '', ''),
(222, 2, 'Living Tables', '', 'Living Tables', '', ''),
(223, 1, 'Bedspread', '', 'Bedspread', '', ''),
(223, 2, 'Bedspread', '', 'Bedspread', '', ''),
(224, 1, 'Chest', '', 'Chest', '', ''),
(224, 2, 'Chest', '', 'Chest', '', ''),
(225, 1, 'Trunk', '', 'Trunk', '', ''),
(225, 2, 'Trunk', '', 'Trunk', '', ''),
(226, 1, 'Wardrobe', '', 'Wardrobe', '', ''),
(226, 2, 'Wardrobe', '', 'Wardrobe', '', ''),
(227, 1, 'Ottomans', '', 'Ottomans', '', ''),
(227, 2, 'Ottomans', '', 'Ottomans', '', ''),
(228, 1, 'Bootees Bags', '', 'Bootees Bags', '', ''),
(228, 2, 'Bootees Bags', '', 'Bootees Bags', '', ''),
(229, 1, 'Jackets', '', 'Jackets', '', ''),
(229, 2, 'Jackets', '', 'Jackets', '', ''),
(230, 1, 'Shelf', '', 'Shelf', '', ''),
(230, 2, 'Shelf', '', 'Shelf', '', ''),
(231, 1, 'Shoes', '', 'Shoes', '', ''),
(231, 2, 'Shoes', '', 'Shoes', '', ''),
(232, 1, 'Sink', '', 'Sink', '', ''),
(232, 2, 'Sink', '', 'Sink', '', ''),
(233, 1, 'Dresses', '', 'Dresses', '', ''),
(233, 2, 'Dresses', '', 'Dresses', '', ''),
(234, 1, 'Shorts', '', 'Shorts', '', ''),
(234, 2, 'Shorts', '', 'Shorts', '', ''),
(235, 1, 'Skirts', '', 'Skirts', '', ''),
(235, 2, 'Skirts', '', 'Skirts', '', ''),
(236, 1, 'Trousers', '', 'Trousers', '', ''),
(236, 2, 'Trousers', '', 'Trousers', '', ''),
(237, 1, 'Dining chairs', '', 'Dining chairs', '', ''),
(237, 2, 'Dining chairs', '', 'Dining chairs', '', ''),
(238, 1, 'Ankle', '', 'Ankle', '', ''),
(238, 2, 'Ankle', '', 'Ankle', '', ''),
(239, 1, 'Footwear', '', 'Footwear', '', ''),
(239, 2, 'Footwear', '', 'Footwear', '', ''),
(240, 1, 'Hoodies', '', 'Hoodies', '', ''),
(240, 2, 'Hoodies', '', 'Hoodies', '', ''),
(241, 1, 'Wedges', '', 'Wedges', '', ''),
(241, 2, 'Wedges', '', 'Wedges', '', ''),
(244, 1, 'Long Sleeve', '', 'Long Sleeve', '', ''),
(244, 2, 'Long Sleeve', '', 'Long Sleeve', '', ''),
(245, 1, 'Polo Short Sleeve', '', 'Polo Short Sleeve', '', ''),
(245, 2, 'Polo Short Sleeve', '', 'Polo Short Sleeve', '', ''),
(246, 1, 'Short Sleeve', '', 'Short Sleeve', '', ''),
(246, 2, 'Short Sleeve', '', 'Short Sleeve', '', ''),
(247, 1, 'Furniture', '', 'Furniture', '', ''),
(247, 2, 'Furniture', '', 'Furniture', '', ''),
(248, 1, 'Glass', '', 'Glass', '', ''),
(248, 2, 'Glass', '', 'Glass', '', ''),
(249, 1, 'Mahogany', '', 'Mahogany', '', ''),
(249, 2, 'Mahogany', '', 'Mahogany', '', ''),
(250, 1, 'Sofa', '', 'Sofa', '', ''),
(250, 2, 'Sofa', '', 'Sofa', '', ''),
(251, 1, 'Wood', '', 'Wood', '', ''),
(251, 2, 'Wood', '', 'Wood', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(123, 1),
(123, 2),
(123, 3),
(123, 4),
(123, 5),
(123, 6),
(123, 7),
(123, 8),
(123, 10),
(123, 11),
(123, 12),
(123, 13),
(123, 14),
(123, 15),
(123, 16),
(123, 17),
(124, 1),
(124, 2),
(124, 3),
(124, 4),
(124, 5),
(124, 6),
(124, 7),
(124, 8),
(124, 10),
(124, 11),
(124, 12),
(124, 13),
(124, 14),
(124, 15),
(124, 16),
(124, 17),
(125, 1),
(125, 2),
(125, 3),
(125, 4),
(125, 5),
(125, 6),
(125, 7),
(125, 8),
(125, 10),
(125, 11),
(125, 12),
(125, 13),
(125, 14),
(125, 15),
(125, 16),
(125, 17),
(126, 1),
(126, 2),
(126, 3),
(126, 4),
(126, 5),
(126, 6),
(126, 7),
(126, 8),
(126, 10),
(126, 11),
(126, 12),
(126, 13),
(126, 14),
(126, 15),
(126, 16),
(126, 17),
(127, 1),
(127, 2),
(127, 3),
(127, 4),
(127, 5),
(127, 6),
(127, 7),
(127, 8),
(127, 10),
(127, 11),
(127, 12),
(127, 13),
(127, 14),
(127, 15),
(127, 16),
(127, 17),
(128, 2),
(128, 3),
(128, 4),
(128, 5),
(128, 8),
(128, 10),
(128, 11),
(128, 12),
(128, 13),
(134, 2),
(134, 3),
(134, 4),
(134, 5),
(134, 8),
(134, 10),
(134, 11),
(134, 12),
(134, 13),
(140, 2),
(140, 3),
(140, 4),
(140, 5),
(140, 8),
(140, 10),
(140, 11),
(140, 12),
(140, 13),
(146, 2),
(146, 3),
(146, 4),
(146, 5),
(146, 8),
(146, 10),
(146, 11),
(146, 12),
(146, 13),
(151, 2),
(151, 3),
(151, 4),
(151, 5),
(151, 8),
(151, 10),
(151, 11),
(151, 12),
(151, 13),
(156, 2),
(156, 3),
(156, 4),
(156, 5),
(156, 8),
(156, 10),
(156, 11),
(156, 12),
(156, 13),
(161, 2),
(161, 3),
(161, 4),
(161, 5),
(161, 8),
(161, 10),
(161, 11),
(161, 12),
(161, 13),
(166, 2),
(166, 3),
(166, 4),
(166, 5),
(166, 8),
(166, 10),
(166, 11),
(166, 12),
(166, 13),
(171, 2),
(171, 3),
(171, 4),
(171, 5),
(171, 8),
(171, 10),
(171, 11),
(171, 12),
(171, 13),
(176, 2),
(176, 3),
(176, 4),
(176, 5),
(176, 8),
(176, 10),
(176, 11),
(176, 12),
(176, 13),
(181, 2),
(181, 3),
(181, 4),
(181, 5),
(181, 8),
(181, 10),
(181, 11),
(181, 12),
(181, 13),
(186, 2),
(186, 3),
(186, 4),
(186, 5),
(186, 8),
(186, 10),
(186, 11),
(186, 12),
(186, 13),
(191, 2),
(191, 3),
(191, 4),
(191, 5),
(191, 6),
(191, 7),
(191, 8),
(191, 10),
(191, 11),
(191, 12),
(191, 13),
(191, 14),
(191, 15),
(192, 1),
(192, 2),
(192, 3),
(192, 4),
(192, 5),
(192, 6),
(192, 7),
(192, 8),
(192, 10),
(192, 11),
(192, 12),
(192, 13),
(192, 14),
(192, 15),
(192, 16),
(193, 1),
(193, 2),
(193, 3),
(193, 4),
(193, 5),
(193, 6),
(193, 7),
(193, 8),
(193, 10),
(193, 11),
(193, 12),
(193, 13),
(193, 14),
(193, 15),
(193, 16),
(193, 17),
(194, 1),
(194, 2),
(194, 3),
(194, 4),
(194, 5),
(194, 6),
(194, 7),
(194, 8),
(194, 10),
(194, 11),
(194, 12),
(194, 13),
(194, 14),
(194, 15),
(194, 16),
(194, 17),
(195, 1),
(195, 2),
(195, 3),
(195, 4),
(195, 5),
(195, 6),
(195, 7),
(195, 8),
(195, 10),
(195, 11),
(195, 12),
(195, 13),
(195, 14),
(195, 15),
(195, 16),
(195, 17),
(196, 1),
(196, 2),
(196, 3),
(196, 4),
(196, 5),
(196, 6),
(196, 7),
(196, 8),
(196, 10),
(196, 11),
(196, 12),
(196, 13),
(196, 14),
(196, 15),
(196, 16),
(196, 17),
(197, 1),
(197, 2),
(197, 3),
(197, 4),
(197, 5),
(197, 6),
(197, 7),
(197, 8),
(197, 10),
(197, 11),
(197, 12),
(197, 13),
(197, 14),
(197, 15),
(197, 16),
(197, 17),
(198, 1),
(198, 2),
(198, 3),
(198, 4),
(198, 5),
(198, 6),
(198, 7),
(198, 8),
(198, 10),
(198, 11),
(198, 12),
(198, 13),
(198, 14),
(198, 15),
(198, 16),
(198, 17),
(200, 1),
(200, 2),
(200, 3),
(200, 4),
(200, 5),
(200, 6),
(200, 7),
(200, 8),
(200, 10),
(200, 11),
(200, 12),
(200, 13),
(200, 14),
(200, 15),
(200, 16),
(200, 17),
(204, 1),
(204, 2),
(204, 3),
(204, 4),
(204, 5),
(204, 6),
(204, 7),
(204, 8),
(204, 10),
(204, 11),
(204, 12),
(204, 13),
(204, 14),
(204, 15),
(204, 16),
(204, 17),
(210, 1),
(210, 2),
(210, 3),
(210, 4),
(210, 5),
(210, 6),
(210, 7),
(210, 8),
(210, 10),
(210, 11),
(210, 12),
(210, 13),
(210, 14),
(210, 15),
(210, 16),
(210, 17),
(216, 1),
(216, 2),
(216, 3),
(216, 4),
(216, 5),
(216, 6),
(216, 7),
(216, 8),
(216, 10),
(216, 11),
(216, 12),
(216, 13),
(216, 14),
(216, 15),
(216, 16),
(216, 17),
(222, 1),
(222, 2),
(222, 3),
(222, 4),
(222, 5),
(222, 6),
(222, 7),
(222, 8),
(222, 10),
(222, 11),
(222, 12),
(222, 13),
(222, 14),
(222, 15),
(222, 16),
(222, 17),
(227, 1),
(227, 2),
(227, 3),
(227, 4),
(227, 5),
(227, 6),
(227, 7),
(227, 8),
(227, 10),
(227, 11),
(227, 12),
(227, 13),
(227, 14),
(227, 15),
(227, 16),
(227, 17),
(232, 1),
(232, 2),
(232, 3),
(232, 4),
(232, 5),
(232, 6),
(232, 7),
(232, 8),
(232, 10),
(232, 11),
(232, 12),
(232, 13),
(232, 14),
(232, 15),
(232, 16),
(232, 17),
(237, 2),
(237, 3),
(237, 4),
(237, 5),
(237, 6),
(237, 7),
(237, 8),
(237, 10),
(237, 11),
(237, 12),
(237, 13),
(237, 14),
(237, 15),
(237, 16),
(237, 17),
(242, 1),
(242, 2),
(242, 3),
(242, 4),
(242, 5),
(242, 6),
(242, 7),
(242, 8),
(242, 10),
(242, 11),
(242, 12),
(242, 13),
(242, 14),
(242, 15),
(242, 16),
(242, 17),
(247, 1),
(247, 2),
(247, 3),
(247, 4),
(247, 5),
(247, 6),
(247, 7),
(247, 8),
(247, 10),
(247, 11),
(247, 12),
(247, 13),
(247, 14),
(247, 15),
(247, 16),
(247, 17);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(137, 123, 0),
(137, 134, 1),
(150, 146, 1),
(150, 150, 2),
(149, 125, 0),
(149, 149, 2),
(130, 128, 1),
(137, 137, 2),
(149, 146, 1),
(148, 125, 0),
(148, 146, 1),
(148, 148, 2),
(147, 125, 0),
(147, 146, 1),
(147, 147, 2),
(146, 125, 0),
(145, 123, 0),
(146, 146, 1),
(145, 145, 2),
(144, 123, 0),
(145, 140, 1),
(144, 144, 2),
(188, 127, 0),
(143, 123, 0),
(144, 140, 1),
(143, 140, 1),
(142, 123, 0),
(143, 143, 2),
(188, 186, 1),
(172, 124, 0),
(136, 123, 0),
(136, 134, 1),
(142, 142, 2),
(141, 123, 0),
(131, 131, 2),
(131, 123, 0),
(131, 128, 1),
(129, 129, 2),
(130, 130, 2),
(130, 123, 0),
(129, 123, 0),
(129, 128, 1),
(124, 124, 0),
(173, 171, 1),
(150, 125, 0),
(187, 127, 0),
(187, 186, 1),
(183, 127, 0),
(183, 181, 1),
(189, 189, 2),
(189, 186, 1),
(128, 128, 1),
(128, 123, 0),
(141, 140, 1),
(141, 141, 2),
(138, 134, 1),
(126, 126, 0),
(142, 140, 1),
(135, 123, 0),
(136, 136, 2),
(135, 135, 2),
(134, 123, 0),
(135, 134, 1),
(134, 134, 1),
(133, 133, 2),
(133, 123, 0),
(133, 128, 1),
(132, 123, 0),
(132, 132, 2),
(132, 128, 1),
(188, 188, 2),
(140, 140, 1),
(138, 123, 0),
(179, 124, 0),
(179, 179, 2),
(175, 124, 0),
(175, 175, 2),
(174, 124, 0),
(175, 171, 1),
(174, 174, 2),
(173, 124, 0),
(174, 171, 1),
(173, 173, 2),
(178, 124, 0),
(179, 176, 1),
(178, 178, 2),
(177, 124, 0),
(178, 176, 1),
(177, 177, 2),
(176, 124, 0),
(177, 176, 1),
(176, 176, 1),
(186, 127, 0),
(187, 187, 2),
(186, 186, 1),
(185, 127, 0),
(185, 181, 1),
(185, 185, 2),
(184, 127, 0),
(184, 181, 1),
(184, 184, 2),
(182, 181, 1),
(183, 183, 2),
(182, 127, 0),
(181, 127, 0),
(182, 182, 2),
(181, 181, 1),
(180, 180, 2),
(180, 124, 0),
(180, 176, 1),
(172, 172, 2),
(172, 171, 1),
(167, 166, 1),
(167, 167, 2),
(162, 162, 2),
(162, 125, 0),
(157, 156, 1),
(157, 157, 2),
(171, 124, 0),
(171, 171, 1),
(170, 124, 0),
(170, 170, 2),
(170, 166, 1),
(169, 124, 0),
(169, 169, 2),
(169, 166, 1),
(168, 124, 0),
(168, 168, 2),
(168, 166, 1),
(167, 124, 0),
(166, 166, 1),
(166, 124, 0),
(165, 161, 1),
(165, 165, 2),
(165, 125, 0),
(164, 161, 1),
(164, 164, 2),
(164, 125, 0),
(163, 161, 1),
(163, 125, 0),
(163, 163, 2),
(162, 161, 1),
(156, 156, 1),
(156, 125, 0),
(155, 125, 0),
(155, 151, 1),
(155, 155, 2),
(154, 125, 0),
(152, 125, 0),
(153, 151, 1),
(152, 152, 2),
(151, 125, 0),
(152, 151, 1),
(151, 151, 1),
(161, 161, 1),
(161, 125, 0),
(160, 125, 0),
(160, 156, 1),
(160, 160, 2),
(159, 125, 0),
(159, 156, 1),
(159, 159, 2),
(158, 125, 0),
(158, 156, 1),
(158, 158, 2),
(157, 125, 0),
(139, 134, 1),
(138, 138, 2),
(127, 127, 0),
(139, 123, 0),
(139, 139, 2),
(123, 123, 0),
(125, 125, 0),
(140, 123, 0),
(154, 154, 2),
(154, 151, 1),
(153, 125, 0),
(153, 153, 2),
(189, 127, 0),
(190, 190, 2),
(190, 127, 0),
(190, 186, 1),
(191, 191, 0),
(192, 192, 0),
(193, 193, 0),
(194, 194, 0),
(195, 195, 0),
(196, 196, 0),
(197, 197, 0),
(198, 192, 0),
(198, 198, 1),
(199, 192, 0),
(199, 198, 1),
(199, 199, 2),
(200, 192, 0),
(200, 198, 1),
(200, 200, 2),
(201, 192, 0),
(201, 198, 1),
(201, 201, 2),
(202, 192, 0),
(202, 198, 1),
(202, 202, 2),
(203, 192, 0),
(203, 198, 1),
(203, 203, 2),
(204, 192, 0),
(204, 204, 1),
(205, 192, 0),
(205, 204, 1),
(205, 205, 2),
(206, 192, 0),
(206, 204, 1),
(206, 206, 2),
(207, 192, 0),
(207, 204, 1),
(207, 207, 2),
(208, 192, 0),
(208, 204, 1),
(208, 208, 2),
(209, 192, 0),
(209, 204, 1),
(209, 209, 2),
(210, 192, 0),
(210, 210, 1),
(211, 192, 0),
(211, 210, 1),
(211, 211, 2),
(212, 192, 0),
(212, 210, 1),
(212, 212, 2),
(213, 192, 0),
(213, 210, 1),
(213, 213, 2),
(214, 192, 0),
(214, 210, 1),
(214, 214, 2),
(215, 192, 0),
(215, 210, 1),
(215, 215, 2),
(216, 192, 0),
(216, 216, 1),
(217, 192, 0),
(217, 216, 1),
(217, 217, 2),
(218, 192, 0),
(218, 216, 1),
(218, 218, 2),
(219, 192, 0),
(219, 216, 1),
(219, 219, 2),
(220, 192, 0),
(220, 216, 1),
(220, 220, 2),
(221, 192, 0),
(221, 216, 1),
(221, 221, 2),
(222, 193, 0),
(222, 222, 1),
(223, 193, 0),
(223, 222, 1),
(223, 223, 2),
(224, 193, 0),
(224, 222, 1),
(224, 224, 2),
(225, 193, 0),
(225, 222, 1),
(225, 225, 2),
(226, 193, 0),
(226, 222, 1),
(226, 226, 2),
(227, 193, 0),
(227, 227, 1),
(228, 193, 0),
(228, 227, 1),
(228, 228, 2),
(229, 193, 0),
(229, 227, 1),
(229, 229, 2),
(230, 193, 0),
(230, 227, 1),
(230, 230, 2),
(231, 193, 0),
(231, 227, 1),
(231, 231, 2),
(232, 193, 0),
(232, 232, 1),
(233, 193, 0),
(233, 232, 1),
(233, 233, 2),
(234, 193, 0),
(234, 232, 1),
(234, 234, 2),
(235, 193, 0),
(235, 232, 1),
(235, 235, 2),
(236, 193, 0),
(236, 232, 1),
(236, 236, 2),
(237, 194, 0),
(237, 237, 1),
(238, 194, 0),
(238, 237, 1),
(238, 238, 2),
(239, 194, 0),
(239, 237, 1),
(239, 239, 2),
(240, 194, 0),
(240, 237, 1),
(240, 240, 2),
(241, 194, 0),
(241, 237, 1),
(241, 241, 2),
(242, 194, 0),
(242, 242, 1),
(243, 194, 0),
(243, 242, 1),
(243, 243, 2),
(244, 194, 0),
(244, 242, 1),
(244, 244, 2),
(245, 194, 0),
(245, 242, 1),
(245, 245, 2),
(246, 194, 0),
(246, 242, 1),
(246, 246, 2),
(247, 195, 0),
(247, 247, 1),
(248, 195, 0),
(248, 247, 1),
(248, 248, 2),
(249, 195, 0),
(249, 247, 1),
(249, 249, 2),
(250, 195, 0),
(250, 247, 1),
(250, 250, 2),
(251, 195, 0),
(251, 247, 1),
(251, 251, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(232, 2, 0),
(232, 3, 0),
(233, 0, 0),
(233, 1, 0),
(233, 2, 0),
(233, 3, 0),
(208, 1, 0),
(208, 0, 0),
(207, 3, 0),
(207, 2, 0),
(207, 1, 0),
(207, 0, 0),
(209, 3, 0),
(209, 2, 0),
(209, 1, 0),
(209, 0, 0),
(208, 3, 0),
(208, 2, 0),
(231, 0, 0),
(231, 1, 0),
(231, 2, 0),
(231, 3, 0),
(232, 0, 0),
(232, 1, 0),
(211, 2, 0),
(211, 3, 0),
(212, 0, 0),
(212, 1, 0),
(212, 2, 0),
(212, 3, 0),
(210, 0, 0),
(210, 1, 0),
(210, 2, 0),
(210, 3, 0),
(211, 0, 0),
(211, 1, 0),
(225, 0, 0),
(225, 1, 0),
(225, 2, 0),
(225, 3, 0),
(226, 0, 0),
(226, 1, 0),
(229, 2, 0),
(229, 3, 0),
(230, 0, 0),
(230, 1, 0),
(230, 2, 0),
(230, 3, 0),
(228, 0, 0),
(228, 1, 0),
(228, 2, 0),
(228, 3, 0),
(229, 0, 0),
(229, 1, 0),
(226, 2, 0),
(226, 3, 0),
(227, 0, 0),
(227, 1, 0),
(227, 2, 0),
(227, 3, 0),
(213, 0, 0),
(213, 1, 0),
(213, 2, 0),
(213, 3, 0),
(214, 0, 0),
(214, 1, 0),
(217, 2, 0),
(217, 3, 0),
(218, 0, 0),
(218, 1, 0),
(218, 2, 0),
(218, 3, 0),
(216, 0, 0),
(216, 1, 0),
(216, 2, 0),
(216, 3, 0),
(217, 0, 0),
(217, 1, 0),
(214, 2, 0),
(214, 3, 0),
(215, 0, 0),
(215, 1, 0),
(215, 2, 0),
(215, 3, 0),
(219, 0, 0),
(219, 1, 0),
(219, 2, 0),
(219, 3, 0),
(220, 0, 0),
(220, 1, 0),
(220, 2, 0),
(220, 3, 0),
(221, 0, 0),
(221, 1, 0),
(221, 2, 0),
(221, 3, 0),
(223, 2, 0),
(223, 3, 0),
(224, 0, 0),
(224, 1, 0),
(224, 2, 0),
(224, 3, 0),
(222, 0, 0),
(222, 1, 0),
(222, 2, 0),
(222, 3, 0),
(223, 0, 0),
(223, 1, 0),
(205, 2, 0),
(205, 3, 0),
(206, 0, 0),
(206, 1, 0),
(206, 2, 0),
(206, 3, 0),
(174, 0, 0),
(174, 1, 0),
(174, 2, 0),
(174, 3, 0),
(173, 0, 0),
(173, 1, 0),
(175, 3, 0),
(175, 2, 0),
(175, 1, 0),
(175, 0, 0),
(176, 3, 0),
(176, 2, 0),
(179, 1, 0),
(179, 0, 0),
(180, 3, 0),
(180, 2, 0),
(181, 1, 0),
(181, 0, 0),
(182, 3, 0),
(182, 2, 0),
(182, 1, 0),
(182, 0, 0),
(178, 3, 0),
(178, 2, 0),
(178, 1, 0),
(178, 0, 0),
(179, 3, 0),
(179, 2, 0),
(176, 1, 0),
(176, 0, 0),
(177, 3, 0),
(177, 2, 0),
(177, 1, 0),
(177, 0, 0),
(183, 3, 0),
(183, 2, 0),
(183, 1, 0),
(183, 0, 0),
(184, 3, 0),
(184, 2, 0),
(184, 1, 0),
(184, 0, 0),
(185, 3, 0),
(185, 2, 0),
(185, 1, 0),
(185, 0, 0),
(186, 3, 0),
(186, 2, 0),
(186, 1, 0),
(186, 0, 0),
(187, 3, 0),
(187, 2, 0),
(187, 1, 0),
(187, 0, 0),
(188, 3, 0),
(188, 2, 0),
(188, 1, 0),
(188, 0, 0),
(189, 0, 0),
(189, 1, 0),
(189, 2, 0),
(189, 3, 0),
(190, 3, 0),
(190, 2, 0),
(191, 0, 0),
(191, 1, 0),
(191, 2, 0),
(191, 3, 0),
(190, 0, 0),
(190, 1, 0),
(192, 0, 0),
(192, 1, 0),
(192, 2, 0),
(192, 3, 0),
(193, 0, 0),
(193, 1, 0),
(195, 0, 0),
(195, 1, 0),
(195, 2, 0),
(195, 3, 0),
(196, 0, 0),
(196, 1, 0),
(193, 2, 0),
(193, 3, 0),
(194, 0, 0),
(194, 1, 0),
(194, 2, 0),
(194, 3, 0),
(196, 2, 0),
(196, 3, 0),
(197, 0, 0),
(197, 1, 0),
(197, 2, 0),
(197, 3, 0),
(198, 3, 0),
(198, 2, 0),
(198, 1, 0),
(198, 0, 0),
(199, 0, 0),
(199, 1, 0),
(199, 2, 0),
(199, 3, 0),
(200, 0, 0),
(200, 1, 0),
(200, 2, 0),
(200, 3, 0),
(201, 0, 0),
(201, 1, 0),
(201, 2, 0),
(201, 3, 0),
(202, 0, 0),
(202, 1, 0),
(202, 2, 0),
(202, 3, 0),
(203, 0, 0),
(203, 1, 0),
(203, 2, 0),
(203, 3, 0),
(204, 0, 0),
(204, 1, 0),
(204, 2, 0),
(204, 3, 0),
(205, 0, 0),
(205, 1, 0),
(131, 2, 0),
(131, 3, 0),
(130, 0, 0),
(130, 1, 0),
(137, 1, 0),
(137, 0, 0),
(138, 3, 0),
(138, 2, 0),
(138, 1, 0),
(138, 0, 0),
(140, 2, 0),
(140, 3, 0),
(139, 0, 0),
(139, 1, 0),
(139, 2, 0),
(139, 3, 0),
(142, 0, 0),
(142, 1, 0),
(142, 2, 0),
(142, 3, 0),
(143, 0, 0),
(143, 1, 0),
(140, 1, 0),
(140, 0, 0),
(141, 3, 0),
(141, 2, 0),
(141, 1, 0),
(141, 0, 0),
(143, 2, 0),
(143, 3, 0),
(144, 3, 0),
(144, 2, 0),
(144, 1, 0),
(144, 0, 0),
(159, 0, 0),
(159, 1, 0),
(159, 2, 0),
(159, 3, 0),
(158, 0, 0),
(158, 1, 0),
(163, 0, 0),
(163, 1, 0),
(163, 2, 0),
(163, 3, 0),
(164, 3, 0),
(164, 2, 0),
(166, 3, 0),
(166, 2, 0),
(166, 1, 0),
(166, 0, 0),
(167, 0, 0),
(167, 1, 0),
(164, 1, 0),
(164, 0, 0),
(165, 3, 0),
(165, 2, 0),
(165, 1, 0),
(165, 0, 0),
(161, 2, 0),
(161, 3, 0),
(160, 0, 0),
(160, 1, 0),
(160, 2, 0),
(160, 3, 0),
(169, 3, 0),
(169, 2, 0),
(169, 1, 0),
(169, 0, 0),
(170, 3, 0),
(170, 2, 0),
(170, 1, 0),
(170, 0, 0),
(171, 3, 0),
(171, 2, 0),
(171, 1, 0),
(171, 0, 0),
(131, 1, 0),
(131, 0, 0),
(132, 3, 0),
(132, 2, 0),
(132, 1, 0),
(132, 0, 0),
(136, 0, 0),
(136, 1, 0),
(136, 2, 0),
(136, 3, 0),
(137, 3, 0),
(137, 2, 0),
(133, 3, 0),
(133, 2, 0),
(133, 1, 0),
(133, 0, 0),
(134, 3, 0),
(134, 2, 0),
(134, 1, 0),
(134, 0, 0),
(135, 3, 0),
(135, 2, 0),
(135, 1, 0),
(135, 0, 0),
(145, 3, 0),
(145, 2, 0),
(145, 1, 0),
(145, 0, 0),
(146, 3, 0),
(146, 2, 0),
(157, 0, 0),
(157, 1, 0),
(157, 2, 0),
(157, 3, 0),
(158, 3, 0),
(158, 2, 0),
(154, 3, 0),
(154, 2, 0),
(154, 1, 0),
(154, 0, 0),
(155, 3, 0),
(155, 2, 0),
(148, 3, 0),
(148, 2, 0),
(148, 1, 0),
(148, 0, 0),
(149, 0, 0),
(149, 1, 0),
(129, 3, 0),
(129, 2, 0),
(129, 1, 0),
(129, 0, 0),
(130, 3, 0),
(130, 2, 0),
(124, 1, 0),
(124, 0, 0),
(125, 0, 0),
(125, 1, 0),
(125, 2, 0),
(125, 3, 0),
(172, 3, 0),
(172, 2, 0),
(172, 1, 0),
(172, 0, 0),
(173, 3, 0),
(173, 2, 0),
(161, 1, 0),
(161, 0, 0),
(162, 0, 0),
(162, 1, 0),
(162, 2, 0),
(162, 3, 0),
(167, 2, 0),
(167, 3, 0),
(168, 3, 0),
(168, 2, 0),
(168, 1, 0),
(168, 0, 0),
(150, 0, 0),
(150, 1, 0),
(150, 2, 0),
(150, 3, 0),
(149, 3, 0),
(149, 2, 0),
(147, 0, 0),
(147, 1, 0),
(147, 2, 0),
(147, 3, 0),
(146, 0, 0),
(146, 1, 0),
(128, 0, 0),
(128, 1, 0),
(128, 2, 0),
(128, 3, 0),
(127, 3, 0),
(127, 2, 0),
(152, 1, 0),
(152, 0, 0),
(153, 3, 0),
(153, 2, 0),
(153, 1, 0),
(153, 0, 0),
(151, 3, 0),
(151, 2, 0),
(151, 1, 0),
(151, 0, 0),
(152, 3, 0),
(152, 2, 0),
(124, 2, 0),
(124, 3, 0),
(123, 3, 0),
(123, 2, 0),
(123, 1, 0),
(123, 0, 0),
(127, 1, 0),
(127, 0, 0),
(126, 3, 0),
(126, 2, 0),
(126, 1, 0),
(126, 0, 0),
(155, 1, 0),
(155, 0, 0),
(156, 3, 0),
(156, 2, 0),
(156, 1, 0),
(156, 0, 0),
(181, 2, 0),
(181, 3, 0),
(180, 0, 0),
(180, 1, 0),
(234, 0, 0),
(234, 1, 0),
(234, 2, 0),
(234, 3, 0),
(235, 0, 0),
(235, 1, 0),
(235, 2, 0),
(235, 3, 0),
(236, 0, 0),
(236, 1, 0),
(236, 2, 0),
(236, 3, 0),
(237, 0, 0),
(237, 1, 0),
(237, 2, 0),
(237, 3, 0),
(238, 0, 0),
(238, 1, 0),
(238, 2, 0),
(238, 3, 0),
(239, 0, 0),
(239, 1, 0),
(239, 2, 0),
(239, 3, 0),
(240, 0, 0),
(240, 1, 0),
(240, 2, 0),
(240, 3, 0),
(241, 0, 0),
(241, 1, 0),
(241, 2, 0),
(241, 3, 0),
(242, 0, 0),
(242, 1, 0),
(242, 2, 0),
(242, 3, 0),
(243, 0, 0),
(243, 1, 0),
(243, 2, 0),
(243, 3, 0),
(244, 0, 0),
(244, 1, 0),
(244, 2, 0),
(244, 3, 0),
(245, 0, 0),
(245, 1, 0),
(245, 2, 0),
(245, 3, 0),
(246, 0, 0),
(246, 1, 0),
(246, 2, 0),
(246, 3, 0),
(247, 0, 0),
(247, 1, 0),
(247, 2, 0),
(247, 3, 0),
(248, 0, 0),
(248, 1, 0),
(248, 2, 0),
(248, 3, 0),
(249, 0, 0),
(249, 1, 0),
(249, 2, 0),
(249, 3, 0),
(250, 0, 0),
(250, 1, 0),
(250, 2, 0),
(250, 3, 0),
(251, 0, 0),
(251, 1, 0),
(251, 2, 0),
(251, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(123, 1),
(123, 2),
(123, 3),
(124, 1),
(124, 2),
(124, 3),
(125, 1),
(125, 2),
(125, 3),
(126, 1),
(126, 2),
(126, 3),
(127, 1),
(127, 2),
(127, 3),
(128, 1),
(128, 2),
(128, 3),
(129, 1),
(129, 2),
(129, 3),
(130, 1),
(130, 2),
(130, 3),
(131, 1),
(131, 2),
(131, 3),
(132, 1),
(132, 2),
(132, 3),
(133, 1),
(133, 2),
(133, 3),
(134, 1),
(134, 2),
(134, 3),
(135, 1),
(135, 2),
(135, 3),
(136, 1),
(136, 2),
(136, 3),
(137, 1),
(137, 2),
(137, 3),
(138, 1),
(138, 2),
(138, 3),
(139, 1),
(139, 2),
(139, 3),
(140, 1),
(140, 2),
(140, 3),
(141, 1),
(141, 2),
(141, 3),
(142, 1),
(142, 2),
(142, 3),
(143, 1),
(143, 2),
(143, 3),
(144, 1),
(144, 2),
(144, 3),
(145, 1),
(145, 2),
(145, 3),
(146, 1),
(146, 2),
(146, 3),
(147, 1),
(147, 2),
(147, 3),
(148, 1),
(148, 2),
(148, 3),
(149, 0),
(149, 1),
(149, 2),
(149, 3),
(150, 1),
(150, 2),
(150, 3),
(151, 1),
(151, 2),
(151, 3),
(152, 1),
(152, 2),
(152, 3),
(153, 1),
(153, 2),
(153, 3),
(154, 1),
(154, 2),
(154, 3),
(155, 1),
(155, 2),
(155, 3),
(156, 1),
(156, 2),
(156, 3),
(157, 1),
(157, 2),
(157, 3),
(158, 1),
(158, 2),
(158, 3),
(159, 1),
(159, 2),
(159, 3),
(160, 1),
(160, 2),
(160, 3),
(161, 1),
(161, 2),
(161, 3),
(162, 1),
(162, 2),
(162, 3),
(163, 1),
(163, 2),
(163, 3),
(164, 1),
(164, 2),
(164, 3),
(165, 1),
(165, 2),
(165, 3),
(166, 1),
(166, 2),
(166, 3),
(167, 1),
(167, 2),
(167, 3),
(168, 1),
(168, 2),
(168, 3),
(169, 1),
(169, 2),
(169, 3),
(170, 1),
(170, 2),
(170, 3),
(171, 1),
(171, 2),
(171, 3),
(172, 1),
(172, 2),
(172, 3),
(173, 1),
(173, 2),
(173, 3),
(174, 1),
(174, 2),
(174, 3),
(175, 1),
(175, 2),
(175, 3),
(176, 1),
(176, 2),
(176, 3),
(177, 1),
(177, 2),
(177, 3),
(178, 1),
(178, 2),
(178, 3),
(179, 1),
(179, 2),
(179, 3),
(180, 1),
(180, 2),
(180, 3),
(181, 1),
(181, 2),
(181, 3),
(182, 1),
(182, 2),
(182, 3),
(183, 1),
(183, 2),
(183, 3),
(184, 1),
(184, 2),
(184, 3),
(185, 1),
(185, 2),
(185, 3),
(186, 1),
(186, 2),
(186, 3),
(187, 1),
(187, 2),
(187, 3),
(188, 1),
(188, 2),
(188, 3),
(189, 1),
(189, 2),
(189, 3),
(190, 1),
(190, 2),
(190, 3),
(191, 1),
(191, 2),
(191, 3),
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
(251, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cmsblock`
--

CREATE TABLE `oc_cmsblock` (
  `cmsblock_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` tinyint(1) DEFAULT NULL,
  `identify` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `banner_store` varchar(255) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cmsblock`
--

INSERT INTO `oc_cmsblock` (`cmsblock_id`, `status`, `sort_order`, `identify`, `link`, `type`, `banner_store`) VALUES
(20, 1, 0, 'banner_cennter_home1', '', 1, '0'),
(21, 1, 0, 'banner_cennter1_home1', '', 1, '0'),
(22, 1, 0, 'banner_static_bottom', '', 1, '0'),
(23, 1, 0, 'banner_right', '', 1, '1,2,3,0'),
(24, 1, 0, 'banner_left', '', 1, '1,2,3,0'),
(25, 1, 0, 'banner_static_home2', '', 1, '1,0'),
(26, 1, 0, 'banner_cennter_home2', '', 1, '1,0'),
(27, 1, 0, 'banner_static1_home3', '', 1, '2,0'),
(28, 1, 0, 'banner_static_home3', '', 1, '2,0'),
(29, 1, 0, 'banner_static_home4', '', 1, '3,0'),
(30, 1, 0, 'header_icon', '', 1, '0'),
(31, 1, 0, 'footer_icon', '', 1, '1,2,3,0'),
(32, 1, 0, 'banner_cennter_home3', '', 1, '2,0'),
(33, 1, 0, 'banner_static1_home4', '', 1, '3,0'),
(34, 1, 0, 'banner_cennter_home4', '', 1, '3,0'),
(35, 1, 0, 'banner_right_home4', '', 1, '3,0');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cmsblock_description`
--

CREATE TABLE `oc_cmsblock_description` (
  `cmsblock_des_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `cmsblock_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cmsblock_description`
--

INSERT INTO `oc_cmsblock_description` (`cmsblock_des_id`, `language_id`, `cmsblock_id`, `title`, `sub_title`, `description`) VALUES
(163, 1, 21, 'Banner Center1 Home1', NULL, '&lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;div class=&quot;container&quot;&gt;\r\n		&lt;div class=&quot;static-content&quot;&gt;\r\n			&lt;h2 class=&quot;title&quot;&gt;Sofas and Sectionals&lt;/h2&gt;\r\n			&lt;p class=&quot;s-title&quot;&gt;BEGUILE FABRIC SOFA IN LAGUNA&lt;/p&gt;\r\n			&lt;span class=&quot;desc&quot;&gt;Dominate your decor with the expertly designed Beguile Collection. Exquisitely crafted with gently sloping arms, comfortable plush seat cushions, and adeptly tufted back cushion buttons.&lt;/span&gt;\r\n			&lt;a href=&quot;&quot;&gt;shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(177, 1, 20, 'Banner Center Home1', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col-1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/1.jpg&quot; class=&quot;f-img&quot; alt=&quot;img-1&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col-2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/2.jpg&quot; class=&quot;f-img&quot; alt=&quot;img-1&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col col-3&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/4.jpg&quot; class=&quot;f-img&quot; alt=&quot;img-1&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col-4&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/3.jpg&quot; class=&quot;f-img&quot; alt=&quot;img-1&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(229, 1, 22, 'Banner Static Bottom', NULL, '&lt;div class=&quot;banner-bottom&quot;&gt;\r\n	&lt;div class=&quot;container&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;&lt;h3 class=&quot;desc&quot;&gt;Buying furniture on &lt;span&gt;GRAND&lt;/span&gt; furniture is simple!&lt;/h3&gt;&lt;/div&gt;\r\n		&lt;div class=&quot;row&quot;&gt;\r\n			&lt;div class=&quot;col-md-4 col-sm-4 col-xs-12&quot;&gt;\r\n				&lt;div class=&quot;col col1&quot;&gt;\r\n					&lt;div class=&quot;banner-image&quot;&gt;&lt;img src=&quot;image/catalog/demo/icon/7.png&quot; class=&quot;png-7&quot; alt=&quot;Discover&quot;&gt;&lt;/div&gt;\r\n					&lt;h2&gt;Discover Great Furniture&lt;/h2&gt;\r\n					&lt;p&gt;Browse listings of gently used furniture finds by category or brand.&lt;/p&gt;\r\n				&lt;/div&gt;	\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-4 col-sm-4 col-xs-12&quot;&gt;\r\n				&lt;div class=&quot;col col2&quot;&gt;\r\n					&lt;div class=&quot;banner-image&quot;&gt;&lt;img src=&quot;image/catalog/demo/icon/8.png&quot; class=&quot;png-8&quot; alt=&quot;order&quot;&gt;&lt;/div&gt;\r\n					&lt;h2&gt;Place your order&lt;/h2&gt;\r\n					&lt;p&gt;Reserve the product before someone else gets to it!&lt;/p&gt;\r\n				&lt;/div&gt;	\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-4 col-sm-4 col-xs-12&quot;&gt;\r\n				&lt;div class=&quot;col col3&quot;&gt;\r\n					&lt;div class=&quot;banner-image&quot;&gt;&lt;img src=&quot;image/catalog/demo/icon/9.png&quot; class=&quot;png-9&quot; alt=&quot;Delivery&quot;&gt;&lt;/div&gt;\r\n					&lt;h2&gt;Schedule Delivery&lt;/h2&gt;\r\n					&lt;p&gt;Select a delivery date that works for you then sit back &amp;amp; relax - we''ll arrange the rest.&lt;/p&gt;\r\n				&lt;/div&gt;	\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;			\r\n	&lt;/div&gt;\r\n&lt;/div&gt;									'),
(198, 2, 23, 'Banner Right', NULL, '										&lt;div class=&quot;banner-right&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img src=&quot;image/catalog/demo/img-block/ads-sidebar-right.jpg&quot; alt=&quot;image&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;																		'),
(211, 1, 24, 'Banner Left', NULL, '																				&lt;div class=&quot;banner-left&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img src=&quot;image/catalog/demo/img-block/ads-sidebar.jpg&quot; alt=&quot;image&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;																											'),
(205, 1, 27, 'Banner Static1 Home3', NULL, '										&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block2-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;									'),
(206, 2, 27, 'Banner Static1 Home3', NULL, '										&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block2-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;									'),
(207, 1, 32, 'Banner Center Home3', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;image&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;\r\n			&lt;img src=&quot;image/catalog/demo/img-block/block3-home3.jpg&quot; alt=&quot;image&quot;&gt;\r\n			&lt;span class=&quot;text&quot;&gt;\r\n				&lt;span class=&quot;text1&quot;&gt;MODERN RELAXATION&lt;/span&gt;\r\n				&lt;span class=&quot;text2&quot;&gt;Unique Style , Innovative Design&lt;/span&gt;\r\n				&lt;span class=&quot;text3&quot;&gt;Your favorite lounging spot sofa&lt;/span&gt;\r\n			&lt;/span&gt;\r\n		&lt;/a&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(228, 2, 29, 'Banner Static Home4', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block1-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(149, 1, 30, 'Header Icon', NULL, '&lt;div class=&quot;header-icon&quot;&gt;\r\n	&lt;div class=&quot;col col1&quot;&gt;\r\n		&lt;em class=&quot;lnr lnr-phone&quot;&gt;&lt;/em&gt;\r\n		&lt;div class=&quot;header-content&quot;&gt;\r\n			&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n			&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col col2&quot;&gt;\r\n		&lt;em class=&quot;lnr lnr-rocket&quot;&gt;&lt;/em&gt;\r\n		&lt;div class=&quot;header-content&quot;&gt;\r\n			&lt;h2&gt;Suppost 24/7&lt;/h2&gt;\r\n			&lt;p&gt;We support online 24 hours a day&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																		'),
(150, 2, 30, 'Header Icon', NULL, '&lt;div class=&quot;header-icon&quot;&gt;\r\n	&lt;div class=&quot;col col1&quot;&gt;\r\n		&lt;em class=&quot;lnr lnr-phone&quot;&gt;&lt;/em&gt;\r\n		&lt;div class=&quot;header-content&quot;&gt;\r\n			&lt;h2&gt;Free shipping&lt;/h2&gt;\r\n			&lt;p&gt;Free shipping on all order&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col col2&quot;&gt;\r\n		&lt;em class=&quot;lnr lnr-rocket&quot;&gt;&lt;/em&gt;\r\n		&lt;div class=&quot;header-content&quot;&gt;\r\n			&lt;h2&gt;Suppost 24/7&lt;/h2&gt;\r\n			&lt;p&gt;We support online 24 hours a day&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																		'),
(178, 2, 20, 'Banner Center Home1', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col-1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/1.jpg&quot; class=&quot;f-img&quot; alt=&quot;img-1&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col-2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/2.jpg&quot; class=&quot;f-img&quot; alt=&quot;img-1&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col col-3&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/4.jpg&quot; class=&quot;f-img&quot; alt=&quot;img-1&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col-4&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/3.jpg&quot; class=&quot;f-img&quot; alt=&quot;img-1&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(164, 2, 21, 'Banner Center1 Home1', NULL, '&lt;div class=&quot;banner-center1&quot;&gt;\r\n	&lt;div class=&quot;container&quot;&gt;\r\n		&lt;div class=&quot;static-content&quot;&gt;\r\n			&lt;h2 class=&quot;title&quot;&gt;Sofas and Sectionals&lt;/h2&gt;\r\n			&lt;p class=&quot;s-title&quot;&gt;BEGUILE FABRIC SOFA IN LAGUNA&lt;/p&gt;\r\n			&lt;span class=&quot;desc&quot;&gt;Dominate your decor with the expertly designed Beguile Collection. Exquisitely crafted with gently sloping arms, comfortable plush seat cushions, and adeptly tufted back cushion buttons.&lt;/span&gt;\r\n			&lt;a href=&quot;&quot;&gt;shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(230, 2, 22, 'Banner Static Bottom', NULL, '&lt;div class=&quot;banner-bottom&quot;&gt;\r\n	&lt;div class=&quot;container&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;&lt;h3 class=&quot;desc&quot;&gt;Buying furniture on &lt;span&gt;GRAND&lt;/span&gt; furniture is simple!&lt;/h3&gt;&lt;/div&gt;\r\n		&lt;div class=&quot;row&quot;&gt;\r\n			&lt;div class=&quot;col-md-4 col-sm-4 col-xs-12&quot;&gt;\r\n				&lt;div class=&quot;col col1&quot;&gt;\r\n					&lt;div class=&quot;banner-image&quot;&gt;&lt;img src=&quot;image/catalog/demo/icon/7.png&quot; class=&quot;png-7&quot; alt=&quot;Discover&quot;&gt;&lt;/div&gt;\r\n					&lt;h2&gt;Discover Great Furniture&lt;/h2&gt;\r\n					&lt;p&gt;Browse listings of gently used furniture finds by category or brand.&lt;/p&gt;\r\n				&lt;/div&gt;	\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-4 col-sm-4 col-xs-12&quot;&gt;\r\n				&lt;div class=&quot;col col2&quot;&gt;\r\n					&lt;div class=&quot;banner-image&quot;&gt;&lt;img src=&quot;image/catalog/demo/icon/8.png&quot; class=&quot;png-8&quot; alt=&quot;order&quot;&gt;&lt;/div&gt;\r\n					&lt;h2&gt;Place your order&lt;/h2&gt;\r\n					&lt;p&gt;Reserve the product before someone else gets to it!&lt;/p&gt;\r\n				&lt;/div&gt;	\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-4 col-sm-4 col-xs-12&quot;&gt;\r\n				&lt;div class=&quot;col col3&quot;&gt;\r\n					&lt;div class=&quot;banner-image&quot;&gt;&lt;img src=&quot;image/catalog/demo/icon/9.png&quot; class=&quot;png-9&quot; alt=&quot;Delivery&quot;&gt;&lt;/div&gt;\r\n					&lt;h2&gt;Schedule Delivery&lt;/h2&gt;\r\n					&lt;p&gt;Select a delivery date that works for you then sit back &amp;amp; relax - we''ll arrange the rest.&lt;/p&gt;\r\n				&lt;/div&gt;	\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;			\r\n	&lt;/div&gt;\r\n&lt;/div&gt;									'),
(209, 1, 31, 'Footer Icon', NULL, '																				&lt;ul class=&quot;link-follow&quot;&gt;\r\n	&lt;li class=&quot;first&quot;&gt;\r\n		&lt;a class=&quot;twitter&quot; href=&quot;https://twitter.com/plazathemes&quot;&gt;\r\n			&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a class=&quot;google &quot; href=&quot;#&quot;&gt;\r\n			&lt;i class=&quot;fa fa-google-plus&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a class=&quot;facebook &quot; href=&quot;https://www.facebook.com/plazathemes&quot;&gt;\r\n			&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a class=&quot;youtube &quot; href=&quot;https://www.youtube.com/user/plazathemes&quot;&gt;\r\n			&lt;i class=&quot;fa fa-youtube&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a class=&quot;instagram &quot; href=&quot;#&quot;&gt;\r\n			&lt;i class=&quot;fa fa-instagram&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;																		'),
(210, 2, 31, 'Footer Icon', NULL, '																				&lt;ul class=&quot;link-follow&quot;&gt;\r\n	&lt;li class=&quot;first&quot;&gt;\r\n		&lt;a class=&quot;twitter&quot; href=&quot;https://twitter.com/plazathemes&quot;&gt;\r\n			&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a class=&quot;google &quot; href=&quot;#&quot;&gt;\r\n			&lt;i class=&quot;fa fa-google-plus&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a class=&quot;facebook &quot; href=&quot;https://www.facebook.com/plazathemes&quot;&gt;\r\n			&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a class=&quot;youtube &quot; href=&quot;https://www.youtube.com/user/plazathemes&quot;&gt;\r\n			&lt;i class=&quot;fa fa-youtube&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a class=&quot;instagram &quot; href=&quot;#&quot;&gt;\r\n			&lt;i class=&quot;fa fa-instagram&quot;&gt;&lt;/i&gt;\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;																		'),
(212, 2, 24, 'Banner Left', NULL, '																				&lt;div class=&quot;banner-left&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img src=&quot;image/catalog/demo/img-block/ads-sidebar.jpg&quot; alt=&quot;image&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;																											'),
(197, 1, 23, 'Banner Right', NULL, '										&lt;div class=&quot;banner-right&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img src=&quot;image/catalog/demo/img-block/ads-sidebar-right.jpg&quot; alt=&quot;image&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;																		'),
(188, 2, 25, 'Banner  Static Home2', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;container&quot;&gt;\r\n		&lt;div class=&quot;row&quot;&gt;\r\n			&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\r\n				&lt;div class=&quot;col col1&quot;&gt;\r\n					&lt;div class=&quot;images&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block-home2.png&quot; alt=&quot;block3&quot;&gt;&lt;/div&gt;\r\n					&lt;div class=&quot;banner-content&quot;&gt;\r\n						&lt;h2&gt;Meticulous Craftsmanship&lt;/h2&gt;\r\n						&lt;p&gt;VALUE FOR EVERY RUPEE&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\r\n				&lt;div class=&quot;col col2&quot;&gt;\r\n					&lt;div class=&quot;images&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block1-home2.png&quot; alt=&quot;block3&quot;&gt;&lt;/div&gt;\r\n					&lt;div class=&quot;banner-content&quot;&gt;\r\n						&lt;h2&gt;After Sales Care&lt;/h2&gt;\r\n						&lt;p&gt;PEACE OF MIND TO YOU&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\r\n				&lt;div class=&quot;col col3&quot;&gt;\r\n					&lt;div class=&quot;images&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block2-home2.png&quot; alt=&quot;block3&quot;&gt;&lt;/div&gt;\r\n					&lt;div class=&quot;banner-content&quot;&gt;\r\n						&lt;h2&gt;Free Shipping&lt;/h2&gt;\r\n						&lt;p&gt;DELIVERY TO YOUR DOOR&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\r\n				&lt;div class=&quot;col col4&quot;&gt;\r\n					&lt;div class=&quot;images&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block3-home2.png&quot; alt=&quot;block3&quot;&gt;&lt;/div&gt;\r\n					&lt;div class=&quot;banner-content&quot;&gt;\r\n						&lt;h2&gt;Premium Furniture Designs&lt;/h2&gt;\r\n						&lt;p&gt;CREATE SMART TRENDY DECOR&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(187, 1, 25, 'Banner  Static Home2', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;container&quot;&gt;\r\n		&lt;div class=&quot;row&quot;&gt;\r\n			&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\r\n				&lt;div class=&quot;col col1&quot;&gt;\r\n					&lt;div class=&quot;images&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block-home2.png&quot; alt=&quot;block3&quot;&gt;&lt;/div&gt;\r\n					&lt;div class=&quot;banner-content&quot;&gt;\r\n						&lt;h2&gt;Meticulous Craftsmanship&lt;/h2&gt;\r\n						&lt;p&gt;VALUE FOR EVERY RUPEE&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\r\n				&lt;div class=&quot;col col2&quot;&gt;\r\n					&lt;div class=&quot;images&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block1-home2.png&quot; alt=&quot;block3&quot;&gt;&lt;/div&gt;\r\n					&lt;div class=&quot;banner-content&quot;&gt;\r\n						&lt;h2&gt;After Sales Care&lt;/h2&gt;\r\n						&lt;p&gt;PEACE OF MIND TO YOU&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\r\n				&lt;div class=&quot;col col3&quot;&gt;\r\n					&lt;div class=&quot;images&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block2-home2.png&quot; alt=&quot;block3&quot;&gt;&lt;/div&gt;\r\n					&lt;div class=&quot;banner-content&quot;&gt;\r\n						&lt;h2&gt;Free Shipping&lt;/h2&gt;\r\n						&lt;p&gt;DELIVERY TO YOUR DOOR&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col-md-3 col-sm-6 col-sms-12&quot;&gt;\r\n				&lt;div class=&quot;col col4&quot;&gt;\r\n					&lt;div class=&quot;images&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block3-home2.png&quot; alt=&quot;block3&quot;&gt;&lt;/div&gt;\r\n					&lt;div class=&quot;banner-content&quot;&gt;\r\n						&lt;h2&gt;Premium Furniture Designs&lt;/h2&gt;\r\n						&lt;p&gt;CREATE SMART TRENDY DECOR&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(191, 1, 26, 'Banner Center Home2', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-8 col-sm-8 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;row&quot;&gt;\r\n				&lt;div class=&quot;col-md-6 col-sm-6 col-sm-12&quot;&gt;\r\n					&lt;div class=&quot;col col1&quot;&gt;\r\n						&lt;div class=&quot;image&quot;&gt;\r\n							&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block4-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n					&lt;div class=&quot;col col2&quot;&gt;\r\n						&lt;div class=&quot;image&quot;&gt;\r\n							&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block5-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;image&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block6-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col4&quot;&gt;\r\n				&lt;div class=&quot;image&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block7-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(192, 2, 26, 'Banner Center Home2', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-8 col-sm-8 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;row&quot;&gt;\r\n				&lt;div class=&quot;col-md-6 col-sm-6 col-sm-12&quot;&gt;\r\n					&lt;div class=&quot;col col1&quot;&gt;\r\n						&lt;div class=&quot;image&quot;&gt;\r\n							&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block4-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;col-md-6 col-sm-6 col-sms-12&quot;&gt;\r\n					&lt;div class=&quot;col col2&quot;&gt;\r\n						&lt;div class=&quot;image&quot;&gt;\r\n							&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block5-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;col col3&quot;&gt;\r\n				&lt;div class=&quot;image&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block6-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col4&quot;&gt;\r\n				&lt;div class=&quot;image&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block7-home2.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(202, 2, 28, 'Banner Static Home3', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-sm-6 col-xs-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;image&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;span class=&quot;text&quot;&gt; &lt;span class=&quot;text1&quot;&gt;The world’s most popular office sofa&lt;/span&gt;&lt;span class=&quot;text2&quot;&gt;G64 - Over 1.3 Million Sold Worldwide&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-6 col-xs-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;image&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block1-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;span class=&quot;text&quot;&gt; &lt;span class=&quot;text1&quot;&gt;Sofa &amp;amp; Sofa Sets&lt;/span&gt;&lt;span class=&quot;text2&quot;&gt;Up to 50% off&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(201, 1, 28, 'Banner Static Home3', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-sm-6 col-xs-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;div class=&quot;image&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;span class=&quot;text&quot;&gt; &lt;span class=&quot;text1&quot;&gt;The world’s most popular office sofa&lt;/span&gt;&lt;span class=&quot;text2&quot;&gt;G64 - Over 1.3 Million Sold Worldwide&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-6 col-xs-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;div class=&quot;image&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block1-home3.jpg&quot; alt=&quot;image&quot;&gt;&lt;span class=&quot;text&quot;&gt; &lt;span class=&quot;text1&quot;&gt;Sofa &amp;amp; Sofa Sets&lt;/span&gt;&lt;span class=&quot;text2&quot;&gt;Up to 50% off&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(208, 2, 32, 'Banner Center Home3', NULL, '&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;image&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;\r\n			&lt;img src=&quot;image/catalog/demo/img-block/block3-home3.jpg&quot; alt=&quot;image&quot;&gt;\r\n			&lt;span class=&quot;text&quot;&gt;\r\n				&lt;span class=&quot;text1&quot;&gt;MODERN RELAXATION&lt;/span&gt;\r\n				&lt;span class=&quot;text2&quot;&gt;Unique Style , Innovative Design&lt;/span&gt;\r\n				&lt;span class=&quot;text3&quot;&gt;Your favorite lounging spot sofa&lt;/span&gt;\r\n			&lt;/span&gt;\r\n		&lt;/a&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(227, 1, 29, 'Banner Static Home4', NULL, '&lt;div class=&quot;banner-static&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col1&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-12 col-sm-6 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;col col2&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block1-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;'),
(215, 1, 33, 'Banner Static1 Home4', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block2-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;'),
(216, 2, 33, 'Banner Static1 Home4', NULL, '&lt;div class=&quot;banner-static1&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block2-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;'),
(221, 1, 34, 'Banner Center Home4', NULL, '																				&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;banner-image&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block3-home4.png&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n				&lt;span class=&quot;sale&quot;&gt;-25%&lt;/span&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-8 col-sm-8 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;banner-content&quot;&gt;\r\n				&lt;h3&gt;Chairs &amp;amp; Chaises&lt;/h3&gt;\r\n				&lt;h2&gt;Ethen Accent Chair - Laguna&lt;/h2&gt;\r\n				&lt;p&gt;Vacation at Home. With its dashingly refined good looks, the Ethen accent chair \r\nis perfectly suited for any room that can use a dose of vibrant colour. \r\nTight-back upholstery from top to bottom gives the chair.&lt;/p&gt;\r\n				&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																		'),
(222, 2, 34, 'Banner Center Home4', NULL, '																				&lt;div class=&quot;banner-center&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-md-4 col-sm-4 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;banner-image&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block3-home4.png&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n				&lt;span class=&quot;sale&quot;&gt;-25%&lt;/span&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-md-8 col-sm-8 col-sms-12&quot;&gt;\r\n			&lt;div class=&quot;banner-content&quot;&gt;\r\n				&lt;h3&gt;Chairs &amp;amp; Chaises&lt;/h3&gt;\r\n				&lt;h2&gt;Ethen Accent Chair - Laguna&lt;/h2&gt;\r\n				&lt;p&gt;Vacation at Home. With its dashingly refined good looks, the Ethen accent chair \r\nis perfectly suited for any room that can use a dose of vibrant colour. \r\nTight-back upholstery from top to bottom gives the chair.&lt;/p&gt;\r\n				&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																		'),
(226, 2, 35, 'Banner Right Home4', NULL, '										&lt;div class=&quot;banner-right&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block4-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;									'),
(225, 1, 35, 'Banner Right Home4', NULL, '										&lt;div class=&quot;banner-right&quot;&gt;\r\n	&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/img-block/block4-home4.jpg&quot; alt=&quot;image&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;									');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cmsblock_to_store`
--

CREATE TABLE `oc_cmsblock_to_store` (
  `cmsblock_id` int(11) DEFAULT NULL,
  `store_id` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
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
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.80180001, 1, '2017-03-25 02:39:21'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2017-03-25 04:37:42'),
(3, 'Euro', 'EUR', '', '€', '2', 0.92580003, 1, '2017-03-25 02:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
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
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'minh', 'nguyễn', 'demo@towerthemes.com', '0123456798', '', 'fcc96f3175d600fa0e53779a4c174e162cdb7dba', 'zNGnlnghk', '', '', 1, 1, '', '127.0.0.1', 1, 1, 0, '', '', '2016-12-09 11:13:49'),
(2, 1, 0, 1, 'demo', 'plaza', 'demo@plazathemes.com', '1234567890', '', '07480a67fed9517269e5f4fd62f956679a6e7a62', '9gNPgjBf4', NULL, NULL, 0, 2, '', '127.0.0.1', 1, 1, 0, '', '', '2017-02-28 16:48:56'),
(3, 1, 1, 1, 'plaza', 'themes', 'demo1@towerthemes.com', '1234567890', '', 'a090e607cb9353ccb1c35101a54973d07194e1ab', 'Z420pvYws', NULL, NULL, 0, 3, '', '127.0.0.1', 1, 1, 0, '', '', '2017-03-13 15:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2016-12-09 11:13:50'),
(2, 2, '127.0.0.1', '2017-02-28 16:49:17'),
(3, 3, '127.0.0.1', '2017-03-13 15:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'demo@towerthemes.com', '127.0.0.1', 7, '2017-02-28 10:47:24', '2017-03-20 03:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
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
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(2, 48, '2017-03-01 16:18:22'),
(2, 60, '2017-03-23 11:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
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
(20, 'theme', 'theme_default'),
(23, 'module', 'installtemp'),
(24, 'module', 'carousel'),
(64, 'module', 'occmsblock'),
(26, 'module', 'featured'),
(27, 'module', 'special'),
(28, 'module', 'latest'),
(75, 'module', 'ochozmegamenu'),
(45, 'module', 'ocblog'),
(32, 'module', 'oclayerednavigation'),
(70, 'module', 'ocnewproductslider'),
(34, 'module', 'ocproductrotator'),
(35, 'module', 'ocquickview'),
(36, 'module', 'ocsearchcategory'),
(37, 'module', 'ocslideshow'),
(38, 'module', 'ocspecialproductslider'),
(65, 'module', 'octabcategoryslider'),
(72, 'module', 'occountdown'),
(71, 'module', 'newslettersubscribe'),
(42, 'module', 'ocbestproductslider'),
(62, 'module', 'oc_page_builder'),
(69, 'module', 'ocmostproduct'),
(67, 'module', 'ocfeatureslider'),
(74, 'module', 'ocrandomslider'),
(51, 'captcha', 'basic_captcha'),
(53, 'module', 'ocbestsellerpage'),
(54, 'dashboard', 'activity'),
(55, 'dashboard', 'sale'),
(56, 'dashboard', 'recent'),
(57, 'dashboard', 'order'),
(58, 'dashboard', 'online'),
(59, 'dashboard', 'map'),
(60, 'dashboard', 'customer'),
(61, 'dashboard', 'chart'),
(63, 'module', 'occategorythumbnail'),
(76, 'module', 'ocinstagram'),
(77, 'module', 'ttlasttweeter'),
(78, 'module', 'ocfeaturedcategory');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(8, 1, 0),
(7, 1, 0),
(6, 1, 0),
(5, 1, 0),
(4, 1, 0),
(3, 1, 0),
(2, 1, 0),
(1, 1, 0),
(17, 2, 0),
(16, 2, 0),
(15, 2, 0),
(14, 2, 0),
(13, 2, 0),
(12, 2, 0),
(11, 2, 0),
(10, 2, 0),
(9, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(8, 1, 1, 'Orange'),
(7, 2, 1, 'Pink'),
(7, 1, 1, 'Pink'),
(6, 2, 1, 'Yellow'),
(6, 1, 1, 'Yellow'),
(5, 2, 1, 'Brown'),
(5, 1, 1, 'Brown'),
(16, 1, 2, 'Giorgio Armani'),
(15, 2, 2, 'Prada'),
(15, 1, 2, 'Prada'),
(14, 2, 2, 'Versace'),
(14, 1, 2, 'Versace'),
(13, 2, 2, 'Ferragamo'),
(13, 1, 2, 'Ferragamo'),
(12, 2, 2, 'Christian dior'),
(4, 2, 1, 'Black'),
(4, 1, 1, 'Black'),
(3, 2, 1, 'Green'),
(3, 1, 1, 'Green'),
(2, 2, 1, 'Blue'),
(2, 1, 1, 'Blue'),
(1, 2, 1, 'Red'),
(12, 1, 2, 'Christian dior'),
(11, 2, 2, 'Louis vuitton'),
(11, 1, 2, 'Louis vuitton'),
(10, 2, 2, 'Chanel'),
(10, 1, 2, 'Chanel'),
(9, 2, 2, 'Hermes'),
(9, 1, 2, 'Hermes'),
(1, 1, 1, 'Red'),
(8, 2, 1, 'Orange'),
(16, 2, 2, 'Giorgio Armani'),
(17, 1, 2, 'Ermenegildo zegna'),
(17, 2, 2, 'Ermenegildo zegna');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 2, 'Color'),
(2, 2, 'Manufacture'),
(1, 1, 'Color'),
(2, 1, 'Manufacture');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&amp;nbsp;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&amp;nbsp;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&amp;nbsp;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&amp;nbsp;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us &amp;nbsp;ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n', 'About Us', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&amp;nbsp;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&amp;nbsp;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&amp;nbsp;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 5, 0),
(4, 4, 0),
(4, 3, 0),
(4, 2, 0),
(4, 1, 0),
(4, 0, 0),
(3, 5, 0),
(3, 4, 0),
(3, 3, 0),
(3, 2, 0),
(3, 1, 0),
(3, 0, 0),
(5, 5, 0),
(5, 4, 0),
(5, 3, 0),
(5, 2, 0),
(5, 1, 0),
(5, 0, 0),
(6, 5, 0),
(6, 4, 0),
(6, 3, 0),
(6, 2, 0),
(6, 1, 0),
(6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
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
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'French', 'fr-gb', 'fr_US.UTF-8,fr_US,fr-gb,french', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home 1: Home'),
(3, 'Home 1: Category'),
(4, 'Home 1: Default'),
(14, 'Home 2: Home'),
(15, 'Home 3: Home'),
(16, 'Home 4: Home'),
(22, 'Home 1: Product'),
(23, 'Home 1: Manufacturer'),
(24, 'Home 1: Manufacturer Product,Search Product,Special Product'),
(25, 'Home 2: Category'),
(26, 'Home 2: Product'),
(27, 'Home 2: Default'),
(28, 'Home 2: Manufacturer'),
(29, 'Home 2: Manufacturer Product,Search Product,Special Product'),
(30, 'Home 3: Category'),
(31, 'Home 3: Default'),
(32, 'Home 3: Manufacturer'),
(33, 'Home 3: Manufacturer Product,Search Product,Special Product'),
(34, 'Home 3: Product'),
(35, 'Home 4: Category'),
(36, 'Home 4: Default'),
(37, 'Home 4: Manufacturer'),
(38, 'Home 4: Manufacturer Product,Search Product,Special Product'),
(39, 'Home 4: Product');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(760, 3, 'ttlasttweeter', 'block6', 0),
(788, 22, 'occmsblock.105', 'column_right', 0),
(757, 3, 'ochozmegamenu.137', 'block2', 0),
(787, 22, 'ocinstagram.103', 'block7', 0),
(764, 4, 'newslettersubscribe.101', 'block4', 0),
(786, 22, 'ttlasttweeter', 'block6', 0),
(658, 15, 'ocinstagram.103', 'block7', 0),
(615, 14, 'occmsblock.122', 'block5', 0),
(698, 16, 'ttlasttweeter', 'block6', 0),
(785, 22, 'occmsblock.122', 'block5', 0),
(759, 3, 'occmsblock.122', 'block5', 0),
(617, 14, 'ocinstagram.103', 'block7', 0),
(753, 1, 'oc_page_builder.66', 'content_top', 1),
(752, 1, 'ocinstagram.103', 'block7', 0),
(751, 1, 'ttlasttweeter', 'block6', 0),
(697, 16, 'occmsblock.122', 'block5', 0),
(758, 3, 'newslettersubscribe.101', 'block4', 0),
(616, 14, 'ttlasttweeter', 'block6', 0),
(614, 14, 'ochozmegamenu.93', 'block1', 0),
(657, 15, 'ttlasttweeter', 'block6', 0),
(656, 15, 'occmsblock.122', 'block5', 0),
(655, 15, 'ochozmegamenu.93', 'block1', 0),
(750, 1, 'occmsblock.122', 'block5', 0),
(749, 1, 'newslettersubscribe.101', 'block4', 0),
(748, 1, 'ochozmegamenu.137', 'block2', 0),
(747, 1, 'occmsblock.120', 'block1', 0),
(756, 3, 'occmsblock.120', 'block1', 0),
(755, 3, 'occmsblock.104', 'column_left', 1),
(754, 3, 'oclayerednavigation', 'column_left', 0),
(784, 22, 'newslettersubscribe.101', 'block4', 0),
(783, 22, 'ochozmegamenu.137', 'block2', 0),
(782, 22, 'occmsblock.120', 'block1', 0),
(765, 4, 'occmsblock.122', 'block5', 0),
(763, 4, 'ochozmegamenu.137', 'block2', 0),
(762, 4, 'occmsblock.120', 'block1', 0),
(772, 23, 'ttlasttweeter', 'block6', 0),
(771, 23, 'occmsblock.122', 'block5', 0),
(770, 23, 'newslettersubscribe.101', 'block4', 0),
(769, 23, 'ochozmegamenu.137', 'block2', 0),
(768, 23, 'occmsblock.120', 'block1', 0),
(778, 24, 'newslettersubscribe.101', 'block4', 0),
(777, 24, 'ochozmegamenu.137', 'block2', 0),
(776, 24, 'occmsblock.120', 'block1', 0),
(775, 24, 'occmsblock.104', 'column_left', 1),
(774, 24, 'ocrandomslider.107', 'column_left', 0),
(618, 14, 'oc_page_builder.75', 'content_top', 1),
(628, 25, 'occmsblock.122', 'block5', 0),
(627, 25, 'ochozmegamenu.93', 'block1', 0),
(626, 25, 'occmsblock.104', 'column_left', 1),
(625, 25, 'oclayerednavigation', 'column_left', 0),
(629, 25, 'ttlasttweeter', 'block6', 0),
(630, 25, 'ocinstagram.103', 'block7', 0),
(638, 26, 'ocinstagram.103', 'block7', 0),
(637, 26, 'ttlasttweeter', 'block6', 0),
(636, 26, 'occmsblock.122', 'block5', 0),
(635, 26, 'ochozmegamenu.93', 'block1', 0),
(639, 26, 'occmsblock.105', 'column_right', 0),
(640, 26, 'ocrandomslider.107', 'column_right', 1),
(641, 27, 'ochozmegamenu.93', 'block1', 0),
(642, 27, 'occmsblock.122', 'block5', 0),
(643, 27, 'ttlasttweeter', 'block6', 0),
(644, 27, 'ocinstagram.103', 'block7', 0),
(645, 28, 'ochozmegamenu.93', 'block1', 0),
(646, 28, 'occmsblock.122', 'block5', 0),
(647, 28, 'ttlasttweeter', 'block6', 0),
(648, 28, 'ocinstagram.103', 'block7', 0),
(793, 29, 'occmsblock.122', 'block5', 0),
(792, 29, 'ochozmegamenu.93', 'block1', 0),
(791, 29, 'occmsblock.104', 'column_left', 1),
(790, 29, 'ocrandomslider.107', 'column_left', 0),
(659, 15, 'oc_page_builder.81', 'content_top', 1),
(669, 30, 'occmsblock.122', 'block5', 0),
(668, 30, 'ochozmegamenu.93', 'block1', 0),
(667, 30, 'occmsblock.104', 'column_left', 1),
(666, 30, 'oclayerednavigation', 'column_left', 0),
(670, 30, 'ttlasttweeter', 'block6', 0),
(671, 30, 'ocinstagram.103', 'block7', 0),
(672, 31, 'ochozmegamenu.93', 'block1', 0),
(673, 31, 'occmsblock.122', 'block5', 0),
(674, 31, 'ttlasttweeter', 'block6', 0),
(675, 31, 'ocinstagram.103', 'block7', 0),
(676, 32, 'ochozmegamenu.93', 'block1', 0),
(677, 32, 'occmsblock.122', 'block5', 0),
(678, 32, 'ttlasttweeter', 'block6', 0),
(679, 32, 'ocinstagram.103', 'block7', 0),
(680, 33, 'ocrandomslider.107', 'column_left', 0),
(681, 33, 'occmsblock.104', 'column_left', 1),
(682, 33, 'ochozmegamenu.93', 'block1', 0),
(683, 33, 'occmsblock.122', 'block5', 0),
(684, 33, 'ttlasttweeter', 'block6', 0),
(685, 33, 'ocinstagram.103', 'block7', 0),
(799, 34, 'ocinstagram.103', 'block7', 0),
(798, 34, 'ttlasttweeter', 'block6', 0),
(797, 34, 'occmsblock.122', 'block5', 0),
(796, 34, 'ochozmegamenu.93', 'block1', 0),
(696, 16, 'newslettersubscribe.101', 'block4', 0),
(695, 16, 'ochozmegamenu.93', 'block1', 0),
(699, 16, 'ocinstagram.103', 'block7', 0),
(700, 16, 'oc_page_builder.85', 'content_top', 0),
(734, 35, 'occmsblock.122', 'block5', 0),
(733, 35, 'newslettersubscribe.101', 'block4', 0),
(732, 35, 'ochozmegamenu.93', 'block1', 0),
(731, 35, 'occmsblock.104', 'column_left', 1),
(730, 35, 'oclayerednavigation', 'column_left', 0),
(740, 36, 'ttlasttweeter', 'block6', 0),
(739, 36, 'occmsblock.122', 'block5', 0),
(738, 36, 'newslettersubscribe.101', 'block4', 0),
(737, 36, 'ochozmegamenu.93', 'block1', 0),
(745, 37, 'ttlasttweeter', 'block6', 0),
(744, 37, 'occmsblock.122', 'block5', 0),
(743, 37, 'newslettersubscribe.101', 'block4', 0),
(742, 37, 'ochozmegamenu.93', 'block1', 0),
(718, 38, 'ocrandomslider.107', 'column_left', 0),
(719, 38, 'occmsblock.104', 'column_left', 1),
(720, 38, 'ochozmegamenu.93', 'block1', 0),
(721, 38, 'newslettersubscribe.101', 'block4', 0),
(722, 38, 'occmsblock.122', 'block5', 0),
(723, 38, 'ttlasttweeter', 'block6', 0),
(724, 38, 'ocinstagram.103', 'block7', 0),
(805, 39, 'ttlasttweeter', 'block6', 0),
(804, 39, 'occmsblock.122', 'block5', 0),
(803, 39, 'newslettersubscribe.101', 'block4', 0),
(802, 39, 'ochozmegamenu.93', 'block1', 0),
(735, 35, 'ttlasttweeter', 'block6', 0),
(736, 35, 'ocinstagram.103', 'block7', 0),
(741, 36, 'ocinstagram.103', 'block7', 0),
(746, 37, 'ocinstagram.103', 'block7', 0),
(761, 3, 'ocinstagram.103', 'block7', 0),
(766, 4, 'ttlasttweeter', 'block6', 0),
(767, 4, 'ocinstagram.103', 'block7', 0),
(773, 23, 'ocinstagram.103', 'block7', 0),
(779, 24, 'occmsblock.122', 'block5', 0),
(780, 24, 'ttlasttweeter', 'block6', 0),
(781, 24, 'ocinstagram.103', 'block7', 0),
(789, 22, 'ocrandomslider.107', 'column_right', 1),
(794, 29, 'ttlasttweeter', 'block6', 0),
(795, 29, 'ocinstagram.103', 'block7', 0),
(800, 34, 'occmsblock.105', 'column_right', 0),
(801, 34, 'ocrandomslider.107', 'column_right', 1),
(806, 39, 'ocinstagram.103', 'block7', 0),
(807, 39, 'occmsblock.105', 'column_right', 0),
(808, 39, 'ocrandomslider.107', 'column_right', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(509, 16, 3, 'common/home'),
(500, 15, 2, 'common/home'),
(491, 14, 1, 'common/home'),
(517, 1, 0, 'common/home'),
(520, 23, 0, 'product/manufacturer'),
(519, 4, 0, ''),
(523, 24, 0, 'product/search'),
(518, 3, 0, 'product/category'),
(522, 24, 0, 'product/manufacturer/%'),
(521, 24, 0, 'product/special'),
(524, 22, 0, 'product/product'),
(492, 25, 1, 'product/category'),
(494, 26, 1, 'product/product'),
(495, 27, 1, ''),
(496, 28, 1, 'product/manufacturer'),
(527, 29, 1, 'product/search'),
(526, 29, 1, 'product/manufacturer/%'),
(525, 29, 1, 'product/special'),
(501, 30, 2, 'product/category'),
(502, 31, 2, ''),
(503, 32, 2, 'product/manufacturer'),
(504, 33, 2, 'product/special'),
(505, 33, 2, 'product/manufacturer/%'),
(506, 33, 2, 'product/search'),
(528, 34, 2, 'product/product'),
(510, 38, 3, 'product/special'),
(511, 38, 3, 'product/manufacturer/%'),
(512, 38, 3, 'product/search'),
(529, 39, 3, 'product/product'),
(514, 35, 3, 'product/category'),
(515, 36, 3, ''),
(516, 37, 3, 'product/manufacturer');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
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
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(7, 0),
(7, 1),
(7, 2),
(7, 3),
(8, 0),
(8, 1),
(8, 2),
(8, 3),
(9, 0),
(9, 1),
(9, 2),
(9, 3),
(10, 0),
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu`
--

CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_description`
--

CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_module`
--

CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
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
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 'Theme Administrator', 'theme_admin', 'Plaza Theme', '1.0', 'http://www.plazathemes.com/', '<modification>\r\n    <name>Theme Administrator</name>\r\n	<version>1.0</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>theme_admin</code>\r\n\r\n	<file path="admin/controller/common/header.php">\r\n        <operation>\r\n            <search><![CDATA[$data[''title''] = $this->document->getTitle();]]></search>\r\n            <add position="replace"><![CDATA[\r\n				$data[''title''] = strip_tags($this->document->getTitle());\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>', 1, '2016-07-12 10:05:29'),
(25, 'Blog For Opencart 2.3.x', 'oc_blog', 'Plaza Theme', '1.0', '', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <code>oc_blog</code>\r\n    <name>Blog For Opencart 2.3.x</name>\r\n    <version>1.0</version>\r\n    <author>Plaza Theme</author>\r\n    \r\n    <file path="admin/controller/common/column_left.php">\r\n        <operation>\r\n            <search><![CDATA[\r\n				if ($this->user->hasPermission(''access'', ''marketing/marketing'')) {\r\n            ]]></search>\r\n            <add position="before"><![CDATA[\r\n                $this->load->language(''extension/module/ocblog'');\r\n\r\n                $blog_menu = array();\r\n\r\n                if ($this->user->hasPermission(''access'', ''blog/article'')) {\r\n                    $blog_menu[] = array(\r\n                        ''name'' => $this->language->get(''text_blog_article''),\r\n                        ''href'' => $this->url->link(''blog/article'', ''token='' . $this->session->data[''token''], true),\r\n                        ''children'' => array()\r\n                    );\r\n                }\r\n\r\n                if ($this->user->hasPermission(''access'', ''blog/articlelist'')) {\r\n                    $blog_menu[] = array(\r\n                        ''name'' => $this->language->get(''text_blog_article_list''),\r\n                        ''href'' => $this->url->link(''blog/articlelist'', ''token='' . $this->session->data[''token''], true),\r\n                        ''children'' => array()\r\n                    );\r\n                }\r\n\r\n                if($blog_menu) {\r\n                    $data[''menus''][] = array(\r\n                        ''id''       => ''menu-blog'',\r\n                        ''icon''     => ''fa-pencil-square-o'', \r\n                        ''name''     => $this->language->get(''text_blog''),\r\n                        ''href''     => '''',\r\n                        ''children'' => $blog_menu\r\n                    );\r\n                }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path="admin/controller/extension/theme/theme_default.php">\r\n        <operation>\r\n            <search><![CDATA[$this->load->language(''extension/theme/theme_default'');]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    // Blog\r\n                    $this->load->language(''extension/module/ocblog'');\r\n                    // End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$data[''entry_image_related''] = $this->language->get(''entry_image_related'');]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    // Blog\r\n                    $data[''entry_image_article''] = $this->language->get(''entry_image_article'');\r\n                    $data[''entry_image_blog''] = $this->language->get(''entry_image_blog'');\r\n                    // End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->error[''image_related''])) {]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    // Blog\r\n                    if (isset($this->error[''image_article''])) {\r\n                        $data[''error_image_article''] = $this->error[''image_article''];\r\n                    } else {\r\n                        $data[''error_image_article''] = '''';\r\n                    }\r\n\r\n                    if (isset($this->error[''image_blog''])) {\r\n                        $data[''error_image_blog''] = $this->error[''image_blog''];\r\n                    } else {\r\n                        $data[''error_image_blog''] = '''';\r\n                    }\r\n                    // End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->post[''theme_default_image_related_width''])) {]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    // Blog\r\n                    if (isset($this->request->post[''theme_default_image_article_width''])) {\r\n                        $data[''theme_default_image_article_width''] = $this->request->post[''theme_default_image_article_width''];\r\n                    } elseif (isset($setting_info[''theme_default_image_article_width''])) {\r\n                        $data[''theme_default_image_article_width''] = $this->config->get(''theme_default_image_article_width'');\r\n                    } else {\r\n                        $data[''theme_default_image_article_width''] = 400;\r\n                    }\r\n\r\n                    if (isset($this->request->post[''theme_default_image_article_height''])) {\r\n                        $data[''theme_default_image_article_height''] = $this->request->post[''theme_default_image_article_height''];\r\n                    } elseif (isset($setting_info[''theme_default_image_article_height''])) {\r\n                        $data[''theme_default_image_article_height''] = $this->config->get(''theme_default_image_article_height'');\r\n                    } else {\r\n                        $data[''theme_default_image_article_height''] = 400;\r\n                    }\r\n\r\n                    if (isset($this->request->post[''theme_default_image_blog_width''])) {\r\n                        $data[''theme_default_image_blog_width''] = $this->request->post[''theme_default_image_blog_width''];\r\n                    } elseif (isset($setting_info[''theme_default_image_blog_width''])) {\r\n                        $data[''theme_default_image_blog_width''] = $this->config->get(''theme_default_image_blog_width'');\r\n                    } else {\r\n                        $data[''theme_default_image_blog_width''] = 100;\r\n                    }\r\n\r\n                    if (isset($this->request->post[''theme_default_image_blog_height''])) {\r\n                        $data[''theme_default_image_blog_height''] = $this->request->post[''theme_default_image_blog_height''];\r\n                    } elseif (isset($setting_info[''theme_default_image_blog_height''])) {\r\n                        $data[''theme_default_image_blog_height''] = $this->config->get(''theme_default_image_blog_height'');\r\n                    } else {\r\n                        $data[''theme_default_image_blog_height''] = 100;\r\n                    }\r\n                    // End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (!$this->request->post[''theme_default_image_related_width''] || !$this->request->post[''theme_default_image_related_height'']) {]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    // Blog\r\n                    $this->load->language(''module/ocblog'');\r\n                    if (!$this->request->post[''theme_default_image_article_width''] || !$this->request->post[''theme_default_image_article_height'']) {\r\n                        $this->error[''image_article''] = $this->language->get(''error_image_article'');\r\n                    }\r\n\r\n                    if (!$this->request->post[''theme_default_image_blog_width''] || !$this->request->post[''theme_default_image_blog_height'']) {\r\n                        $this->error[''image_blog''] = $this->language->get(''error_image_blog'');\r\n                    }\r\n                    // End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path="admin/view/template/extension/theme/theme_default.tpl">\r\n        <operation>\r\n            <search><![CDATA[<label class="col-sm-2 control-label" for="input-image-related"><?php echo $entry_image_related; ?></label>]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    <label class="col-sm-2 control-label" for="input-image-article"><?php echo $entry_image_article; ?></label>\r\n                    <div class="col-sm-10">\r\n                      <div class="row">\r\n                        <div class="col-sm-6">\r\n                          <input type="text" name="theme_default_image_article_width" value="<?php echo $theme_default_image_article_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-article" class="form-control" />\r\n                        </div>\r\n                        <div class="col-sm-6">\r\n                          <input type="text" name="theme_default_image_article_height" value="<?php echo $theme_default_image_article_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />\r\n                        </div>\r\n                      </div>\r\n                      <?php if ($error_image_article) { ?>\r\n                      <div class="text-danger"><?php echo $error_image_article; ?></div>\r\n                      <?php } ?>\r\n                    </div>\r\n                  </div>\r\n                  <div class="form-group required">\r\n                  <label class="col-sm-2 control-label" for="input-image-blog"><?php echo $entry_image_blog; ?></label>\r\n                    <div class="col-sm-10">\r\n                      <div class="row">\r\n                        <div class="col-sm-6">\r\n                          <input type="text" name="theme_default_image_blog_width" value="<?php echo $theme_default_image_blog_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-blog" class="form-control" />\r\n                        </div>\r\n                        <div class="col-sm-6">\r\n                          <input type="text" name="theme_default_image_blog_height" value="<?php echo $theme_default_image_blog_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />\r\n                        </div>\r\n                      </div>\r\n                      <?php if ($error_image_blog) { ?>\r\n                      <div class="text-danger"><?php echo $error_image_blog; ?></div>\r\n                      <?php } ?>\r\n                    </div>\r\n                  </div>\r\n                  <div class="form-group required">\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n</modification>\r\n', 1, '2017-02-25 09:39:07'),
(16, 'Product Rotator Image by Plaza Themes', 'product_rotator', 'Plaza Theme', '1.0', 'http://www.plazathemes.com/', '<modification>\r\n    <name>Product Rotator Image by Plaza Themes</name>\r\n	<version>1.0</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>product_rotator</code>\r\n\r\n    <!-- Hook into admin product controller -->\r\n	<file path="admin/controller/catalog/product.php">\r\n		<operation>\r\n			<search ><![CDATA[public function index() {]]></search>\r\n			<add position="after"><![CDATA[\r\n				/* Product Rotator */\r\n                $this->load->model(''catalog/ocproductrotator'');\r\n        \r\n                $this->model_catalog_ocproductrotator->installProductRotator();\r\n			]]></add>\r\n		</operation>\r\n        <operation>\r\n            <search ><![CDATA[$this->load->language(''catalog/product'');]]></search>\r\n            <add position="before"><![CDATA[\r\n                /* Product Rotator */\r\n                $this->load->language(''extension/module/ocproductrotator'');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[$data[''entry_image''] = $this->language->get(''entry_image'');]]></search>\r\n            <add position="after"><![CDATA[\r\n				/* Product Rotator */\r\n                $data[''entry_is_rotator''] = $this->language->get(''entry_is_rotator'');\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[''sort_order'' => $product_image[''sort_order'']]]></search>\r\n            <add position="before"><![CDATA[\r\n                /* Product Rotator */\r\n                ''is_rotator'' => $product_image[''is_rotator''],\r\n            ]]></add>\r\n        </operation>\r\n	</file>\r\n\r\n    <!-- Hook into admin product model -->\r\n    <file path="admin/model/catalog/product.php">\r\n        <operation>\r\n            <search><![CDATA[$this->db->query("INSERT INTO " . DB_PREFIX . "product_image SET product_id = ''" . (int)$product_id . "'', image = ''" . $this->db->escape($product_image[''image'']) . "'', sort_order = ''" . (int)$product_image[''sort_order''] . "''");]]></search>\r\n            <add position="replace">\r\n                <![CDATA[\r\n                    /* Product Rotator */\r\n                    $this->db->query("INSERT INTO " . DB_PREFIX . "product_image SET product_id = ''" . (int)$product_id . "'', image = ''" . $this->db->escape($product_image[''image'']) . "'', sort_order = ''" . (int)$product_image[''sort_order''] . "'', is_rotator = ''" . (int)$product_image[''is_rotator''] . "''");\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Modify admin product form -->\r\n    <file path="admin/view/template/catalog/product_form.tpl">\r\n        <operation>\r\n            <search><![CDATA[<td class="text-right"><?php echo $entry_sort_order; ?></td>]]></search>\r\n            <add position="after">\r\n                <![CDATA[\r\n                    <!-- Product Rotator -->\r\n                    <td class="text-center"><?php echo $entry_is_rotator; ?></td>\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<td class="text-left"><button type="button" onclick="$(''#image-row<?php echo $image_row; ?>'').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    <!-- Product Rotator -->\r\n                    <td class="text-center">\r\n                    <select name="product_image[<?php echo $image_row; ?>][is_rotator]" class="form-control rotator-select">\r\n                      <?php if(isset($product_image[''is_rotator'']) && (int) $product_image[''is_rotator''] == 1): ?>\r\n                        <option value="1" selected="selected">Yes</option>\r\n                        <option value="0">No</option>\r\n                      <?php else: ?>\r\n                        <option value="1">Yes</option>\r\n                        <option value="0" selected="selected">No</option>\r\n                      <?php endif; ?>\r\n                    </select>\r\n                    </td>\r\n                    <!-- End -->\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[function addImage() {]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    $(''#tab-image tfoot td:first'').attr(''colspan'', 3);\r\n                    \r\n                    $(''.rotator-select'').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(''.rotator-select'').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$(''#images tbody'').append(html);]]></search>\r\n            <add position="after">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    $(''.rotator-select'').change(function() {\r\n                    var value = $(this).val();\r\n                    if(value == 1) {\r\n                      $(''.rotator-select'').val(0);\r\n                      $(this).val(1);\r\n                    }\r\n                    });\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[html += ''  <td class="text-left"><button type="button" onclick="$(\\''#image-row'' + image_row  + ''\\'').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>'';]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    html += '' <td class="text-center">'';\r\n                    html += ''   <select name="product_image['' + image_row + ''][is_rotator]" class="form-control rotator-select">'';\r\n                    html += ''     <option value="1">Yes</option>'';\r\n                    html += ''     <option value="0" selected="selected">No</option>'';\r\n                    html += ''   </select>'';\r\n                    html += '' </td>'';\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n</modification>', 1, '2016-08-22 22:12:10'),
(12, 'Search Category by Plaza Themes', 'search_category', 'Plaza Theme', '1.0', 'http://www.plazathemes.com/', '<modification>\r\n    <name>Search Category by Plaza Themes</name>\r\n	<version>1.0</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>search_category</code>\r\n\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search ><![CDATA[$data[''search''] = $this->load->controller(''common/search'');]]></search>\r\n			<add position="replace"><![CDATA[\r\n				/* Edit for Search Category Module by OCMod */\r\n				$module_status = $this->config->get(''ocsearchcategory_status'');\r\n				if($module_status) {\r\n					$data[''search''] = $this->load->controller(''extension/module/ocsearchcategory'');\r\n				} else {\r\n					$data[''search''] = $this->load->controller(''common/search'');\r\n				}\r\n				/* End Code */\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', 1, '2016-08-22 22:06:22'),
(13, 'Layered Navigation Ajax by Plaza Themes', 'layered_navigation', 'Plaza Theme', '1.1', 'http://www.plazathemes.com/', '<modification>\r\n    <name>Layered Navigation Ajax by Plaza Themes</name>\r\n	<version>1.1</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>layered_navigation</code>\r\n\r\n	<file path="catalog/controller/product/category.php">\r\n		<operation>\r\n			<search><![CDATA[$this->response->setOutput($this->load->view(''product/category'', $data));]]></search>\r\n			<add position="replace"><![CDATA[\r\n				/* Edit for Layered Navigation Ajax Module by OCMod */\r\n				$module_status = $this->config->get(''oclayerednavigation_status'');\r\n				if($module_status) {\r\n					$data[''oclayerednavigation_loader_img''] = $this->config->get(''config_url'') . ''image/'' . $this->config->get(''oclayerednavigation_loader_img'');\r\n                    $this->response->setOutput($this->load->view(''extension/module/oclayerednavigation/occategory.tpl'', $data));\r\n				} else {\r\n                    $this->response->setOutput($this->load->view(''product/category'', $data));\r\n                }\r\n			]]></add>\r\n		</operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[''href'' => $this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''_'' . $result[''category_id''] . $url)]]></search>\r\n            <add position="replace"><![CDATA[''href''  => $this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $result[''category_id''] . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.sort_order&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.sort_order&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=pd.name&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=pd.name&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=pd.name&order=DESC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=pd.name&order=DESC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.price&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.price&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.price&order=DESC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.price&order=DESC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=rating&order=DESC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=rating&order=DESC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=rating&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=rating&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.model&order=ASC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.model&order=ASC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . ''&sort=p.model&order=DESC'' . $url)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . ''&sort=p.model&order=DESC'' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . $url . ''&limit='' . $value)]]></search>\r\n            <add position="replace"><![CDATA[$this->config->get(''config_url'') . ''index.php?route=product/category&path='' . $category_id . $url . ''&limit='' . $value]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$pagination->url = $this->url->link(''product/category'', ''path='' . $this->request->get[''path''] . $url . ''&page={page}'');]]></search>\r\n            <add position="replace"><![CDATA[$pagination->url = $this->config->get(''config_url'') . ''index.php?route=extension/module/oclayerednavigation/category&path='' . $category_id . $url . ''&page={page}'';]]></add>\r\n        </operation>\r\n	</file>\r\n\r\n    <file path="catalog/model/catalog/product.php">\r\n        <operation>\r\n            <search><![CDATA[if (!empty($data[''filter_manufacturer_id''])) {]]></search>\r\n            <add position="before">\r\n                <![CDATA[\r\n                    /* Price range */\r\n                    if  (!empty($data[''filter_price''])) {\r\n                        $min_price = $data[''filter_price''][''min_price''];\r\n                        $max_price = $data[''filter_price''][''max_price''];\r\n            \r\n                        $sql .=  " AND p.price >=''". $min_price ."'' AND p.price <=''". $max_price ."''" ;\r\n                    }\r\n                    /* End */\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n</modification>', 1, '2016-08-22 22:11:29'),
(14, 'Category Thumbnail for v2.3.x by Plaza Themes', 'category_thumbnail', 'Plaza Theme', '1.0', 'http://www.plazathemes.com/', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Category Thumbnail for v2.3.x by Plaza Themes</name>\r\n	<version>1.0</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>category_thumbnail</code>\r\n\r\n	<file path="admin/controller/common/column_left.php">\r\n		<operation>\r\n			<search><![CDATA[if ($this->user->hasPermission(''access'', ''catalog/category'')) {]]></search>\r\n			<add position="before"><![CDATA[\r\n				// Categories\r\n\r\n				$categories = array();\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[if ($this->user->hasPermission(''access'', ''catalog/category'')) {]]></search>\r\n			<add position="after">\r\n			<![CDATA[\r\n				$categories[] = array(\r\n					''name''	   => $this->language->get(''text_category''),\r\n					''href''     => $this->url->link(''catalog/category'', ''token='' . $this->session->data[''token''], true),\r\n					''children'' => array()\r\n				);\r\n\r\n			}\r\n\r\n			$this->load->language(''catalog/occategorythumbnail'');\r\n\r\n			if($this->user->hasPermission(''access'', ''catalog/occategorythumbnail'')) {\r\n				$categories[] = array(\r\n					''name''	   => $this->language->get(''text_thumbnail''),\r\n					''href''     => $this->url->link(''catalog/occategorythumbnail'', ''token='' . $this->session->data[''token''], true),\r\n					''children'' => array()\r\n				);\r\n			}\r\n\r\n			/*		\r\n			]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[if ($this->user->hasPermission(''access'', ''catalog/product'')) {]]></search>\r\n			<add position="before"><![CDATA[\r\n				*/\r\n\r\n				if($categories) {\r\n					$catalog[] = array(\r\n						''name''	   => $this->language->get(''text_category''),\r\n						''href''     => '''',\r\n						''children'' => $categories\r\n					);\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2016-08-22 22:12:02'),
(26, 'Themes', 'themes', 'Plaza Theme', '1.0', 'http://www.plazathemes.com/', '<modification>\r\n    <name>Themes</name>\r\n	<version>1.0</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>themes</code>\r\n	<file path="catalog/controller/extension/captcha/basic_captcha.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''route''] = $this->request->get[''route''];]]></search>\r\n			<add position="replace"><![CDATA[\r\n				if(isset($this->request->get[''route''])) {\r\n				   $data[''route''] = $this->request->get[''route''];\r\n				} else {\r\n				   $data[''route''] = "common/home";\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="catalog/controller/extension/captcha/google_captcha.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''route''] = $this->request->get[''route''];]]></search>\r\n			<add position="replace"><![CDATA[\r\n				if(isset($this->request->get[''route''])) {\r\n				   $data[''route''] = $this->request->get[''route''];\r\n				} else {\r\n				   $data[''route''] = "common/home";\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="admin/model/localisation/language.php">\r\n		<operation>\r\n			<search><![CDATA[return $language_id;]]></search>\r\n			<add position="before"><![CDATA[\r\n				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "cmsblock_description WHERE language_id = ''" . (int)$this->config->get(''config_language_id'') . "''");\r\n\r\n				foreach ($query->rows as $cmsblock_description) {\r\n					$this->db->query("INSERT INTO " . DB_PREFIX . "cmsblock_description SET cmsblock_des_id = ''" . (int)$cmsblock_description[''cmsblock_des_id''] . "'', language_id = ''" . (int)$language_id . "'', cmsblock_id = ''" . (int)$cmsblock_description[''cmsblock_id''] . "'', title = ''" . $this->db->escape($cmsblock_description[''title'']) . "'', description = ''" . $this->db->escape($cmsblock_description[''description'']) . "''");\r\n				}\r\n				$this->cache->delete(''cmsblock_description'');\r\n\r\n				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "article_description WHERE language_id = ''" . (int)$this->config->get(''config_language_id'') . "''");\r\n\r\n				foreach ($query->rows as $article_description) {\r\n					$this->db->query("INSERT INTO " . DB_PREFIX . "article_description SET article_id = ''" . (int)$article_description[''article_id''] . "'', language_id = ''" . (int)$language_id . "'', name = ''" . $this->db->escape($article_description[''name'']) . "'', description = ''" . $this->db->escape($article_description[''description'']) . "'', intro_text = ''" . $this->db->escape($article_description[''intro_text'']) . "'', meta_title = ''" . $this->db->escape($article_description[''meta_title'']) . "'', meta_description = ''" . $this->db->escape($article_description[''meta_description'']) . "'', meta_keyword = ''" . $this->db->escape($article_description[''meta_keyword'']) . "''");\r\n				}\r\n				$this->cache->delete(''article_description'');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n		<search><![CDATA[\r\n			$this->db->query("DELETE FROM " . DB_PREFIX . "option_description WHERE language_id = ''" . (int)$language_id . "''");\r\n		]]></search>\r\n		<add position="after"><![CDATA[\r\n			$this->db->query("DELETE FROM " . DB_PREFIX . "cmsblock_description WHERE language_id = ''" . (int)$language_id . "''");\r\n			$this->db->query("DELETE FROM " . DB_PREFIX . "article_description WHERE language_id = ''" . (int)$language_id . "''");\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="admin/controller/common/header.php">\r\n        <operation>\r\n            <search><![CDATA[$data[''title''] = $this->document->getTitle();]]></search>\r\n            <add position="replace"><![CDATA[\r\n				$data[''title''] = strip_tags($this->document->getTitle());\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	<file path="admin/controller/design/layout.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''text_column_right''] = $this->language->get(''text_column_right'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''text_block1''] = $this->language->get(''text_block1'');\r\n				$data[''text_block2''] = $this->language->get(''text_block2'');\r\n				$data[''text_block3''] = $this->language->get(''text_block3'');\r\n				$data[''text_block4''] = $this->language->get(''text_block4'');\r\n				$data[''text_block5''] = $this->language->get(''text_block5'');\r\n				$data[''text_block6''] = $this->language->get(''text_block6'');\r\n				$data[''text_block7''] = $this->language->get(''text_block7'');\r\n				$data[''text_block8''] = $this->language->get(''text_block8'');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$this->response->setOutput($this->load->view(''design/layout_form'', $data));]]></search>\r\n			<add position="replace"><![CDATA[\r\n				$this->response->setOutput($this->load->view(''design/layout_plaza_form.tpl'', $data));\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="admin/language/en-gb/design/layout.php">\r\n		<operation>\r\n			<search><![CDATA[$_[''text_column_right'']   = ''Column Right'';]]></search>\r\n			<add position="after"><![CDATA[\r\n				$_[''text_block1'']   = ''Block 1'';\r\n				$_[''text_block2'']   = ''Block 2'';\r\n				$_[''text_block3'']   = ''Block 3'';\r\n				$_[''text_block4'']   = ''Block 4'';\r\n				$_[''text_block5'']   = ''Block 5'';\r\n				$_[''text_block6'']   = ''Block 6'';\r\n				$_[''text_block7'']   = ''Block 7'';\r\n				$_[''text_block8'']   = ''Block 8'';\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''telephone''] = $this->config->get(''config_telephone'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''block1''] = $this->load->controller(''common/block1'');\r\n				$data[''block2''] = $this->load->controller(''common/block2'');\r\n				$data[''block3''] = $this->load->controller(''common/block3'');\r\n				\r\n				if ($this->customer->isLogged()) {\r\n					$data[''text_message''] = sprintf($this->language->get(''text_message2''),$this->customer->getFirstName(),$this->customer->getLastName());\r\n				} else{\r\n					$data[''text_message''] = $this->language->get(''text_message'');\r\n				}\r\n				$data[''free_shpping''] = $this->language->get(''free_shpping'');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[return $this->load->view(''common/header'', $data);]]></search>\r\n			<add position="before"><![CDATA[\r\n				if($this->config->get(''ocajaxlogin_status'')){\r\n					$data[''use_ajax_login''] = true;\r\n				}else{\r\n					$data[''use_ajax_login''] = false;\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/common/footer.php">\r\n		<operation>\r\n			<search><![CDATA[$this->load->language(''common/footer'');]]></search>\r\n			<add position="after"><![CDATA[;\r\n				$data[''block7''] = $this->load->controller(''common/block7'');\r\n				$data[''block8''] = $this->load->controller(''common/block8'');\r\n				$data[''block6''] = $this->load->controller(''common/block6'');\r\n				$data[''block4''] = $this->load->controller(''common/block4'');\r\n				$data[''block5''] = $this->load->controller(''common/block5'');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[$data[''text_newsletter''] = $this->language->get(''text_newsletter'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''text_address''] = $this->language->get(''text_address'');\r\n				$data[''text_telephone''] = $this->language->get(''text_telephone'');\r\n				$data[''text_fax''] = $this->language->get(''text_fax'');\r\n				$data[''text_email''] = $this->language->get(''text_email'');\r\n				$data[''text_login''] = $this->language->get(''text_login'');\r\n				$data[''text_checkout''] = $this->language->get(''text_checkout'');\r\n				$data[''text_voucher''] = $this->language->get(''text_voucher'');\r\n				$data[''text_blog''] = $this->language->get(''text_blog'');\r\n				$data[''text_search''] = $this->language->get(''text_search'');\r\n				$data[''text_viewcart''] = $this->language->get(''text_viewcart'');\r\n				$data[''text_reward''] = $this->language->get(''text_reward'');\r\n				$data[''open_time''] = $this->language->get(''open_time'');\r\n				$data[''text_open''] = $this->language->get(''text_open'');\r\n				$data[''address''] = $this->config->get(''config_address'');\r\n				$data[''telephone''] = $this->config->get(''config_telephone'');\r\n			    $data[''email''] = $this->config->get(''config_email'');\r\n			    $data[''fax''] = $this->config->get(''config_fax'');\r\n			    $data[''open''] = nl2br($this->config->get(''config_open''));\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[$this->load->model(''catalog/information'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''blog''] = array(\r\n					''title'' => $this->config->get(''ocblog_meta_title''),\r\n					''href''  => $this->url->link(''blog/blog'')\r\n				);\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[''href''  => $this->url->link(''information/information'', ''information_id='' . $result[''information_id''])]]></search>\r\n			<add position="after"><![CDATA[\r\n				,\r\n					''short-des-footer'' => utf8_substr(strip_tags(html_entity_decode($result[''description''], ENT_QUOTES, ''UTF-8'')), 0, 70),\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[$data[''newsletter''] = $this->url->link(''account/newsletter'', '''', true);]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''login''] = $this->url->link(''account/login'', '''', ''SSL'');\r\n				$data[''checkout''] = $this->url->link(''checkout/checkout'', '''', ''SSL'');\r\n				$data[''voucher''] = $this->url->link(''account/voucher'', '''', ''SSL'');\r\n				$data[''blog''] = $this->url->link(''blog/blog'', '''', ''SSL'');\r\n				$data[''search''] = $this->url->link(''product/search'');\r\n				$data[''viewcart''] = $this->url->link(''checkout/cart'', '''', ''SSL'');\r\n				$data[''reward''] = $this->url->link(''account/reward'', '''', ''SSL'');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n\r\n	<file path="catalog/controller/product/category.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''text_limit''] = $this->language->get(''text_limit'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''text_sale''] = $this->language->get(''text_sale'');\r\n            	$data[''text_new''] = $this->language->get(''text_new'');\r\n\r\n            	$data[''button_quickview''] = $this->language->get(''button_quickview'');\r\n	            $data[''tooltip_cart''] = $this->language->get(''tooltip_cart'');\r\n	            $data[''tooltip_wishlist''] = $this->language->get(''tooltip_wishlist'');\r\n	            $data[''tooltip_compare''] = $this->language->get(''tooltip_compare'');\r\n	            $data[''tooltip_quickview''] = $this->language->get(''tooltip_quickview'');\r\n	            $data[''data_btn_cart''] = $this->language->get(''data_btn_cart'');\r\n	            $data[''data_btn_wishlist''] = $this->language->get(''data_btn_wishlist'');\r\n	            $data[''data_btn_compare''] = $this->language->get(''data_btn_compare'');\r\n	            $data[''data_btn_quickview''] = $this->language->get(''data_btn_quickview'');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="before"><![CDATA[\r\n				// Product Rotator /\r\n				$product_rotator_status = (int) $this->config->get(''ocproductrotator_status'');\r\n				if($product_rotator_status == 1) {\r\n					$this->load->model(''catalog/ocproductrotator'');\r\n					$this->load->model(''tool/image'');\r\n\r\n					$product_id = $result[''product_id''];\r\n					$product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n\r\n					if($product_rotator_image) {\r\n						$rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get($this->config->get(''config_theme'') . ''_image_product_width''), $this->config->get($this->config->get(''config_theme'') . ''_image_product_height'')); \r\n					} else {\r\n						$rotator_image = false;\r\n					} \r\n				} else {\r\n					$rotator_image = false;    \r\n				}\r\n				// End Product Rotator /\r\n				// Get new product /\r\n				$this->load->model(''catalog/product'');\r\n\r\n				$data[''new_products''] = array();\r\n\r\n				$filter_data = array(\r\n					''sort''  => ''p.date_added'',\r\n					''order'' => ''DESC'',\r\n					''start'' => 0,\r\n					''limit'' => 10\r\n				);\r\n\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				// End /\r\n				$is_new = false;\r\n					if ($new_results) { \r\n						foreach($new_results as $new_r) {\r\n							if($result[''product_id''] == $new_r[''product_id'']) {\r\n								$is_new = true;\r\n							}\r\n						}\r\n					}\r\n      			//adding text stock\r\n				$this->load->language(''product/product'');\r\n\r\n				if ($result[''quantity''] <= 0) {\r\n	                $result[''stock''] = $result[''stock_status''];\r\n	                if($result[''stock''] == ''Out Of Stock'') {\r\n	                    $result[''stock_color''] = "#8b0707";\r\n	                } elseif ($result[''stock''] == ''Pre-Order'') {\r\n	                    $result[''stock_color''] = "#ff9900";\r\n	                } elseif ($result[''stock''] == ''2-3 Days'') {\r\n	                    $result[''stock_color''] = "#e89f23";\r\n	                } elseif ($result[''stock''] == ''Available Soon'') {\r\n	                    $result[''stock_color''] = "#fb5323";\r\n	                } elseif ($result[''stock''] == ''In Stock'') {\r\n	                    $result[''stock_color''] = "#c5cc1d";\r\n	                } else {\r\n	                    $result[''stock_color''] = "#ff0000";\r\n	                }\r\n	 \r\n	            } elseif ($this->config->get(''config_stock_display'')) {\r\n	                $result[''stock''] = $result[''quantity''];\r\n	                $result[''stock_color''] = "#66aa00";\r\n	            } else {\r\n	                $result[''stock''] = $this->language->get(''text_instock'');\r\n\r\n	                $result[''stock_color''] = "#66aa00";\r\n	            }\r\n		        //end adding text stock\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="after"><![CDATA[\r\n					''quantity'' => $result[''quantity''],\r\n	                ''stock'' => $result[''stock''],\r\n	                ''stock_color'' => $result[''stock_color''],\r\n	                ''is_new''        => $is_new,\r\n                    ''rotator_image'' => $rotator_image,\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''description''] = html_entity_decode($product_info[''description''], ENT_QUOTES, ''UTF-8'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''shortdescription'']  = utf8_substr(strip_tags(html_entity_decode($product_info[''description''], ENT_QUOTES, ''UTF-8'')), 0, 200) . ''...'';\r\n\r\n				if ($product_info[''quantity''] <= 0) {\r\n				\r\n				$data[''stock''] = $product_info[''stock_status''];\r\n				//adding text stock\r\n                if($data[''stock''] == ''Out Of Stock'') {\r\n                    $data[''stock_color''] = "#8b0707";\r\n                } elseif ($data[''stock''] == ''Pre-Order'') {\r\n                    $data[''stock_color''] = "#ff9900";\r\n                } elseif ($data[''stock''] == ''2-3 Days'') {\r\n                    $data[''stock_color''] = "#e89f23";\r\n                } elseif ($data[''stock''] == ''Available Soon'') {\r\n                    $data[''stock_color''] = "#fb5323";\r\n                } elseif ($data[''stock''] == ''In Stock'') {\r\n                    $data[''stock_color''] = "#c5cc1d";\r\n                } else {\r\n                    $data[''stock_color''] = "#ff0000";\r\n                }\r\n            \r\n            //end adding text stock\r\n			} elseif ($this->config->get(''config_stock_display'')) {\r\n				$data[''stock''] = $product_info[''quantity''];\r\n				$data[''stock_color''] = "#66aa00";\r\n			} else {\r\n				$data[''stock''] = $this->language->get(''text_instock'');\r\n				$data[''stock_color''] = "#66aa00";\r\n			}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ ]]></search>\r\n			<add position="after"><![CDATA[\r\n\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/extension/module/newslettersubscribe.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''newletter_des''] = $this->language->get(''newletter_des'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''newsletter_text_infor''] = $this->language->get(''newsletter_text_infor'');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/product/product.php">\r\n		<operation>\r\n			<search><![CDATA[$data[''description''] = html_entity_decode($product_info[''description''], ENT_QUOTES, ''UTF-8'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''shortdescription'']  = utf8_substr(strip_tags(html_entity_decode($product_info[''description''], ENT_QUOTES, ''UTF-8'')), 0, 300) . ''...'';\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[''button_continue''] = $this->language->get(''button_continue'');]]></search>\r\n			<add position="after"><![CDATA[\r\n				$data[''tooltip_addcart''] = $this->language->get(''tooltip_addcart'');\r\n				$data[''tooltip_wishlist''] = $this->language->get(''tooltip_wishlist'');\r\n				$data[''tooltip_compare''] = $this->language->get(''tooltip_compare'');\r\n				$data[''tooltip_quickview''] = $this->language->get(''tooltip_quickview'');\r\n				$data[''data_btn_cart''] = $this->language->get(''data_btn_cart'');\r\n				$data[''data_btn_wishlist''] = $this->language->get(''data_btn_wishlist'');\r\n				$data[''data_btn_compare''] = $this->language->get(''data_btn_compare'');\r\n				$data[''data_btn_quickview''] = $this->language->get(''data_btn_quickview'');\r\n				$data[''text_sale''] = $this->language->get(''text_sale'');\r\n            	$data[''text_new''] = $this->language->get(''text_new'');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n		    <search><![CDATA[$data[''stock''] = $product_info[''stock_status''];]]></search>\r\n		    <add  position="after"><![CDATA[if($data[''stock''] == ''Out Of Stock'') {\r\n		            $data[''stock_color''] = "#8b0707";\r\n		        } elseif ($data[''stock''] == ''Pre-Order'') {\r\n		            $data[''stock_color''] = "#ff9900";\r\n		        } elseif ($data[''stock''] == ''2-3 Days'') {\r\n		            $data[''stock_color''] = "#e89f23";\r\n		        } elseif ($data[''stock''] == ''Available Soon'') {\r\n		            $data[''stock_color''] = "#fb5323";\r\n		        } elseif ($data[''stock''] == ''In Stock'') {\r\n		           $data[''stock_color''] = "#c5cc1d";\r\n		        } else {\r\n		            $data[''stock_color''] = "#ff0000";\r\n		        }]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n		    <search><![CDATA[$data[''stock''] = $product_info[''quantity''];]]></search>\r\n		    <add position="after"><![CDATA[$data[''stock_color''] = "#66aa00";]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n		    <search><![CDATA[$data[''stock''] = $this->language->get(''text_instock'');]]></search>\r\n		    <add position="after"><![CDATA[$data[''stock_color''] = "#66aa00";]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[$data[''products''][] = array(]]></search>\r\n			<add position="before"><![CDATA[\r\n								/* Get new product */\r\n				$filter_data = array(\r\n						''sort''  => ''p.date_added'',\r\n						''order'' => ''DESC'',\r\n						''start'' => 0,\r\n						''limit'' => 10\r\n				);\r\n\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n\r\n				$is_new = false;\r\n				if ($new_results) {\r\n					foreach($new_results as $new_r) {\r\n						if($result[''product_id''] == $new_r[''product_id'']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[''product_id''  => $result[''product_id''],]]></search>\r\n			<add position="after"><![CDATA[\r\n				''is_new''      => $is_new,\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>', 1, '2017-03-17 10:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(91, 'Brands slider 2', 'carousel', '{"name":"Brands slider 2","banner_id":"9","width":"200","height":"80","status":"1"}'),
(85, 'Layout Content Builder Home 4', 'oc_page_builder', '{"name":"Layout Content Builder Home 4","status":"1","widget":[{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.47","name":"OC Slide show &gt; OC Slide Show Home 4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;token=m16YDvc93IzBb8wp7GlbRxALsGmNgwwt&amp;module_id=47"}]},"format":"9"},{"info":{"module":[{"code":"occmsblock.119","name":"OC CMS Block &gt; Block static slider left home 4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=m16YDvc93IzBb8wp7GlbRxALsGmNgwwt&amp;module_id=119"}]},"format":"3"}]},{"sub_cols":[{"info":{"module":[{"code":"ocfeaturedcategory.128","name":"OC Featured Category &gt; Featured Category Home4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocfeaturedcategory&amp;token=WhvaNPbViMl8x3JH9vM3e3UxpRVvDTYd&amp;module_id=128"}]},"format":"12"}]},{"sub_cols":[{"info":{"module":[{"code":"occountdown.129","name":"OC Price Countdown &gt; Price Countdown Home4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occountdown&amp;token=qSAZqP06wmq45RiB8j1YIG2lx2lu86P3&amp;module_id=129"}]},"format":"4"},{"info":{"module":[{"code":"ocnewproductslider.131","name":"OC New Products Slider &gt; OC New Products Slider Home 4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocnewproductslider&amp;token=qSAZqP06wmq45RiB8j1YIG2lx2lu86P3&amp;module_id=131"},{"code":"occmsblock.132","name":"OC CMS Block &gt; Banner Static1 Home4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=qSAZqP06wmq45RiB8j1YIG2lx2lu86P3&amp;module_id=132"}]},"format":"8"}]},{"sub_cols":[{"info":{"module":[{"code":"ocbestproductslider.133","name":"OC Bestseller Products Slider &gt; OC Bestseller Products Slider Home 4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocbestproductslider&amp;token=qSAZqP06wmq45RiB8j1YIG2lx2lu86P3&amp;module_id=133"},{"code":"occmsblock.134","name":"OC CMS Block &gt; Banner Center Home4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=N7etNWqeqjqYsDGfqw64lcBMh4U3Ew10&amp;module_id=134"}]},"format":"12"}]},{"sub_cols":[{"info":{"module":[{"code":"ocfeatureslider.135","name":"OC Featured Products Slider &gt; OC Featured Products Slider Home 4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocfeatureslider&amp;token=N7etNWqeqjqYsDGfqw64lcBMh4U3Ew10&amp;module_id=135"}]},"format":"9"},{"info":{"module":[{"code":"occmsblock.136","name":"OC CMS Block &gt; Banner Right Home4","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=N7etNWqeqjqYsDGfqw64lcBMh4U3Ew10&amp;module_id=136"}]},"format":"3"}]}]}]}]}'),
(119, 'Banner Static Home4', 'occmsblock', '{"name":"Banner Static Home4","status":"1","cmsblock":"29"}'),
(66, 'Layout Content Builder Home 1', 'oc_page_builder', '{"name":"Layout Content Builder Home 1","status":"1","widget":[{"class":"full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.7","name":"OC Slide show &gt; OC Slide Show Home 1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;token=uDW2hMPibwsRYtD5vyoF1Z4MRJJXnftP&amp;module_id=7"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocfeaturedcategory.138","name":"OC Featured Category &gt; Featured Category Home1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocfeaturedcategory&amp;token=GZSojUEl7yZEe857JnfuJNmd7w6lje5G&amp;module_id=138"},{"code":"ocnewproductslider.95","name":"OC New Products Slider &gt; OC New Products Slider Home 1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocnewproductslider&amp;token=UDogvYyv5XSDhN2PEj1a4628V0Yb7jRg&amp;module_id=95"},{"code":"occmsblock.96","name":"OC CMS Block &gt; Block image middle home 1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=d9Rta8NerOeWbLjlNOAUM3t1LaSC73O4&amp;module_id=96"}]},"format":"12"}]}]}]},{"class":"full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocbestproductslider.97","name":"OC Bestseller Products Slider &gt; OC Bestseller Products Slider Home 1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocbestproductslider&amp;token=d9Rta8NerOeWbLjlNOAUM3t1LaSC73O4&amp;module_id=97"},{"code":"occmsblock.98","name":"OC CMS Block &gt; Banner Center1 Home1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=uDW2hMPibwsRYtD5vyoF1Z4MRJJXnftP&amp;module_id=98"}]},"format":"12"}]}]}]},{"class":"home-modules","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocfeatureslider.99","name":"OC Featured Products Slider &gt; OC Featured Products Slider Home 1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocfeatureslider&amp;token=pjayYa5xR55kJfxTIK4dhcSTvlRcvIfa&amp;module_id=99"}]},"format":"6"},{"info":{"module":[{"code":"ocspecialproductslider.100","name":"OC Special Products Slider &gt; OC Special Products Slider","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocspecialproductslider&amp;token=d9Rta8NerOeWbLjlNOAUM3t1LaSC73O4&amp;module_id=100"}]},"format":"6"}]},{"sub_cols":[{"info":{"module":[{"code":"ocblog.73","name":"OC Blog &gt; OC Blog Home 1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;token=d9Rta8NerOeWbLjlNOAUM3t1LaSC73O4&amp;module_id=73"}]},"format":"12"}]}]}]},{"class":"full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"occmsblock.102","name":"OC CMS Block &gt; Block static footer home 1","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=d9Rta8NerOeWbLjlNOAUM3t1LaSC73O4&amp;module_id=102"}]},"format":"12"}]}]}]}]}'),
(95, 'OC New Products Slider Home 1', 'ocnewproductslider', '{"name":"OC New Products Slider Home 1","title":{"en-gb":{"title":"New Products"},"fr-gb":{"title":"New Products"}},"status":"1","rotator":"1","width":"800","height":"1000","limit":"12","item":"5","speed":"1000","autoplay":"0","rows":"2","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(96, 'Banner Center Home1', 'occmsblock', '{"name":"Banner Center Home1","status":"1","cmsblock":"20"}'),
(97, 'OC Bestseller Products Slider Home 1', 'ocbestproductslider', '{"name":"OC Bestseller Products Slider Home 1","title":{"en-gb":{"title":"Top interesting"},"fr-gb":{"title":"Top interesting"}},"status":"1","rotator":"1","width":"400","height":"500","limit":"10","item":"6","speed":"1000","autoplay":"0","rows":"1","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(98, 'Banner Center1 Home1', 'occmsblock', '{"name":"Banner Center1 Home1","status":"1","cmsblock":"21"}'),
(99, 'OC Featured Products Slider Home 1', 'ocfeatureslider', '{"name":"OC Featured Products Slider Home 1","title":{"en-gb":{"title":"Featured Products"},"fr-gb":{"title":"Featured Products"}},"status":"1","product":["42","30","47","28"],"rotator":"1","limit":"5","item":"2","speed":"3000","autoplay":"0","rows":"1","width":"800","height":"1000","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(101, 'OC Newsletter', 'newslettersubscribe', '{"name":"OC Newsletter","popup":"0","status":"1","newslettersubscribe_unsubscribe":"1","newslettersubscribe_mail_status":"1","newslettersubscribe_thickbox":"1","newslettersubscribe_registered":"1","store_id":"0","to":"sendall","customer_group_id":"1","customers":"","affiliates":"","products":"","subject":"","message":"conten email here....."}'),
(102, 'Banner Static Bottom', 'occmsblock', '{"name":"Banner Static Bottom","status":"1","cmsblock":"22"}'),
(81, 'Layout Content Builder Home 3', 'oc_page_builder', '{"name":"Layout Content Builder Home 3","status":"1","widget":[{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.36","name":"OC Slide show &gt; OC Slide Show Home 3","url":"http:\\/\\/tt_genius1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;token=9BosiBcPp62yIwwmIIfe7gtC9Ewm1MDm&amp;module_id=36"},{"code":"octabcategoryslider.113","name":"OC Category Tabs Slider &gt; OC Category Tabs Slider home 3","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/octabcategoryslider&amp;token=FbvAyqPWFfB8YOL6wi6CvA6eXXYJVoYV&amp;module_id=113"},{"code":"occmsblock.117","name":"OC CMS Block &gt; Banner Static Home3","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=FbvAyqPWFfB8YOL6wi6CvA6eXXYJVoYV&amp;module_id=117"}]},"format":"12"}]}]}]},{"class":"home-modul","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"category","name":"Category","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/category&amp;token=MdkqLecvx2c1m1Fg4qvCuWH4yjwAyEzu"},{"code":"occmsblock.114","name":"OC CMS Block &gt; Banner Static1 Home3","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=LkUv08t75Zf4kkxrrPOkX8gzIojCbj2g&amp;module_id=114"}]},"format":"3"},{"info":{"module":[{"code":"ocbestproductslider.125","name":"OC Bestseller Products Slider &gt; OC Bestseller Products Slider Home 3","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocbestproductslider&amp;token=LkUv08t75Zf4kkxrrPOkX8gzIojCbj2g&amp;module_id=125"}]},"format":"9"}]}]}]},{"class":"home-modul1","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocspecialproductslider.100","name":"OC Special Products Slider &gt; OC Special Products Slider","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocspecialproductslider&amp;token=LkUv08t75Zf4kkxrrPOkX8gzIojCbj2g&amp;module_id=100"}]},"format":"6"},{"info":{"module":[{"code":"ocfeatureslider.126","name":"OC Featured Products Slider &gt; OC Featured Products Slider Home 3","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocfeatureslider&amp;token=LkUv08t75Zf4kkxrrPOkX8gzIojCbj2g&amp;module_id=126"}]},"format":"6"}]},{"sub_cols":[{"info":{"module":[{"code":"occmsblock.127","name":"OC CMS Block &gt; Banner Center Home3","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=LkUv08t75Zf4kkxrrPOkX8gzIojCbj2g&amp;module_id=127"}]},"format":"12"}]}]}]},{"class":"home-modul2","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocblog.118","name":"OC Blog &gt; OC Blog Home 3","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;token=LkUv08t75Zf4kkxrrPOkX8gzIojCbj2g&amp;module_id=118"}]},"format":"8"},{"info":{"module":[{"code":"newslettersubscribe.101","name":"OC Newsletter &gt; OC Newsletter","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;token=LkUv08t75Zf4kkxrrPOkX8gzIojCbj2g&amp;module_id=101"}]},"format":"4"}]}]}]}]}'),
(125, 'OC Bestseller Products Slider Home 3', 'ocbestproductslider', '{"name":"OC Bestseller Products Slider Home 3","title":{"en-gb":{"title":"Best sellers"},"fr-gb":{"title":"Best sellers"}},"status":"1","rotator":"1","width":"800","height":"1000","limit":"8","item":"4","speed":"1000","autoplay":"0","rows":"2","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"0","shownav":"0"}'),
(114, 'Banner Static1 Home3', 'occmsblock', '{"name":"Banner Static1 Home3","status":"1","cmsblock":"27"}'),
(115, 'OC New Products Slider Home 3', 'ocnewproductslider', '{"name":"OC New Products Slider Home 3","title":{"en-gb":{"title":"New Products"}},"status":"1","rotator":"1","width":"400","height":"500","limit":"10","item":"4","speed":"3000","autoplay":"0","rows":"2","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(116, 'OC Special Products Slider home 3', 'ocspecialproductslider', '{"name":"OC Special Products Slider home 3","title":{"en-gb":{"title":"Sale Products"},"fr-gb":{"title":"Sale Products"}},"status":"1","rotator":"1","width":"800","height":"1000","limit":"5","item":"2","speed":"1000","autoplay":"0","rows":"1","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(7, 'OC Slide Show Home 1', 'ocslideshow', '{"name":"OC Slide Show Home 1","status":"1","banner":"14","width":"1920","height":"650"}'),
(73, 'OC Blog Home 1', 'ocblog', '{"name":"OC Blog Home 1","title":{"en-gb":{"title":"Latest Blogs"},"fr-gb":{"title":"Latest Blogs"}},"status":"1","list":"44","width":"1171","height":"720","auto":"0","items":"3","speed":"1000","rows":"1","navigation":"1","pagination":"0","ocblog_article_limit":"5","ocblog_meta_title":"Blog","ocblog_meta_description":"Blog","ocblog_meta_keyword":"blogs"}'),
(20, 'Brands Logo', 'carousel', '{"name":"Brands Logo","banner_id":"8","width":"220","height":"110","status":"1"}'),
(25, 'OC Slide Show Home 2', 'ocslideshow', '{"name":"OC Slide Show Home 2","status":"1","banner":"15","width":"1920","height":"650"}'),
(93, 'OC Horizontal Mega Menu 1', 'ochozmegamenu', '{"name":"OC Horizontal Mega Menu 1","hactive":"CAT123,CAT125,CAT124,CAT127,CAT126,CAT191","status":"1","hhome":"1","hdepth":"4","hlevel":"4"}'),
(75, 'Layout Content Builder Home 2', 'oc_page_builder', '{"name":"Layout Content Builder Home 2","status":"1","widget":[{"class":"full-width","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocslideshow.25","name":"OC Slide show &gt; OC Slide Show Home 2","url":"http:\\/\\/tt_genius1.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;token=nSoVNQoxRiySMpm3YRSPbdjXsWiGiPxb&amp;module_id=25"},{"code":"occmsblock.123","name":"OC CMS Block &gt; Banner Static Home2","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=ldQWJZ91esn8J4JNe8QCmhtSNpE6udzM&amp;module_id=123"}]},"format":"12"}]}]}]},{"class":"","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocnewproductslider.109","name":"OC New Products Slider &gt; OC New Products Slider Home 2","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocnewproductslider&amp;token=g0rgoh470hhprxYPkzF2toOOWel4w8tb&amp;module_id=109"},{"code":"occmsblock.110","name":"OC CMS Block &gt; Block image middle home 2","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;token=g0rgoh470hhprxYPkzF2toOOWel4w8tb&amp;module_id=110"}]},"format":"12"}]}]}]},{"class":"home-moduls","main_cols":[{"format":"12","sub_rows":[{"sub_cols":[{"info":{"module":[{"code":"ocfeatureslider.111","name":"OC Featured Products Slider &gt; OC Featured Products Slider Home 2","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocfeatureslider&amp;token=ldQWJZ91esn8J4JNe8QCmhtSNpE6udzM&amp;module_id=111"}]},"format":"3"},{"info":{"module":[{"code":"ocspecialproductslider.100","name":"OC Special Products Slider &gt; OC Special Products Slider","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocspecialproductslider&amp;token=ldQWJZ91esn8J4JNe8QCmhtSNpE6udzM&amp;module_id=100"}]},"format":"6"},{"info":{"module":[{"code":"ocmostproduct.112","name":"OC Most Viewed Products Slider &gt; OC Most Viewed Products Slider home 2","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocmostproduct&amp;token=ldQWJZ91esn8J4JNe8QCmhtSNpE6udzM&amp;module_id=112"}]},"format":"3"}]},{"sub_cols":[{"info":{"module":[{"code":"newslettersubscribe.101","name":"OC Newsletter &gt; OC Newsletter","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;token=ldQWJZ91esn8J4JNe8QCmhtSNpE6udzM&amp;module_id=101"},{"code":"ocblog.124","name":"OC Blog &gt; OC Blog Home 2","url":"http:\\/\\/tt_grand1.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;token=ldQWJZ91esn8J4JNe8QCmhtSNpE6udzM&amp;module_id=124"}]},"format":"12"}]}]}]}]}'),
(124, 'OC Blog Home 2', 'ocblog', '{"name":"OC Blog Home 2","title":{"en-gb":{"title":"Latest Blogs"},"fr-gb":{"title":"Latest Blogs"}},"status":"1","list":"45","width":"370","height":"280","auto":"0","items":"3","speed":"1000","rows":"1","navigation":"1","pagination":"0","ocblog_article_limit":"5","ocblog_meta_title":"Blog","ocblog_meta_description":"Blog","ocblog_meta_keyword":"blogs"}'),
(108, 'Block corporate about 2', 'occmsblock', '{"name":"Block corporate about 2","status":"1","cmsblock":"25"}'),
(109, 'OC New Products Slider Home 2', 'ocnewproductslider', '{"name":"OC New Products Slider Home 2","title":{"en-gb":{"title":"New Arrivals"},"fr-gb":{"title":"New Arrivals"}},"status":"1","rotator":"1","width":"800","height":"1000","limit":"7","item":"5","speed":"1000","autoplay":"0","rows":"1","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(110, 'Banner Center Home2', 'occmsblock', '{"name":"Banner Center Home2","status":"1","cmsblock":"26"}'),
(111, 'OC Featured Products Slider Home 2', 'ocfeatureslider', '{"name":"OC Featured Products Slider Home 2","title":{"en-gb":{"title":"Featured Item"},"fr-gb":{"title":"Featured Item"}},"status":"1","product":["42","30","47","28","60"],"rotator":"1","limit":"6","item":"1","speed":"1000","autoplay":"0","rows":"3","width":"800","height":"1000","showlabel":"0","showprice":"1","showdes":"0","showaddtocart":"0","shownextback":"1","shownav":"0"}'),
(112, 'OC Most Viewed Products Slider home 2', 'ocmostproduct', '{"name":"OC Most Viewed Products Slider home 2","title":{"en-gb":{"title":"Most Viewed"},"fr-gb":{"title":"Most Viewed"}},"status":"1","rotator":"1","width":"400","height":"500","limit":"6","item":"1","speed":"1000","autoplay":"0","rows":"3","showlabel":"0","showprice":"1","showdes":"0","showaddtocart":"0","shownextback":"1","shownav":"0"}'),
(36, 'OC Slide Show Home 3', 'ocslideshow', '{"name":"OC Slide Show Home 3","status":"1","banner":"16","width":"1170","height":"610"}'),
(100, 'OC Special Products Slider', 'ocspecialproductslider', '{"name":"OC Special Products Slider","title":{"en-gb":{"title":"Sale Product"},"fr-gb":{"title":"Sale Product"}},"status":"1","rotator":"1","width":"400","height":"500","limit":"4","item":"2","speed":"3000","autoplay":"0","rows":"1","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(47, 'OC Slide Show Home 4', 'ocslideshow', '{"name":"OC Slide Show Home 4","status":"1","banner":"18","width":"870","height":"550"}'),
(103, 'OC Instagram', 'ocinstagram', '{"name":"OC Instagram","title":{"en-gb":{"title":"Instagram"},"fr-gb":{"title":""}},"status":"1","userid":"3573844619","access_token":"3573844619.1677ed0.6df51c4079e14ababcacf3b5f16808ce","limit":"6","rows":"3","view_mode":"gallery","item":"4","speed":"3000","autoplay":"1","shownextback":"1","shownav":"0"}'),
(104, 'Banner Left', 'occmsblock', '{"name":"Banner Left","status":"1","cmsblock":"24"}'),
(105, 'Banner Right', 'occmsblock', '{"name":"Banner Right","status":"1","cmsblock":"23"}'),
(107, 'OC Random Products Slider', 'ocrandomslider', '{"name":"OC Random Products Slider","title":{"en-gb":{"title":"Random Products"},"fr-gb":{"title":"Random Products"}},"status":"1","rotator":"1","width":"800","height":"1000","limit":"6","item":"1","speed":"1000","autoplay":"0","rows":"6","showlabel":"0","showprice":"1","showdes":"0","showaddtocart":"0","shownextback":"0","shownav":"0"}'),
(113, 'OC Category Tabs Slider home 3', 'octabcategoryslider', '{"name":"OC Category Tabs Slider home 3","title":{"en-gb":{"title":"Our products"},"fr-gb":{"title":"Our products"}},"status":"1","category":"","product_category":["123","125"],"thumbnail":"1","rotator":"1","width":"400","height":"500","limit":"8","item":"5","speed":"1000","autoplay":"0","rows":"1","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(117, 'Banner Static Home3', 'occmsblock', '{"name":"Banner Static Home3","status":"1","cmsblock":"28"}'),
(118, 'OC Blog Home 3', 'ocblog', '{"name":"OC Blog Home 3","title":{"en-gb":{"title":"Latest Blogs"},"fr-gb":{"title":"Latest Blogs"}},"status":"1","list":"45","width":"370","height":"280","auto":"0","items":"2","speed":"1000","rows":"1","navigation":"1","pagination":"0","ocblog_article_limit":"5","ocblog_meta_title":"Blog","ocblog_meta_description":"Blog","ocblog_meta_keyword":"blogs"}'),
(120, 'Header Icon', 'occmsblock', '{"name":"Header Icon","status":"1","cmsblock":"30"}'),
(123, 'Banner Static Home2', 'occmsblock', '{"name":"Banner Static Home2","status":"1","cmsblock":"25"}'),
(121, 'OC Most Viewed Products Slider Home 1', 'ocmostproduct', '{"name":"OC Most Viewed Products Slider Home 1","title":{"en-gb":{"title":"Most viewed"},"fr-gb":{"title":"Most viewed"}},"status":"1","rotator":"1","width":"800","height":"1000","limit":"5","item":"2","speed":"1000","autoplay":"0","rows":"1","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(122, 'Footer Icon', 'occmsblock', '{"name":"Footer Icon","status":"1","cmsblock":"31"}'),
(126, 'OC Featured Products Slider Home 3', 'ocfeatureslider', '{"name":"OC Featured Products Slider Home 3","title":{"en-gb":{"title":"Featured Products"},"fr-gb":{"title":"Featured Products"}},"status":"1","product":["42","60","30","47","28","41","54","40","43","48","36","34"],"rotator":"1","limit":"6","item":"2","speed":"1000","autoplay":"0","rows":"3","width":"800","height":"1000","showlabel":"0","showprice":"1","showdes":"0","showaddtocart":"0","shownextback":"0","shownav":"0"}'),
(127, 'Banner Center Home3', 'occmsblock', '{"name":"Banner Center Home3","status":"1","cmsblock":"32"}'),
(128, 'Featured Category Home4', 'ocfeaturedcategory', '{"name":"Featured Category Home4","title":{"en-gb":{"title":"Featured Category"},"fr-gb":{"title":"Featured Category"}},"status":"1","slider":"1","width":"85","height":"78","limit":"6","item":"6","speed":"1000","autoplay":"0","rows":"1","shownextback":"0","showdes":"0","showsub":"0","showsubnumber":"4","shownav":"0"}'),
(129, 'Price Countdown Home4', 'occountdown', '{"name":"Price Countdown Home4","title":{"en-gb":{"title":"Hot deals"},"fr-gb":{"title":"Hot deals"}},"status":"1","rotator":"1","width":"800","height":"1000","showlabel":"1","limit":"5","item":"1","speed":"1000","autoplay":"0","rows":"1","shownextback":"1","shownav":"0"}'),
(132, 'Banner Static1 Home4', 'occmsblock', '{"name":"Banner Static1 Home4","status":"1","cmsblock":"33"}'),
(133, 'OC Bestseller Products Slider Home 4', 'ocbestproductslider', '{"name":"OC Bestseller Products Slider Home 4","title":{"en-gb":{"title":"Bestseller Product"},"fr-gb":{"title":"Bestseller Product"}},"status":"1","rotator":"1","width":"800","height":"1000","limit":"8","item":"4","speed":"1000","autoplay":"0","rows":"1","showlabel":"1","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(131, 'OC New Products Slider Home 4', 'ocnewproductslider', '{"name":"OC New Products Slider Home 4","title":{"en-gb":{"title":"New Products"},"fr-gb":{"title":"New Products"}},"status":"1","rotator":"1","width":"800","height":"1000","limit":"5","item":"3","speed":"1000","autoplay":"0","rows":"1","showlabel":"0","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(134, 'Banner Center Home4', 'occmsblock', '{"name":"Banner Center Home4","status":"1","cmsblock":"34"}'),
(135, 'OC Featured Products Slider Home 4', 'ocfeatureslider', '{"name":"OC Featured Products Slider Home 4","title":{"en-gb":{"title":"Featured Products"},"fr-gb":{"title":"Featured Products"}},"status":"1","product":["42","60","30","47","28","41","54","43","48"],"rotator":"1","limit":"12","item":"3","speed":"1000","autoplay":"0","rows":"3","width":"800","height":"1000","showlabel":"0","showprice":"1","showdes":"0","showaddtocart":"1","shownextback":"1","shownav":"0"}'),
(136, 'Banner Right Home4', 'occmsblock', '{"name":"Banner Right Home4","status":"1","cmsblock":"35"}'),
(137, 'OC Horizontal Mega Menu 2', 'ochozmegamenu', '{"name":"OC Horizontal Mega Menu 2","hactive":"CAT192,CAT193,CAT194,CAT195,CAT196,CAT197","status":"1","hhome":"1","hdepth":"4","hlevel":"4"}'),
(138, 'Featured Category Home1', 'ocfeaturedcategory', '{"name":"Featured Category Home1","title":{"en-gb":{"title":"Featured Category"},"fr-gb":{"title":"Featured Category"}},"status":"1","slider":"1","width":"85","height":"78","limit":"6","item":"6","speed":"1000","autoplay":"1","rows":"1","shownextback":"0","showdes":"0","showsub":"0","showsubnumber":"4","shownav":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ocslideshow`
--

CREATE TABLE `oc_ocslideshow` (
  `ocslideshow_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `hover` tinyint(1) DEFAULT NULL,
  `nextback` tinyint(1) DEFAULT NULL,
  `contrl` tinyint(1) DEFAULT NULL,
  `effect` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ocslideshow`
--

INSERT INTO `oc_ocslideshow` (`ocslideshow_id`, `name`, `status`, `auto`, `delay`, `hover`, `nextback`, `contrl`, `effect`) VALUES
(14, 'OC Slide Show Home 1', 1, 1, 5000, 1, 1, 0, 'random'),
(15, 'OC Slide Show Home 2', 1, 1, 5000, 1, 1, 1, 'random'),
(16, 'OC Slide Show Home 3', 1, 1, 5000, 1, 1, 1, 'random'),
(18, 'OC Slide Show Home 4', 1, 1, 5000, 1, 1, 1, 'random');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ocslideshow_image`
--

CREATE TABLE `oc_ocslideshow_image` (
  `ocslideshow_image_id` int(11) NOT NULL,
  `ocslideshow_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `banner_store` varchar(110) DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `small_image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ocslideshow_image`
--

INSERT INTO `oc_ocslideshow_image` (`ocslideshow_image_id`, `ocslideshow_id`, `link`, `type`, `banner_store`, `image`, `small_image`) VALUES
(231, 14, '#', 1, '0', 'catalog/demo/banners/2.jpg', 'no_image.jpg'),
(230, 14, '#', 2, '0', 'catalog/demo/banners/1.jpg', 'no_image.jpg'),
(233, 15, '#', 1, '1,0', 'catalog/demo/banners/3.jpg', 'no_image.jpg'),
(232, 15, '#', 2, '1,0', 'catalog/demo/banners/4.jpg', 'no_image.jpg'),
(235, 16, '#', 2, '2,0', 'catalog/demo/banners/6.jpg', 'no_image.jpg'),
(234, 16, '#', 1, '2,0', 'catalog/demo/banners/5.jpg', 'no_image.jpg'),
(237, 18, '#', 1, '3,0', 'catalog/demo/banners/7.jpg', 'no_image.jpg'),
(236, 18, '#', 2, '3,0', 'catalog/demo/banners/8.jpg', 'no_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ocslideshow_image_description`
--

CREATE TABLE `oc_ocslideshow_image_description` (
  `ocslideshow_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `ocslideshow_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ocslideshow_image_description`
--

INSERT INTO `oc_ocslideshow_image_description` (`ocslideshow_image_id`, `language_id`, `ocslideshow_id`, `title`, `sub_title`, `description`) VALUES
(230, 1, 14, 'Furniture sale', '', 'Flat 60% discount Extra 20% off'),
(233, 1, 15, 'Summer sale', '', 'Up to 25% off furniture brands'),
(232, 2, 15, 'The wow factor', 'Statement wing chair', 'For your living space'),
(235, 1, 16, 'Curved sofa', '', 'Choose the perfect pieces for your living space'),
(235, 2, 16, 'Curved sofa', '', 'Choose the perfect pieces for your living space'),
(237, 2, 18, 'Herman miller', 'Office arm chairs', ''),
(231, 2, 14, 'Summer sale', '', 'Up to 25% off furniture brands'),
(231, 1, 14, 'Summer sale', '', 'Up to 25% off furniture brands'),
(230, 2, 14, 'Furniture sale', '', 'Flat 60% discount Extra 20% off'),
(232, 1, 15, 'The wow factor', 'Statement wing chair', 'For your living space'),
(234, 2, 16, 'Modern office furniture', '', 'Don''t give up funtionality for great looks,these products have it all!'),
(234, 1, 16, 'Modern office furniture', '', 'Don''t give up funtionality for great looks,these products have it all!'),
(237, 1, 18, 'Herman miller', 'Office arm chairs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(236, 2, 18, 'Classroom', 'Arm chairs', 'Our Virco Classroom Chairs can handle any application.'),
(236, 1, 18, 'Classroom', 'Arm chairs', 'Our Virco Classroom Chairs can handle any application.'),
(233, 2, 15, 'Summer sale', '', 'Up to 25% off furniture brands');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
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
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
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
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
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
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
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
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
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
  `commission` decimal(15,4) NOT NULL,
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
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Genius 1 - Mega Shop Responsive Opencart Theme', 'http://tt_genius1.com/', 1, 1, 'minh', 'nguyễn', 'demo@towerthemes.com', '0123456798', '', '', 'minh', 'nguyễn', '', '15-12 t05 timecity', '', 'hai ba trung', '084', 'United Kingdom', 222, 'Cambridgeshire', 3525, '', '[]', 'Cash On Delivery', 'cod', 'minh', 'nguyễn', '', '15-12 t05 timecity', '', 'hai ba trung', '084', 'United Kingdom', 222, 'Cambridgeshire', 3525, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '950.1880', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2016-12-09 11:13:58', '2016-12-09 11:14:00'),
(2, 0, 'INV-2013-00', 1, 'Genius 2 - Mega Shop Responsive Opencart Theme ', 'http://tt_genius2.com/', 1, 1, 'minh', 'nguyễn', 'demo@towerthemes.com', '0123456798', '', '', 'minh', 'nguyễn', '', '15-12 t05 timecity', '', 'hai ba trung', '084', 'United Kingdom', 222, 'Cambridgeshire', 3525, '', '[]', 'Cash On Delivery', 'cod', 'minh', 'nguyễn', '', '15-12 t05 timecity', '', 'hai ba trung', '084', 'United Kingdom', 222, 'Cambridgeshire', 3525, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '853.1880', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2016-12-19 15:46:44', '2016-12-19 15:46:46'),
(3, 0, 'INV-2013-00', 0, 'Grand 1 - Mega Shop Responsive Opencart Theme', 'http://tt_grand1.com/', 2, 1, 'demo', 'plaza', 'demo@plazathemes.com', '1234567890', '', '', 'demo', 'plaza', '', 'plaza', 'plaza', 'plaza', 'plaza', 'United Kingdom', 222, 'Berkshire', 3519, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'plaza', '', 'plaza', 'plaza', 'plaza', 'plaza', 'United Kingdom', 222, 'Berkshire', 3519, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1868.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'en-US,en;q=0.8', '2017-02-28 16:49:27', '2017-02-28 16:49:29'),
(4, 0, 'INV-2013-00', 1, 'Grand 2 - Mega Shop Responsive Opencart Theme ', 'http://tt_grand2.com/', 3, 1, 'plaza', 'themes', 'demo1@towerthemes.com', '1234567890', '', '', 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza1234', 'United Kingdom', 222, 'Berkshire', 3519, '', '[]', 'Cash On Delivery', 'cod', 'plaza', 'themes', '', 'plaza', '', 'plaza', 'plaza1234', 'United Kingdom', 222, 'Berkshire', 3519, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '258.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'en-US,en;q=0.8', '2017-03-13 15:16:32', '2017-03-13 15:16:34'),
(5, 0, 'INV-2013-00', 3, 'Grand 4 - Mega Shop Responsive Opencart Theme ', 'http://tt_grand4.com/', 2, 1, 'demo', 'plaza', 'demo@plazathemes.com', '1234567890', '', '', 'demo', 'plaza', '', 'plaza', 'plaza', 'plaza', 'plaza', 'United Kingdom', 222, 'Berkshire', 3519, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'plaza', '', 'plaza', 'plaza', 'plaza', 'plaza', 'United Kingdom', 222, 'Berkshire', 3519, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1048.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'en-US,en;q=0.8', '2017-03-20 09:28:15', '2017-03-20 09:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2016-12-09 11:14:00'),
(2, 2, 1, 0, '', '2016-12-19 15:46:46'),
(3, 3, 1, 0, '', '2017-02-28 16:49:29'),
(4, 4, 1, 0, '', '2017-03-13 15:16:34'),
(5, 5, 1, 0, '', '2017-03-20 09:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 2, 236, 28, 'Size', 'Medium', 'select'),
(2, 2, 6, 230, 17, 'Radio', 'Small', 'radio'),
(3, 2, 6, 233, 24, 'Checkbox', 'Checkbox 1', 'checkbox'),
(4, 2, 6, 229, 0, 'Text', 'test', 'text'),
(5, 2, 6, 231, 20, 'Select', 'Blue', 'select'),
(6, 2, 6, 232, 0, 'Textarea', 'sdhjk,mdsfdfsdfsdfsdfdsfdsfsdfsdfdsfsdfsdf', 'textarea'),
(7, 2, 6, 227, 0, 'File', '754bec35e5aeb17e903b8cd22d513612e66ec950', 'file'),
(8, 2, 6, 228, 0, 'Date', '2011-02-21', 'date'),
(9, 2, 6, 235, 0, 'Time', '22:26', 'time'),
(10, 2, 6, 234, 0, 'Date &amp; Time', '2011-02-22 22:25', 'datetime'),
(11, 5, 20, 226, 15, 'Select', 'Red', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
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
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 63, 'Pedefinealm', 'Product 2d', 1, '279.9900', '279.9900', '57.9980', 0),
(2, 1, 64, 'Pogedonealm', 'Product 8s', 1, '110.0000', '110.0000', '24.0000', 0),
(3, 1, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '22.2000', 0),
(4, 1, 34, 'iPod Shuffle', 'Product 7', 1, '100.0000', '100.0000', '22.0000', 0),
(5, 1, 61, 'Mapofessons', 'Product 18d', 1, '225.0000', '225.0000', '0.0000', 800),
(6, 2, 60, 'Apple HD Display', 'Product 15s', 2, '123.0000', '246.0000', '26.6000', 200),
(7, 2, 29, 'Palm Treo Pro', 'Product 2', 1, '279.9900', '279.9900', '57.9980', 0),
(8, 2, 36, 'iPod Nano', 'Product 9', 1, '70.0000', '70.0000', '16.0000', 0),
(9, 2, 32, 'iPod Touch', 'Product 5', 1, '100.0000', '100.0000', '22.0000', 0),
(10, 3, 28, 'Etiam Gravida', '5', 1, '320.0000', '320.0000', '0.0000', 400),
(11, 3, 41, 'Fusce Aliquam', '6', 1, '280.0000', '280.0000', '0.0000', 0),
(12, 3, 54, 'Letraset Sheets', '7', 1, '250.0000', '250.0000', '0.0000', 0),
(13, 3, 40, 'Lorem Ipsum', '8', 1, '340.0000', '340.0000', '0.0000', 0),
(14, 3, 48, 'Nunc Facilisis', '10', 1, '120.0000', '120.0000', '0.0000', 0),
(15, 3, 36, 'Primis In Faucibus', '11', 1, '150.0000', '150.0000', '0.0000', 0),
(16, 3, 34, 'Proin Lectus Ipsum', '12', 1, '400.0000', '400.0000', '0.0000', 0),
(17, 4, 54, 'Letraset Sheets', '7', 1, '250.0000', '250.0000', '0.0000', 0),
(18, 5, 36, 'Primis In Faucibus', '11', 1, '150.0000', '150.0000', '0.0000', 0),
(19, 5, 43, 'Lorem Ipsum Passages', '9', 1, '400.0000', '400.0000', '0.0000', 600),
(20, 5, 30, 'Donec Ac Tempus', '3', 1, '90.0000', '90.0000', '0.0000', 200),
(21, 5, 34, 'Proin Lectus Ipsum', '12', 1, '400.0000', '400.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
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
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
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
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '815.9900', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'tax', 'Eco Tax (-2.00)', '10.0000', 5),
(4, 1, 'tax', 'VAT (20%)', '119.1980', 5),
(5, 1, 'total', 'Total', '950.1880', 9),
(6, 2, 'sub_total', 'Sub-Total', '695.9900', 1),
(7, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(8, 2, 'tax', 'Eco Tax (-2.00)', '12.0000', 5),
(9, 2, 'tax', 'VAT (20%)', '140.1980', 5),
(10, 2, 'total', 'Total', '853.1880', 9),
(11, 3, 'sub_total', 'Sub-Total', '1860.0000', 1),
(12, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(13, 3, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(14, 3, 'tax', 'VAT (20%)', '1.0000', 5),
(15, 3, 'total', 'Total', '1868.0000', 9),
(16, 4, 'sub_total', 'Sub-Total', '250.0000', 1),
(17, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(18, 4, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(19, 4, 'tax', 'VAT (20%)', '1.0000', 5),
(20, 4, 'total', 'Total', '258.0000', 9),
(21, 5, 'sub_total', 'Sub-Total', '1040.0000', 1),
(22, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(23, 5, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(24, 5, 'tax', 'VAT (20%)', '1.0000', 5),
(25, 5, 'total', 'Total', '1048.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
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
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
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
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
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
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, '5', '', '', '', '', '', '', '', 999998, 7, 'catalog/demo/product/1/6.jpg', 8, 1, '320.0000', 200, 0, '2017-02-27', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 4, '2009-02-03 16:06:50', '2017-03-21 09:27:32'),
(30, '3', '', '', '', '', '', '', '', 999998, 7, 'catalog/demo/product/1/10.jpg', 9, 1, '330.0000', 0, 0, '2017-02-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 19, '2009-02-03 16:59:00', '2017-03-21 09:25:20'),
(32, '13', '', '', '', '', '', '', '', 999999, 7, 'catalog/demo/product/1/14.jpg', 8, 1, '380.0000', 0, 0, '2017-02-27', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 4, '2009-02-03 17:07:26', '2017-03-21 09:34:58'),
(34, '12', '', '', '', '', '', '', '', 999997, 7, 'catalog/demo/product/1/23.jpg', 8, 1, '400.0000', 0, 0, '2017-02-27', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 4, '2009-02-03 18:07:54', '2017-03-21 09:34:00'),
(36, '11', '', '', '', '', '', '', '', 999997, 7, 'catalog/demo/product/1/18.jpg', 8, 0, '330.0000', 100, 0, '2017-02-27', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 18:09:19', '2017-03-21 09:33:02'),
(40, '8', '', '', '', '', '', '', '', 999998, 7, 'catalog/demo/product/1/21.jpg', 8, 1, '340.0000', 0, 0, '2017-02-27', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 3, '2009-02-03 21:07:12', '2017-03-01 10:30:18'),
(41, '6', '', '', '', '', '', '', '', 999998, 7, 'catalog/demo/product/1/14.jpg', 8, 1, '280.0000', 0, 0, '2017-02-27', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 3, '2009-02-03 21:07:26', '2017-03-21 09:28:42'),
(42, '1', '', '', '', '', '', '', '', 99999, 7, 'catalog/demo/product/1/1.jpg', 8, 1, '300.0000', 400, 0, '2017-02-27', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 0, 1, 0, 1, 88, '2009-02-03 21:07:37', '2017-03-21 09:22:47'),
(43, '9', '', '', '', '', '', '', '', 999998, 7, 'catalog/demo/product/1/18.jpg', 8, 0, '400.0000', 0, 0, '2017-02-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 16, '2009-02-03 21:07:49', '2017-03-21 09:30:48'),
(44, '14', '', '', '', '', '', '', '', 999999, 7, 'catalog/demo/product/2/1.jpg', 8, 1, '510.0000', 0, 0, '2017-02-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 19, '2009-02-03 21:08:00', '2017-03-21 09:36:02'),
(47, '4', '', '', '', '', '', '', '', 999999, 7, 'catalog/demo/product/1/13.jpg', 7, 1, '230.0000', 400, 0, '2017-02-27', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 15, '2009-02-03 21:08:40', '2017-03-21 09:26:30'),
(48, '10', '', '', '', '', '', '', '', 999998, 7, 'catalog/demo/product/1/24.jpg', 8, 1, '330.0000', 0, 0, '2017-02-27', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 27, '2009-02-08 17:21:51', '2017-03-21 09:31:54'),
(54, '7', '', '', '', '', '', '', '', 999997, 7, 'catalog/demo/product/1/2.jpg', 8, 1, '250.0000', 0, 0, '2017-02-27', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 20, '2016-07-13 10:03:52', '2017-03-21 09:29:45'),
(60, '2', '', '', '', '', '', '', '', 999999, 7, 'catalog/demo/product/1/8.jpg', 8, 1, '100.0000', 400, 0, '2017-02-27', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 1, 0, 1, 30, '2016-07-29 17:20:30', '2017-03-21 09:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 4, 1, '16GB'),
(42, 3, 2, '100mhz'),
(43, 2, 2, '1'),
(47, 2, 2, ''),
(43, 2, 1, '1'),
(60, 3, 1, '100mhz'),
(43, 4, 2, '8gb'),
(60, 3, 2, ''),
(47, 2, 1, '4'),
(47, 4, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
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
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Etiam Gravida', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Etiam Gravida', '', ''),
(28, 2, 'Etiam Gravida', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Etiam Gravida', '', ''),
(36, 1, 'Primis In Faucibus', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Primis In Faucibus', '', ''),
(36, 2, 'Primis In Faucibus', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Primis In Faucibus', '', ''),
(47, 1, 'Donec Non Est', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Donec Non Est', '', ''),
(41, 1, 'Fusce Aliquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Fusce Aliquam', '', ''),
(34, 1, 'Proin Lectus Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Proin Lectus Ipsum', '', ''),
(34, 2, 'Proin Lectus Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Proin Lectus Ipsum', '', ''),
(42, 2, 'Accumsan Elit', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Accumsan Elit', '', ''),
(42, 1, 'Accumsan Elit', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Accumsan Elit', '', ''),
(40, 2, 'Lorem Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Lorem Ipsum', '', ''),
(40, 1, 'Lorem Ipsum', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Lorem Ipsum', '', ''),
(48, 1, 'Nunc Facilisis', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nunc Facilisis', '', ''),
(32, 1, 'Quisque In Arcu', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Quisque In Arcu', '', ''),
(32, 2, 'Quisque In Arcu', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Quisque In Arcu', '', ''),
(48, 2, 'Nunc Facilisis', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nunc Facilisis', '', ''),
(43, 1, 'Lorem Ipsum Passages', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Lorem Ipsum Passages', '', ''),
(43, 2, 'Lorem Ipsum Passages', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Lorem Ipsum Passages', '', ''),
(44, 1, 'Ras Neque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Ras Neque Metus', '', ''),
(44, 2, 'Ras Neque Metus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Ras Neque Metus', '', ''),
(30, 1, 'Donec Ac Tempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Donec Ac Tempus', '', ''),
(30, 2, 'Donec Ac Tempus', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Donec Ac Tempus', '', ''),
(60, 2, 'Aliquam Consequat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Aliquam Consequat', '', ''),
(60, 1, 'Aliquam Consequat', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Aliquam Consequat', '', ''),
(47, 2, 'Donec Non Est', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Donec Non Est', '', ''),
(41, 2, 'Fusce Aliquam', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Fusce Aliquam', '', ''),
(54, 1, 'Letraset Sheets', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Letraset Sheets', '', ''),
(54, 2, 'Letraset Sheets', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis', '', 'Letraset Sheets', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
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
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 16),
(28, 17),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(30, 11),
(30, 12),
(30, 13),
(30, 14),
(30, 15),
(30, 16),
(30, 17),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 10),
(32, 11),
(32, 12),
(32, 13),
(32, 14),
(32, 15),
(32, 16),
(32, 17),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(34, 10),
(34, 11),
(34, 12),
(34, 13),
(34, 14),
(34, 15),
(34, 16),
(34, 17),
(36, 5),
(36, 6),
(36, 7),
(36, 8),
(36, 9),
(36, 10),
(36, 11),
(36, 12),
(36, 13),
(36, 14),
(36, 15),
(36, 16),
(36, 17),
(40, 1),
(40, 2),
(40, 3),
(40, 4),
(40, 5),
(40, 7),
(40, 8),
(40, 9),
(40, 10),
(40, 11),
(40, 12),
(40, 13),
(40, 14),
(40, 15),
(40, 16),
(40, 17),
(41, 1),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(41, 6),
(41, 7),
(41, 8),
(41, 9),
(41, 10),
(41, 11),
(41, 12),
(41, 13),
(41, 14),
(41, 15),
(41, 16),
(41, 17),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(42, 6),
(42, 7),
(42, 8),
(42, 10),
(42, 11),
(42, 12),
(42, 13),
(42, 14),
(42, 15),
(42, 16),
(42, 17),
(43, 1),
(43, 3),
(43, 4),
(43, 5),
(43, 6),
(43, 7),
(43, 8),
(43, 9),
(43, 10),
(43, 11),
(43, 12),
(43, 13),
(43, 14),
(43, 15),
(43, 16),
(43, 17),
(44, 1),
(44, 2),
(44, 3),
(44, 4),
(44, 5),
(44, 6),
(44, 7),
(44, 8),
(44, 10),
(44, 11),
(44, 12),
(44, 13),
(44, 14),
(44, 15),
(44, 16),
(44, 17),
(47, 1),
(47, 2),
(47, 3),
(47, 4),
(47, 5),
(47, 6),
(47, 7),
(47, 8),
(47, 9),
(47, 10),
(47, 11),
(47, 12),
(47, 13),
(47, 14),
(47, 15),
(47, 16),
(47, 17),
(48, 1),
(48, 2),
(48, 3),
(48, 4),
(48, 5),
(48, 6),
(48, 7),
(48, 8),
(48, 9),
(48, 10),
(48, 11),
(48, 12),
(48, 13),
(48, 14),
(48, 15),
(48, 16),
(48, 17),
(54, 1),
(54, 2),
(54, 3),
(54, 4),
(54, 5),
(54, 6),
(54, 7),
(54, 8),
(54, 9),
(54, 10),
(54, 11),
(54, 12),
(54, 13),
(54, 14),
(54, 15),
(54, 16),
(54, 17),
(60, 1),
(60, 2),
(60, 3),
(60, 4),
(60, 5),
(60, 6),
(60, 7),
(60, 8),
(60, 9),
(60, 10),
(60, 11),
(60, 12),
(60, 13),
(60, 14),
(60, 15),
(60, 16),
(60, 17);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `is_rotator` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `is_rotator`) VALUES
(3489, 30, 'catalog/demo/product/1/7.jpg', 0, 0),
(3496, 28, 'catalog/demo/product/1/11.jpg', 0, 1),
(3500, 41, 'catalog/demo/product/1/13.jpg', 0, 1),
(3453, 40, 'catalog/demo/product/1/23.jpg', 0, 0),
(3516, 36, 'catalog/demo/product/1/20.jpg', 0, 0),
(3515, 36, 'catalog/demo/product/1/19.jpg', 0, 1),
(3520, 34, 'catalog/demo/product/1/22.jpg', 0, 0),
(3526, 32, 'catalog/demo/product/1/16.jpg', 0, 0),
(3525, 32, 'catalog/demo/product/1/19.jpg', 0, 1),
(3524, 32, 'catalog/demo/product/1/24.jpg', 0, 0),
(3512, 48, 'catalog/demo/product/1/10.jpg', 0, 1),
(3511, 48, 'catalog/demo/product/1/22.jpg', 0, 0),
(3452, 40, 'catalog/demo/product/1/22.jpg', 0, 0),
(3488, 30, 'catalog/demo/product/1/11.jpg', 0, 1),
(3493, 47, 'catalog/demo/product/1/14.jpg', 0, 0),
(3495, 28, 'catalog/demo/product/1/9.jpg', 0, 0),
(3451, 40, 'catalog/demo/product/1/20.jpg', 0, 0),
(3510, 48, 'catalog/demo/product/1/14.jpg', 0, 0),
(3514, 36, 'catalog/demo/product/1/18.jpg', 0, 0),
(3513, 36, 'catalog/demo/product/1/16.jpg', 0, 0),
(3519, 34, 'catalog/demo/product/1/19.jpg', 0, 0),
(3518, 34, 'catalog/demo/product/1/16.jpg', 0, 0),
(3523, 32, 'catalog/demo/product/1/23.jpg', 0, 0),
(3522, 32, 'catalog/demo/product/1/21.jpg', 0, 0),
(3521, 32, 'catalog/demo/product/1/15.jpg', 0, 0),
(3527, 44, 'catalog/demo/product/2/12.jpg', 0, 0),
(3528, 44, 'catalog/demo/product/2/11.jpg', 0, 0),
(3529, 44, 'catalog/demo/product/2/10.jpg', 0, 1),
(3482, 42, 'catalog/demo/product/1/3.jpg', 0, 0),
(3481, 42, 'catalog/demo/product/1/5.jpg', 0, 0),
(3480, 42, 'catalog/demo/product/1/4.jpg', 0, 1),
(3479, 42, 'catalog/demo/product/1/2.jpg', 0, 0),
(3478, 42, 'catalog/demo/product/1/1.jpg', 0, 0),
(3492, 47, 'catalog/demo/product/1/6.jpg', 0, 0),
(3499, 41, 'catalog/demo/product/1/14.jpg', 0, 0),
(3450, 40, 'catalog/demo/product/1/16.jpg', 0, 0),
(3449, 40, 'catalog/demo/product/1/22.jpg', 0, 1),
(3506, 43, 'catalog/demo/product/1/16.jpg', 0, 0),
(3507, 43, 'catalog/demo/product/1/17.jpg', 0, 0),
(3508, 43, 'catalog/demo/product/1/20.jpg', 0, 0),
(3509, 43, 'catalog/demo/product/1/15.jpg', 0, 1),
(3483, 60, 'catalog/demo/product/1/1.jpg', 0, 0),
(3484, 60, 'catalog/demo/product/1/2.jpg', 0, 0),
(3485, 60, 'catalog/demo/product/1/4.jpg', 0, 0),
(3486, 60, 'catalog/demo/product/1/5.jpg', 0, 0),
(3487, 60, 'catalog/demo/product/1/23.jpg', 0, 1),
(3491, 47, 'catalog/demo/product/1/12.jpg', 0, 1),
(3490, 47, 'catalog/demo/product/1/14.jpg', 0, 0),
(3494, 28, 'catalog/demo/product/1/6.jpg', 0, 0),
(3498, 41, 'catalog/demo/product/1/14.jpg', 0, 0),
(3497, 41, 'catalog/demo/product/1/12.jpg', 0, 0),
(3501, 54, 'catalog/demo/product/1/13.jpg', 0, 0),
(3502, 54, 'catalog/demo/product/1/14.jpg', 0, 0),
(3503, 54, 'catalog/demo/product/1/2.jpg', 0, 0),
(3504, 54, 'catalog/demo/product/1/5.jpg', 0, 0),
(3505, 54, 'catalog/demo/product/1/4.jpg', 0, 1),
(3517, 34, 'catalog/demo/product/1/21.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(225, 47, 12, '2011-04-22', 1),
(208, 42, 4, 'test', 1),
(218, 42, 1, '', 1),
(226, 30, 5, '', 1),
(222, 42, 7, '', 1),
(217, 42, 5, '', 1),
(227, 60, 7, '', 1),
(228, 60, 8, '2011-02-20', 1),
(233, 60, 2, '', 1),
(234, 60, 10, '2011-02-20 22:25', 1),
(223, 42, 2, '', 1),
(232, 60, 6, '', 1),
(209, 42, 6, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(219, 42, 8, '2011-02-20', 1),
(231, 60, 5, '', 1),
(230, 60, 1, '', 1),
(229, 60, 4, 'test', 1),
(221, 42, 9, '22:25', 1),
(235, 60, 9, '22:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(16, 226, 30, 5, 40, 4, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(5, 218, 42, 1, 32, 94, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(27, 233, 60, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(26, 233, 60, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(20, 231, 60, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(21, 231, 60, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(23, 231, 60, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(24, 233, 60, 2, 23, 44, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(25, 233, 60, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(22, 231, 60, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(19, 230, 60, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(18, 230, 60, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 46, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(17, 230, 60, 1, 32, 92, 1, '10.0000', '+', 1, '+', '10.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 28),
(28, 30),
(28, 32),
(28, 34),
(28, 36),
(28, 40),
(28, 41),
(28, 42),
(28, 44),
(28, 47),
(28, 48),
(28, 54),
(28, 60),
(30, 28),
(30, 30),
(30, 32),
(30, 34),
(30, 36),
(30, 40),
(30, 41),
(30, 42),
(30, 44),
(30, 48),
(30, 60),
(32, 28),
(32, 30),
(32, 40),
(32, 41),
(32, 42),
(32, 43),
(32, 54),
(34, 28),
(34, 30),
(34, 40),
(34, 41),
(34, 42),
(34, 43),
(34, 47),
(34, 54),
(34, 60),
(36, 28),
(36, 30),
(36, 40),
(36, 41),
(36, 42),
(36, 43),
(36, 47),
(36, 54),
(40, 28),
(40, 30),
(40, 32),
(40, 34),
(40, 36),
(40, 40),
(40, 41),
(40, 42),
(40, 43),
(40, 44),
(40, 47),
(40, 54),
(40, 60),
(41, 28),
(41, 30),
(41, 32),
(41, 34),
(41, 36),
(41, 40),
(41, 42),
(41, 43),
(41, 44),
(41, 47),
(41, 48),
(41, 54),
(41, 60),
(42, 28),
(42, 30),
(42, 32),
(42, 34),
(42, 36),
(42, 40),
(42, 41),
(42, 43),
(42, 44),
(42, 47),
(42, 54),
(42, 60),
(43, 32),
(43, 34),
(43, 36),
(43, 40),
(43, 41),
(43, 42),
(43, 44),
(43, 47),
(43, 60),
(44, 28),
(44, 30),
(44, 40),
(44, 41),
(44, 42),
(44, 43),
(44, 47),
(44, 54),
(44, 60),
(47, 28),
(47, 34),
(47, 36),
(47, 40),
(47, 41),
(47, 42),
(47, 43),
(47, 44),
(47, 48),
(47, 54),
(47, 60),
(48, 28),
(48, 30),
(48, 41),
(48, 47),
(54, 28),
(54, 32),
(54, 34),
(54, 36),
(54, 40),
(54, 41),
(54, 42),
(54, 44),
(54, 47),
(54, 60),
(60, 28),
(60, 30),
(60, 34),
(60, 40),
(60, 41),
(60, 42),
(60, 43),
(60, 44),
(60, 47),
(60, 54),
(60, 60);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(663, 42, 1, 100),
(666, 47, 1, 300),
(667, 28, 1, 400),
(668, 43, 1, 600),
(665, 30, 1, 200),
(669, 44, 1, 700),
(664, 60, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(600, 47, 1, 0, '100.0000', '2016-07-22', '2020-02-27'),
(599, 30, 1, 0, '90.0000', '2016-06-27', '2026-08-06'),
(597, 42, 1, 0, '80.0000', '2016-07-18', '2017-08-23'),
(602, 36, 1, 0, '150.0000', '2017-02-27', '2018-02-27'),
(601, 48, 1, 0, '120.0000', '2017-02-27', '2018-02-27'),
(598, 60, 1, 0, '80.0000', '2016-07-18', '2017-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 123),
(28, 124),
(28, 125),
(28, 126),
(28, 127),
(28, 128),
(28, 134),
(28, 140),
(28, 146),
(28, 151),
(28, 156),
(28, 161),
(28, 166),
(28, 171),
(28, 176),
(28, 181),
(28, 186),
(28, 192),
(28, 193),
(28, 194),
(28, 195),
(28, 197),
(28, 198),
(28, 204),
(28, 210),
(28, 216),
(28, 222),
(28, 227),
(28, 232),
(28, 237),
(28, 242),
(28, 247),
(30, 123),
(30, 124),
(30, 125),
(30, 126),
(30, 127),
(30, 128),
(30, 134),
(30, 140),
(30, 146),
(30, 151),
(30, 156),
(30, 161),
(30, 166),
(30, 171),
(30, 176),
(30, 181),
(30, 186),
(30, 192),
(30, 193),
(30, 194),
(30, 195),
(30, 197),
(30, 198),
(30, 204),
(30, 210),
(30, 216),
(30, 222),
(30, 227),
(30, 232),
(30, 237),
(30, 242),
(30, 247),
(32, 123),
(32, 124),
(32, 125),
(32, 126),
(32, 127),
(32, 128),
(32, 134),
(32, 140),
(32, 146),
(32, 151),
(32, 156),
(32, 161),
(32, 166),
(32, 171),
(32, 176),
(32, 181),
(32, 186),
(32, 192),
(32, 193),
(32, 194),
(32, 195),
(32, 197),
(32, 198),
(32, 204),
(32, 210),
(32, 216),
(32, 222),
(32, 227),
(32, 232),
(32, 237),
(32, 242),
(32, 247),
(34, 123),
(34, 124),
(34, 125),
(34, 126),
(34, 127),
(34, 128),
(34, 134),
(34, 140),
(34, 146),
(34, 151),
(34, 156),
(34, 161),
(34, 166),
(34, 171),
(34, 176),
(34, 181),
(34, 186),
(34, 192),
(34, 193),
(34, 194),
(34, 195),
(34, 197),
(34, 198),
(34, 204),
(34, 210),
(34, 216),
(34, 222),
(34, 227),
(34, 232),
(34, 237),
(34, 242),
(34, 247),
(36, 123),
(36, 124),
(36, 125),
(36, 126),
(36, 127),
(36, 128),
(36, 134),
(36, 140),
(36, 146),
(36, 151),
(36, 156),
(36, 161),
(36, 166),
(36, 171),
(36, 176),
(36, 181),
(36, 186),
(36, 192),
(36, 193),
(36, 194),
(36, 195),
(36, 198),
(36, 204),
(36, 210),
(36, 216),
(36, 222),
(36, 227),
(36, 232),
(36, 237),
(36, 242),
(36, 247),
(40, 123),
(40, 124),
(40, 125),
(40, 126),
(40, 127),
(40, 128),
(40, 134),
(40, 140),
(40, 146),
(40, 151),
(40, 156),
(40, 161),
(40, 166),
(40, 171),
(40, 176),
(40, 181),
(40, 186),
(41, 123),
(41, 124),
(41, 125),
(41, 126),
(41, 127),
(41, 128),
(41, 134),
(41, 140),
(41, 146),
(41, 151),
(41, 156),
(41, 161),
(41, 166),
(41, 171),
(41, 176),
(41, 181),
(41, 186),
(41, 192),
(41, 193),
(41, 194),
(41, 195),
(41, 197),
(41, 198),
(41, 204),
(41, 210),
(41, 216),
(41, 222),
(41, 227),
(41, 232),
(41, 237),
(41, 242),
(41, 247),
(42, 123),
(42, 124),
(42, 125),
(42, 126),
(42, 127),
(42, 128),
(42, 134),
(42, 140),
(42, 146),
(42, 151),
(42, 156),
(42, 161),
(42, 166),
(42, 171),
(42, 176),
(42, 181),
(42, 186),
(42, 192),
(42, 193),
(42, 194),
(42, 195),
(42, 197),
(42, 198),
(42, 204),
(42, 210),
(42, 216),
(42, 222),
(42, 227),
(42, 232),
(42, 237),
(42, 242),
(42, 247),
(43, 123),
(43, 124),
(43, 125),
(43, 126),
(43, 127),
(43, 128),
(43, 134),
(43, 140),
(43, 146),
(43, 151),
(43, 156),
(43, 161),
(43, 166),
(43, 171),
(43, 176),
(43, 181),
(43, 186),
(43, 192),
(43, 193),
(43, 194),
(43, 195),
(43, 197),
(43, 198),
(43, 204),
(43, 210),
(43, 216),
(43, 222),
(43, 227),
(43, 232),
(43, 237),
(43, 242),
(43, 247),
(44, 123),
(44, 124),
(44, 125),
(44, 126),
(44, 127),
(44, 128),
(44, 134),
(44, 140),
(44, 146),
(44, 151),
(44, 156),
(44, 161),
(44, 166),
(44, 171),
(44, 176),
(44, 181),
(44, 186),
(44, 192),
(44, 193),
(44, 194),
(44, 195),
(44, 197),
(44, 198),
(44, 204),
(44, 210),
(44, 216),
(44, 222),
(44, 227),
(44, 232),
(44, 237),
(44, 242),
(44, 247),
(47, 123),
(47, 124),
(47, 125),
(47, 126),
(47, 127),
(47, 128),
(47, 134),
(47, 140),
(47, 146),
(47, 151),
(47, 156),
(47, 161),
(47, 166),
(47, 171),
(47, 176),
(47, 181),
(47, 186),
(47, 192),
(47, 193),
(47, 194),
(47, 195),
(47, 197),
(47, 198),
(47, 204),
(47, 210),
(47, 216),
(47, 222),
(47, 227),
(47, 232),
(47, 237),
(47, 242),
(47, 247),
(48, 123),
(48, 124),
(48, 125),
(48, 126),
(48, 127),
(48, 128),
(48, 134),
(48, 140),
(48, 146),
(48, 151),
(48, 156),
(48, 161),
(48, 166),
(48, 171),
(48, 176),
(48, 181),
(48, 186),
(48, 192),
(48, 193),
(48, 194),
(48, 195),
(48, 197),
(48, 198),
(48, 204),
(48, 210),
(48, 216),
(48, 222),
(48, 227),
(48, 232),
(48, 237),
(48, 242),
(48, 247),
(54, 123),
(54, 124),
(54, 125),
(54, 126),
(54, 127),
(54, 128),
(54, 134),
(54, 140),
(54, 146),
(54, 151),
(54, 156),
(54, 161),
(54, 166),
(54, 171),
(54, 176),
(54, 181),
(54, 186),
(54, 192),
(54, 193),
(54, 194),
(54, 195),
(54, 197),
(54, 198),
(54, 204),
(54, 210),
(54, 216),
(54, 222),
(54, 227),
(54, 232),
(54, 237),
(54, 242),
(54, 247),
(60, 123),
(60, 124),
(60, 125),
(60, 126),
(60, 127),
(60, 128),
(60, 134),
(60, 140),
(60, 146),
(60, 151),
(60, 156),
(60, 161),
(60, 166),
(60, 171),
(60, 176),
(60, 181),
(60, 186),
(60, 192),
(60, 193),
(60, 194),
(60, 195),
(60, 197),
(60, 198),
(60, 204),
(60, 210),
(60, 216),
(60, 222),
(60, 227),
(60, 232),
(60, 237),
(60, 242),
(60, 247);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(42, 1, 0),
(42, 2, 0),
(42, 3, 0),
(30, 0, 0),
(30, 1, 0),
(30, 2, 0),
(30, 3, 0),
(47, 0, 0),
(47, 1, 0),
(47, 2, 0),
(47, 3, 0),
(28, 0, 0),
(28, 1, 0),
(28, 2, 0),
(28, 3, 0),
(41, 0, 0),
(41, 1, 0),
(41, 2, 0),
(41, 3, 0),
(40, 3, 0),
(40, 2, 0),
(40, 1, 0),
(40, 0, 0),
(48, 0, 0),
(48, 1, 0),
(48, 2, 0),
(48, 3, 0),
(36, 3, 0),
(36, 2, 0),
(36, 1, 0),
(36, 0, 0),
(34, 3, 0),
(34, 2, 0),
(34, 1, 0),
(34, 0, 0),
(32, 0, 0),
(32, 1, 0),
(32, 2, 0),
(32, 3, 0),
(43, 3, 0),
(43, 2, 0),
(43, 1, 0),
(43, 0, 0),
(44, 3, 0),
(44, 2, 0),
(44, 1, 0),
(44, 0, 0),
(54, 0, 0),
(54, 1, 0),
(54, 2, 0),
(54, 3, 0),
(60, 3, 0),
(60, 2, 0),
(60, 1, 0),
(60, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(28, 1),
(28, 2),
(28, 3),
(30, 0),
(30, 1),
(30, 2),
(30, 3),
(32, 0),
(32, 1),
(32, 2),
(32, 3),
(34, 0),
(34, 1),
(34, 2),
(34, 3),
(36, 0),
(36, 1),
(36, 2),
(36, 3),
(40, 0),
(40, 1),
(40, 2),
(40, 3),
(41, 0),
(41, 1),
(41, 2),
(41, 3),
(42, 0),
(42, 1),
(42, 2),
(42, 3),
(43, 0),
(43, 1),
(43, 2),
(43, 3),
(44, 0),
(44, 1),
(44, 2),
(44, 3),
(47, 0),
(47, 1),
(47, 2),
(47, 3),
(48, 0),
(48, 1),
(48, 2),
(48, 3),
(54, 0),
(54, 1),
(54, 2),
(54, 3),
(60, 0),
(60, 1),
(60, 2),
(60, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
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
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
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
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
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

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 42, 0, 'plaza-themes', 'The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. ', 4, 1, '2016-07-24 16:06:04', '2016-07-24 16:08:59'),
(8, 60, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:16:25', '2017-03-22 14:30:55'),
(9, 60, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:16:46', '2017-03-22 14:30:49'),
(3, 41, 0, 'plaza-themes', 'The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. ', 4, 1, '2016-07-24 16:07:06', '2016-07-24 16:08:50'),
(4, 32, 0, 'plaza-themes', 'The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. ', 5, 1, '2016-07-24 16:07:36', '2016-07-24 16:08:46'),
(5, 28, 0, 'plaza-themes', 'The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. ', 5, 1, '2016-07-24 16:08:00', '2016-07-24 16:08:41'),
(6, 36, 0, 'plaza-themes', 'The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. ', 5, 1, '2016-07-24 16:08:20', '2016-07-24 16:08:37'),
(7, 30, 0, 'plaza-themes', 'We only display comments from reviews that were made after 28 April 2016 as all comments prior to this date were intended for the author only.', 5, 1, '2016-07-28 10:17:19', '0000-00-00 00:00:00'),
(10, 47, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:18:32', '2017-03-22 14:30:44'),
(11, 43, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:19:30', '2017-03-22 14:30:37'),
(12, 48, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:20:12', '2017-03-22 14:30:32'),
(13, 34, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:28:35', '2017-03-22 14:30:27'),
(14, 44, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:29:15', '2017-03-22 14:30:21'),
(15, 43, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:29:49', '2017-03-22 14:30:16'),
(16, 54, 0, 'plaza', 'Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 5, 1, '2017-03-22 14:31:39', '2017-03-22 14:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(7198, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(1621, 0, 'ocblog', 'ocblog_meta_title', 'Blog', 0),
(1506, 0, 'oclayerednavigation', 'oclayerednavigation_status', '1', 0),
(1620, 0, 'ocblog', 'ocblog_article_limit', '5', 0),
(7629, 2, 'config', 'config_stock_display', '0', 0),
(2540, 0, 'basic_captcha', 'basic_captcha_status', '1', 0),
(3807, 0, 'ocsearchcategory', 'ocsearchcategory_product_price', '1', 0),
(7360, 3, 'theme_default', 'theme_default_image_related_height', '1000', 0),
(7551, 0, 'config', 'config_compression', '0', 0),
(7552, 0, 'config', 'config_secure', '0', 0),
(7553, 0, 'config', 'config_password', '1', 0),
(7554, 0, 'config', 'config_shared', '0', 0),
(7555, 0, 'config', 'config_encryption', 'CHqToySaiauNvNY3A7DtqCg32IJJuQyjg5giM9gJXnV6uF5oQhGPzPpkrtlA8ohZHEGqN5UgLm9iG7HIbIT1EeaBXsPTDXBLeo80fHvXvNOq1gamj4nUbk1M96lOy7huh49qcqvVqdBvmvdQixjk4TgTsLlRsU2zFqtqExOmXUhmuqnHTowO7CS9tRPPzVMBmB6QFMrmAnuRiyLX6qw48fu0WZP23tjzIaDMYuRGD6clZtvIMfKv2yn9g3jAojdKaE4xDLxC6YIrcouovG8uAIrIVwB9ODFXFSy8EwybJzTkxg1GhhC8CI90xHbnre24XdtGvcOAP9xYzEA6dGkzvqsyzo49fGjrfM4zkgfWypmOwFCdaPqxDgwJ7yMUHQyW7IZYYrHCzloMBukVEujghu9jVoqqbc75uaYPxJBdlHx4cuPT6i6UbQOHGG17ln2gB9gIw0pv4xiqbDARf87nbq45hJq7boOC7GmE1F4r81swkJWHdEj6idZy7r4HSrKneB68RAdVBaPU9FAzJq3DwiBPsBhTYMtIr47qRxTviAthBMLoZmB8lfpXe8O8PCzNeG4pff6VBFRoi9A0h0xhe91VQuiPkytS3ul8lBH20aXyYGHj4K31S3DyeHuPEo8bx9ukRURm7kpZWGSPBhCiir7XhTFKQz5JCO3HWHvJubUy1I6MBHPffNHLZqvmXE21sgVOYO6Tyo2WjkdqCKEPUTCgrDfItvMjxhuhPiyRNbriteYtij6fWYPyJbhlPximmlUyYFJtAUnPZ2kWRBGxiPeWJJazbSTAxgA6UIirpmR1taMpoyL4UNg7yeGSZaV166CMtMrX459eAyJ0zofdT9B3eG4EmN5zIMGxWBDnhpMDP08FR0kKHPY3bZImMLWudDUJ9m0NWHvrVU1pJeDeSfiCzl13fO9eJBCYCnKyL6mDbycnewwxIlCwdnBK0remjbxNfgmYSIOfTo8U5NUxLIYI6JQs6jl1Fqf5oucx577zu15kIb3K2ZYkm7fyaKy7', 0),
(7546, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(7547, 0, 'config', 'config_mail_alert_email', '', 0),
(7548, 0, 'config', 'config_maintenance', '0', 0),
(7549, 0, 'config', 'config_seo_url', '0', 0),
(7550, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(7153, 1, 'theme_default', 'theme_default_image_related_height', '1000', 0),
(7544, 0, 'config', 'config_mail_smtp_password', '', 0),
(7557, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(7556, 0, 'config', 'config_file_max_size', '300000', 0),
(7545, 0, 'config', 'config_mail_smtp_port', '25', 0),
(7543, 0, 'config', 'config_mail_smtp_username', '', 0),
(7542, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(7541, 0, 'config', 'config_mail_parameter', '', 0),
(7539, 0, 'config', 'config_ftp_status', '0', 0),
(7540, 0, 'config', 'config_mail_protocol', 'mail', 0),
(7538, 0, 'config', 'config_ftp_root', '', 0),
(7536, 0, 'config', 'config_ftp_username', '', 0),
(7537, 0, 'config', 'config_ftp_password', '', 0),
(7533, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(7534, 0, 'config', 'config_ftp_hostname', 'tt_bestmarket1.com', 0),
(7535, 0, 'config', 'config_ftp_port', '21', 0),
(7532, 0, 'config', 'config_logo', 'catalog/logo-1.png', 0),
(7531, 0, 'config', 'config_captcha_page', '["register","guest","review","return","contact"]', 1),
(7705, 1, 'config', 'config_secure', '0', 0),
(7094, 0, 'ocquickview', 'ocquickview_children_element', 'btn-quick-view', 0),
(7471, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(7468, 0, 'theme_default', 'theme_default_image_cart_width', '80', 0),
(7469, 0, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(7470, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(7467, 0, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(7466, 0, 'theme_default', 'theme_default_image_wishlist_width', '80', 0),
(7465, 0, 'theme_default', 'theme_default_image_compare_height', '100', 0),
(7464, 0, 'theme_default', 'theme_default_image_compare_width', '80', 0),
(7463, 0, 'theme_default', 'theme_default_image_related_height', '1000', 0),
(7703, 1, 'config', 'config_logo', 'catalog/logo-2.png', 0),
(7704, 1, 'config', 'config_icon', 'catalog/cart.png', 0),
(7702, 1, 'config', 'config_stock_checkout', '0', 0),
(7701, 1, 'config', 'config_stock_display', '0', 0),
(7700, 1, 'config', 'config_order_status_id', '7', 0),
(7529, 0, 'config', 'config_return_status_id', '2', 0),
(7530, 0, 'config', 'config_captcha', 'basic_captcha', 0),
(7528, 0, 'config', 'config_return_id', '0', 0),
(7527, 0, 'config', 'config_affiliate_id', '4', 0),
(7628, 2, 'config', 'config_order_status_id', '7', 0),
(7627, 2, 'config', 'config_checkout_id', '0', 0),
(7626, 2, 'config', 'config_checkout_guest', '0', 0),
(7625, 2, 'config', 'config_cart_weight', '0', 0),
(7623, 2, 'config', 'config_customer_price', '0', 0),
(7624, 2, 'config', 'config_account_id', '0', 0),
(7619, 2, 'config', 'config_tax', '0', 0),
(7668, 3, 'config', 'config_icon', 'catalog/cart.png', 0),
(7665, 3, 'config', 'config_stock_display', '0', 0),
(7667, 3, 'config', 'config_logo', 'catalog/logo-4.png', 0),
(7666, 3, 'config', 'config_stock_checkout', '0', 0),
(7664, 3, 'config', 'config_order_status_id', '7', 0),
(7663, 3, 'config', 'config_checkout_id', '0', 0),
(7662, 3, 'config', 'config_checkout_guest', '0', 0),
(7622, 2, 'config', 'config_customer_group_id', '1', 0),
(7621, 2, 'config', 'config_tax_customer', '', 0),
(7699, 1, 'config', 'config_checkout_id', '0', 0),
(7698, 1, 'config', 'config_checkout_guest', '0', 0),
(7695, 1, 'config', 'config_customer_price', '0', 0),
(7696, 1, 'config', 'config_account_id', '0', 0),
(7697, 1, 'config', 'config_cart_weight', '0', 0),
(7526, 0, 'config', 'config_affiliate_commission', '5', 0),
(7523, 0, 'config', 'config_stock_checkout', '0', 0),
(7524, 0, 'config', 'config_affiliate_approval', '0', 0),
(7525, 0, 'config', 'config_affiliate_auto', '0', 0),
(7522, 0, 'config', 'config_stock_warning', '0', 0),
(7520, 0, 'config', 'config_api_id', '2', 0),
(7521, 0, 'config', 'config_stock_display', '0', 0),
(7519, 0, 'config', 'config_fraud_status_id', '7', 0),
(594, 0, 'installtemp', 'installtemp', '1', 0),
(7462, 0, 'theme_default', 'theme_default_image_related_width', '800', 0),
(7461, 0, 'theme_default', 'theme_default_image_testimonial_height', '100', 0),
(7460, 0, 'theme_default', 'theme_default_image_testimonial_width', '100', 0),
(7152, 1, 'theme_default', 'theme_default_image_related_width', '800', 0),
(7151, 1, 'theme_default', 'theme_default_image_testimonial_height', '100', 0),
(7150, 1, 'theme_default', 'theme_default_image_testimonial_width', '100', 0),
(7149, 1, 'theme_default', 'theme_default_image_blog_height', '300', 0),
(7148, 1, 'theme_default', 'theme_default_image_blog_width', '458', 0),
(7147, 1, 'theme_default', 'theme_default_image_article_height', '764', 0),
(7146, 1, 'theme_default', 'theme_default_image_article_width', '1170', 0),
(7145, 1, 'theme_default', 'theme_default_image_additional_height', '2000', 0),
(7144, 1, 'theme_default', 'theme_default_image_additional_width', '1600', 0),
(7143, 1, 'theme_default', 'theme_default_image_product_height', '1000', 0),
(7459, 0, 'theme_default', 'theme_default_image_blog_height', '280', 0),
(7293, 2, 'theme_default', 'theme_default_image_related_height', '1000', 0),
(7292, 2, 'theme_default', 'theme_default_image_related_width', '800', 0),
(7291, 2, 'theme_default', 'theme_default_image_testimonial_height', '100', 0),
(7290, 2, 'theme_default', 'theme_default_image_testimonial_width', '100', 0),
(7289, 2, 'theme_default', 'theme_default_image_blog_height', '300', 0),
(7288, 2, 'theme_default', 'theme_default_image_blog_width', '458', 0),
(7287, 2, 'theme_default', 'theme_default_image_article_height', '764', 0),
(7286, 2, 'theme_default', 'theme_default_image_article_width', '1170', 0),
(7285, 2, 'theme_default', 'theme_default_image_additional_height', '2000', 0),
(7359, 3, 'theme_default', 'theme_default_image_related_width', '800', 0),
(7358, 3, 'theme_default', 'theme_default_image_testimonial_height', '100', 0),
(7357, 3, 'theme_default', 'theme_default_image_testimonial_width', '100', 0),
(7356, 3, 'theme_default', 'theme_default_image_blog_height', '300', 0),
(7355, 3, 'theme_default', 'theme_default_image_blog_width', '458', 0),
(7354, 3, 'theme_default', 'theme_default_image_article_height', '764', 0),
(7353, 3, 'theme_default', 'theme_default_image_article_width', '1170', 0),
(7352, 3, 'theme_default', 'theme_default_image_additional_height', '2000', 0),
(7351, 3, 'theme_default', 'theme_default_image_additional_width', '1600', 0),
(7350, 3, 'theme_default', 'theme_default_image_product_height', '1000', 0),
(7349, 3, 'theme_default', 'theme_default_image_product_width', '800', 0),
(7348, 3, 'theme_default', 'theme_default_image_popup_height', '2000', 0),
(7347, 3, 'theme_default', 'theme_default_image_popup_width', '1600', 0),
(7346, 3, 'theme_default', 'theme_default_image_thumb_height', '1000', 0),
(5118, 4, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(5117, 4, 'theme_default', 'theme_default_image_compare_height', '100', 0),
(5116, 4, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(5115, 4, 'theme_default', 'theme_default_image_related_height', '500', 0),
(5114, 4, 'theme_default', 'theme_default_image_related_width', '500', 0),
(5113, 4, 'theme_default', 'theme_default_image_testimonial_height', '100', 0),
(5112, 4, 'theme_default', 'theme_default_image_testimonial_width', '100', 0),
(5111, 4, 'theme_default', 'theme_default_image_blog_height', '300', 0),
(5110, 4, 'theme_default', 'theme_default_image_blog_width', '458', 0),
(5109, 4, 'theme_default', 'theme_default_image_article_height', '764', 0),
(5108, 4, 'theme_default', 'theme_default_image_article_width', '1170', 0),
(5107, 4, 'theme_default', 'theme_default_image_additional_height', '500', 0),
(5106, 4, 'theme_default', 'theme_default_image_additional_width', '500', 0),
(5105, 4, 'theme_default', 'theme_default_image_product_height', '500', 0),
(5104, 4, 'theme_default', 'theme_default_image_product_width', '500', 0),
(5103, 4, 'theme_default', 'theme_default_image_popup_height', '1000', 0),
(5102, 4, 'theme_default', 'theme_default_image_popup_width', '1000', 0),
(5101, 4, 'theme_default', 'theme_default_image_thumb_height', '500', 0),
(5100, 4, 'theme_default', 'theme_default_image_thumb_width', '500', 0),
(5087, 5, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(5086, 5, 'theme_default', 'theme_default_image_compare_height', '100', 0),
(5085, 5, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(5084, 5, 'theme_default', 'theme_default_image_related_height', '500', 0),
(5083, 5, 'theme_default', 'theme_default_image_related_width', '500', 0),
(5082, 5, 'theme_default', 'theme_default_image_testimonial_height', '100', 0),
(5081, 5, 'theme_default', 'theme_default_image_testimonial_width', '100', 0),
(5080, 5, 'theme_default', 'theme_default_image_blog_height', '300', 0),
(5079, 5, 'theme_default', 'theme_default_image_blog_width', '458', 0),
(5078, 5, 'theme_default', 'theme_default_image_article_height', '764', 0),
(5077, 5, 'theme_default', 'theme_default_image_article_width', '1170', 0),
(5076, 5, 'theme_default', 'theme_default_image_additional_height', '500', 0),
(5075, 5, 'theme_default', 'theme_default_image_additional_width', '500', 0),
(5074, 5, 'theme_default', 'theme_default_image_product_height', '500', 0),
(5073, 5, 'theme_default', 'theme_default_image_product_width', '500', 0),
(5072, 5, 'theme_default', 'theme_default_image_popup_height', '1000', 0),
(5071, 5, 'theme_default', 'theme_default_image_popup_width', '1000', 0),
(5070, 5, 'theme_default', 'theme_default_image_thumb_height', '500', 0),
(5069, 5, 'theme_default', 'theme_default_image_thumb_width', '500', 0),
(7093, 0, 'ocquickview', 'ocquickview_parent_element', 'item-inner', 0),
(7092, 0, 'ocquickview', 'ocquickview_container', '.quickview-products', 0),
(3806, 0, 'ocsearchcategory', 'ocsearchcategory_product_img', '1', 0),
(3805, 0, 'ocsearchcategory', 'ocsearchcategory_loader_img', 'catalog/AjaxLoader.gif', 0),
(3804, 0, 'ocsearchcategory', 'ocsearchcategory_ajax_enabled', '1', 0),
(3803, 0, 'ocsearchcategory', 'ocsearchcategory_status', '1', 0),
(1507, 0, 'oclayerednavigation', 'oclayerednavigation_loader_img', 'catalog/AjaxLoader.gif', 0),
(7458, 0, 'theme_default', 'theme_default_image_blog_width', '370', 0),
(1622, 0, 'ocblog', 'ocblog_meta_description', 'Blog', 0),
(1623, 0, 'ocblog', 'ocblog_meta_keyword', 'blogs', 0),
(7694, 1, 'config', 'config_customer_group_id', '1', 0),
(7693, 1, 'config', 'config_tax_customer', '', 0),
(7692, 1, 'config', 'config_tax_default', '', 0),
(7620, 2, 'config', 'config_tax_default', '', 0),
(7618, 2, 'config', 'config_currency', 'USD', 0),
(7457, 0, 'theme_default', 'theme_default_image_article_height', '280', 0),
(7455, 0, 'theme_default', 'theme_default_image_additional_height', '2000', 0),
(7090, 0, 'ocquickview', 'ocquickview_status', '1', 0),
(7091, 0, 'ocquickview', 'ocquickview_loader_img', 'catalog/AjaxLoader.gif', 0),
(7456, 0, 'theme_default', 'theme_default_image_article_width', '370', 0),
(7660, 3, 'config', 'config_account_id', '0', 0),
(7661, 3, 'config', 'config_cart_weight', '0', 0),
(7659, 3, 'config', 'config_customer_price', '0', 0),
(7658, 3, 'config', 'config_customer_group_id', '1', 0),
(7558, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(7691, 1, 'config', 'config_tax', '0', 0),
(7518, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(7517, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(7516, 0, 'config', 'config_order_status_id', '1', 0),
(7515, 0, 'config', 'config_checkout_id', '5', 0),
(7514, 0, 'config', 'config_checkout_guest', '1', 0),
(7614, 2, 'config', 'config_comment', '', 0),
(7615, 2, 'config', 'config_country_id', '222', 0),
(7454, 0, 'theme_default', 'theme_default_image_additional_width', '1600', 0),
(5068, 5, 'theme_default', 'theme_default_image_category_height', '300', 0),
(5067, 5, 'theme_default', 'theme_default_image_category_width', '870', 0),
(5066, 5, 'theme_default', 'theme_default_product_description_length', '100', 0),
(5065, 5, 'theme_default', 'theme_default_product_limit', '12', 0),
(5064, 5, 'theme_default', 'theme_default_testimonial_limit', '12', 0),
(5063, 5, 'theme_default', 'theme_default_status', '1', 0),
(5062, 5, 'theme_default', 'theme_default_directory', 'tt_bestmarket6', 0),
(5099, 4, 'theme_default', 'theme_default_image_category_height', '300', 0),
(5098, 4, 'theme_default', 'theme_default_image_category_width', '870', 0),
(5097, 4, 'theme_default', 'theme_default_product_description_length', '100', 0),
(5096, 4, 'theme_default', 'theme_default_product_limit', '12', 0),
(5095, 4, 'theme_default', 'theme_default_testimonial_limit', '12', 0),
(5094, 4, 'theme_default', 'theme_default_status', '1', 0),
(5093, 4, 'theme_default', 'theme_default_directory', 'tt_bestmarket5', 0),
(7345, 3, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(7344, 3, 'theme_default', 'theme_default_image_category_height', '280', 0),
(7343, 3, 'theme_default', 'theme_default_image_category_width', '1920', 0),
(7284, 2, 'theme_default', 'theme_default_image_additional_width', '1600', 0),
(7283, 2, 'theme_default', 'theme_default_image_product_height', '1000', 0),
(7282, 2, 'theme_default', 'theme_default_image_product_width', '800', 0),
(7281, 2, 'theme_default', 'theme_default_image_popup_height', '2000', 0),
(7142, 1, 'theme_default', 'theme_default_image_product_width', '800', 0),
(7141, 1, 'theme_default', 'theme_default_image_popup_height', '2000', 0),
(7140, 1, 'theme_default', 'theme_default_image_popup_width', '1600', 0),
(7139, 1, 'theme_default', 'theme_default_image_thumb_height', '1000', 0),
(7453, 0, 'theme_default', 'theme_default_image_product_height', '1000', 0),
(2447, 0, 'ocproductrotator', 'ocproductrotator_status', '1', 0),
(7452, 0, 'theme_default', 'theme_default_image_product_width', '800', 0),
(7342, 3, 'theme_default', 'theme_default_product_description_length', '350', 0),
(7138, 1, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(7655, 3, 'config', 'config_tax', '0', 0),
(7656, 3, 'config', 'config_tax_default', '', 0),
(7690, 1, 'config', 'config_currency', 'USD', 0),
(7561, 0, 'config', 'config_error_filename', 'error.log', 0),
(7560, 0, 'config', 'config_error_log', '1', 0),
(7559, 0, 'config', 'config_error_display', '1', 0),
(3480, 0, 'ocbestsellerpage', 'ocbestsellerpage_width', '500', 0),
(3479, 0, 'ocbestsellerpage', 'ocbestsellerpage_limit', '20', 0),
(3478, 0, 'ocbestsellerpage', 'ocbestsellerpage_status', '1', 0),
(3481, 0, 'ocbestsellerpage', 'ocbestsellerpage_height', '500', 0),
(7513, 0, 'config', 'config_cart_weight', '1', 0),
(7512, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(7511, 0, 'config', 'config_account_id', '3', 0),
(7510, 0, 'config', 'config_login_attempts', '5', 0),
(7509, 0, 'config', 'config_customer_price', '0', 0),
(7508, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(7507, 0, 'config', 'config_customer_group_id', '1', 0),
(7506, 0, 'config', 'config_customer_search', '0', 0),
(7505, 0, 'config', 'config_customer_activity', '0', 0),
(7689, 1, 'config', 'config_language', 'en-gb', 0),
(7686, 1, 'config', 'config_comment', '', 0),
(7687, 1, 'config', 'config_country_id', '222', 0),
(7688, 1, 'config', 'config_zone_id', '3563', 0),
(7504, 0, 'config', 'config_customer_online', '0', 0),
(7683, 1, 'config', 'config_fax', '0123- 456 789', 0),
(7500, 0, 'config', 'config_voucher_max', '1000', 0),
(7501, 0, 'config', 'config_tax', '0', 0),
(7137, 1, 'theme_default', 'theme_default_image_category_height', '280', 0),
(7136, 1, 'theme_default', 'theme_default_image_category_width', '1920', 0),
(5088, 5, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(5089, 5, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(5090, 5, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(5091, 5, 'theme_default', 'theme_default_image_location_width', '268', 0),
(5092, 5, 'theme_default', 'theme_default_image_location_height', '50', 0),
(5119, 4, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(5120, 4, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(5121, 4, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(5122, 4, 'theme_default', 'theme_default_image_location_width', '268', 0),
(5123, 4, 'theme_default', 'theme_default_image_location_height', '50', 0),
(7341, 3, 'theme_default', 'theme_default_product_limit', '12', 0),
(7340, 3, 'theme_default', 'theme_default_testimonial_limit', '15', 0),
(7280, 2, 'theme_default', 'theme_default_image_popup_width', '1600', 0),
(7279, 2, 'theme_default', 'theme_default_image_thumb_height', '1000', 0),
(7278, 2, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(5223, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(5222, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(5227, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(5226, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(5225, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(5229, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(5228, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(5233, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(5232, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(5231, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(5236, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(5235, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(5234, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(5239, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(5238, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(5237, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(5242, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(5241, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(5240, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(5245, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(5244, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(5243, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(5230, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(5224, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(7616, 2, 'config', 'config_zone_id', '3563', 0),
(7617, 2, 'config', 'config_language', 'en-gb', 0),
(7657, 3, 'config', 'config_tax_customer', '', 0),
(7653, 3, 'config', 'config_language', 'en-gb', 0),
(7654, 3, 'config', 'config_currency', 'USD', 0),
(7650, 3, 'config', 'config_comment', '', 0),
(7135, 1, 'theme_default', 'theme_default_product_description_length', '350', 0),
(7134, 1, 'theme_default', 'theme_default_product_limit', '12', 0),
(7133, 1, 'theme_default', 'theme_default_testimonial_limit', '15', 0),
(7652, 3, 'config', 'config_zone_id', '3563', 0),
(7651, 3, 'config', 'config_country_id', '222', 0),
(7277, 2, 'theme_default', 'theme_default_image_category_height', '280', 0),
(7276, 2, 'theme_default', 'theme_default_image_category_width', '1920', 0),
(7275, 2, 'theme_default', 'theme_default_product_description_length', '350', 0),
(7274, 2, 'theme_default', 'theme_default_product_limit', '12', 0),
(7612, 2, 'config', 'config_image', '', 0),
(7613, 2, 'config', 'config_open', 'Monday - Friday :  9:00-20:00\r\n\r\nSaturday :  10:00-20:00\r\n\r\nSunday : 12:00-20:00 ', 0),
(7339, 3, 'theme_default', 'theme_default_status', '1', 0),
(7338, 3, 'theme_default', 'theme_default_directory', 'tt_grand4', 0),
(7648, 3, 'config', 'config_image', '', 0),
(7649, 3, 'config', 'config_open', 'Monday - Friday :  9:00-20:00\r\n\r\nSaturday :  10:00-20:00\r\n\r\nSunday : 12:00-20:00 ', 0),
(7132, 1, 'theme_default', 'theme_default_status', '1', 0),
(7131, 1, 'theme_default', 'theme_default_directory', 'tt_grand2', 0),
(7273, 2, 'theme_default', 'theme_default_testimonial_limit', '15', 0),
(7272, 2, 'theme_default', 'theme_default_status', '1', 0),
(7271, 2, 'theme_default', 'theme_default_directory', 'tt_grand3', 0),
(7503, 0, 'config', 'config_tax_customer', '', 0),
(7502, 0, 'config', 'config_tax_default', '', 0),
(7499, 0, 'config', 'config_voucher_min', '1', 0),
(7498, 0, 'config', 'config_review_guest', '1', 0),
(7497, 0, 'config', 'config_review_status', '1', 0),
(7496, 0, 'config', 'config_limit_admin', '20', 0),
(7493, 0, 'config', 'config_length_class_id', '1', 0),
(7495, 0, 'config', 'config_product_count', '1', 0),
(7494, 0, 'config', 'config_weight_class_id', '1', 0),
(7491, 0, 'config', 'config_currency', 'USD', 0),
(7492, 0, 'config', 'config_currency_auto', '1', 0),
(7685, 1, 'config', 'config_open', 'Monday - Friday :  9:00-20:00\r\n\r\nSaturday :  10:00-20:00\r\n\r\nSunday : 12:00-20:00 ', 0),
(7684, 1, 'config', 'config_image', '', 0),
(7682, 1, 'config', 'config_telephone', '(0123) 456789', 0),
(7680, 1, 'config', 'config_geocode', '', 0),
(7681, 1, 'config', 'config_email', 'demo@towerthemes.com', 0),
(7679, 1, 'config', 'config_address', 'Grand 2 - Furniture Responsive Opencart Theme', 0),
(7610, 2, 'config', 'config_telephone', '(0123) 456789', 0),
(7611, 2, 'config', 'config_fax', '(0123) 456 789', 0),
(7606, 2, 'config', 'config_owner', 'Grand 3 - Furniture Responsive Opencart Theme ', 0),
(7607, 2, 'config', 'config_address', 'Grand 3 - Furniture Responsive Opencart Theme ', 0),
(7647, 3, 'config', 'config_fax', '(0123) 456 789', 0),
(7644, 3, 'config', 'config_geocode', '', 0),
(7645, 3, 'config', 'config_email', 'demo@towerthemes.com', 0),
(7646, 3, 'config', 'config_telephone', '(0123) 456789', 0),
(7642, 3, 'config', 'config_owner', 'Grand 4 - Furniture Responsive Opencart Theme ', 0),
(7488, 0, 'config', 'config_zone_id', '3563', 0),
(7489, 0, 'config', 'config_language', 'en-gb', 0),
(6475, 0, 'ttlasttweeter', 'ttlasttweeter_width', '275', 0),
(6474, 0, 'ttlasttweeter', 'ttlasttweeter_id', 'plazathemes', 0),
(6473, 0, 'ttlasttweeter', 'ttlasttweeter_status', '1', 0),
(6476, 0, 'ttlasttweeter', 'ttlasttweeter_height', '275', 0),
(7608, 2, 'config', 'config_geocode', '', 0),
(7609, 2, 'config', 'config_email', 'demo@towerthemes.com', 0),
(7490, 0, 'config', 'config_admin_language', 'en-gb', 0),
(7487, 0, 'config', 'config_country_id', '222', 0),
(7486, 0, 'config', 'config_comment', '', 0),
(7485, 0, 'config', 'config_open', 'Monday - Friday :  9:00-20:00\r\n\r\nSaturday :  10:00-20:00\r\n\r\nSunday : 12:00-20:00 ', 0),
(7484, 0, 'config', 'config_image', '', 0),
(7483, 0, 'config', 'config_fax', '+1 1256 257 4598', 0),
(7482, 0, 'config', 'config_telephone', '+1 1256 257 4598', 0),
(7480, 0, 'config', 'config_geocode', '', 0),
(7481, 0, 'config', 'config_email', 'demo@towerthemes.com', 0),
(7479, 0, 'config', 'config_address', '617-697 South South Road', 0),
(7473, 0, 'config', 'config_meta_description', 'My Store', 0),
(7474, 0, 'config', 'config_meta_keyword', '', 0),
(7475, 0, 'config', 'config_theme', 'theme_default', 0),
(7476, 0, 'config', 'config_layout_id', '4', 0),
(7477, 0, 'config', 'config_name', 'Grand1 - Furniture Responsive Opencart Theme', 0),
(7478, 0, 'config', 'config_owner', 'Grand1 - Furniture Responsive Opencart Theme', 0),
(7472, 0, 'config', 'config_meta_title', 'Grand1 - Furniture Responsive Opencart Theme', 0),
(7451, 0, 'theme_default', 'theme_default_image_popup_height', '2000', 0),
(7450, 0, 'theme_default', 'theme_default_image_popup_width', '1600', 0),
(7449, 0, 'theme_default', 'theme_default_image_thumb_height', '1000', 0),
(7448, 0, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(7447, 0, 'theme_default', 'theme_default_image_category_height', '280', 0),
(7446, 0, 'theme_default', 'theme_default_image_category_width', '1920', 0),
(7445, 0, 'theme_default', 'theme_default_product_description_length', '350', 0),
(7444, 0, 'theme_default', 'theme_default_product_limit', '12', 0),
(7443, 0, 'theme_default', 'theme_default_testimonial_limit', '15', 0),
(7442, 0, 'theme_default', 'theme_default_status', '1', 0),
(7441, 0, 'theme_default', 'theme_default_directory', 'tt_grand1', 0),
(7676, 1, 'config', 'config_layout_id', '27', 0),
(7677, 1, 'config', 'config_name', 'Grand 2 - Furniture Responsive Opencart Theme', 0),
(7678, 1, 'config', 'config_owner', 'Grand 2 - Furniture Responsive Opencart Theme', 0),
(7673, 1, 'config', 'config_meta_description', '', 0),
(7154, 1, 'theme_default', 'theme_default_image_compare_width', '80', 0),
(7155, 1, 'theme_default', 'theme_default_image_compare_height', '100', 0),
(7156, 1, 'theme_default', 'theme_default_image_wishlist_width', '80', 0),
(7157, 1, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(7158, 1, 'theme_default', 'theme_default_image_cart_width', '80', 0),
(7159, 1, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(7160, 1, 'theme_default', 'theme_default_image_location_width', '268', 0),
(7161, 1, 'theme_default', 'theme_default_image_location_height', '50', 0),
(7674, 1, 'config', 'config_meta_keyword', '', 0),
(7675, 1, 'config', 'config_theme', 'theme_default', 0),
(7671, 1, 'config', 'config_ssl', '', 0),
(7672, 1, 'config', 'config_meta_title', 'Grand 2 - Furniture Responsive Opencart Theme', 0),
(7605, 2, 'config', 'config_name', 'Grand 3 - Furniture Responsive Opencart Theme ', 0),
(7604, 2, 'config', 'config_layout_id', '31', 0),
(7602, 2, 'config', 'config_meta_keyword', '', 0),
(7603, 2, 'config', 'config_theme', 'theme_default', 0),
(7601, 2, 'config', 'config_meta_description', '', 0),
(7600, 2, 'config', 'config_meta_title', 'Grand 3 - Furniture Responsive Opencart Theme ', 0),
(7599, 2, 'config', 'config_ssl', '', 0),
(7598, 2, 'config', 'config_url', 'http://tt_grand3.com/', 0),
(7294, 2, 'theme_default', 'theme_default_image_compare_width', '80', 0),
(7295, 2, 'theme_default', 'theme_default_image_compare_height', '100', 0),
(7296, 2, 'theme_default', 'theme_default_image_wishlist_width', '80', 0),
(7297, 2, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(7298, 2, 'theme_default', 'theme_default_image_cart_width', '80', 0),
(7299, 2, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(7300, 2, 'theme_default', 'theme_default_image_location_width', '268', 0),
(7301, 2, 'theme_default', 'theme_default_image_location_height', '50', 0),
(7643, 3, 'config', 'config_address', 'Grand 4 - Furniture Responsive Opencart Theme ', 0),
(7640, 3, 'config', 'config_layout_id', '36', 0),
(7641, 3, 'config', 'config_name', 'Grand 4 - Furniture Responsive Opencart Theme ', 0),
(7639, 3, 'config', 'config_theme', 'theme_default', 0),
(7638, 3, 'config', 'config_meta_keyword', 'Monday - Friday :  9:00-20:00\r\n\r\nSaturday :  10:00-20:00\r\n\r\nSunday : 12:00-20:00 ', 0),
(7636, 3, 'config', 'config_meta_title', 'Grand 4 - Furniture Responsive Opencart Theme ', 0),
(7361, 3, 'theme_default', 'theme_default_image_compare_width', '80', 0),
(7362, 3, 'theme_default', 'theme_default_image_compare_height', '100', 0),
(7363, 3, 'theme_default', 'theme_default_image_wishlist_width', '80', 0),
(7364, 3, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(7365, 3, 'theme_default', 'theme_default_image_cart_width', '80', 0),
(7366, 3, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(7367, 3, 'theme_default', 'theme_default_image_location_width', '268', 0),
(7368, 3, 'theme_default', 'theme_default_image_location_height', '50', 0),
(7637, 3, 'config', 'config_meta_description', '', 0),
(7635, 3, 'config', 'config_ssl', '', 0),
(7634, 3, 'config', 'config_url', 'http://tt_grand4.com/', 0),
(7670, 1, 'config', 'config_url', 'http://tt_grand2.com/', 0),
(7630, 2, 'config', 'config_stock_checkout', '0', 0),
(7631, 2, 'config', 'config_logo', 'catalog/logo-1.png', 0),
(7632, 2, 'config', 'config_icon', 'catalog/cart.png', 0),
(7633, 2, 'config', 'config_secure', '0', 0),
(7669, 3, 'config', 'config_secure', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'En stock'),
(8, 2, 'Pré-commander'),
(5, 2, 'Rupture de stock'),
(6, 2, '2-3 Journées'),
(9, 2, 'Bientôt disponible'),
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(9, 1, 'Available Soon');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_store`
--

INSERT INTO `oc_store` (`store_id`, `name`, `url`, `ssl`) VALUES
(1, 'Grand 2 - Furniture Responsive Opencart Theme', 'http://tt_grand2.com/', ''),
(2, 'Grand 3 - Furniture Responsive Opencart Theme ', 'http://tt_grand3.com/', ''),
(3, 'Grand 4 - Furniture Responsive Opencart Theme ', 'http://tt_grand4.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscribe`
--

CREATE TABLE `oc_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_id` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `date` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_subscribe`
--

INSERT INTO `oc_subscribe` (`id`, `email_id`, `name`, `date`) VALUES
(1, 'demo@plazathemes.com', 'demo@plazathemes.com', '2017-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(977, 'category_id=236', ''),
(978, 'category_id=237', ''),
(979, 'category_id=238', ''),
(995, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(993, 'product_id=42', 'test'),
(781, 'category_id=36', 'test2'),
(884, 'category_id=149', ''),
(963, 'category_id=222', ''),
(777, 'category_id=25', 'component'),
(778, 'category_id=29', 'mouse'),
(779, 'category_id=28', 'monitor'),
(780, 'category_id=35', 'test1'),
(782, 'category_id=30', 'printer'),
(783, 'category_id=31', 'scanner'),
(784, 'category_id=32', 'web-camera'),
(964, 'category_id=223', ''),
(965, 'category_id=224', ''),
(966, 'category_id=225', ''),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(992, 'category_id=251', ''),
(991, 'category_id=250', ''),
(990, 'category_id=249', ''),
(988, 'category_id=247', ''),
(981, 'category_id=240', ''),
(982, 'category_id=241', ''),
(983, 'category_id=242', ''),
(984, 'category_id=243', ''),
(985, 'category_id=244', ''),
(986, 'category_id=245', ''),
(987, 'category_id=246', ''),
(994, 'product_id=41', 'imac'),
(989, 'category_id=248', ''),
(976, 'category_id=235', ''),
(980, 'category_id=239', ''),
(996, 'manufacturer_id=9', 'canon'),
(999, 'manufacturer_id=5', 'htc'),
(998, 'manufacturer_id=7', 'hewlett-packard'),
(1000, 'manufacturer_id=6', 'palm'),
(1001, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(962, 'category_id=221', ''),
(961, 'category_id=220', ''),
(960, 'category_id=219', ''),
(959, 'category_id=218', ''),
(958, 'category_id=217', ''),
(957, 'category_id=216', ''),
(956, 'category_id=215', ''),
(955, 'category_id=214', ''),
(954, 'category_id=213', ''),
(953, 'category_id=212', ''),
(952, 'category_id=211', ''),
(949, 'category_id=208', ''),
(950, 'category_id=209', ''),
(951, 'category_id=210', ''),
(968, 'category_id=227', ''),
(967, 'category_id=226', ''),
(974, 'category_id=233', ''),
(975, 'category_id=234', ''),
(973, 'category_id=232', ''),
(972, 'category_id=231', ''),
(971, 'category_id=230', ''),
(969, 'category_id=228', ''),
(970, 'category_id=229', ''),
(948, 'category_id=207', ''),
(945, 'category_id=204', ''),
(946, 'category_id=205', ''),
(947, 'category_id=206', ''),
(944, 'category_id=203', ''),
(943, 'category_id=202', ''),
(942, 'category_id=201', ''),
(941, 'category_id=200', ''),
(940, 'category_id=199', ''),
(934, 'category_id=193', ''),
(933, 'category_id=192', ''),
(935, 'category_id=194', ''),
(936, 'category_id=195', ''),
(937, 'category_id=196', ''),
(938, 'category_id=197', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
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
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'f3ab27f115e366739614daf2825b98cdb6a74b01', 'Q8LtEO80n', 'John', 'Doe', 'demo@towerthemes.com', '', '', '127.0.0.1', 1, '2017-02-14 01:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/menu","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/oc_page_builder","extension\\/module\\/ocbestsellerpage","extension\\/module\\/ocbestproductslider","extension\\/module\\/ocblog","blog\\/article","blog\\/articlelist","extension\\/module\\/occmsblock","extension\\/module\\/octabcategoryslider","extension\\/module\\/occategorythumbnail","catalog\\/occategorythumbnail","extension\\/module\\/ocfeaturedcategorytab","extension\\/module\\/ocfeatureslider","extension\\/module\\/ochozmegamenu","extension\\/module\\/oclayerednavigation","extension\\/module\\/ocmostproduct","extension\\/module\\/ocnewproductpage","extension\\/module\\/ocnewproductslider","extension\\/module\\/newslettersubscribe","extension\\/module\\/occountdown","extension\\/module\\/ocquickview","extension\\/module\\/ocproductrotator","extension\\/module\\/octabproductslider","extension\\/module\\/ocrandomslider","extension\\/module\\/ocsearchcategory","extension\\/module\\/ocslideshow","extension\\/module\\/ocspecialproductslider","extension\\/module\\/installtemp","extension\\/module\\/octestimonial","catalog\\/octestimonial","extension\\/module\\/ocvermegamenu","extension\\/module\\/occmsblock","extension\\/module\\/octabcategoryslider","extension\\/module\\/ocfeaturedcategorytab","extension\\/module\\/ocfeatureslider","extension\\/module\\/ochozmegamenu","extension\\/module\\/ocmostproduct","extension\\/module\\/ocnewproductslider","extension\\/module\\/newslettersubscribe","extension\\/module\\/occountdown","extension\\/module\\/octabproductslider","extension\\/module\\/ocrandomslider","extension\\/module\\/ochozmegamenu","extension\\/module\\/ocinstagram","extension\\/module\\/ttlasttweeter","extension\\/module\\/ocfeaturedcategory"],"modify":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/menu","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/oc_page_builder","extension\\/module\\/ocbestsellerpage","extension\\/module\\/ocbestproductslider","extension\\/module\\/ocblog","blog\\/article","blog\\/articlelist","extension\\/module\\/occmsblock","extension\\/module\\/octabcategoryslider","extension\\/module\\/occategorythumbnail","catalog\\/occategorythumbnail","extension\\/module\\/ocfeaturedcategorytab","extension\\/module\\/ocfeatureslider","extension\\/module\\/ochozmegamenu","extension\\/module\\/oclayerednavigation","extension\\/module\\/ocmostproduct","extension\\/module\\/ocnewproductpage","extension\\/module\\/ocnewproductslider","extension\\/module\\/newslettersubscribe","extension\\/module\\/occountdown","extension\\/module\\/ocquickview","extension\\/module\\/ocproductrotator","extension\\/module\\/octabproductslider","extension\\/module\\/ocrandomslider","extension\\/module\\/ocsearchcategory","extension\\/module\\/ocslideshow","extension\\/module\\/ocspecialproductslider","extension\\/module\\/installtemp","extension\\/module\\/octestimonial","catalog\\/octestimonial","extension\\/module\\/ocvermegamenu","extension\\/module\\/occmsblock","extension\\/module\\/octabcategoryslider","extension\\/module\\/ocfeaturedcategorytab","extension\\/module\\/ocfeatureslider","extension\\/module\\/ochozmegamenu","extension\\/module\\/ocmostproduct","extension\\/module\\/ocnewproductslider","extension\\/module\\/newslettersubscribe","extension\\/module\\/occountdown","extension\\/module\\/octabproductslider","extension\\/module\\/ocrandomslider","extension\\/module\\/ochozmegamenu","extension\\/module\\/ocinstagram","extension\\/module\\/ttlasttweeter","extension\\/module\\/ocfeaturedcategory"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
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
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
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
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_article`
--
ALTER TABLE `oc_article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `oc_article_description`
--
ALTER TABLE `oc_article_description`
  ADD PRIMARY KEY (`article_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_article_list`
--
ALTER TABLE `oc_article_list`
  ADD PRIMARY KEY (`article_list_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_cmsblock`
--
ALTER TABLE `oc_cmsblock`
  ADD PRIMARY KEY (`cmsblock_id`);

--
-- Indexes for table `oc_cmsblock_description`
--
ALTER TABLE `oc_cmsblock_description`
  ADD PRIMARY KEY (`cmsblock_des_id`,`language_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_menu`
--
ALTER TABLE `oc_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `oc_menu_description`
--
ALTER TABLE `oc_menu_description`
  ADD PRIMARY KEY (`menu_id`,`language_id`);

--
-- Indexes for table `oc_menu_module`
--
ALTER TABLE `oc_menu_module`
  ADD PRIMARY KEY (`menu_module_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_ocslideshow`
--
ALTER TABLE `oc_ocslideshow`
  ADD PRIMARY KEY (`ocslideshow_id`);

--
-- Indexes for table `oc_ocslideshow_image`
--
ALTER TABLE `oc_ocslideshow_image`
  ADD PRIMARY KEY (`ocslideshow_image_id`);

--
-- Indexes for table `oc_ocslideshow_image_description`
--
ALTER TABLE `oc_ocslideshow_image_description`
  ADD PRIMARY KEY (`ocslideshow_image_id`,`language_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index_2` (`email_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_article`
--
ALTER TABLE `oc_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `oc_article_list`
--
ALTER TABLE `oc_article_list`
  MODIFY `article_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `oc_cmsblock`
--
ALTER TABLE `oc_cmsblock`
  MODIFY `cmsblock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `oc_cmsblock_description`
--
ALTER TABLE `oc_cmsblock_description`
  MODIFY `cmsblock_des_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=809;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_menu`
--
ALTER TABLE `oc_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `oc_ocslideshow`
--
ALTER TABLE `oc_ocslideshow`
  MODIFY `ocslideshow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `oc_ocslideshow_image`
--
ALTER TABLE `oc_ocslideshow_image`
  MODIFY `ocslideshow_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3530;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7706;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4236;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
