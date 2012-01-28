-- phpMyAdmin SQL Dump
-- version 3.4.8-rc1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 06, 2012 at 10:23 AM
-- Server version: 5.1.51
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `minibb`
--

-- --------------------------------------------------------

--
-- Table structure for table `minibbtable_banned`
--

CREATE TABLE IF NOT EXISTS `minibbtable_banned` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `banip` varchar(15) NOT NULL DEFAULT '',
  `banreason` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `minibbtable_forums`
--

CREATE TABLE IF NOT EXISTS `minibbtable_forums` (
  `forum_id` int(10) NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(150) NOT NULL DEFAULT '',
  `forum_desc` text NOT NULL,
  `forum_order` int(10) NOT NULL DEFAULT '0',
  `forum_icon` varchar(255) NOT NULL DEFAULT 'default.gif',
  `topics_count` int(10) NOT NULL DEFAULT '0',
  `posts_count` int(10) NOT NULL DEFAULT '0',
  `forum_group` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `minibbtable_forums`
--

INSERT INTO `minibbtable_forums` (`forum_id`, `forum_name`, `forum_desc`, `forum_order`, `forum_icon`, `topics_count`, `posts_count`, `forum_group`) VALUES
(1, 'test', 'sdsdfsf', 1, 'default.gif', 2, 4, 'Grupa'),
(2, 'test 2', 'fdsfdgbcb vbcvbc', 2, 'default.gif', 0, 0, 'Grupa 2'),
(3, 'nowy', 'fdsfsd fds sdf', 3, 'default.gif', 0, 0, 'Grupa');

-- --------------------------------------------------------

--
-- Table structure for table `minibbtable_posts`
--

CREATE TABLE IF NOT EXISTS `minibbtable_posts` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `forum_id` int(10) NOT NULL DEFAULT '1',
  `topic_id` int(10) NOT NULL DEFAULT '1',
  `poster_id` int(10) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT 'Anonymous',
  `post_text` text NOT NULL,
  `post_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `poster_ip` varchar(15) NOT NULL DEFAULT '',
  `post_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `poster_ip` (`poster_ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `minibbtable_posts`
--

INSERT INTO `minibbtable_posts` (`post_id`, `forum_id`, `topic_id`, `poster_id`, `poster_name`, `post_text`, `post_time`, `poster_ip`, `post_status`) VALUES
(1, 1, 1, 1, 'Admin', 'fdsfdsfsd', '2012-02-04 10:42:31', '127.0.0.1', 0),
(2, 1, 1, 1, 'Admin', 'ncvnvnb', '2012-02-04 10:42:34', '127.0.0.1', 0),
(3, 1, 1, 1, 'Admin', 'gfdgdfg<em>gfdgdgf</em> <strong>gfdgfdg</strong><br /><a href="http://localhost/minibb/" target="_blank">http://localhost/minibb/</a>', '2012-02-04 10:42:45', '127.0.0.1', 0),
(4, 1, 2, 1, 'Admin', 'fdsfsdfscxvxcvx', '2012-02-04 10:43:03', '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `minibbtable_send_mails`
--

CREATE TABLE IF NOT EXISTS `minibbtable_send_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `email_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `minibbtable_topics`
--

CREATE TABLE IF NOT EXISTS `minibbtable_topics` (
  `topic_id` int(10) NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(255) NOT NULL DEFAULT '',
  `topic_poster` int(10) NOT NULL DEFAULT '0',
  `topic_poster_name` varchar(255) NOT NULL DEFAULT 'Anonymous',
  `topic_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_views` int(10) NOT NULL DEFAULT '0',
  `forum_id` int(10) NOT NULL DEFAULT '1',
  `topic_status` tinyint(1) NOT NULL DEFAULT '0',
  `topic_last_post_id` int(10) NOT NULL DEFAULT '1',
  `posts_count` int(10) NOT NULL DEFAULT '0',
  `sticky` int(1) NOT NULL DEFAULT '0',
  `topic_last_post_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_last_poster` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_last_post_id` (`topic_last_post_id`),
  KEY `sticky` (`sticky`),
  KEY `posts_count` (`posts_count`),
  KEY `topic_last_post_time` (`topic_last_post_time`),
  KEY `topic_views` (`topic_views`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `minibbtable_topics`
--

INSERT INTO `minibbtable_topics` (`topic_id`, `topic_title`, `topic_poster`, `topic_poster_name`, `topic_time`, `topic_views`, `forum_id`, `topic_status`, `topic_last_post_id`, `posts_count`, `sticky`, `topic_last_post_time`, `topic_last_poster`) VALUES
(1, 'nowy temat', 1, 'Admin', '2012-02-04 10:42:31', 4, 1, 0, 3, 3, 0, '2012-02-04 10:42:45', 'Admin'),
(2, 'test2', 1, 'Admin', '2012-02-04 10:43:03', 2, 1, 0, 4, 1, 0, '2012-02-04 10:43:03', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `minibbtable_users`
--

CREATE TABLE IF NOT EXISTS `minibbtable_users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_password` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `user_icq` varchar(50) NOT NULL DEFAULT '',
  `user_website` varchar(100) NOT NULL DEFAULT '',
  `user_occ` varchar(100) NOT NULL DEFAULT '',
  `user_from` varchar(100) NOT NULL DEFAULT '',
  `user_interest` varchar(150) NOT NULL DEFAULT '',
  `user_viewemail` tinyint(1) NOT NULL DEFAULT '0',
  `user_sorttopics` tinyint(1) NOT NULL DEFAULT '0',
  `user_newpwdkey` varchar(32) NOT NULL DEFAULT '',
  `user_newpasswd` varchar(32) NOT NULL DEFAULT '',
  `language` char(3) NOT NULL DEFAULT '',
  `activity` int(1) NOT NULL DEFAULT '1',
  `num_topics` int(10) unsigned NOT NULL DEFAULT '0',
  `num_posts` int(10) unsigned NOT NULL DEFAULT '0',
  `user_custom1` varchar(255) NOT NULL DEFAULT '',
  `user_custom2` varchar(255) NOT NULL DEFAULT '',
  `user_custom3` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `minibbtable_users`
--

INSERT INTO `minibbtable_users` (`user_id`, `username`, `user_regdate`, `user_password`, `user_email`, `user_icq`, `user_website`, `user_occ`, `user_from`, `user_interest`, `user_viewemail`, `user_sorttopics`, `user_newpwdkey`, `user_newpasswd`, `language`, `activity`, `num_topics`, `num_posts`, `user_custom1`, `user_custom2`, `user_custom3`) VALUES
(1, 'Admin', '2012-02-04 10:40:55', 'e10adc3949ba59abbe56e057f20f883e', 'test@example.com', '', '', '', '', '', 0, 0, '', '', '', 1, 2, 4, '', '', ''),
(2, 'test', '2012-02-04 16:38:50', 'e10adc3949ba59abbe56e057f20f883e', 'test@example.com', '', '', '', '', '', 0, 0, '', '', 'eng', 1, 0, 0, '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
