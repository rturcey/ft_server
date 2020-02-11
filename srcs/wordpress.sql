-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 05 fév. 2020 à 15:37
-- Version du serveur :  10.3.18-MariaDB-0+deb10u1
-- Version de PHP : 7.3.11-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-05 16:16:03', '2020-02-05 15:16:03', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Dockers Pics', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'richard.turcey@hotmail.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:285:\"<strong>Adresse</strong>\r\nFédération Havraise des Fans de Clichés Photographiques de Dockers à Travers le Temps et l\'Histoire\r\n\r\nPort du Havre\r\n\r\n76 600 Le Havre\r\n\r\n<strong>Heures d’ouverture</strong>\r\nDu lundi au vendredi : 9h00–17h00\r\nLes samedi et dimanche : 11h00–15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:234:\"Bonjour bienvenue sur ce site je suis le vice-secrétaire de la Fédération Havraise des Fans de Clichés Photographiques de Dockers à Travers le Temps et l’Histoire et je publie des photographies qui me passionnent bonne journée\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1596467762', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Rechercher\";}i:4;a:1:{s:5:\"title\";s:10:\"Rechercher\";}}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1580919366;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580958966;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581002166;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581002177;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581002260;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, '_site_transient_timeout_theme_roots', '1580917567', 'no'),
(120, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(122, '_site_transient_timeout_browser_a9cfc38c8c27d8aade7b19701097beda', '1581520572', 'no'),
(123, '_site_transient_browser_a9cfc38c8c27d8aade7b19701097beda', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"79.0.3945.88\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_bf85a432659c7385f4090d3b67e77210', '1581520572', 'no'),
(125, '_site_transient_php_check_bf85a432659c7385f4090d3b67e77210', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(126, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1580915773;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(128, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580915773;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(129, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1580958973', 'no'),
(130, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li>Une erreur est survenue, le flux est probablement indisponible. Veuillez réessayer plus tard.</li></ul></div><div class=\"rss-widget\"><ul><li>Une erreur est survenue, le flux est probablement indisponible. Veuillez réessayer plus tard.</li></ul></div>', 'no'),
(131, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1580958973', 'no'),
(132, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:3:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Genève\";s:3:\"url\";s:33:\"https://2020.geneve.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-03-20 00:00:00\";s:8:\"end_date\";s:19:\"2020-03-21 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Genève, Suisse\";s:7:\"country\";s:2:\"CH\";s:8:\"latitude\";d:46.2204608;s:9:\"longitude\";d:6.0986829;}}i:1;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:25:\"WordCamp Antwerp, Belgium\";s:3:\"url\";s:34:\"https://2020.antwerp.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-03-27 00:00:00\";s:8:\"end_date\";s:19:\"2020-03-29 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Antwerp, Belgium\";s:7:\"country\";s:2:\"BE\";s:8:\"latitude\";d:51.2234817;s:9:\"longitude\";d:4.4101775;}}i:2;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:19:\"WordCamp Paris 2020\";s:3:\"url\";s:31:\"https://2020.paris.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-04-17 00:00:00\";s:8:\"end_date\";s:19:\"2020-04-17 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:5:\"Paris\";s:7:\"country\";s:2:\"FR\";s:8:\"latitude\";d:48.883588;s:9:\"longitude\";d:2.3095841;}}}}', 'no'),
(133, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580915774;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(135, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580915781;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(136, 'current_theme', 'Twenty Seventeen', 'yes'),
(137, 'theme_mods_twentyseventeen', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:7:\"panel_1\";i:38;s:7:\"panel_2\";i:40;s:7:\"panel_3\";i:42;s:7:\"panel_4\";i:44;s:21:\"external_header_video\";s:43:\"https://www.youtube.com/watch?v=ACwfTG72HEw\";s:11:\"colorscheme\";s:4:\"dark\";}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(147, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(153, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(16, 8, '_customize_changeset_uuid', 'cc33e513-4ee7-479f-900f-ed4f99bc3ed1'),
(29, 19, '_menu_item_type', 'custom'),
(30, 19, '_menu_item_menu_item_parent', '0'),
(31, 19, '_menu_item_object_id', '19'),
(32, 19, '_menu_item_object', 'custom'),
(33, 19, '_menu_item_target', ''),
(34, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 19, '_menu_item_xfn', ''),
(36, 19, '_menu_item_url', 'http://localhost/wordpress/'),
(61, 23, '_menu_item_type', 'custom'),
(62, 23, '_menu_item_menu_item_parent', '0'),
(63, 23, '_menu_item_object_id', '23'),
(64, 23, '_menu_item_object', 'custom'),
(65, 23, '_menu_item_target', ''),
(66, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 23, '_menu_item_xfn', ''),
(68, 23, '_menu_item_url', 'https://www.yelp.com'),
(69, 24, '_menu_item_type', 'custom'),
(70, 24, '_menu_item_menu_item_parent', '0'),
(71, 24, '_menu_item_object_id', '24'),
(72, 24, '_menu_item_object', 'custom'),
(73, 24, '_menu_item_target', ''),
(74, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 24, '_menu_item_xfn', ''),
(76, 24, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(77, 25, '_menu_item_type', 'custom'),
(78, 25, '_menu_item_menu_item_parent', '0'),
(79, 25, '_menu_item_object_id', '25'),
(80, 25, '_menu_item_object', 'custom'),
(81, 25, '_menu_item_target', ''),
(82, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 25, '_menu_item_xfn', ''),
(84, 25, '_menu_item_url', 'https://twitter.com/wordpress'),
(85, 26, '_menu_item_type', 'custom'),
(86, 26, '_menu_item_menu_item_parent', '0'),
(87, 26, '_menu_item_object_id', '26'),
(88, 26, '_menu_item_object', 'custom'),
(89, 26, '_menu_item_target', ''),
(90, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 26, '_menu_item_xfn', ''),
(92, 26, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(93, 27, '_menu_item_type', 'custom'),
(94, 27, '_menu_item_menu_item_parent', '0'),
(95, 27, '_menu_item_object_id', '27'),
(96, 27, '_menu_item_object', 'custom'),
(97, 27, '_menu_item_target', ''),
(98, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 27, '_menu_item_xfn', ''),
(100, 27, '_menu_item_url', 'mailto:wordpress@example.com'),
(101, 13, '_wp_trash_meta_status', 'publish'),
(102, 13, '_wp_trash_meta_time', '1580915837'),
(121, 30, '_edit_lock', '1580915718:1'),
(122, 8, '_edit_lock', '1580916708:1'),
(123, 31, '_wp_attached_file', '2020/02/dockers.jpg'),
(124, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:19:\"2020/02/dockers.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 32, '_wp_attached_file', '2020/02/dockers1.jpg'),
(126, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1035;s:4:\"file\";s:20:\"2020/02/dockers1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 33, '_wp_attached_file', '2020/02/dockers2.jpg'),
(128, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:955;s:4:\"file\";s:20:\"2020/02/dockers2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(c) Vladgalenko | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 34, '_wp_attached_file', '2020/02/dockers3.jpg'),
(130, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1001;s:4:\"file\";s:20:\"2020/02/dockers3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 35, '_wp_attached_file', '2020/02/dockers4.jpg'),
(132, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:20:\"2020/02/dockers4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 36, '_wp_attached_file', '2020/02/dockers5.png'),
(134, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:902;s:4:\"file\";s:20:\"2020/02/dockers5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 8, '_thumbnail_id', '31'),
(136, 38, '_edit_lock', '1580916777:1'),
(137, 38, '_thumbnail_id', '35'),
(138, 40, '_edit_lock', '1580916807:1'),
(139, 40, '_thumbnail_id', '36'),
(140, 42, '_edit_lock', '1580916833:1'),
(141, 42, '_thumbnail_id', '33'),
(142, 44, '_edit_lock', '1580916871:1'),
(143, 44, '_thumbnail_id', '34'),
(144, 46, '_edit_lock', '1580916066:1'),
(145, 47, '_wp_trash_meta_status', 'publish'),
(146, 47, '_wp_trash_meta_time', '1580916245'),
(147, 48, '_wp_trash_meta_status', 'publish'),
(148, 48, '_wp_trash_meta_time', '1580916311'),
(149, 49, '_edit_lock', '1580916343:1'),
(150, 49, '_wp_trash_meta_status', 'publish'),
(151, 49, '_wp_trash_meta_time', '1580916359'),
(152, 50, '_edit_lock', '1580916222:1'),
(153, 51, '_wp_trash_meta_status', 'publish'),
(154, 51, '_wp_trash_meta_time', '1580916375'),
(155, 52, '_edit_lock', '1580916272:1'),
(156, 53, '_edit_lock', '1580916432:1'),
(157, 54, '_edit_lock', '1580916632:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-05 16:16:03', '2020-02-05 15:16:03', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-02-05 16:16:03', '2020-02-05 15:16:03', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(4, 1, '2020-02-05 16:16:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-05 16:16:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(8, 1, '2020-02-05 16:17:16', '2020-02-05 15:17:16', '<!-- wp:paragraph -->\n<p>Bonjour et bienvenue sur ce petit site qui a pour but de vous présenter des photographies de dockers à travers l\'histoire et le temps car c\'est l\'une de mes nombreuses passions voilà en espérant que vous passerez un bon moment voici déjà une première image !!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Bonjour', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2020-02-05 16:34:12', '2020-02-05 15:34:12', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(13, 1, '2020-02-05 16:17:16', '2020-02-05 15:17:16', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"dc81ba6bce4eb8ce363ca0d8b71b1aad\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3b0846e94be57c683dcb2dbf0d751726\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e2d5a2c00ef41528f1fdbdc953ef5806\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"dc81ba6bce4eb8ce363ca0d8b71b1aad\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e2d5a2c00ef41528f1fdbdc953ef5806\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3b0846e94be57c683dcb2dbf0d751726\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:16:24\"\n    },\n    \"twentyseventeen::external_header_video\": {\n        \"value\": \"https://www.youtube.com/watch?v=ACwfTG72HEw\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:17:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cc33e513-4ee7-479f-900f-ed4f99bc3ed1', '', '', '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 0, 'http://localhost/wordpress/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2020-02-05 16:17:16', '2020-02-05 15:17:16', '<!-- wp:paragraph -->\n<p>Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 8, 'http://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(19, 1, '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 0, 'http://localhost/wordpress/?p=19', 0, 'nav_menu_item', '', 0),
(23, 1, '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 0, 'http://localhost/wordpress/?p=23', 0, 'nav_menu_item', '', 0),
(24, 1, '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 0, 'http://localhost/wordpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 0, 'http://localhost/wordpress/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-02-05 16:17:16', '2020-02-05 15:17:16', '', 0, 'http://localhost/wordpress/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2020-02-05 16:17:17', '2020-02-05 15:17:17', '', 'E-mail', '', 'publish', 'closed', 'closed', '', 'e-mail', '', '', '2020-02-05 16:17:17', '2020-02-05 15:17:17', '', 0, 'http://localhost/wordpress/?p=27', 4, 'nav_menu_item', '', 0),
(30, 1, '2020-02-05 16:17:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-05 16:17:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 'dockers', '', 'inherit', 'open', 'closed', '', 'dockers', '', '', '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/02/dockers.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 'dockers1', '', 'inherit', 'open', 'closed', '', 'dockers1', '', '', '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/02/dockers1.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 'dockers2', '', 'inherit', 'open', 'closed', '', 'dockers2', '', '', '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/02/dockers2.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 'dockers3', '', 'inherit', 'open', 'closed', '', 'dockers3', '', '', '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/02/dockers3.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 'dockers4', '', 'inherit', 'open', 'closed', '', 'dockers4', '', '', '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/02/dockers4.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 'dockers5', '', 'inherit', 'open', 'closed', '', 'dockers5', '', '', '2020-02-05 16:19:18', '2020-02-05 15:19:18', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/02/dockers5.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2020-02-05 16:19:48', '2020-02-05 15:19:48', '<!-- wp:paragraph -->\n<p>Bonjour et bienvenue sur ce petit site qui a pour but de vous présenter des photographies de dockers à travers l\'histoire et le temps car c\'est l\'une de mes nombreuses passions voilà en espérant que vous passerez un bon moment voici déjà une première image !!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":31,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/dockers.jpg\" alt=\"\" class=\"wp-image-31\"/></figure>\n<!-- /wp:image -->', 'Bonjour', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-05 16:19:48', '2020-02-05 15:19:48', '', 8, 'http://localhost/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2020-02-05 16:21:00', '2020-02-05 15:21:00', '<!-- wp:paragraph -->\n<p>Aujourd\'hui petite photo des dockers alors oui on les voit encore en grève c\'est le foutoir mais si on avait pas ces gens-là on aurait pas les congés payés et c\'est un métier difficile alors voilà le bateau est joli en plus et avec le feu c\'est le feu de la révolte du port bisous</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers4.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Photo 2', '', 'publish', 'closed', 'closed', '', 'photo-2', '', '', '2020-02-05 16:35:19', '2020-02-05 15:35:19', '', 0, 'http://localhost/wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2020-02-05 16:21:00', '2020-02-05 15:21:00', '<!-- wp:paragraph -->\n<p>Aujourd\'hui petite photo des dockers alors oui on les voit encore en grève c\'est le foutoir mais si on avait pas ces gens-là on aurait pas les congés payés et c\'est un métier difficile alors voilà le bateau est joli en plus et avec le feu c\'est le feu de la révolte du port bisous</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/dockers4.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->', 'Photo 2', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-02-05 16:21:00', '2020-02-05 15:21:00', '', 38, 'http://localhost/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2020-02-05 16:21:39', '2020-02-05 15:21:39', '<!-- wp:paragraph -->\n<p>Voilà une photo un peu plus ancienne pour montrer les conditions aussi ils ont pas toujours eu plein de machines pour porter les sacs à leur place et même aujourd\'hui s\'ils sont tous barracks c\'est pas pour rien voilà en espérant que ça vous plaira encore salut</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers5.png\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Photo 3', '', 'publish', 'closed', 'closed', '', 'photo-3', '', '', '2020-02-05 16:35:50', '2020-02-05 15:35:50', '', 0, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2020-02-05 16:21:39', '2020-02-05 15:21:39', '<!-- wp:paragraph -->\n<p>Voilà une photo un peu plus ancienne pour montrer les conditions aussi ils ont pas toujours eu plein de machines pour porter les sacs à leur place et même aujourd\'hui s\'ils sont tous barracks c\'est pas pour rien voilà en espérant que ça vous plaira encore salut</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":36,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/dockers5.png\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->', 'Photo 3', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-02-05 16:21:39', '2020-02-05 15:21:39', '', 40, 'http://localhost/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2020-02-05 16:22:24', '2020-02-05 15:22:24', '<!-- wp:paragraph -->\n<p>Bonjour je suis tombé sur ce magnifique cliché ce matin et je me suis dit que ce serait bien de le partager avec vous ils sont beaux ils ont l\'air heureux malgré le travail acharné désolé pour les écritures j\'ai pas su les enlever bisous il faut prendre une petite pause parfois pour être plus concentré !!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers2.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Photo 4', '', 'publish', 'closed', 'closed', '', 'photo-4', '', '', '2020-02-05 16:36:17', '2020-02-05 15:36:17', '', 0, 'http://localhost/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2020-02-05 16:22:24', '2020-02-05 15:22:24', '<!-- wp:paragraph -->\n<p>Bonjour je suis tombé sur ce magnifique cliché ce matin et je me suis dit que ce serait bien de le partager avec vous ils sont beaux ils ont l\'air heureux malgré le travail acharné désolé pour les écritures j\'ai pas su les enlever bisous il faut prendre une petite pause parfois pour être plus concentré !!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":33,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/dockers2.jpg\" alt=\"\" class=\"wp-image-33\"/></figure>\n<!-- /wp:image -->', 'Photo 4', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-02-05 16:22:24', '2020-02-05 15:22:24', '', 42, 'http://localhost/wordpress/?p=43', 0, 'revision', '', 0),
(44, 1, '2020-02-05 16:22:56', '2020-02-05 15:22:56', '<!-- wp:paragraph -->\n<p>Ça commence déjà à faire beaucoup de photos lol en voici une nouvelle que j\'ai trouvée sur google images en faisant des recherches sur les dockers et je l\'ai trouvée impressionnante car elle permet de voir qu\'il y a toujours eu des dockers même au moyen-âge au moins et je l\'ai trouvée bien faite voilà bisous j\'espère que ce petit cours d\'histoire vous aura plu bisous</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers3.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Photo 5', '', 'publish', 'closed', 'closed', '', 'photo-5', '', '', '2020-02-05 16:36:53', '2020-02-05 15:36:53', '', 0, 'http://localhost/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 1, '2020-02-05 16:22:56', '2020-02-05 15:22:56', '<!-- wp:paragraph -->\n<p>Ça commence déjà à faire beaucoup de photos lol en voici une nouvelle que j\'ai trouvée sur google images en faisant des recherches sur les dockers et je l\'ai trouvée impressionnante car elle permet de voir qu\'il y a toujours eu des dockers même au moyen-âge au moins et je l\'ai trouvée bien faite voilà bisous j\'espère que ce petit cours d\'histoire vous aura plu bisous</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":34,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/02/dockers3.jpg\" alt=\"\" class=\"wp-image-34\"/></figure>\n<!-- /wp:image -->', 'Photo 5', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-02-05 16:22:56', '2020-02-05 15:22:56', '', 44, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(46, 1, '2020-02-05 16:23:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-05 16:23:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-02-05 16:24:05', '2020-02-05 15:24:05', '{\n    \"twentyseventeen::panel_1\": {\n        \"value\": \"38\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:24:05\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"value\": \"40\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:24:05\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"value\": \"42\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:24:05\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"value\": \"44\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:24:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a95afdb5-a2b4-4e4e-bf61-96d42e4809fb', '', '', '2020-02-05 16:24:05', '2020-02-05 15:24:05', '', 0, 'http://localhost/wordpress/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2020-02-05 16:25:11', '2020-02-05 15:25:11', '{\n    \"widget_text[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjI4NToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+DQpGw6lkw6lyYXRpb24gSGF2cmFpc2UgZGVzIEZhbnMgZGUgQ2xpY2jDqXMgUGhvdG9ncmFwaGlxdWVzIGRlIERvY2tlcnMgw6AgVHJhdmVycyBsZSBUZW1wcyBldCBsJ0hpc3RvaXJlDQoNClBvcnQgZHUgSGF2cmUNCg0KNzYgNjAwIExlIEhhdnJlDQoNCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4NCkR1IGx1bmRpIGF1IHZlbmRyZWRpwqA6IDloMDDigJMxN2gwMA0KTGVzIHNhbWVkaSBldCBkaW1hbmNoZcKgOiAxMWgwMOKAkzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8ccb5c661727c90bd61d0c4540f2cc9a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:25:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1d7b29a3-6af6-4e63-a8ce-9bf6920aa70e', '', '', '2020-02-05 16:25:11', '2020-02-05 15:25:11', '', 0, 'http://localhost/wordpress/?p=48', 0, 'customize_changeset', '', 0),
(49, 1, '2020-02-05 16:25:59', '2020-02-05 15:25:59', '{\n    \"widget_text[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjIzNDoiQm9uam91ciBiaWVudmVudWUgc3VyIGNlIHNpdGUgamUgc3VpcyBsZSB2aWNlLXNlY3LDqXRhaXJlIGRlIGxhIEbDqWTDqXJhdGlvbiBIYXZyYWlzZSBkZXMgRmFucyBkZSBDbGljaMOpcyBQaG90b2dyYXBoaXF1ZXMgZGUgRG9ja2VycyDDoCBUcmF2ZXJzIGxlIFRlbXBzIGV0IGzigJlIaXN0b2lyZSBldCBqZSBwdWJsaWUgZGVzIHBob3RvZ3JhcGhpZXMgcXVpIG1lIHBhc3Npb25uZW50IGJvbm5lIGpvdXJuw6llIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ea55f65c46b9ce1ae429e737c0704197\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:25:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f92ca3fd-f593-4103-86e8-88e03a4f6157', '', '', '2020-02-05 16:25:59', '2020-02-05 15:25:59', '', 0, 'http://localhost/wordpress/?p=49', 0, 'customize_changeset', '', 0),
(50, 1, '2020-02-05 16:26:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-05 16:26:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=50', 0, 'page', '', 0),
(51, 1, '2020-02-05 16:26:15', '2020-02-05 15:26:15', '{\n    \"twentyseventeen::colorscheme\": {\n        \"value\": \"dark\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-05 15:26:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e82d5a4-94c0-4f6a-8d43-1b6919b34654', '', '', '2020-02-05 16:26:15', '2020-02-05 15:26:15', '', 0, 'http://localhost/wordpress/?p=51', 0, 'customize_changeset', '', 0),
(52, 1, '2020-02-05 16:26:17', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-05 16:26:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=52', 0, 'page', '', 0),
(53, 1, '2020-02-05 16:27:11', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-05 16:27:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=53', 0, 'page', '', 0),
(54, 1, '2020-02-05 16:29:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-05 16:29:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=54', 0, 'post', '', 0),
(55, 1, '2020-02-05 16:34:12', '2020-02-05 15:34:12', '<!-- wp:paragraph -->\n<p>Bonjour et bienvenue sur ce petit site qui a pour but de vous présenter des photographies de dockers à travers l\'histoire et le temps car c\'est l\'une de mes nombreuses passions voilà en espérant que vous passerez un bon moment voici déjà une première image !!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Bonjour', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-05 16:34:12', '2020-02-05 15:34:12', '', 8, 'http://localhost/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2020-02-05 16:35:19', '2020-02-05 15:35:19', '<!-- wp:paragraph -->\n<p>Aujourd\'hui petite photo des dockers alors oui on les voit encore en grève c\'est le foutoir mais si on avait pas ces gens-là on aurait pas les congés payés et c\'est un métier difficile alors voilà le bateau est joli en plus et avec le feu c\'est le feu de la révolte du port bisous</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers4.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Photo 2', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-02-05 16:35:19', '2020-02-05 15:35:19', '', 38, 'http://localhost/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2020-02-05 16:35:50', '2020-02-05 15:35:50', '<!-- wp:paragraph -->\n<p>Voilà une photo un peu plus ancienne pour montrer les conditions aussi ils ont pas toujours eu plein de machines pour porter les sacs à leur place et même aujourd\'hui s\'ils sont tous barracks c\'est pas pour rien voilà en espérant que ça vous plaira encore salut</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers5.png\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Photo 3', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-02-05 16:35:50', '2020-02-05 15:35:50', '', 40, 'http://localhost/wordpress/?p=57', 0, 'revision', '', 0),
(58, 1, '2020-02-05 16:36:17', '2020-02-05 15:36:17', '<!-- wp:paragraph -->\n<p>Bonjour je suis tombé sur ce magnifique cliché ce matin et je me suis dit que ce serait bien de le partager avec vous ils sont beaux ils ont l\'air heureux malgré le travail acharné désolé pour les écritures j\'ai pas su les enlever bisous il faut prendre une petite pause parfois pour être plus concentré !!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers2.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Photo 4', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-02-05 16:36:17', '2020-02-05 15:36:17', '', 42, 'http://localhost/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2020-02-05 16:36:53', '2020-02-05 15:36:53', '<!-- wp:paragraph -->\n<p>Ça commence déjà à faire beaucoup de photos lol en voici une nouvelle que j\'ai trouvée sur google images en faisant des recherches sur les dockers et je l\'ai trouvée impressionnante car elle permet de voir qu\'il y a toujours eu des dockers même au moyen-âge au moins et je l\'ai trouvée bien faite voilà bisous j\'espère que ce petit cours d\'histoire vous aura plu bisous</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://image.noelshack.com/fichiers/2020/06/3/1580916787-dockers3.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Photo 5', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-02-05 16:36:53', '2020-02-05 15:36:53', '', 44, 'http://localhost/wordpress/?p=59', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu supérieur', 'menu-superieur', 0),
(3, 'Menu des liens de réseaux sociaux', 'menu-des-liens-de-reseaux-sociaux', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"0914b7b4a9a3af8546d654cfc12d717350844da446f67301f3eeb4489d73e3a6\";a:4:{s:10:\"expiration\";i:1582125371;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1580915771;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1580915985');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B6rDXexQ8ejRQl/9hHn2MKmX6jwXl30', 'admin', 'richard.turcey@hotmail.fr', '', '2020-02-05 15:16:03', '', 0, 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
