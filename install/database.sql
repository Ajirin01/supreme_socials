-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 11:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_cms_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `sp_account_manager`
--

DROP TABLE IF EXISTS `sp_account_manager`;
CREATE TABLE `sp_account_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `social_network` mediumtext DEFAULT NULL,
  `category` mediumtext DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `login_type` int(11) DEFAULT NULL,
  `can_post` int(1) DEFAULT NULL,
  `pid` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `username` mediumtext DEFAULT NULL,
  `token` mediumtext DEFAULT NULL,
  `avatar` mediumtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `proxy` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_caption`
--

DROP TABLE IF EXISTS `sp_caption`;
CREATE TABLE `sp_caption` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_file_manager`
--

DROP TABLE IF EXISTS `sp_file_manager`;
CREATE TABLE `sp_file_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `type` mediumtext DEFAULT NULL,
  `extension` mediumtext DEFAULT NULL,
  `size` float DEFAULT NULL,
  `is_image` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_group_manager`
--

DROP TABLE IF EXISTS `sp_group_manager`;
CREATE TABLE `sp_group_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_instagram_sessions`
--

DROP TABLE IF EXISTS `sp_instagram_sessions`;
CREATE TABLE `sp_instagram_sessions` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `settings` mediumblob DEFAULT NULL,
  `cookies` mediumblob DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_language`
--

DROP TABLE IF EXISTS `sp_language`;
CREATE TABLE `sp_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `code` mediumtext DEFAULT NULL,
  `slug` mediumtext DEFAULT NULL,
  `text` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_language_category`
--

DROP TABLE IF EXISTS `sp_language_category`;
CREATE TABLE `sp_language_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `code` mediumtext DEFAULT NULL,
  `icon` mediumtext DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_options`
--

