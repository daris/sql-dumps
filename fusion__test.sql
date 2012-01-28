-- phpMyAdmin SQL Dump
-- version 3.4.8-rc1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2012 at 11:48 AM
-- Server version: 5.1.51
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fusion__test`
--

-- --------------------------------------------------------

--
-- Table structure for table `fusion_admin`
--

CREATE TABLE IF NOT EXISTS `fusion_admin` (
  `admin_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `admin_rights` char(4) NOT NULL DEFAULT '',
  `admin_image` varchar(50) NOT NULL DEFAULT '',
  `admin_title` varchar(50) NOT NULL DEFAULT '',
  `admin_link` varchar(100) NOT NULL DEFAULT 'reserved',
  `admin_page` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `fusion_admin`
--

INSERT INTO `fusion_admin` (`admin_id`, `admin_rights`, `admin_image`, `admin_title`, `admin_link`, `admin_page`) VALUES
(1, 'AD', 'admins.gif', 'Administrators', 'administrators.php', 2),
(2, 'APWR', 'admin_pass.gif', 'Admin Password Reset', 'admin_reset.php', 2),
(3, 'AC', 'article_cats.gif', 'Article Categories', 'article_cats.php', 1),
(4, 'A', 'articles.gif', 'Articles', 'articles.php', 1),
(5, 'SB', 'banners.gif', 'Banners', 'banners.php', 3),
(6, 'BB', 'bbcodes.gif', 'BB Codes', 'bbcodes.php', 3),
(7, 'B', 'blacklist.gif', 'Blacklist', 'blacklist.php', 2),
(8, 'C', '', 'Comments', 'reserved', 2),
(9, 'CP', 'c-pages.gif', 'Custom Pages', 'custom_pages.php', 1),
(10, 'DB', 'db_backup.gif', 'Database Backup', 'db_backup.php', 3),
(11, 'DC', 'dl_cats.gif', 'Download Categories', 'download_cats.php', 1),
(12, 'D', 'dl.gif', 'Downloads', 'downloads.php', 1),
(13, 'ERRO', 'errors.gif', 'Error Log', 'errors.php', 3),
(14, 'FQ', 'faq.gif', 'FAQs', 'faq.php', 1),
(15, 'F', 'forums.gif', 'Forums', 'forums.php', 1),
(16, 'IM', 'images.gif', 'Images', 'images.php', 1),
(17, 'I', 'infusions.gif', 'Infusions', 'infusions.php', 3),
(18, 'IP', '', 'Infusion Panels', 'reserved', 3),
(19, 'M', 'members.gif', 'Members', 'members.php', 2),
(20, 'NC', 'news_cats.gif', 'News Categories', 'news_cats.php', 1),
(21, 'N', 'news.gif', 'News', 'news.php', 1),
(22, 'P', 'panels.gif', 'Panels', 'panels.php', 3),
(23, 'PH', 'photoalbums.gif', 'Photo Albums', 'photoalbums.php', 1),
(24, 'PI', 'phpinfo.gif', 'PHP Info', 'phpinfo.php', 3),
(25, 'PO', 'polls.gif', 'Polls', 'polls.php', 1),
(26, 'SL', 'site_links.gif', 'Site Links', 'site_links.php', 3),
(27, 'SM', 'smileys.gif', 'Smileys', 'smileys.php', 3),
(28, 'SU', 'submissions.gif', 'Submissions', 'submissions.php', 2),
(29, 'U', 'upgrade.gif', 'Upgrade', 'upgrade.php', 3),
(30, 'UG', 'user_groups.gif', 'User Groups', 'user_groups.php', 2),
(31, 'WC', 'wl_cats.gif', 'Web Link Categories', 'weblink_cats.php', 1),
(32, 'W', 'wl.gif', 'Web Links', 'weblinks.php', 1),
(33, 'S1', 'settings.gif', 'Main', 'settings_main.php', 4),
(34, 'S2', 'settings_time.gif', 'Time and Date', 'settings_time.php', 4),
(35, 'S3', 'settings_forum.gif', 'Forum', 'settings_forum.php', 4),
(36, 'S4', 'registration.gif', 'Registration', 'settings_registration.php', 4),
(37, 'S5', 'photoalbums.gif', 'Photo Gallery', 'settings_photo.php', 4),
(38, 'S6', 'settings_misc.gif', 'Miscellaneous', 'settings_misc.php', 4),
(39, 'S7', 'settings_pm.gif', 'Private Message', 'settings_messages.php', 4),
(40, 'S8', 'settings_news.gif', 'News', 'settings_news.php', 4),
(41, 'S9', 'settings_users.gif', 'User Management', 'settings_users.php', 4),
(42, 'S10', 'settings_ipp.gif', 'Items per Page', 'settings_ipp.php', 4),
(43, 'S11', 'settings_dl.gif', 'Downloads', 'settings_dl.php', 4),
(44, 'S12', 'security.gif', 'Security', 'settings_security.php', 4),
(45, 'UF', 'user_fields.gif', 'User Fields', 'user_fields.php', 2),
(46, 'FR', 'forum_ranks.gif', 'Forum Ranks', 'forum_ranks.php', 2),
(47, 'UFC', 'user_fields_cats.gif', 'User Field Categories', 'user_field_cats.php', 2),
(48, 'ROB', 'robots.gif', 'robots.txt', 'robots.php', 3),
(49, 'UL', 'user_fields.gif', 'User Log', 'user_log.php', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_admin_resetlog`
--

CREATE TABLE IF NOT EXISTS `fusion_admin_resetlog` (
  `reset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reset_admin_id` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `reset_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_sucess` text NOT NULL,
  `reset_failed` text NOT NULL,
  `reset_admins` varchar(8) NOT NULL DEFAULT '0',
  `reset_reason` varchar(255) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_articles`
--

CREATE TABLE IF NOT EXISTS `fusion_articles` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `article_cat` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_subject` varchar(200) NOT NULL DEFAULT '',
  `article_snippet` text NOT NULL,
  `article_article` text NOT NULL,
  `article_draft` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `article_breaks` char(1) NOT NULL DEFAULT '',
  `article_name` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `article_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `article_reads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_allow_comments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `article_allow_ratings` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`article_id`),
  KEY `article_cat` (`article_cat`),
  KEY `article_datestamp` (`article_datestamp`),
  KEY `article_reads` (`article_reads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_article_cats`
--

CREATE TABLE IF NOT EXISTS `fusion_article_cats` (
  `article_cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `article_cat_name` varchar(100) NOT NULL DEFAULT '',
  `article_cat_description` varchar(200) NOT NULL DEFAULT '',
  `article_cat_sorting` varchar(50) NOT NULL DEFAULT 'article_subject ASC',
  `article_cat_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_cat_id`),
  KEY `article_cat_access` (`article_cat_access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_bbcodes`
--

CREATE TABLE IF NOT EXISTS `fusion_bbcodes` (
  `bbcode_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bbcode_name` varchar(20) NOT NULL DEFAULT '',
  `bbcode_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `bbcode_order` (`bbcode_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `fusion_bbcodes`
--

INSERT INTO `fusion_bbcodes` (`bbcode_id`, `bbcode_name`, `bbcode_order`) VALUES
(1, 'smiley', 1),
(2, 'b', 2),
(3, 'i', 3),
(4, 'u', 4),
(5, 'url', 5),
(6, 'mail', 6),
(7, 'img', 7),
(8, 'center', 8),
(9, 'small', 9),
(10, 'code', 10),
(11, 'quote', 11);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_blacklist`
--

CREATE TABLE IF NOT EXISTS `fusion_blacklist` (
  `blacklist_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `blacklist_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `blacklist_ip` varchar(45) NOT NULL DEFAULT '',
  `blacklist_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `blacklist_email` varchar(100) NOT NULL DEFAULT '',
  `blacklist_reason` text NOT NULL,
  `blacklist_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`blacklist_id`),
  KEY `blacklist_ip_type` (`blacklist_ip_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_captcha`
--

CREATE TABLE IF NOT EXISTS `fusion_captcha` (
  `captcha_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `captcha_ip` varchar(45) NOT NULL DEFAULT '',
  `captcha_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `captcha_encode` varchar(32) NOT NULL DEFAULT '',
  `captcha_string` varchar(15) NOT NULL DEFAULT '',
  KEY `captcha_datestamp` (`captcha_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_comments`
--

CREATE TABLE IF NOT EXISTS `fusion_comments` (
  `comment_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `comment_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment_type` char(2) NOT NULL DEFAULT '',
  `comment_name` varchar(50) NOT NULL DEFAULT '',
  `comment_message` text NOT NULL,
  `comment_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_ip` varchar(45) NOT NULL DEFAULT '',
  `comment_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `comment_hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `comment_datestamp` (`comment_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_custom_pages`
--

CREATE TABLE IF NOT EXISTS `fusion_custom_pages` (
  `page_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(200) NOT NULL DEFAULT '',
  `page_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `page_content` text NOT NULL,
  `page_allow_comments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `page_allow_ratings` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_downloads`
--

CREATE TABLE IF NOT EXISTS `fusion_downloads` (
  `download_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `download_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `download_homepage` varchar(100) NOT NULL DEFAULT '',
  `download_title` varchar(100) NOT NULL DEFAULT '',
  `download_description_short` varchar(255) NOT NULL,
  `download_description` text NOT NULL,
  `download_image` varchar(100) NOT NULL DEFAULT '',
  `download_image_thumb` varchar(100) NOT NULL DEFAULT '',
  `download_url` varchar(200) NOT NULL DEFAULT '',
  `download_file` varchar(100) NOT NULL DEFAULT '',
  `download_cat` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `download_license` varchar(50) NOT NULL DEFAULT '',
  `download_copyright` varchar(250) NOT NULL DEFAULT '',
  `download_os` varchar(50) NOT NULL DEFAULT '',
  `download_version` varchar(20) NOT NULL DEFAULT '',
  `download_filesize` varchar(20) NOT NULL DEFAULT '',
  `download_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `download_count` int(10) unsigned NOT NULL DEFAULT '0',
  `download_allow_comments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_allow_ratings` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`download_id`),
  KEY `download_datestamp` (`download_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_download_cats`
--

CREATE TABLE IF NOT EXISTS `fusion_download_cats` (
  `download_cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `download_cat_name` varchar(100) NOT NULL DEFAULT '',
  `download_cat_description` text NOT NULL,
  `download_cat_sorting` varchar(50) NOT NULL DEFAULT 'download_title ASC',
  `download_cat_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`download_cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_email_verify`
--

CREATE TABLE IF NOT EXISTS `fusion_email_verify` (
  `user_id` mediumint(8) NOT NULL,
  `user_code` varchar(32) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `user_datestamp` (`user_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_errors`
--

CREATE TABLE IF NOT EXISTS `fusion_errors` (
  `error_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `error_level` smallint(5) unsigned NOT NULL,
  `error_message` text NOT NULL,
  `error_file` varchar(255) NOT NULL,
  `error_line` smallint(5) NOT NULL,
  `error_page` varchar(200) NOT NULL,
  `error_user_level` smallint(3) NOT NULL,
  `error_user_ip` varchar(45) NOT NULL DEFAULT '',
  `error_user_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `error_status` tinyint(1) NOT NULL DEFAULT '0',
  `error_timestamp` int(10) NOT NULL,
  PRIMARY KEY (`error_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_faqs`
--

CREATE TABLE IF NOT EXISTS `fusion_faqs` (
  `faq_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `faq_cat_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `faq_question` varchar(200) NOT NULL DEFAULT '',
  `faq_answer` text NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_faq_cats`
--

CREATE TABLE IF NOT EXISTS `fusion_faq_cats` (
  `faq_cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `faq_cat_name` varchar(200) NOT NULL DEFAULT '',
  `faq_cat_description` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`faq_cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_flood_control`
--

CREATE TABLE IF NOT EXISTS `fusion_flood_control` (
  `flood_ip` varchar(45) NOT NULL DEFAULT '',
  `flood_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `flood_timestamp` int(5) unsigned NOT NULL DEFAULT '0',
  KEY `flood_timestamp` (`flood_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_forums`
--

CREATE TABLE IF NOT EXISTS `fusion_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_cat` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_name` varchar(50) NOT NULL DEFAULT '',
  `forum_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `forum_description` text NOT NULL,
  `forum_moderators` text NOT NULL,
  `forum_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `forum_post` smallint(3) unsigned DEFAULT '101',
  `forum_reply` smallint(3) unsigned DEFAULT '101',
  `forum_poll` smallint(3) unsigned NOT NULL DEFAULT '0',
  `forum_vote` smallint(3) unsigned NOT NULL DEFAULT '0',
  `forum_attach` smallint(3) unsigned NOT NULL DEFAULT '0',
  `forum_attach_download` smallint(3) unsigned NOT NULL DEFAULT '0',
  `forum_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_postcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_threadcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_lastuser` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_merge` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `forum_order` (`forum_order`),
  KEY `forum_lastpost` (`forum_lastpost`),
  KEY `forum_postcount` (`forum_postcount`),
  KEY `forum_threadcount` (`forum_threadcount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_forum_attachments`
--

CREATE TABLE IF NOT EXISTS `fusion_forum_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_name` varchar(100) NOT NULL DEFAULT '',
  `attach_ext` varchar(5) NOT NULL DEFAULT '',
  `attach_size` int(20) unsigned NOT NULL DEFAULT '0',
  `attach_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_forum_polls`
--

CREATE TABLE IF NOT EXISTS `fusion_forum_polls` (
  `thread_id` mediumint(8) unsigned NOT NULL,
  `forum_poll_title` varchar(250) NOT NULL,
  `forum_poll_start` int(10) unsigned DEFAULT NULL,
  `forum_poll_length` int(10) unsigned NOT NULL,
  `forum_poll_votes` smallint(5) unsigned NOT NULL,
  KEY `thread_id` (`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_forum_poll_options`
--

CREATE TABLE IF NOT EXISTS `fusion_forum_poll_options` (
  `thread_id` mediumint(8) unsigned NOT NULL,
  `forum_poll_option_id` smallint(5) unsigned NOT NULL,
  `forum_poll_option_text` varchar(150) NOT NULL,
  `forum_poll_option_votes` smallint(5) unsigned NOT NULL,
  KEY `thread_id` (`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_forum_poll_voters`
--

CREATE TABLE IF NOT EXISTS `fusion_forum_poll_voters` (
  `thread_id` mediumint(8) unsigned NOT NULL,
  `forum_vote_user_id` mediumint(8) unsigned NOT NULL,
  `forum_vote_user_ip` varchar(45) NOT NULL,
  `forum_vote_user_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  KEY `thread_id` (`thread_id`,`forum_vote_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_forum_ranks`
--

CREATE TABLE IF NOT EXISTS `fusion_forum_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(100) NOT NULL DEFAULT '',
  `rank_image` varchar(100) NOT NULL DEFAULT '',
  `rank_posts` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_apply` smallint(5) unsigned NOT NULL DEFAULT '101',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `fusion_forum_ranks`
--

INSERT INTO `fusion_forum_ranks` (`rank_id`, `rank_title`, `rank_image`, `rank_posts`, `rank_type`, `rank_apply`) VALUES
(1, 'Super Admin', 'rank_super_admin.png', 0, 1, 103),
(2, 'Admin', 'rank_admin.png', 0, 1, 102),
(3, 'Moderator', 'rank_mod.png', 0, 1, 104),
(4, 'Newbie', 'rank0.png', 0, 0, 101),
(5, 'Junior Member', 'rank1.png', 10, 0, 101),
(6, 'Member', 'rank2.png', 50, 0, 101),
(7, 'Senior Member', 'rank3.png', 200, 0, 101),
(8, 'Veteran Member', 'rank4.png', 500, 0, 101),
(9, 'Fusioneer', 'rank5.png', 1000, 0, 101);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_infusions`
--

CREATE TABLE IF NOT EXISTS `fusion_infusions` (
  `inf_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `inf_title` varchar(100) NOT NULL DEFAULT '',
  `inf_folder` varchar(100) NOT NULL DEFAULT '',
  `inf_version` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_messages`
--

CREATE TABLE IF NOT EXISTS `fusion_messages` (
  `message_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `message_to` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(100) NOT NULL DEFAULT '',
  `message_message` text NOT NULL,
  `message_smileys` char(1) NOT NULL DEFAULT '',
  `message_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `message_folder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`message_id`),
  KEY `message_datestamp` (`message_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_messages_options`
--

CREATE TABLE IF NOT EXISTS `fusion_messages_options` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_email_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_save_sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_inbox` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pm_savebox` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pm_sentbox` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fusion_messages_options`
--

INSERT INTO `fusion_messages_options` (`user_id`, `pm_email_notify`, `pm_save_sent`, `pm_inbox`, `pm_savebox`, `pm_sentbox`) VALUES
(0, 0, 1, 20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_news`
--

CREATE TABLE IF NOT EXISTS `fusion_news` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_subject` varchar(200) NOT NULL DEFAULT '',
  `news_image` varchar(100) NOT NULL DEFAULT '',
  `news_image_t1` varchar(100) NOT NULL DEFAULT '',
  `news_image_t2` varchar(100) NOT NULL DEFAULT '',
  `news_cat` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `news_news` text NOT NULL,
  `news_extended` text NOT NULL,
  `news_breaks` char(1) NOT NULL DEFAULT '',
  `news_name` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `news_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `news_start` int(10) unsigned NOT NULL DEFAULT '0',
  `news_end` int(10) unsigned NOT NULL DEFAULT '0',
  `news_visibility` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `news_reads` int(10) unsigned NOT NULL DEFAULT '0',
  `news_draft` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `news_sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `news_allow_comments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `news_allow_ratings` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`news_id`),
  KEY `news_datestamp` (`news_datestamp`),
  KEY `news_reads` (`news_reads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_news_cats`
--

CREATE TABLE IF NOT EXISTS `fusion_news_cats` (
  `news_cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_cat_name` varchar(100) NOT NULL DEFAULT '',
  `news_cat_image` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`news_cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `fusion_news_cats`
--

INSERT INTO `fusion_news_cats` (`news_cat_id`, `news_cat_name`, `news_cat_image`) VALUES
(1, 'Bugs', 'bugs.gif'),
(2, 'Downloads', 'downloads.gif'),
(3, 'Games', 'games.gif'),
(4, 'Graphics', 'graphics.gif'),
(5, 'Hardware', 'hardware.gif'),
(6, 'Journal', 'journal.gif'),
(7, 'Members', 'members.gif'),
(8, 'Mods', 'mods.gif'),
(9, 'Movies', 'movies.gif'),
(10, 'Network', 'network.gif'),
(11, 'News', 'news.gif'),
(12, 'PHP-Fusion', 'php-fusion.gif'),
(13, 'Security', 'security.gif'),
(14, 'Software', 'software.gif'),
(15, 'Themes', 'themes.gif'),
(16, 'Windows', 'windows.gif');

-- --------------------------------------------------------

--
-- Table structure for table `fusion_new_users`
--

CREATE TABLE IF NOT EXISTS `fusion_new_users` (
  `user_code` varchar(40) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `user_info` text NOT NULL,
  KEY `user_datestamp` (`user_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_online`
--

CREATE TABLE IF NOT EXISTS `fusion_online` (
  `online_user` varchar(50) NOT NULL DEFAULT '',
  `online_ip` varchar(45) NOT NULL DEFAULT '',
  `online_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `online_lastactive` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fusion_online`
--

INSERT INTO `fusion_online` (`online_user`, `online_ip`, `online_ip_type`, `online_lastactive`) VALUES
('0', '127.0.0.1', 4, 1327747691);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_panels`
--

CREATE TABLE IF NOT EXISTS `fusion_panels` (
  `panel_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `panel_name` varchar(100) NOT NULL DEFAULT '',
  `panel_filename` varchar(100) NOT NULL DEFAULT '',
  `panel_content` text NOT NULL,
  `panel_side` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `panel_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `panel_type` varchar(20) NOT NULL DEFAULT '',
  `panel_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `panel_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `panel_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `panel_url_list` text NOT NULL,
  `panel_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`panel_id`),
  KEY `panel_order` (`panel_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `fusion_panels`
--

INSERT INTO `fusion_panels` (`panel_id`, `panel_name`, `panel_filename`, `panel_content`, `panel_side`, `panel_order`, `panel_type`, `panel_access`, `panel_display`, `panel_status`, `panel_url_list`, `panel_restriction`) VALUES
(1, 'Navigation', 'css_navigation_panel', '', 1, 1, 'file', 0, 0, 1, '', 0),
(2, 'Online Users', 'online_users_panel', '', 1, 2, 'file', 0, 0, 1, '', 0),
(3, 'Forum Threads', 'forum_threads_panel', '', 1, 3, 'file', 0, 0, 0, '', 0),
(4, 'Latest Articles', 'latest_articles_panel', '', 1, 4, 'file', 0, 0, 0, '', 0),
(5, 'Welcome Message', 'welcome_message_panel', '', 2, 1, 'file', 0, 0, 1, '', 0),
(6, 'Forum Threads List', 'forum_threads_list_panel', '', 2, 2, 'file', 0, 0, 0, '', 0),
(7, 'User Info', 'user_info_panel', '', 4, 1, 'file', 0, 0, 1, '', 0),
(8, 'Members Poll', 'member_poll_panel', '', 4, 2, 'file', 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_photos`
--

CREATE TABLE IF NOT EXISTS `fusion_photos` (
  `photo_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `photo_title` varchar(100) NOT NULL DEFAULT '',
  `photo_description` text NOT NULL,
  `photo_filename` varchar(100) NOT NULL DEFAULT '',
  `photo_thumb1` varchar(100) NOT NULL DEFAULT '',
  `photo_thumb2` varchar(100) NOT NULL DEFAULT '',
  `photo_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `photo_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `photo_views` int(10) unsigned NOT NULL DEFAULT '0',
  `photo_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `photo_allow_comments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `photo_allow_ratings` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`photo_id`),
  KEY `photo_order` (`photo_order`),
  KEY `photo_datestamp` (`photo_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_photo_albums`
--

CREATE TABLE IF NOT EXISTS `fusion_photo_albums` (
  `album_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `album_title` varchar(100) NOT NULL DEFAULT '',
  `album_description` text NOT NULL,
  `album_thumb` varchar(100) NOT NULL DEFAULT '',
  `album_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `album_access` smallint(5) unsigned NOT NULL DEFAULT '0',
  `album_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `album_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`album_id`),
  KEY `album_order` (`album_order`),
  KEY `album_datestamp` (`album_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_polls`
--

CREATE TABLE IF NOT EXISTS `fusion_polls` (
  `poll_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `poll_title` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_0` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_1` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_2` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_3` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_4` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_5` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_6` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_7` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_8` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_9` varchar(200) NOT NULL DEFAULT '',
  `poll_started` int(10) unsigned NOT NULL DEFAULT '0',
  `poll_ended` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_poll_votes`
--

CREATE TABLE IF NOT EXISTS `fusion_poll_votes` (
  `vote_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_opt` smallint(2) unsigned NOT NULL DEFAULT '0',
  `poll_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_posts`
--

CREATE TABLE IF NOT EXISTS `fusion_posts` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_message` text NOT NULL,
  `post_showsig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_smileys` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_author` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `post_ip` varchar(45) NOT NULL DEFAULT '',
  `post_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `post_edituser` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `post_editreason` text NOT NULL,
  `post_hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `thread_id` (`thread_id`),
  KEY `post_datestamp` (`post_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_ratings`
--

CREATE TABLE IF NOT EXISTS `fusion_ratings` (
  `rating_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rating_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rating_type` char(1) NOT NULL DEFAULT '',
  `rating_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rating_vote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rating_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_ip` varchar(45) NOT NULL DEFAULT '',
  `rating_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_settings`
--

CREATE TABLE IF NOT EXISTS `fusion_settings` (
  `settings_name` varchar(200) NOT NULL DEFAULT '',
  `settings_value` text NOT NULL,
  PRIMARY KEY (`settings_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fusion_settings`
--

INSERT INTO `fusion_settings` (`settings_name`, `settings_value`) VALUES
('sitename', 'PHP-Fusion Powered Website'),
('siteurl', 'http://localhost/php-fusion/'),
('site_protocol', 'http'),
('site_host', 'localhost'),
('site_port', ''),
('site_path', '/php-fusion/'),
('sitebanner', 'images/php-fusion-logo.png'),
('sitebanner1', ''),
('sitebanner2', ''),
('siteemail', 'test@example.com'),
('siteusername', 'admin'),
('siteintro', '<div style=''text-align:center''>Welcome to your site</div>'),
('description', ''),
('keywords', ''),
('footer', '<div style=''text-align:center''>Copyright &copy; 2012</div>'),
('opening_page', 'news.php'),
('news_thumb_ratio', '0'),
('news_image_link', '0'),
('news_thumb_w', '100'),
('news_thumb_h', '100'),
('news_photo_max_w', '1800'),
('news_photo_max_h', '1600'),
('news_photo_max_b', '150000'),
('locale', 'English'),
('theme', 'Gillette'),
('default_search', 'all'),
('exclude_left', ''),
('exclude_upper', ''),
('exclude_lower', ''),
('exclude_right', ''),
('shortdate', '%d.%m.%y'),
('longdate', '%B %d %Y %H:%M:%S'),
('forumdate', '%d-%m-%Y %H:%M'),
('newsdate', '%B %d %Y'),
('subheaderdate', '%B %d %Y %H:%M:%S'),
('timeoffset', '0.0'),
('serveroffset', '0.0'),
('numofthreads', '15'),
('forum_ips', '0'),
('attachmax', '150000'),
('attachmax_count', '5'),
('attachtypes', '.gif,.jpg,.png,.zip,.rar,.tar,.7z'),
('thread_notify', '1'),
('forum_ranks', '1'),
('forum_edit_lock', '0'),
('forum_edit_timelimit', '0'),
('forum_editpost_to_lastpost', '1'),
('forum_last_posts_reply', '10'),
('enable_registration', '1'),
('email_verification', '1'),
('admin_activation', '0'),
('display_validation', '1'),
('enable_deactivation', '0'),
('deactivation_period', '365'),
('deactivation_response', '14'),
('enable_terms', '0'),
('license_agreement', ''),
('license_lastupdate', '0'),
('thumb_w', '100'),
('thumb_h', '100'),
('photo_w', '400'),
('photo_h', '300'),
('photo_max_w', '1800'),
('photo_max_h', '1600'),
('photo_max_b', '512000'),
('thumb_compression', 'gd2'),
('thumbs_per_row', '4'),
('thumbs_per_page', '12'),
('photo_watermark', '1'),
('photo_watermark_image', 'images/watermark.png'),
('photo_watermark_text', '0'),
('photo_watermark_text_color1', 'FF6600'),
('photo_watermark_text_color2', 'FFFF00'),
('photo_watermark_text_color3', 'FFFFFF'),
('photo_watermark_save', '0'),
('tinymce_enabled', '0'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('bad_words_enabled', '1'),
('bad_words', ''),
('bad_word_replace', '****'),
('guestposts', '0'),
('comments_enabled', '1'),
('ratings_enabled', '1'),
('hide_userprofiles', '0'),
('userthemes', '1'),
('newsperpage', '11'),
('flood_interval', '15'),
('counter', '1'),
('version', '7.02.04'),
('maintenance', '0'),
('maintenance_message', ''),
('download_max_b', '512000'),
('download_types', '.pdf,.gif,.jpg,.png,.zip,.rar,.tar,.bz2,.7z'),
('articles_per_page', '15'),
('downloads_per_page', '15'),
('links_per_page', '15'),
('comments_per_page', '10'),
('comments_sorting', 'ASC'),
('comments_avatar', '1'),
('avatar_width', '100'),
('avatar_height', '100'),
('avatar_filesize', '15000'),
('avatar_ratio', '0'),
('cronjob_day', '1327747688'),
('cronjob_hour', '1327747688'),
('flood_autoban', '1'),
('visitorcounter_enabled', '1'),
('rendertime_enabled', '0'),
('popular_threads_timeframe', ''),
('maintenance_level', '102'),
('news_photo_w', '400'),
('news_photo_h', '300'),
('news_image_frontpage', '0'),
('news_image_readmore', '0'),
('deactivation_action', '0'),
('captcha', 'securimage2'),
('password_algorithm', 'sha256'),
('default_timezone', 'Europe/London'),
('userNameChange', '1'),
('download_screen_max_b', '150000'),
('download_screen_max_w', '1024'),
('download_screen_max_h', '768'),
('recaptcha_public', ''),
('recaptcha_private', ''),
('recaptcha_theme', 'red'),
('download_screenshot', '1'),
('download_thumb_max_w', '100'),
('download_thumb_max_h', '100'),
('multiple_logins', '0');

-- --------------------------------------------------------

--
-- Table structure for table `fusion_settings_inf`
--

CREATE TABLE IF NOT EXISTS `fusion_settings_inf` (
  `settings_name` varchar(200) NOT NULL DEFAULT '',
  `settings_value` text NOT NULL,
  `settings_inf` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`settings_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_site_links`
--

CREATE TABLE IF NOT EXISTS `fusion_site_links` (
  `link_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(100) NOT NULL DEFAULT '',
  `link_url` varchar(200) NOT NULL DEFAULT '',
  `link_visibility` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `link_position` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `link_window` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link_order` smallint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `fusion_site_links`
--

INSERT INTO `fusion_site_links` (`link_id`, `link_name`, `link_url`, `link_visibility`, `link_position`, `link_window`, `link_order`) VALUES
(1, 'Home', 'index.php', 0, 2, 0, 1),
(2, 'Articles', 'articles.php', 0, 2, 0, 2),
(3, 'Downloads', 'downloads.php', 0, 2, 0, 3),
(4, 'FAQ', 'faq.php', 0, 1, 0, 4),
(5, 'Discussion Forum', 'forum/index.php', 0, 2, 0, 5),
(6, 'News Categories', 'news_cats.php', 0, 2, 0, 7),
(7, 'Web Links', 'weblinks.php', 0, 2, 0, 6),
(8, 'Contact Me', 'contact.php', 0, 1, 0, 8),
(9, 'Photo Gallery', 'photogallery.php', 0, 1, 0, 9),
(10, 'Search', 'search.php', 0, 1, 0, 10),
(11, '---', '---', 101, 1, 0, 11),
(12, 'Submit Link', 'submit.php?stype=l', 101, 1, 0, 12),
(13, 'Submit News', 'submit.php?stype=n', 101, 1, 0, 13),
(14, 'Submit Article', 'submit.php?stype=a', 101, 1, 0, 14),
(15, 'Submit Photo', 'submit.php?stype=p', 101, 1, 0, 15),
(16, 'Submit Download', 'submit.php?stype=d', 101, 1, 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_smileys`
--

CREATE TABLE IF NOT EXISTS `fusion_smileys` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `smiley_code` varchar(50) NOT NULL,
  `smiley_image` varchar(100) NOT NULL,
  `smiley_text` varchar(100) NOT NULL,
  PRIMARY KEY (`smiley_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `fusion_smileys`
--

INSERT INTO `fusion_smileys` (`smiley_id`, `smiley_code`, `smiley_image`, `smiley_text`) VALUES
(1, ':)', 'smile.gif', 'Smile'),
(2, ';)', 'wink.gif', 'Wink'),
(3, ':(', 'sad.gif', 'Sad'),
(4, ':|', 'frown.gif', 'Frown'),
(5, ':o', 'shock.gif', 'Shock'),
(6, ':P', 'pfft.gif', 'Pfft'),
(7, 'B)', 'cool.gif', 'Cool'),
(8, ':D', 'grin.gif', 'Grin'),
(9, ':@', 'angry.gif', 'Angry');

-- --------------------------------------------------------

--
-- Table structure for table `fusion_submissions`
--

CREATE TABLE IF NOT EXISTS `fusion_submissions` (
  `submit_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `submit_type` char(1) NOT NULL,
  `submit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `submit_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `submit_criteria` text NOT NULL,
  PRIMARY KEY (`submit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_suspends`
--

CREATE TABLE IF NOT EXISTS `fusion_suspends` (
  `suspend_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `suspended_user` mediumint(8) unsigned NOT NULL,
  `suspending_admin` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `suspend_ip` varchar(45) NOT NULL DEFAULT '',
  `suspend_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `suspend_date` int(10) NOT NULL DEFAULT '0',
  `suspend_reason` text NOT NULL,
  `suspend_type` tinyint(1) NOT NULL DEFAULT '0',
  `reinstating_admin` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `reinstate_reason` text NOT NULL,
  `reinstate_date` int(10) NOT NULL DEFAULT '0',
  `reinstate_ip` varchar(45) NOT NULL DEFAULT '',
  `reinstate_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`suspend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_threads`
--

CREATE TABLE IF NOT EXISTS `fusion_threads` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `thread_subject` varchar(100) NOT NULL DEFAULT '',
  `thread_author` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thread_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thread_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `thread_lastpostid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thread_lastuser` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thread_postcount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `thread_poll` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `thread_sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `thread_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `thread_hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`thread_id`),
  KEY `thread_postcount` (`thread_postcount`),
  KEY `thread_lastpost` (`thread_lastpost`),
  KEY `thread_views` (`thread_views`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_thread_notify`
--

CREATE TABLE IF NOT EXISTS `fusion_thread_notify` (
  `thread_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `notify_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `notify_datestamp` (`notify_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_users`
--

CREATE TABLE IF NOT EXISTS `fusion_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `user_algo` varchar(10) NOT NULL DEFAULT 'sha256',
  `user_salt` varchar(40) NOT NULL DEFAULT '',
  `user_password` varchar(64) NOT NULL DEFAULT '',
  `user_admin_algo` varchar(10) NOT NULL DEFAULT 'sha256',
  `user_admin_salt` varchar(40) NOT NULL DEFAULT '',
  `user_admin_password` varchar(64) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_hide_email` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_offset` char(5) NOT NULL DEFAULT '0',
  `user_avatar` varchar(100) NOT NULL DEFAULT '',
  `user_posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_threads` text NOT NULL,
  `user_joined` int(10) unsigned NOT NULL DEFAULT '0',
  `user_lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(45) NOT NULL DEFAULT '0.0.0.0',
  `user_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `user_rights` text NOT NULL,
  `user_groups` text NOT NULL,
  `user_level` tinyint(3) unsigned NOT NULL DEFAULT '101',
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_actiontime` int(10) unsigned NOT NULL DEFAULT '0',
  `user_theme` varchar(100) NOT NULL DEFAULT 'Default',
  `user_location` varchar(50) NOT NULL DEFAULT '',
  `user_birthdate` date NOT NULL DEFAULT '0000-00-00',
  `user_skype` varchar(100) NOT NULL DEFAULT '',
  `user_aim` varchar(16) NOT NULL DEFAULT '',
  `user_icq` varchar(15) NOT NULL DEFAULT '',
  `user_msn` varchar(100) NOT NULL DEFAULT '',
  `user_yahoo` varchar(100) NOT NULL DEFAULT '',
  `user_web` varchar(200) NOT NULL DEFAULT '',
  `user_sig` text NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `user_joined` (`user_joined`),
  KEY `user_lastvisit` (`user_lastvisit`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fusion_users`
--

INSERT INTO `fusion_users` (`user_id`, `user_name`, `user_algo`, `user_salt`, `user_password`, `user_admin_algo`, `user_admin_salt`, `user_admin_password`, `user_email`, `user_hide_email`, `user_offset`, `user_avatar`, `user_posts`, `user_threads`, `user_joined`, `user_lastvisit`, `user_ip`, `user_ip_type`, `user_rights`, `user_groups`, `user_level`, `user_status`, `user_actiontime`, `user_theme`, `user_location`, `user_birthdate`, `user_skype`, `user_aim`, `user_icq`, `user_msn`, `user_yahoo`, `user_web`, `user_sig`) VALUES
(1, 'admin', 'sha256', '97e094ac61d1b7886510c18e9d0f0fa95542a1cb', '2350215d9f425fef7f4343c96996473cca1469fa936f67f081e9d64cb4ea1ce9', 'sha256', '660dff3c766acee4ab94958a1a58948b08d02009', '2ee31e3ca5178216a13ff1d1861713bca5f738da434bc98b0568c72d90f7ce02', 'test@example.com', 1, '0', '', 0, '', 1327747688, 0, '0.0.0.0', 4, 'A.AC.AD.APWR.B.BB.C.CP.DB.DC.D.ERRO.FQ.F.FR.IM.I.IP.M.N.NC.P.PH.PI.PO.ROB.SL.S1.S2.S3.S4.S5.S6.S7.S8.S9.S10.S11.S12.SB.SM.SU.UF.UFC.UG.UL.U.W.WC', '', 103, 0, 0, 'Default', '', '0000-00-00', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fusion_user_fields`
--

CREATE TABLE IF NOT EXISTS `fusion_user_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(50) NOT NULL,
  `field_cat` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_log` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_registration` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `field_order` (`field_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `fusion_user_fields`
--

INSERT INTO `fusion_user_fields` (`field_id`, `field_name`, `field_cat`, `field_required`, `field_log`, `field_registration`, `field_order`) VALUES
(1, 'user_location', 2, 0, 0, 0, 1),
(2, 'user_birthdate', 2, 0, 0, 0, 2),
(3, 'user_skype', 1, 0, 0, 0, 1),
(4, 'user_aim', 1, 0, 0, 0, 2),
(5, 'user_icq', 1, 0, 0, 0, 3),
(6, 'user_msn', 1, 0, 0, 0, 4),
(7, 'user_yahoo', 1, 0, 0, 0, 5),
(8, 'user_web', 1, 0, 0, 0, 6),
(9, 'user_offset', 3, 0, 0, 0, 1),
(10, 'user_theme', 3, 0, 0, 0, 2),
(11, 'user_sig', 3, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_user_field_cats`
--

CREATE TABLE IF NOT EXISTS `fusion_user_field_cats` (
  `field_cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_cat_name` varchar(200) NOT NULL,
  `field_cat_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`field_cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fusion_user_field_cats`
--

INSERT INTO `fusion_user_field_cats` (`field_cat_id`, `field_cat_name`, `field_cat_order`) VALUES
(1, 'Contact Information', 1),
(2, 'Miscellaneous Information', 2),
(3, 'Options', 3),
(4, 'Statistics', 4);

-- --------------------------------------------------------

--
-- Table structure for table `fusion_user_groups`
--

CREATE TABLE IF NOT EXISTS `fusion_user_groups` (
  `group_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `group_description` varchar(200) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_user_log`
--

CREATE TABLE IF NOT EXISTS `fusion_user_log` (
  `userlog_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userlog_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userlog_field` varchar(50) NOT NULL DEFAULT '',
  `userlog_value_new` text NOT NULL,
  `userlog_value_old` text NOT NULL,
  `userlog_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userlog_id`),
  KEY `userlog_user_id` (`userlog_user_id`),
  KEY `userlog_field` (`userlog_field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_weblinks`
--

CREATE TABLE IF NOT EXISTS `fusion_weblinks` (
  `weblink_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `weblink_name` varchar(100) NOT NULL DEFAULT '',
  `weblink_description` text NOT NULL,
  `weblink_url` varchar(200) NOT NULL DEFAULT '',
  `weblink_cat` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `weblink_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `weblink_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`weblink_id`),
  KEY `weblink_datestamp` (`weblink_datestamp`),
  KEY `weblink_count` (`weblink_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fusion_weblink_cats`
--

CREATE TABLE IF NOT EXISTS `fusion_weblink_cats` (
  `weblink_cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `weblink_cat_name` varchar(100) NOT NULL DEFAULT '',
  `weblink_cat_description` text NOT NULL,
  `weblink_cat_sorting` varchar(50) NOT NULL DEFAULT 'weblink_name ASC',
  `weblink_cat_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`weblink_cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
