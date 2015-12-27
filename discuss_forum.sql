-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2015 at 05:38 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `discuss_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('e04771a48c3c535a6768a83a9d94c9e49f49b860', '127.0.0.1', 1451112419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131323136343b),
('ec74cbf0302c1f27db1fb97e96b781baf79cf300', '127.0.0.1', 1451112619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131323438313b),
('51e9462eca4b6063294243f48ce3a534c3b4da6d', '127.0.0.1', 1451113058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131323836343b),
('05b431b5bb8e4463ea47080e265b67d148d7f751', '127.0.0.1', 1451113333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131333035353b),
('19a713ec6fe6d439c58f7eb4469b733f7a251a21', '127.0.0.1', 1451115630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131353534393b),
('97fcd10874794b8bdc90ffdc4d8fa0ac16e4e0e8', '127.0.0.1', 1451116186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131353839303b),
('311d128343385fc38499e48b84773834f3f537be', '127.0.0.1', 1451117124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131373131353b),
('92d74cc1900a0f7c43f2dc8b40a65be151fd63e5', '127.0.0.1', 1451117562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131373433353b),
('fe99e4f2ab8296a3839e7d9eda6170db961df0ae', '127.0.0.1', 1451118038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131373735303b),
('72ef2148b23fc66cf33d137870d0e9a6efd4ae5d', '127.0.0.1', 1451118088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131383035393b),
('8abc18aab1e1cf1f6433b3791bc3cc44078f99b2', '127.0.0.1', 1451118637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131383339383b),
('4649634459d467c28c77d81ee411dff44ab49e3d', '127.0.0.1', 1451118825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131383730313b),
('f7b73f208fadc6bd176e7ecadd0af3882a3b5291', '127.0.0.1', 1451119425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131393431353b),
('c788b770cb29852ef384e347b22b37f16257fb23', '127.0.0.1', 1451119944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313131393737303b),
('6394c4efa27395f9ffe27a4093b73d213fa95461', '127.0.0.1', 1451120371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132303038303b),
('ea1052dcdf133d5c340220c67de5a169db563a0b', '127.0.0.1', 1451120600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132303430383b),
('994b9d010cd38c6c4eb8739dcfd4264dac49dbff', '127.0.0.1', 1451123349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132333139323b),
('ab015af9a64c1ef10c0e07433c3a78199b309ce1', '127.0.0.1', 1451123524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132333334393b),
('bdfeed80292e478e9bdebc55229c78d944c92839', '127.0.0.1', 1451124049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132333737353b),
('08903c6fbca701d83b157a96e6a6cd4d397ca70e', '127.0.0.1', 1451124525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132343331353b),
('5b0f7ff8b5f49a06aaa17e96921a6e92839c319b', '127.0.0.1', 1451124870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132343632353b),
('5ad93e29f485741726c275858731c6acd47314f4', '127.0.0.1', 1451125214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132343933373b7573725f69647c733a313a2236223b7573725f656d61696c7c733a31353a2261646d696e407961686f6f2e636f6d223b6c6f676765645f696e7c623a313b),
('5b71b3f20df57cfbbe67b6a6071ed123a30e7882', '127.0.0.1', 1451125668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132353537303b7573725f69647c733a313a2236223b7573725f656d61696c7c733a31353a2261646d696e407961686f6f2e636f6d223b6c6f676765645f696e7c623a313b),
('7f131f73f259b2f9e409048b207b6013527bf77e', '127.0.0.1', 1451126149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132363037323b7573725f69647c733a313a2236223b7573725f656d61696c7c733a31353a2261646d696e407961686f6f2e636f6d223b6c6f676765645f696e7c623a313b),
('543f4cd77b58dd9f47b1824f6b6bf46bc18671a5', '127.0.0.1', 1451126620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313132363532323b7573725f69647c733a313a2236223b7573725f656d61696c7c733a31353a2261646d696e407961686f6f2e636f6d223b6c6f676765645f696e7c623a313b),
('5b715233c94a4fa82e932fa95621f02e521daa6a', '127.0.0.1', 1451187109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313138373130393b),
('0ca6e16560e52f5803d448fd9824596d8b0070d6', '127.0.0.1', 1451188816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313138383831363b),
('b26962e82d9f3b09eeba9de17d4c89d43fb609c4', '127.0.0.1', 1451194978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139343937383b),
('f73ceb9960e6be8a48f9f4e3b4578f902c8d3c93', '127.0.0.1', 1451195458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139353434383b7573725f69647c733a313a2236223b7573725f656d61696c7c733a31353a2261646d696e407961686f6f2e636f6d223b6c6f676765645f696e7c623a313b),
('a21dec00c70ff9f2013ff5d0edebf0d29c03267c', '127.0.0.1', 1451199257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313139393235373b),
('5bc681a25efa7db20b89bbec51b810590cad5c25', '127.0.0.1', 1451204589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313230343538393b),
('0f173bb5c2cc6976987224304a9bdc5f2fc1ee64', '127.0.0.1', 1451204675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313230343539313b),
('5cf13741ed8608cc80bb9c144576b9d02a756f2d', '127.0.0.1', 1451207282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435313230373238323b);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `cm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This is the primary key.',
  `ds_id` int(11) NOT NULL,
  `cm_body` text NOT NULL,
  `cm_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_id` int(11) NOT NULL,
  `cm_is_active` int(1) NOT NULL,
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cm_id`, `ds_id`, `cm_body`, `cm_created_at`, `usr_id`, `cm_is_active`) VALUES
(1, 1, 'asdasdasd', '2015-12-26 08:20:38', 2, 1),
(2, 1, 'good question', '2015-12-26 08:20:59', 2, 1),
(3, 1, 'asdasd', '2015-12-26 08:21:12', 2, 1),
(4, 5, 'asdasD', '2015-12-27 11:14:29', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE IF NOT EXISTS `discussions` (
  `ds_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This is the foreign key from the discussions table; it links the comments table to the discussions table. The link is discussions.ds_id = comments.cm_id.',
  `usr_id` int(11) NOT NULL,
  `ds_title` varchar(255) NOT NULL,
  `ds_body` text NOT NULL,
  `ds_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ds_is_active` int(1) NOT NULL,
  PRIMARY KEY (`ds_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`ds_id`, `usr_id`, `ds_title`, `ds_body`, `ds_created_at`, `ds_is_active`) VALUES
(1, 1, 'How to install codeigniter', 'sdfsdfsdf', '2015-12-26 08:10:35', 1),
(2, 1, 'How to install codeigniter', 'asdasdasd', '2015-12-26 08:12:10', 1),
(3, 6, 'How to install codeigniter', 'sdfsdf', '2015-12-27 08:04:31', 1),
(4, 1, 'dasdasd', 'adsasd', '2015-12-27 08:23:23', 1),
(5, 7, 'my first comment', 'my first comment my first comment my first comment my first comment my first comment my first comment my first comment my first comment my first comment ', '2015-12-27 09:50:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(25) NOT NULL,
  `usr_hash` varchar(255) NOT NULL,
  `usr_email` varchar(125) NOT NULL,
  `usr_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_is_active` int(1) NOT NULL,
  `usr_level` int(1) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usr_id`, `usr_name`, `usr_hash`, `usr_email`, `usr_created_at`, `usr_is_active`, `usr_level`) VALUES
(1, 'Shimul', 'fqTIZPwL2dxNgDLRrR8/LjXzxyCcoWkTlQvr241KtUzbTa0Jxfe6l1QTzyV1HpuIo+CFVz1I5yWD3+lmO2cCEw==', 'proshimul@yahoo.com', '2015-12-26 08:10:35', 1, 1),
(2, 'shimul', 'yH8CR2W+oD3p3RbAeXobpIr8TvgKweIcui3PGLuT6rLxlSs3dv49eLav9OpinEBJN5pMu/vBalUC8BBbxV9DQA==', 'shimulcsc@yahoo.com', '2015-12-26 08:20:38', 1, 1),
(6, 'StreetCoder', '$2y$10$q771Ptzqhsj.EA8ePTWl5uIL0o95onQI5SZsaT4.02iH9n0qjzUFu', 'admin@yahoo.com', '2015-12-26 10:10:25', 1, 1),
(7, 'shimul', '$2y$10$uF6.k8RmrDp4O02//I7sg.bkHdHIFlE8P2BMjpYJN1T9EFO4x0ohW', 'shimul@yahoo.com', '2015-12-27 09:50:56', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