DROP TABLE IF EXISTS `sp_options`;
CREATE TABLE `sp_options` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_package_manager`
--

DROP TABLE IF EXISTS `sp_package_manager`;
CREATE TABLE `sp_package_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `price_monthly` float DEFAULT NULL,
  `price_annually` float DEFAULT NULL,
  `number_accounts` int(11) DEFAULT NULL,
  `trial_day` int(11) DEFAULT NULL,
  `popular` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_package_manager`
--

INSERT INTO `sp_package_manager` (`id`, `ids`, `name`, `description`, `type`, `price_monthly`, `price_annually`, `number_accounts`, `trial_day`, `popular`, `position`, `permissions`, `data`, `status`, `changed`, `created`) VALUES
(1, 'de39a2bd85b84b38207378229620a5f1', 'Free', 'Pick great plan for you', 1, 0, 0, 5, 7, 0, 0, '{\"post_enable\":\"1\",\"facebook_post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"tumblr_post_enable\":\"1\",\"reddit_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"google_my_business_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"youtube_post_enable\":\"1\",\"ok_post_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"schedules_enable\":\"1\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\",\"am_facebook_pages\":\"1\",\"am_facebook_groups\":\"1\",\"am_instagram_profiles\":\"1\",\"am_twitter_profiles\":\"1\",\"am_linkedin_profiles\":\"1\",\"am_linkedin_pages\":\"1\",\"am_pinterest_boards\":\"1\",\"am_youtube_profiles\":\"1\",\"am_google_my_business_profiles\":\"1\",\"am_reddit_profiles\":\"1\",\"am_tumblr_profiles\":\"1\",\"am_ok_profiles\":\"1\",\"am_vk_profiles\":\"1\",\"am_vk_pages\":\"1\",\"am_vk_groups\":\"1\",\"am_telegram_channels\":\"1\",\"am_telegram_groups\":\"1\"}', NULL, 1, '2020-04-10 20:38:33', '2019-11-20 22:11:25'),
(2, '8c0e2081734e240051ba3f9e1dee9d0d', 'Basic', 'Pick great plan for you', 2, 30, 25, 3, 0, 0, 2, '{\"post_enable\":\"1\",\"facebook_post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"tumblr_post_enable\":\"1\",\"reddit_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"google_my_business_post_enable\":\"1\",\"youtube_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"ok_post_enable\":\"1\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"100\",\"schedules_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\",\"am_facebook_pages\":\"1\",\"am_facebook_groups\":\"1\",\"am_instagram_profiles\":\"1\",\"am_twitter_profiles\":\"1\",\"am_linkedin_profiles\":\"1\",\"am_linkedin_pages\":\"1\",\"am_pinterest_boards\":\"1\",\"am_youtube_profiles\":\"1\",\"am_google_my_business_profiles\":\"1\",\"am_reddit_profiles\":\"1\",\"am_tumblr_profiles\":\"1\",\"am_ok_profiles\":\"1\",\"am_vk_profiles\":\"1\",\"am_vk_pages\":\"1\",\"am_vk_groups\":\"1\",\"am_telegram_channels\":\"1\",\"am_telegram_groups\":\"1\"}', NULL, 1, '2020-04-09 15:27:46', '2020-02-26 10:52:26'),
(3, 'c10f887a5185198a77094ce03f7114b2', 'Standard', 'Pick great plan for you', 2, 50, 45, 5, 0, 1, 3, '{\"post_enable\":\"1\",\"facebook_post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"tumblr_post_enable\":\"1\",\"reddit_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"google_my_business_post_enable\":\"1\",\"youtube_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"ok_post_enable\":\"1\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"schedules_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\",\"am_facebook_pages\":\"1\",\"am_facebook_groups\":\"1\",\"am_instagram_profiles\":\"1\",\"am_twitter_profiles\":\"1\",\"am_linkedin_profiles\":\"1\",\"am_linkedin_pages\":\"1\",\"am_pinterest_boards\":\"1\",\"am_youtube_profiles\":\"1\",\"am_google_my_business_profiles\":\"1\",\"am_reddit_profiles\":\"1\",\"am_tumblr_profiles\":\"1\",\"am_ok_profiles\":\"1\",\"am_vk_profiles\":\"1\",\"am_vk_pages\":\"1\",\"am_vk_groups\":\"1\",\"am_telegram_channels\":\"1\",\"am_telegram_groups\":\"1\"}', NULL, 1, '2020-04-09 15:27:51', '2020-02-26 10:53:34'),
(4, '6ffde698600b5eca3873c6f60a62782e', 'Permium', 'Pick great plan for you', 2, 70, 65, 7, 0, 0, 4, '{\"post_enable\":\"1\",\"facebook_post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"tumblr_post_enable\":\"1\",\"reddit_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"google_my_business_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"youtube_post_enable\":\"1\",\"ok_post_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"schedules_enable\":\"1\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\",\"am_facebook_pages\":\"1\",\"am_facebook_groups\":\"1\",\"am_instagram_profiles\":\"1\",\"am_twitter_profiles\":\"1\",\"am_linkedin_profiles\":\"1\",\"am_linkedin_pages\":\"1\",\"am_pinterest_boards\":\"1\",\"am_youtube_profiles\":\"1\",\"am_google_my_business_profiles\":\"1\",\"am_reddit_profiles\":\"1\",\"am_tumblr_profiles\":\"1\",\"am_ok_profiles\":\"1\",\"am_vk_profiles\":\"1\",\"am_vk_pages\":\"1\",\"am_vk_groups\":\"1\",\"am_telegram_channels\":\"1\",\"am_telegram_groups\":\"1\"}', NULL, 1, '2020-04-10 13:28:27', '2020-04-09 15:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `sp_payment_history`
--

DROP TABLE IF EXISTS `sp_payment_history`;
CREATE TABLE `sp_payment_history` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `plan` int(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_payment_subscriptions`
--

DROP TABLE IF EXISTS `sp_payment_subscriptions`;
CREATE TABLE `sp_payment_subscriptions` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `subscription_id` text DEFAULT NULL,
  `customer_id` text DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_posts`
--

DROP TABLE IF EXISTS `sp_posts`;
CREATE TABLE `sp_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `social_network` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `time_post` int(11) DEFAULT NULL,
  `time_delete` int(11) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `repost_frequency` int(11) DEFAULT NULL,
  `repost_until` int(11) DEFAULT NULL,
  `result` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_proxy_manager`
--

DROP TABLE IF EXISTS `sp_proxy_manager`;
CREATE TABLE `sp_proxy_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `limit` text DEFAULT NULL,
  `packages` text DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_purchase_manager`
--

DROP TABLE IF EXISTS `sp_purchase_manager`;
CREATE TABLE `sp_purchase_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `item_id` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `version` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_sessions`
--

DROP TABLE IF EXISTS `sp_sessions`;
CREATE TABLE `sp_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_team`
--

DROP TABLE IF EXISTS `sp_team`;
CREATE TABLE `sp_team` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `permissions` longtext NOT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_team`
--

