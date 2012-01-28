-- phpMyAdmin SQL Dump
-- version 3.4.8-rc1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2012 at 11:56 AM
-- Server version: 5.1.51
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smf__test`
--

-- --------------------------------------------------------

--
-- Table structure for table `smf_attachments`
--

CREATE TABLE IF NOT EXISTS `smf_attachments` (
  `ID_ATTACH` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_THUMB` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attachmentType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filename` tinytext NOT NULL,
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_ATTACH`),
  UNIQUE KEY `ID_MEMBER` (`ID_MEMBER`,`ID_ATTACH`),
  KEY `ID_MSG` (`ID_MSG`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_ban_groups`
--

CREATE TABLE IF NOT EXISTS `smf_ban_groups` (
  `ID_BAN_GROUP` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned DEFAULT NULL,
  `cannot_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason` tinytext NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`ID_BAN_GROUP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_ban_items`
--

CREATE TABLE IF NOT EXISTS `smf_ban_items` (
  `ID_BAN` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_BAN_GROUP` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hostname` tinytext NOT NULL,
  `email_address` tinytext NOT NULL,
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_BAN`),
  KEY `ID_BAN_GROUP` (`ID_BAN_GROUP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_boards`
--

CREATE TABLE IF NOT EXISTS `smf_boards` (
  `ID_BOARD` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ID_CAT` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `childLevel` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ID_PARENT` smallint(5) unsigned NOT NULL DEFAULT '0',
  `boardOrder` smallint(5) NOT NULL DEFAULT '0',
  `ID_LAST_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_MSG_UPDATED` int(10) unsigned NOT NULL DEFAULT '0',
  `memberGroups` varchar(255) NOT NULL DEFAULT '-1,0',
  `name` tinytext NOT NULL,
  `description` text NOT NULL,
  `numTopics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `countPosts` tinyint(4) NOT NULL DEFAULT '0',
  `ID_THEME` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `permission_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_BOARD`),
  UNIQUE KEY `categories` (`ID_CAT`,`ID_BOARD`),
  KEY `ID_PARENT` (`ID_PARENT`),
  KEY `ID_MSG_UPDATED` (`ID_MSG_UPDATED`),
  KEY `memberGroups` (`memberGroups`(48))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `smf_boards`
--

INSERT INTO `smf_boards` (`ID_BOARD`, `ID_CAT`, `childLevel`, `ID_PARENT`, `boardOrder`, `ID_LAST_MSG`, `ID_MSG_UPDATED`, `memberGroups`, `name`, `description`, `numTopics`, `numPosts`, `countPosts`, `ID_THEME`, `permission_mode`, `override_theme`) VALUES
(1, 1, 0, 0, 1, 1, 1, '-1,0', 'General Discussion', 'Feel free to talk about anything and everything in this board.', 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `smf_board_permissions`
--

CREATE TABLE IF NOT EXISTS `smf_board_permissions` (
  `ID_GROUP` smallint(5) NOT NULL DEFAULT '0',
  `ID_BOARD` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `addDeny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_GROUP`,`ID_BOARD`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smf_board_permissions`
--

INSERT INTO `smf_board_permissions` (`ID_GROUP`, `ID_BOARD`, `permission`, `addDeny`) VALUES
(-1, 0, 'poll_view', 1),
(0, 0, 'remove_own', 1),
(0, 0, 'lock_own', 1),
(0, 0, 'mark_any_notify', 1),
(0, 0, 'mark_notify', 1),
(0, 0, 'modify_own', 1),
(0, 0, 'poll_add_own', 1),
(0, 0, 'poll_edit_own', 1),
(0, 0, 'poll_lock_own', 1),
(0, 0, 'poll_post', 1),
(0, 0, 'poll_view', 1),
(0, 0, 'poll_vote', 1),
(0, 0, 'post_attachment', 1),
(0, 0, 'post_new', 1),
(0, 0, 'post_reply_any', 1),
(0, 0, 'post_reply_own', 1),
(0, 0, 'delete_own', 1),
(0, 0, 'report_any', 1),
(0, 0, 'send_topic', 1),
(0, 0, 'view_attachments', 1),
(2, 0, 'moderate_board', 1),
(2, 0, 'post_new', 1),
(2, 0, 'post_reply_own', 1),
(2, 0, 'post_reply_any', 1),
(2, 0, 'poll_post', 1),
(2, 0, 'poll_add_any', 1),
(2, 0, 'poll_remove_any', 1),
(2, 0, 'poll_view', 1),
(2, 0, 'poll_vote', 1),
(2, 0, 'poll_edit_any', 1),
(2, 0, 'report_any', 1),
(2, 0, 'lock_own', 1),
(2, 0, 'send_topic', 1),
(2, 0, 'mark_any_notify', 1),
(2, 0, 'mark_notify', 1),
(2, 0, 'delete_own', 1),
(2, 0, 'modify_own', 1),
(2, 0, 'make_sticky', 1),
(2, 0, 'lock_any', 1),
(2, 0, 'remove_any', 1),
(2, 0, 'move_any', 1),
(2, 0, 'merge_any', 1),
(2, 0, 'split_any', 1),
(2, 0, 'delete_any', 1),
(2, 0, 'modify_any', 1),
(3, 0, 'moderate_board', 1),
(3, 0, 'post_new', 1),
(3, 0, 'post_reply_own', 1),
(3, 0, 'post_reply_any', 1),
(3, 0, 'poll_post', 1),
(3, 0, 'poll_add_own', 1),
(3, 0, 'poll_remove_any', 1),
(3, 0, 'poll_view', 1),
(3, 0, 'poll_vote', 1),
(3, 0, 'report_any', 1),
(3, 0, 'lock_own', 1),
(3, 0, 'send_topic', 1),
(3, 0, 'mark_any_notify', 1),
(3, 0, 'mark_notify', 1),
(3, 0, 'delete_own', 1),
(3, 0, 'modify_own', 1),
(3, 0, 'make_sticky', 1),
(3, 0, 'lock_any', 1),
(3, 0, 'remove_any', 1),
(3, 0, 'move_any', 1),
(3, 0, 'merge_any', 1),
(3, 0, 'split_any', 1),
(3, 0, 'delete_any', 1),
(3, 0, 'modify_any', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smf_calendar`
--

CREATE TABLE IF NOT EXISTS `smf_calendar` (
  `ID_EVENT` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL DEFAULT '0001-01-01',
  `endDate` date NOT NULL DEFAULT '0001-01-01',
  `ID_BOARD` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ID_TOPIC` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(48) NOT NULL DEFAULT '',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_EVENT`),
  KEY `startDate` (`startDate`),
  KEY `endDate` (`endDate`),
  KEY `topic` (`ID_TOPIC`,`ID_MEMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_calendar_holidays`
--

CREATE TABLE IF NOT EXISTS `smf_calendar_holidays` (
  `ID_HOLIDAY` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `eventDate` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID_HOLIDAY`),
  KEY `eventDate` (`eventDate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=168 ;

--
-- Dumping data for table `smf_calendar_holidays`
--

INSERT INTO `smf_calendar_holidays` (`ID_HOLIDAY`, `eventDate`, `title`) VALUES
(1, '0004-01-01', 'New Year''s'),
(2, '0004-12-25', 'Christmas'),
(3, '0004-02-14', 'Valentine''s Day'),
(4, '0004-03-17', 'St. Patrick''s Day'),
(5, '0004-04-01', 'April Fools'),
(6, '0004-04-22', 'Earth Day'),
(7, '0004-10-24', 'United Nations Day'),
(8, '0004-10-31', 'Halloween'),
(9, '2004-05-09', 'Mother''s Day'),
(10, '2005-05-08', 'Mother''s Day'),
(11, '2006-05-14', 'Mother''s Day'),
(12, '2007-05-13', 'Mother''s Day'),
(13, '2008-05-11', 'Mother''s Day'),
(14, '2009-05-10', 'Mother''s Day'),
(15, '2010-05-09', 'Mother''s Day'),
(16, '2011-05-08', 'Mother''s Day'),
(17, '2012-05-13', 'Mother''s Day'),
(18, '2013-05-12', 'Mother''s Day'),
(19, '2014-05-11', 'Mother''s Day'),
(20, '2015-05-10', 'Mother''s Day'),
(21, '2016-05-08', 'Mother''s Day'),
(22, '2017-05-14', 'Mother''s Day'),
(23, '2018-05-13', 'Mother''s Day'),
(24, '2019-05-12', 'Mother''s Day'),
(25, '2020-05-10', 'Mother''s Day'),
(26, '2004-06-20', 'Father''s Day'),
(27, '2005-06-19', 'Father''s Day'),
(28, '2006-06-18', 'Father''s Day'),
(29, '2007-06-17', 'Father''s Day'),
(30, '2008-06-15', 'Father''s Day'),
(31, '2009-06-21', 'Father''s Day'),
(32, '2010-06-20', 'Father''s Day'),
(33, '2011-06-19', 'Father''s Day'),
(34, '2012-06-17', 'Father''s Day'),
(35, '2013-06-16', 'Father''s Day'),
(36, '2014-06-15', 'Father''s Day'),
(37, '2015-06-21', 'Father''s Day'),
(38, '2016-06-19', 'Father''s Day'),
(39, '2017-06-18', 'Father''s Day'),
(40, '2018-06-17', 'Father''s Day'),
(41, '2019-06-16', 'Father''s Day'),
(42, '2020-06-21', 'Father''s Day'),
(43, '2004-06-20', 'Summer Solstice'),
(44, '2005-06-20', 'Summer Solstice'),
(45, '2006-06-21', 'Summer Solstice'),
(46, '2007-06-21', 'Summer Solstice'),
(47, '2008-06-20', 'Summer Solstice'),
(48, '2009-06-20', 'Summer Solstice'),
(49, '2010-06-21', 'Summer Solstice'),
(50, '2011-06-21', 'Summer Solstice'),
(51, '2012-06-20', 'Summer Solstice'),
(52, '2013-06-21', 'Summer Solstice'),
(53, '2014-06-21', 'Summer Solstice'),
(54, '2015-06-21', 'Summer Solstice'),
(55, '2016-06-20', 'Summer Solstice'),
(56, '2017-06-20', 'Summer Solstice'),
(57, '2018-06-21', 'Summer Solstice'),
(58, '2019-06-21', 'Summer Solstice'),
(59, '2020-06-20', 'Summer Solstice'),
(60, '2004-03-19', 'Vernal Equinox'),
(61, '2005-03-20', 'Vernal Equinox'),
(62, '2006-03-20', 'Vernal Equinox'),
(63, '2007-03-20', 'Vernal Equinox'),
(64, '2008-03-19', 'Vernal Equinox'),
(65, '2009-03-20', 'Vernal Equinox'),
(66, '2010-03-20', 'Vernal Equinox'),
(67, '2011-03-20', 'Vernal Equinox'),
(68, '2012-03-20', 'Vernal Equinox'),
(69, '2013-03-20', 'Vernal Equinox'),
(70, '2014-03-20', 'Vernal Equinox'),
(71, '2015-03-20', 'Vernal Equinox'),
(72, '2016-03-19', 'Vernal Equinox'),
(73, '2017-03-20', 'Vernal Equinox'),
(74, '2018-03-20', 'Vernal Equinox'),
(75, '2019-03-20', 'Vernal Equinox'),
(76, '2020-03-19', 'Vernal Equinox'),
(77, '2004-12-21', 'Winter Solstice'),
(78, '2005-12-21', 'Winter Solstice'),
(79, '2006-12-22', 'Winter Solstice'),
(80, '2007-12-22', 'Winter Solstice'),
(81, '2008-12-21', 'Winter Solstice'),
(82, '2009-12-21', 'Winter Solstice'),
(83, '2010-12-21', 'Winter Solstice'),
(84, '2011-12-22', 'Winter Solstice'),
(85, '2012-12-21', 'Winter Solstice'),
(86, '2013-12-21', 'Winter Solstice'),
(87, '2014-12-21', 'Winter Solstice'),
(88, '2015-12-21', 'Winter Solstice'),
(89, '2016-12-21', 'Winter Solstice'),
(90, '2017-12-21', 'Winter Solstice'),
(91, '2018-12-21', 'Winter Solstice'),
(92, '2019-12-21', 'Winter Solstice'),
(93, '2020-12-21', 'Winter Solstice'),
(94, '2004-09-22', 'Autumnal Equinox'),
(95, '2005-09-22', 'Autumnal Equinox'),
(96, '2006-09-22', 'Autumnal Equinox'),
(97, '2007-09-23', 'Autumnal Equinox'),
(98, '2008-09-22', 'Autumnal Equinox'),
(99, '2009-09-22', 'Autumnal Equinox'),
(100, '2010-09-22', 'Autumnal Equinox'),
(101, '2011-09-23', 'Autumnal Equinox'),
(102, '2012-09-22', 'Autumnal Equinox'),
(103, '2013-09-22', 'Autumnal Equinox'),
(104, '2014-09-22', 'Autumnal Equinox'),
(105, '2015-09-23', 'Autumnal Equinox'),
(106, '2016-09-22', 'Autumnal Equinox'),
(107, '2017-09-22', 'Autumnal Equinox'),
(108, '2018-09-22', 'Autumnal Equinox'),
(109, '2019-09-23', 'Autumnal Equinox'),
(110, '2020-09-22', 'Autumnal Equinox'),
(111, '0004-07-04', 'Independence Day'),
(112, '0004-05-05', 'Cinco de Mayo'),
(113, '0004-06-14', 'Flag Day'),
(114, '0004-11-11', 'Veterans Day'),
(115, '0004-02-02', 'Groundhog Day'),
(116, '2004-11-25', 'Thanksgiving'),
(117, '2005-11-24', 'Thanksgiving'),
(118, '2006-11-23', 'Thanksgiving'),
(119, '2007-11-22', 'Thanksgiving'),
(120, '2008-11-27', 'Thanksgiving'),
(121, '2009-11-26', 'Thanksgiving'),
(122, '2010-11-25', 'Thanksgiving'),
(123, '2011-11-24', 'Thanksgiving'),
(124, '2012-11-22', 'Thanksgiving'),
(125, '2013-11-21', 'Thanksgiving'),
(126, '2014-11-20', 'Thanksgiving'),
(127, '2015-11-26', 'Thanksgiving'),
(128, '2016-11-24', 'Thanksgiving'),
(129, '2017-11-23', 'Thanksgiving'),
(130, '2018-11-22', 'Thanksgiving'),
(131, '2019-11-21', 'Thanksgiving'),
(132, '2020-11-26', 'Thanksgiving'),
(133, '2004-05-31', 'Memorial Day'),
(134, '2005-05-30', 'Memorial Day'),
(135, '2006-05-29', 'Memorial Day'),
(136, '2007-05-28', 'Memorial Day'),
(137, '2008-05-26', 'Memorial Day'),
(138, '2009-05-25', 'Memorial Day'),
(139, '2010-05-31', 'Memorial Day'),
(140, '2011-05-30', 'Memorial Day'),
(141, '2012-05-28', 'Memorial Day'),
(142, '2013-05-27', 'Memorial Day'),
(143, '2014-05-26', 'Memorial Day'),
(144, '2015-05-25', 'Memorial Day'),
(145, '2016-05-30', 'Memorial Day'),
(146, '2017-05-29', 'Memorial Day'),
(147, '2018-05-28', 'Memorial Day'),
(148, '2019-05-27', 'Memorial Day'),
(149, '2020-05-25', 'Memorial Day'),
(150, '2004-09-06', 'Labor Day'),
(151, '2005-09-05', 'Labor Day'),
(152, '2006-09-04', 'Labor Day'),
(153, '2007-09-03', 'Labor Day'),
(154, '2008-09-01', 'Labor Day'),
(155, '2009-09-07', 'Labor Day'),
(156, '2010-09-06', 'Labor Day'),
(157, '2011-09-05', 'Labor Day'),
(158, '2012-09-03', 'Labor Day'),
(159, '2013-09-09', 'Labor Day'),
(160, '2014-09-08', 'Labor Day'),
(161, '2015-09-07', 'Labor Day'),
(162, '2016-09-05', 'Labor Day'),
(163, '2017-09-04', 'Labor Day'),
(164, '2018-09-03', 'Labor Day'),
(165, '2019-09-09', 'Labor Day'),
(166, '2020-09-07', 'Labor Day'),
(167, '0004-06-06', 'D-Day');

-- --------------------------------------------------------

--
-- Table structure for table `smf_categories`
--

CREATE TABLE IF NOT EXISTS `smf_categories` (
  `ID_CAT` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `catOrder` tinyint(4) NOT NULL DEFAULT '0',
  `name` tinytext NOT NULL,
  `canCollapse` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_CAT`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `smf_categories`
--

INSERT INTO `smf_categories` (`ID_CAT`, `catOrder`, `name`, `canCollapse`) VALUES
(1, 0, 'General Category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smf_collapsed_categories`
--

CREATE TABLE IF NOT EXISTS `smf_collapsed_categories` (
  `ID_CAT` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_CAT`,`ID_MEMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_actions`
--

CREATE TABLE IF NOT EXISTS `smf_log_actions` (
  `ID_ACTION` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logTime` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `extra` text NOT NULL,
  PRIMARY KEY (`ID_ACTION`),
  KEY `logTime` (`logTime`),
  KEY `ID_MEMBER` (`ID_MEMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_activity`
--

CREATE TABLE IF NOT EXISTS `smf_log_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topics` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `registers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mostOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`),
  KEY `hits` (`hits`),
  KEY `mostOn` (`mostOn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_banned`
--

CREATE TABLE IF NOT EXISTS `smf_log_banned` (
  `ID_BAN_LOG` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` tinytext NOT NULL,
  `logTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_BAN_LOG`),
  KEY `logTime` (`logTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_boards`
--

CREATE TABLE IF NOT EXISTS `smf_log_boards` (
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_BOARD` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ID_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_MEMBER`,`ID_BOARD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_errors`
--

CREATE TABLE IF NOT EXISTS `smf_log_errors` (
  `ID_ERROR` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `logTime` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID_ERROR`),
  KEY `logTime` (`logTime`),
  KEY `ID_MEMBER` (`ID_MEMBER`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_floodcontrol`
--

CREATE TABLE IF NOT EXISTS `smf_log_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `logTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_karma`
--

CREATE TABLE IF NOT EXISTS `smf_log_karma` (
  `ID_TARGET` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_EXECUTOR` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `logTime` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_TARGET`,`ID_EXECUTOR`),
  KEY `logTime` (`logTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_mark_read`
--

CREATE TABLE IF NOT EXISTS `smf_log_mark_read` (
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_BOARD` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ID_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_MEMBER`,`ID_BOARD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_notify`
--

CREATE TABLE IF NOT EXISTS `smf_log_notify` (
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_TOPIC` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_BOARD` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_MEMBER`,`ID_TOPIC`,`ID_BOARD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_online`
--

CREATE TABLE IF NOT EXISTS `smf_log_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `logTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`session`),
  KEY `logTime` (`logTime`),
  KEY `ID_MEMBER` (`ID_MEMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_polls`
--

CREATE TABLE IF NOT EXISTS `smf_log_polls` (
  `ID_POLL` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_CHOICE` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_POLL`,`ID_MEMBER`,`ID_CHOICE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_search_messages`
--

CREATE TABLE IF NOT EXISTS `smf_log_search_messages` (
  `ID_SEARCH` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_SEARCH`,`ID_MSG`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_search_results`
--

CREATE TABLE IF NOT EXISTS `smf_log_search_results` (
  `ID_SEARCH` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID_TOPIC` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num_matches` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_SEARCH`,`ID_TOPIC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_search_subjects`
--

CREATE TABLE IF NOT EXISTS `smf_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `ID_TOPIC` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`,`ID_TOPIC`),
  KEY `ID_TOPIC` (`ID_TOPIC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smf_log_search_subjects`
--

INSERT INTO `smf_log_search_subjects` (`word`, `ID_TOPIC`) VALUES
('smf', 1),
('to', 1),
('welcome', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_search_topics`
--

CREATE TABLE IF NOT EXISTS `smf_log_search_topics` (
  `ID_SEARCH` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID_TOPIC` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_SEARCH`,`ID_TOPIC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_log_topics`
--

CREATE TABLE IF NOT EXISTS `smf_log_topics` (
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_TOPIC` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_MEMBER`,`ID_TOPIC`),
  KEY `ID_TOPIC` (`ID_TOPIC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_membergroups`
--

CREATE TABLE IF NOT EXISTS `smf_membergroups` (
  `ID_GROUP` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `onlineColor` varchar(20) NOT NULL DEFAULT '',
  `minPosts` mediumint(9) NOT NULL DEFAULT '-1',
  `maxMessages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stars` tinytext NOT NULL,
  PRIMARY KEY (`ID_GROUP`),
  KEY `minPosts` (`minPosts`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `smf_membergroups`
--

INSERT INTO `smf_membergroups` (`ID_GROUP`, `groupName`, `onlineColor`, `minPosts`, `maxMessages`, `stars`) VALUES
(1, 'Administrator', '#FF0000', -1, 0, '5#staradmin.gif'),
(2, 'Global Moderator', '#0000FF', -1, 0, '5#stargmod.gif'),
(3, 'Moderator', '', -1, 0, '5#starmod.gif'),
(4, 'Newbie', '', 0, 0, '1#star.gif'),
(5, 'Jr. Member', '', 50, 0, '2#star.gif'),
(6, 'Full Member', '', 100, 0, '3#star.gif'),
(7, 'Sr. Member', '', 250, 0, '4#star.gif'),
(8, 'Hero Member', '', 500, 0, '5#star.gif');

-- --------------------------------------------------------

--
-- Table structure for table `smf_members`
--

CREATE TABLE IF NOT EXISTS `smf_members` (
  `ID_MEMBER` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `memberName` varchar(80) NOT NULL DEFAULT '',
  `dateRegistered` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_GROUP` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lngfile` tinytext NOT NULL,
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `realName` tinytext NOT NULL,
  `instantMessages` smallint(5) NOT NULL DEFAULT '0',
  `unreadMessages` smallint(5) NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` tinytext NOT NULL,
  `messageLabels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `emailAddress` tinytext NOT NULL,
  `personalText` tinytext NOT NULL,
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `websiteTitle` tinytext NOT NULL,
  `websiteUrl` tinytext NOT NULL,
  `location` tinytext NOT NULL,
  `ICQ` tinytext NOT NULL,
  `AIM` varchar(16) NOT NULL DEFAULT '',
  `YIM` varchar(32) NOT NULL DEFAULT '',
  `MSN` tinytext NOT NULL,
  `hideEmail` tinyint(4) NOT NULL DEFAULT '0',
  `showOnline` tinyint(4) NOT NULL DEFAULT '1',
  `timeFormat` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `timeOffset` float NOT NULL DEFAULT '0',
  `avatar` tinytext NOT NULL,
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karmaBad` smallint(5) unsigned NOT NULL DEFAULT '0',
  `karmaGood` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` tinytext NOT NULL,
  `notifyAnnouncements` tinyint(4) NOT NULL DEFAULT '1',
  `notifyOnce` tinyint(4) NOT NULL DEFAULT '1',
  `notifySendBody` tinyint(4) NOT NULL DEFAULT '0',
  `notifyTypes` tinyint(4) NOT NULL DEFAULT '2',
  `memberIP` tinytext NOT NULL,
  `memberIP2` tinytext NOT NULL,
  `secretQuestion` tinytext NOT NULL,
  `secretAnswer` varchar(64) NOT NULL DEFAULT '',
  `ID_THEME` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `ID_MSG_LAST_VISIT` int(10) unsigned NOT NULL DEFAULT '0',
  `additionalGroups` tinytext NOT NULL,
  `smileySet` varchar(48) NOT NULL DEFAULT '',
  `ID_POST_GROUP` smallint(5) unsigned NOT NULL DEFAULT '0',
  `totalTimeLoggedIn` int(10) unsigned NOT NULL DEFAULT '0',
  `passwordSalt` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID_MEMBER`),
  KEY `memberName` (`memberName`(30)),
  KEY `dateRegistered` (`dateRegistered`),
  KEY `ID_GROUP` (`ID_GROUP`),
  KEY `birthdate` (`birthdate`),
  KEY `posts` (`posts`),
  KEY `lastLogin` (`lastLogin`),
  KEY `lngfile` (`lngfile`(30)),
  KEY `ID_POST_GROUP` (`ID_POST_GROUP`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `smf_members`
--

INSERT INTO `smf_members` (`ID_MEMBER`, `memberName`, `dateRegistered`, `posts`, `ID_GROUP`, `lngfile`, `lastLogin`, `realName`, `instantMessages`, `unreadMessages`, `buddy_list`, `pm_ignore_list`, `messageLabels`, `passwd`, `emailAddress`, `personalText`, `gender`, `birthdate`, `websiteTitle`, `websiteUrl`, `location`, `ICQ`, `AIM`, `YIM`, `MSN`, `hideEmail`, `showOnline`, `timeFormat`, `signature`, `timeOffset`, `avatar`, `pm_email_notify`, `karmaBad`, `karmaGood`, `usertitle`, `notifyAnnouncements`, `notifyOnce`, `notifySendBody`, `notifyTypes`, `memberIP`, `memberIP2`, `secretQuestion`, `secretAnswer`, `ID_THEME`, `is_activated`, `validation_code`, `ID_MSG_LAST_VISIT`, `additionalGroups`, `smileySet`, `ID_POST_GROUP`, `totalTimeLoggedIn`, `passwordSalt`) VALUES
(1, 'admin', 1327748150, 0, 1, '', 0, 'admin', 0, 0, '', '', '', 'cd5ea73cd58f827fa78eef7197b8ee606c99b2e6', 'test@example.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 0, 0, 0, '', 1, 1, 0, 2, '127.0.0.1', '127.0.0.1', '', '', 0, 1, '', 0, '', '', 0, 0, 'ba06');

-- --------------------------------------------------------

--
-- Table structure for table `smf_messages`
--

CREATE TABLE IF NOT EXISTS `smf_messages` (
  `ID_MSG` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_TOPIC` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_BOARD` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posterTime` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_MSG_MODIFIED` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` tinytext NOT NULL,
  `posterName` tinytext NOT NULL,
  `posterEmail` tinytext NOT NULL,
  `posterIP` tinytext NOT NULL,
  `smileysEnabled` tinyint(4) NOT NULL DEFAULT '1',
  `modifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `modifiedName` tinytext NOT NULL,
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  PRIMARY KEY (`ID_MSG`),
  UNIQUE KEY `topic` (`ID_TOPIC`,`ID_MSG`),
  UNIQUE KEY `ID_BOARD` (`ID_BOARD`,`ID_MSG`),
  UNIQUE KEY `ID_MEMBER` (`ID_MEMBER`,`ID_MSG`),
  KEY `ipIndex` (`posterIP`(15),`ID_TOPIC`),
  KEY `participation` (`ID_MEMBER`,`ID_TOPIC`),
  KEY `showPosts` (`ID_MEMBER`,`ID_BOARD`),
  KEY `ID_TOPIC` (`ID_TOPIC`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `smf_messages`
--

INSERT INTO `smf_messages` (`ID_MSG`, `ID_TOPIC`, `ID_BOARD`, `posterTime`, `ID_MEMBER`, `ID_MSG_MODIFIED`, `subject`, `posterName`, `posterEmail`, `posterIP`, `smileysEnabled`, `modifiedTime`, `modifiedName`, `body`, `icon`) VALUES
(1, 1, 1, 1327748132, 0, 1, 'Welcome to SMF!', 'Simple Machines', 'info@simplemachines.org', '127.0.0.1', 1, 0, '', 'Welcome to Simple Machines Forum!<br /><br />We hope you enjoy using your forum.&nbsp; If you have any problems, please feel free to [url=http://www.simplemachines.org/community/index.php]ask us for assistance[/url].<br /><br />Thanks!<br />Simple Machines', 'xx');

-- --------------------------------------------------------

--
-- Table structure for table `smf_message_icons`
--

CREATE TABLE IF NOT EXISTS `smf_message_icons` (
  `ID_ICON` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `ID_BOARD` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `iconOrder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_ICON`),
  KEY `ID_BOARD` (`ID_BOARD`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `smf_message_icons`
--

INSERT INTO `smf_message_icons` (`ID_ICON`, `title`, `filename`, `ID_BOARD`, `iconOrder`) VALUES
(1, 'Standard', 'xx', 0, 0),
(2, 'Thumb Up', 'thumbup', 0, 1),
(3, 'Thumb Down', 'thumbdown', 0, 2),
(4, 'Exclamation point', 'exclamation', 0, 3),
(5, 'Question mark', 'question', 0, 4),
(6, 'Lamp', 'lamp', 0, 5),
(7, 'Smiley', 'smiley', 0, 6),
(8, 'Angry', 'angry', 0, 7),
(9, 'Cheesy', 'cheesy', 0, 8),
(10, 'Grin', 'grin', 0, 9),
(11, 'Sad', 'sad', 0, 10),
(12, 'Wink', 'wink', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `smf_moderators`
--

CREATE TABLE IF NOT EXISTS `smf_moderators` (
  `ID_BOARD` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_BOARD`,`ID_MEMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_package_servers`
--

CREATE TABLE IF NOT EXISTS `smf_package_servers` (
  `ID_SERVER` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `url` tinytext NOT NULL,
  PRIMARY KEY (`ID_SERVER`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `smf_package_servers`
--

INSERT INTO `smf_package_servers` (`ID_SERVER`, `name`, `url`) VALUES
(1, 'Simple Machines Third-party Mod Site', 'http://mods.simplemachines.org');

-- --------------------------------------------------------

--
-- Table structure for table `smf_permissions`
--

CREATE TABLE IF NOT EXISTS `smf_permissions` (
  `ID_GROUP` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `addDeny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_GROUP`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smf_permissions`
--

INSERT INTO `smf_permissions` (`ID_GROUP`, `permission`, `addDeny`) VALUES
(-1, 'search_posts', 1),
(-1, 'calendar_view', 1),
(-1, 'view_stats', 1),
(-1, 'profile_view_any', 1),
(0, 'view_mlist', 1),
(0, 'search_posts', 1),
(0, 'profile_view_own', 1),
(0, 'profile_view_any', 1),
(0, 'pm_read', 1),
(0, 'pm_send', 1),
(0, 'calendar_view', 1),
(0, 'view_stats', 1),
(0, 'who_view', 1),
(0, 'profile_identity_own', 1),
(0, 'profile_extra_own', 1),
(0, 'profile_remove_own', 1),
(0, 'profile_server_avatar', 1),
(0, 'profile_upload_avatar', 1),
(0, 'profile_remote_avatar', 1),
(0, 'karma_edit', 1),
(2, 'view_mlist', 1),
(2, 'search_posts', 1),
(2, 'profile_view_own', 1),
(2, 'profile_view_any', 1),
(2, 'pm_read', 1),
(2, 'pm_send', 1),
(2, 'calendar_view', 1),
(2, 'view_stats', 1),
(2, 'who_view', 1),
(2, 'profile_identity_own', 1),
(2, 'profile_extra_own', 1),
(2, 'profile_remove_own', 1),
(2, 'profile_server_avatar', 1),
(2, 'profile_upload_avatar', 1),
(2, 'profile_remote_avatar', 1),
(2, 'profile_title_own', 1),
(2, 'calendar_post', 1),
(2, 'calendar_edit_any', 1),
(2, 'karma_edit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smf_personal_messages`
--

CREATE TABLE IF NOT EXISTS `smf_personal_messages` (
  `ID_PM` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_MEMBER_FROM` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `deletedBySender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fromName` tinytext NOT NULL,
  `msgtime` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` tinytext NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`ID_PM`),
  KEY `ID_MEMBER` (`ID_MEMBER_FROM`,`deletedBySender`),
  KEY `msgtime` (`msgtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_pm_recipients`
--

CREATE TABLE IF NOT EXISTS `smf_pm_recipients` (
  `ID_PM` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_PM`,`ID_MEMBER`),
  UNIQUE KEY `ID_MEMBER` (`ID_MEMBER`,`deleted`,`ID_PM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_polls`
--

CREATE TABLE IF NOT EXISTS `smf_polls` (
  `ID_POLL` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `question` tinytext NOT NULL,
  `votingLocked` tinyint(1) NOT NULL DEFAULT '0',
  `maxVotes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expireTime` int(10) unsigned NOT NULL DEFAULT '0',
  `hideResults` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `changeVote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `posterName` tinytext NOT NULL,
  PRIMARY KEY (`ID_POLL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smf_poll_choices`
--

CREATE TABLE IF NOT EXISTS `smf_poll_choices` (
  `ID_POLL` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_CHOICE` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `label` tinytext NOT NULL,
  `votes` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_POLL`,`ID_CHOICE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smf_sessions`
--

CREATE TABLE IF NOT EXISTS `smf_sessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smf_sessions`
--

INSERT INTO `smf_sessions` (`session_id`, `last_update`, `data`) VALUES
('1fiu66053mudbqieao467q1170', 1327748150, 'USER_AGENT|s:64:"Opera/9.80 (Windows NT 5.1; U; pl) Presto/2.10.229 Version/11.61";admin_time|i:1327748150;');

-- --------------------------------------------------------

--
-- Table structure for table `smf_settings`
--

CREATE TABLE IF NOT EXISTS `smf_settings` (
  `variable` tinytext NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`variable`(30))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smf_settings`
--

INSERT INTO `smf_settings` (`variable`, `value`) VALUES
('smfVersion', '1.1.15'),
('news', 'SMF - Just Installed!'),
('compactTopicPagesContiguous', '5'),
('compactTopicPagesEnable', '1'),
('enableStickyTopics', '1'),
('todayMod', '1'),
('karmaMode', '0'),
('karmaTimeRestrictAdmins', '1'),
('enablePreviousNext', '1'),
('pollMode', '1'),
('enableVBStyleLogin', '1'),
('enableCompressedOutput', '1'),
('karmaWaitTime', '1'),
('karmaMinPosts', '0'),
('karmaLabel', 'Karma:'),
('karmaSmiteLabel', '[smite]'),
('karmaApplaudLabel', '[applaud]'),
('attachmentSizeLimit', '128'),
('attachmentPostLimit', '192'),
('attachmentNumPerPostLimit', '4'),
('attachmentDirSizeLimit', '10240'),
('attachmentUploadDir', 'C:\\EWemp\\nginx-0.8.52\\html\\smf1/attachments'),
('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip'),
('attachmentCheckExtensions', '0'),
('attachmentShowImages', '1'),
('attachmentEnable', '1'),
('attachmentEncryptFilenames', '1'),
('attachmentThumbnails', '1'),
('attachmentThumbWidth', '150'),
('attachmentThumbHeight', '150'),
('censorIgnoreCase', '1'),
('mostOnline', '1'),
('mostOnlineToday', '1'),
('mostDate', '1327748132'),
('allow_disableAnnounce', '1'),
('trackStats', '1'),
('userLanguage', '1'),
('titlesEnable', '1'),
('topicSummaryPosts', '15'),
('enableErrorLogging', '1'),
('max_image_width', '0'),
('max_image_height', '0'),
('onlineEnable', '0'),
('cal_holidaycolor', '000080'),
('cal_bdaycolor', '920AC4'),
('cal_eventcolor', '078907'),
('cal_enabled', '0'),
('cal_maxyear', '2010'),
('cal_minyear', '2004'),
('cal_daysaslink', '0'),
('cal_defaultboard', ''),
('cal_showeventsonindex', '0'),
('cal_showbdaysonindex', '0'),
('cal_showholidaysonindex', '0'),
('cal_showeventsoncalendar', '1'),
('cal_showbdaysoncalendar', '1'),
('cal_showholidaysoncalendar', '1'),
('cal_showweeknum', '0'),
('cal_maxspan', '7'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('mail_type', '0'),
('timeLoadPageEnable', '0'),
('totalTopics', '1'),
('totalMessages', '1'),
('simpleSearch', '0'),
('censor_vulgar', ''),
('censor_proper', ''),
('enablePostHTML', '0'),
('theme_allow', '1'),
('theme_default', '1'),
('theme_guests', '1'),
('enableEmbeddedFlash', '0'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255'),
('hotTopicPosts', '15'),
('hotTopicVeryPosts', '25'),
('registration_method', '0'),
('send_validation_onChange', '0'),
('send_welcomeEmail', '1'),
('allow_editDisplayName', '1'),
('allow_hideOnline', '1'),
('allow_hideEmail', '1'),
('guest_hideContacts', '0'),
('spamWaitTime', '5'),
('pm_spam_settings', '10,5,20'),
('reserveWord', '0'),
('reserveCase', '1'),
('reserveUser', '1'),
('reserveName', '1'),
('reserveNames', 'Admin\nWebmaster\nGuest\nroot'),
('autoLinkUrls', '1'),
('banLastUpdated', '0'),
('smileys_dir', 'C:\\EWemp\\nginx-0.8.52\\html\\smf1/Smileys'),
('smileys_url', 'http://localhost/smf1/Smileys'),
('avatar_directory', 'C:\\EWemp\\nginx-0.8.52\\html\\smf1/avatars'),
('avatar_url', 'http://localhost/smf1/avatars'),
('avatar_max_height_external', '65'),
('avatar_max_width_external', '65'),
('avatar_action_too_large', 'option_html_resize'),
('avatar_max_height_upload', '65'),
('avatar_max_width_upload', '65'),
('avatar_resize_upload', '1'),
('avatar_download_png', '1'),
('failed_login_threshold', '3'),
('oldTopicDays', '120'),
('edit_wait_time', '90'),
('edit_disable_time', '0'),
('autoFixDatabase', '1'),
('allow_guestAccess', '1'),
('time_format', '%B %d, %Y, %I:%M:%S %p'),
('number_format', '1234.00'),
('enableBBC', '1'),
('max_messageLength', '20000'),
('max_signatureLength', '300'),
('autoOptDatabase', '7'),
('autoOptMaxOnline', '0'),
('autoOptLastOpt', '0'),
('defaultMaxMessages', '15'),
('defaultMaxTopics', '20'),
('defaultMaxMembers', '30'),
('enableParticipation', '1'),
('recycle_enable', '0'),
('recycle_board', '0'),
('maxMsgID', '1'),
('enableAllMessages', '0'),
('fixLongWords', '0'),
('knownThemes', '1,2,3'),
('who_enabled', '1'),
('time_offset', '0'),
('cookieTime', '60'),
('lastActive', '15'),
('smiley_sets_known', 'default,classic'),
('smiley_sets_names', 'Default\nClassic'),
('smiley_sets_default', 'default'),
('cal_days_for_index', '7'),
('requireAgreement', '1'),
('unapprovedMembers', '0'),
('default_personalText', ''),
('package_make_backups', '1'),
('databaseSession_enable', '1'),
('databaseSession_loose', '1'),
('databaseSession_lifetime', '2880'),
('search_cache_size', '50'),
('search_results_per_page', '30'),
('search_weight_frequency', '30'),
('search_weight_age', '25'),
('search_weight_length', '20'),
('search_weight_subject', '15'),
('search_weight_first_message', '10'),
('search_max_results', '1200'),
('permission_enable_deny', '0'),
('permission_enable_postgroups', '0'),
('permission_enable_by_board', '0'),
('globalCookies', '1'),
('default_timezone', 'Etc/GMT-1'),
('memberlist_updated', '1327748150'),
('latestMember', '1'),
('totalMembers', '1'),
('latestRealName', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `smf_smileys`
--

CREATE TABLE IF NOT EXISTS `smf_smileys` (
  `ID_SMILEY` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smileyRow` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `smileyOrder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_SMILEY`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `smf_smileys`
--

INSERT INTO `smf_smileys` (`ID_SMILEY`, `code`, `filename`, `description`, `smileyRow`, `smileyOrder`, `hidden`) VALUES
(1, ':)', 'smiley.gif', 'Smiley', 0, 0, 0),
(2, ';)', 'wink.gif', 'Wink', 0, 1, 0),
(3, ':D', 'cheesy.gif', 'Cheesy', 0, 2, 0),
(4, ';D', 'grin.gif', 'Grin', 0, 3, 0),
(5, '>:(', 'angry.gif', 'Angry', 0, 4, 0),
(6, ':(', 'sad.gif', 'Sad', 0, 5, 0),
(7, ':o', 'shocked.gif', 'Shocked', 0, 6, 0),
(8, '8)', 'cool.gif', 'Cool', 0, 7, 0),
(9, '???', 'huh.gif', 'Huh?', 0, 8, 0),
(10, '::)', 'rolleyes.gif', 'Roll Eyes', 0, 9, 0),
(11, ':P', 'tongue.gif', 'Tongue', 0, 10, 0),
(12, ':-[', 'embarrassed.gif', 'Embarrassed', 0, 11, 0),
(13, ':-X', 'lipsrsealed.gif', 'Lips Sealed', 0, 12, 0),
(14, ':-\\', 'undecided.gif', 'Undecided', 0, 13, 0),
(15, ':-*', 'kiss.gif', 'Kiss', 0, 14, 0),
(16, ':''(', 'cry.gif', 'Cry', 0, 15, 0),
(17, '>:D', 'evil.gif', 'Evil', 0, 16, 1),
(18, '^-^', 'azn.gif', 'Azn', 0, 17, 1),
(19, 'O0', 'afro.gif', 'Afro', 0, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `smf_themes`
--

CREATE TABLE IF NOT EXISTS `smf_themes` (
  `ID_MEMBER` mediumint(8) NOT NULL DEFAULT '0',
  `ID_THEME` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `variable` tinytext NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`ID_THEME`,`ID_MEMBER`,`variable`(30)),
  KEY `ID_MEMBER` (`ID_MEMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smf_themes`
--

INSERT INTO `smf_themes` (`ID_MEMBER`, `ID_THEME`, `variable`, `value`) VALUES
(0, 1, 'name', 'SMF Default Theme - Core'),
(0, 1, 'theme_url', 'http://localhost/smf1/Themes/default'),
(0, 1, 'images_url', 'http://localhost/smf1/Themes/default/images'),
(0, 1, 'theme_dir', 'C:\\EWemp\\nginx-0.8.52\\html\\smf1/Themes/default'),
(0, 1, 'show_bbc', '1'),
(0, 1, 'show_latest_member', '1'),
(0, 1, 'show_modify', '1'),
(0, 1, 'show_user_images', '1'),
(0, 1, 'show_blurb', '1'),
(0, 1, 'show_gender', '0'),
(0, 1, 'show_newsfader', '0'),
(0, 1, 'number_recent_posts', '0'),
(0, 1, 'show_member_bar', '1'),
(0, 1, 'linktree_link', '1'),
(0, 1, 'show_profile_buttons', '1'),
(0, 1, 'show_mark_read', '1'),
(0, 1, 'show_sp1_info', '1'),
(0, 1, 'linktree_inline', '0'),
(0, 1, 'show_board_desc', '1'),
(0, 1, 'newsfader_time', '5000'),
(0, 1, 'allow_no_censored', '0'),
(0, 1, 'additional_options_collapsable', '1'),
(0, 1, 'use_image_buttons', '1'),
(0, 1, 'enable_news', '1'),
(0, 2, 'name', 'Classic YaBB SE Theme'),
(0, 2, 'theme_url', 'http://localhost/smf1/Themes/classic'),
(0, 2, 'images_url', 'http://localhost/smf1/Themes/classic/images'),
(0, 2, 'theme_dir', 'C:\\EWemp\\nginx-0.8.52\\html\\smf1/Themes/classic'),
(0, 3, 'name', 'Babylon Theme'),
(0, 3, 'theme_url', 'http://localhost/smf1/Themes/babylon'),
(0, 3, 'images_url', 'http://localhost/smf1/Themes/babylon/images'),
(0, 3, 'theme_dir', 'C:\\EWemp\\nginx-0.8.52\\html\\smf1/Themes/babylon');

-- --------------------------------------------------------

--
-- Table structure for table `smf_topics`
--

CREATE TABLE IF NOT EXISTS `smf_topics` (
  `ID_TOPIC` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `isSticky` tinyint(4) NOT NULL DEFAULT '0',
  `ID_BOARD` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ID_FIRST_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_LAST_MSG` int(10) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER_STARTED` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_MEMBER_UPDATED` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_POLL` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `numReplies` int(10) unsigned NOT NULL DEFAULT '0',
  `numViews` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_TOPIC`),
  UNIQUE KEY `lastMessage` (`ID_LAST_MSG`,`ID_BOARD`),
  UNIQUE KEY `firstMessage` (`ID_FIRST_MSG`,`ID_BOARD`),
  UNIQUE KEY `poll` (`ID_POLL`,`ID_TOPIC`),
  KEY `isSticky` (`isSticky`),
  KEY `ID_BOARD` (`ID_BOARD`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `smf_topics`
--

INSERT INTO `smf_topics` (`ID_TOPIC`, `isSticky`, `ID_BOARD`, `ID_FIRST_MSG`, `ID_LAST_MSG`, `ID_MEMBER_STARTED`, `ID_MEMBER_UPDATED`, `ID_POLL`, `numReplies`, `numViews`, `locked`) VALUES
(1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