INSERT INTO `sp_team` (`id`, `ids`, `owner`, `pid`, `permissions`, `data`) VALUES
(1, 'a27e1f9ca2347bb766f332b8863ebe9f', 1, 1, '{\"post_enable\":\"1\",\"facebook_post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"tumblr_post_enable\":\"1\",\"reddit_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"google_my_business_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"youtube_post_enable\":\"1\",\"ok_post_enable\":\"1\",\"coupon_manager_enable\":\"1\",\"settings_enable\":\"1\",\"user_manager_enable\":\"1\",\"social_network_configuration_enable\":\"1\",\"caption_enable\":\"1\",\"watermark_enable\":\"1\",\"language_enable\":\"1\",\"group_manager_enable\":\"1\",\"schedules_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"proxy_manager_enable\":\"1\",\"account_manager_enable\":\"1\",\"am_facebook_profiles\":\"1\",\"am_facebook_pages\":\"1\",\"am_facebook_groups\":\"1\",\"am_instagram_profiles\":\"1\",\"am_twitter_profiles\":\"1\",\"am_linkedin_profiles\":\"1\",\"am_linkedin_pages\":\"1\",\"am_pinterest_boards\":\"1\",\"am_youtube_profiles\":\"1\",\"am_google_my_business_profiles\":\"1\",\"am_reddit_profiles\":\"1\",\"am_tumblr_profiles\":\"1\",\"am_ok_profiles\":\"1\",\"am_vk_profiles\":\"1\",\"am_vk_pages\":\"1\",\"am_vk_groups\":\"1\",\"am_telegram_channels\":\"1\",\"am_telegram_groups\":\"1\"}', '');

-- --------------------------------------------------------

--
-- Table structure for table `sp_team_member`
--

DROP TABLE IF EXISTS `sp_team_member`;
CREATE TABLE `sp_team_member` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_users`
--

DROP TABLE IF EXISTS `sp_users`;
CREATE TABLE `sp_users` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `fullname` mediumtext DEFAULT NULL,
  `email` mediumtext DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `timezone` mediumtext DEFAULT NULL,
  `login_type` mediumtext DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_users`
--

INSERT INTO `sp_users` (`id`, `ids`, `pid`, `role`, `fullname`, `email`, `password`, `package`, `expiration_date`, `timezone`, `login_type`, `data`, `status`, `changed`, `created`) VALUES
(1, 'ADMIN_IDS', NULL, 1, 'ADMIN_FULLNAME', 'ADMIN_EMAIL', 'ADMIN_PASSWORD', 1, '2030-09-10', 'ADMIN_TIMEZONE', 'direct', NULL, 2, '2020-04-10 15:12:43', '2020-04-10 15:12:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sp_account_manager`
--
ALTER TABLE `sp_account_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_caption`
--
ALTER TABLE `sp_caption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_file_manager`
--
ALTER TABLE `sp_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_group_manager`
--
ALTER TABLE `sp_group_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_instagram_sessions`
--
ALTER TABLE `sp_instagram_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `sp_language`
--
ALTER TABLE `sp_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_language_category`
--
ALTER TABLE `sp_language_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_options`
--
ALTER TABLE `sp_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_package_manager`
--
ALTER TABLE `sp_package_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_payment_history`
--
ALTER TABLE `sp_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_payment_subscriptions`
--
ALTER TABLE `sp_payment_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_posts`
--
ALTER TABLE `sp_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_proxy_manager`
--
ALTER TABLE `sp_proxy_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_purchase_manager`
--
ALTER TABLE `sp_purchase_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_sessions`
--
ALTER TABLE `sp_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sp_team`
--
ALTER TABLE `sp_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_team_member`
--
ALTER TABLE `sp_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_users`
--
ALTER TABLE `sp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sp_account_manager`
--
ALTER TABLE `sp_account_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_caption`
--
ALTER TABLE `sp_caption`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_file_manager`
--
ALTER TABLE `sp_file_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_group_manager`
--
ALTER TABLE `sp_group_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_instagram_sessions`
--
ALTER TABLE `sp_instagram_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_language`
--
ALTER TABLE `sp_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_language_category`
--
ALTER TABLE `sp_language_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_options`
--
ALTER TABLE `sp_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_package_manager`
--
ALTER TABLE `sp_package_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sp_payment_history`
--
ALTER TABLE `sp_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_payment_subscriptions`
--
ALTER TABLE `sp_payment_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_posts`
--
ALTER TABLE `sp_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_proxy_manager`
--
ALTER TABLE `sp_proxy_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_purchase_manager`
--
ALTER TABLE `sp_purchase_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_team`
--
ALTER TABLE `sp_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sp_team_member`
--
ALTER TABLE `sp_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_users`
--
ALTER TABLE `sp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
