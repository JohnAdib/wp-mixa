-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: wp_mixa
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'آقای وردپرس','','https://wordpress.org/','','2016-07-17 16:55:57','2016-07-17 13:25:57','سلام،‌ این نوشته یک «دیدگاه» است. \nبرای پاک کردن یا ویرایش یک دیدگاه، باید وارد بخش مدیریت شوید، سپس به بخش دیدگاه‌ها بروید٬ در آن‌جا می‌توانید دیدگاه‌ها را ویرایش و یا پاک کنید.',0,'1','','',0,0),(2,1,'Doughboy','5h2xgba84lk@mail.com','http://oefviz.com','173.199.112.182','2016-10-08 10:14:50','2016-10-08 06:44:50','Son of a gun, this is so heullfp!',0,'spam','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0','',0,0),(3,1,'Mccade','7amzcjfe@gmail.com','http://xpaobalpgw.com','173.199.112.182','2016-10-08 10:30:47','2016-10-08 07:00:47','Alhigrt alright alright that\'s exactly what I needed!',0,'spam','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36','',1,0),(4,1,'محمدرضا','wpparsi.ir@gmail.com','http://wpparsi.ir/','157.119.189.27','2017-06-26 09:10:53','2017-06-26 04:40:53','با سلام و احترام\r\nافزونه افزایش دهنده سرعت بارگزاری وب سایت یک افرونه کاملا حرفه ای برای وردپرس می باشد که توسط آن می توانید سرعت لود و بارگزاری سایت خود را به راحتی افزاش دهید و هیچ مشکلی در سایت خود مشاهده نکنید . این افزونه در رتبه ی چهارم افزونه های مرتبط قرار دارد و با نصب آن می توانید در سئو و رتبه ی مطالب سایتتان در موتور های جستجو تاثیر مستقیم بگذارید و به بهبود رتبه شما در موتور های جستجو تاثیر بسیار خوبی داشته باشد. در ادامه با ما و برخی از ویژگی های افزونه همراه باشید .\r\nبرای دریافت نسخه حرفه ای این افزونه و مشاهده اطلاعات بیشتر به لینک زیر مراجعه نمایید\r\nhttp://www.wpparsi.ir/?p=4443\r\n\r\nبا نصب این افزونه می توانید به راحتی در GTmetrix رتبه خود را بهبود داده  و سرعت بارگذاری وب سایت را بصورت چشم گیری افزایش دهید.  با کلیک بر روی لینک زیر می توانید نتیجه نصب این افزونه روی وب سایت خود ما را مشاهده نمایید.\r\nhttps://gtmetrix.com/reports/wpparsi.ir/YrPr98ac\r\nبه همه دوستان عزیز پیشنهاد می کنیم حتما از این افزونه برای وب سایت خود استفاده کنند.',0,'0','Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://mixa.ir/wp','yes'),(2,'home','http://mixa.ir','yes'),(3,'blogname','تیم میکسا','yes'),(4,'blogdescription','پروژه‌های تمرینی چریکت‌های ارمایل','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','j.evazzadeh@live.com','yes'),(7,'start_of_week','6','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%category%/%postname%/','yes'),(29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:1:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:2:{i:0;s:67:\"/home/domains/mixa/public_html/wp/wp-content/themes/Visla/style.css\";i:1;s:0:\"\";}','no'),(40,'template','Visla','yes'),(41,'stylesheet','Visla','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','page','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','Asia/Tehran','yes'),(83,'page_for_posts','14','yes'),(84,'page_on_front','5','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'initial_db_version','36686','yes'),(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(93,'WPLANG','fa_IR','yes'),(94,'widget_search','a:2:{i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(99,'sidebars_widgets','a:17:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:17:\"homepage-column-1\";a:0:{}s:17:\"homepage-column-2\";a:0:{}s:17:\"homepage-column-3\";a:0:{}s:15:\"homepage-slogan\";a:0:{}s:15:\"footer-column-1\";a:0:{}s:15:\"footer-column-2\";a:0:{}s:15:\"footer-column-3\";a:0:{}s:21:\"footer-copyright-text\";a:0:{}s:18:\"header-search-form\";a:1:{i:0;s:8:\"search-3\";}s:16:\"post-author-info\";a:0:{}s:13:\"post-column-1\";a:0:{}s:13:\"post-column-2\";a:0:{}s:12:\"contact-form\";a:0:{}s:15:\"contact-sidebar\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(100,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'cron','a:4:{i:1530581158;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530624434;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530630663;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(107,'nonce_key','7(Kc?UpQAo?.QbxNR??M`V!-q> pTkhx75-dFbm[;9fjrg&}FS*/c&Hl]Q{3bi@/','yes'),(108,'nonce_salt','ORHtv$5Si+Ql9ie5j:4So7{1T]T%Raa@%|OwDO{5dMPC_d>-{gup(Y]?j)|O+0,w','yes'),(119,'auth_key','A?b=TRPJs:IE:u6adN.z%gE?mfe$0l1m yywl@EhS>/HLR .t8q:[j>.0YF&)!ZZ','yes'),(120,'auth_salt','775{*Q5~$MbqN$L%aEd-q`{K<;,x$u-:{gllhLsMdXYYpB~u6@57Q@QriX7O?|R5','yes'),(121,'logged_in_key','Y;`|CVgFSmWa@P#lv/(A$I~*DX/w.)PM:R|S$Z4tX1,_&@aj.G+L_t2t/NTC*#oE','yes'),(122,'logged_in_salt','Km!$F8]..|l3V.D M3RXZ)=P9=./G,oD9[homwlEWM8I9%(>;qb%QL$)<<wH@491','yes'),(132,'_transient_twentysixteen_categories','1','yes'),(157,'theme_mods_twentysixteen','a:2:{s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1469102773;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:8:\"search-3\";}s:9:\"sidebar-1\";a:0:{}}}}','yes'),(158,'current_theme','Visla','yes'),(159,'theme_mods_Visla','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:2;}}','yes'),(160,'theme_switched','','yes'),(161,'pagenavi_options','a:14:{s:10:\"pages_text\";s:36:\"Page %CURRENT_PAGE% of %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:13:\"&laquo; First\";s:9:\"last_text\";s:12:\"Last &raquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:13:\"dotright_text\";s:3:\"...\";s:12:\"dotleft_text\";s:3:\"...\";s:5:\"style\";i:1;s:9:\"num_pages\";i:5;s:11:\"always_show\";i:0;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;}','yes'),(168,'nvx_style','teal.css','yes'),(169,'nvx_logo','','yes'),(170,'nvx_slogan','','yes'),(171,'nvx_blog_page','14','yes'),(173,'nvx_exclude_pages','','yes'),(174,'nvx_exclude_categories','','yes'),(178,'nvx_tracking_code','','yes'),(179,'nvx_1column_title','مسابقات مهارت و گروه سرنا','yes'),(180,'nvx_1column_url_link','/about','yes'),(181,'nvx_1column_imageurl','http://mixa.ir/wp/dl/colors.png','yes'),(182,'nvx_1column_text','مسابقات مهارت که هر ساله در ایران و هر دوسال یکبار در جهان با نام WorldSkills برگزار می شود، محل آشنایی و شروع همکاری اعضای گروه سرنا بوده است. تمامی اعضای گروه سرنا از برگزیدگان مسابقات مهارت هستند.','yes'),(183,'nvx_2column_title','طراحی وب سایت','yes'),(184,'nvx_2column_url_link','/gallery','yes'),(185,'nvx_2column_imageurl','http://mixa.ir/wp/dl/beryl_manager.png','yes'),(186,'nvx_2column_text','طرح وب به قالب نمایشی و طراحی گرافیکی صفحات موجود در وب‌گاه می‌گویند که معرف محتوا و مطالب آن وب سـایت می‌باشد. طرح وب جلوه بصـری هدف وب‌گاه است و اولین بخش از یک صفحه وب است که ذهن مخاطب را با خود درگیر می‌کند.','yes'),(187,'nvx_3column_title','انتخاب ما = انتخاب کیفیت','yes'),(188,'nvx_3column_url_link','/contact','yes'),(189,'nvx_3column_imageurl','http://mixa.ir/wp/dl/contact.png','yes'),(190,'nvx_3column_text','در صورتی که تمایل دارید صاحب یک سایت اینترنتی باشید می توانید با ما تماس بگیرید و هدف سایت و نیازهای کاربران سایت را با ما در میان بگذارید. ما پس از بررسی سایت مورد نظر شما در امکان طراحی سایت شما را بر عهده می گیریم و سعی می کنیم سایتی منطبق با نیازهای شما ایجاد کنیم.','yes'),(191,'nvx_4cols_1column_title','','yes'),(192,'nvx_4cols_1column_text','','yes'),(193,'nvx_4cols_2column_title','','yes'),(194,'nvx_4cols_2column_text','','yes'),(195,'nvx_4cols_3column_title','','yes'),(196,'nvx_4cols_3column_text','','yes'),(197,'nvx_4cols_4column_title','','yes'),(198,'nvx_4cols_4column_text','','yes'),(199,'nvx_slider_images_count','1','yes'),(201,'nvx_staticimage_url','','yes'),(202,'nvx_staticimage_gotourl','','yes'),(204,'nvx_imageWidth','900','yes'),(205,'nvx_imageHeight','400','yes'),(206,'nvx_segments','7','yes'),(207,'nvx_tweenTime','1.2','yes'),(208,'nvx_tweenDelay','0.1','yes'),(209,'nvx_tweenType','linear','yes'),(210,'nvx_zDistance','0','yes'),(211,'nvx_expand','20','yes'),(212,'nvx_innerColor','0x111111','yes'),(213,'nvx_textBackground','0x0064C8','yes'),(214,'nvx_shadowDarkness','100','yes'),(215,'nvx_textDistance','25','yes'),(216,'nvx_autoplay','10','yes'),(217,'nvx_portfolio_items','12','yes'),(220,'nvx_rss','http://mixa.ir/feed','yes'),(222,'nvx_twitter','','yes'),(224,'nvx_facebook','','yes'),(226,'nvx_linkedin','','yes'),(227,'nvx_first_testimonial_headline','','yes'),(228,'nvx_first_testimonial','طراحی صفحات وب فرآیندی کاملاً تخصصی و علمی بوده و بسیار فراتر از قراردادن متن‌ها در قالب چند صفحه است. طراحی اصولی تاثیر به سزایی در نمایاندن جلوه‌ی شما در وب داشته و متمایــزشدنتان را به دنبال دارد.','yes'),(229,'nvx_second_testimonial_headline','','yes'),(230,'nvx_second_testimonial','در همین راستا تیم میکسا توسط جمعی از متخصصین جوان و باتجربه طراحی وب در ایران فعالیت رسمی خود را آغازکرد. ما با اتکا به توان خود و با استفاده از آخرین فناوری‌ها و رعایت استانداردهای گوناگون طراحی در دنیا، در تلاش برای ارتقای فرهنگ وب در جامعه‌ی ایرانی بوده و هستیم.','yes'),(231,'nvx_adress','','yes'),(232,'nvx_phone','','yes'),(233,'nvx_fax','','yes'),(234,'nvx_email','mixa@ermile.com','yes'),(235,'nvx_footer','تمام حقوق این وب سایت برای تیم میکسا (Mixa) محفوظ است©','yes'),(478,'wpcf7','a:2:{s:7:\"version\";s:3:\"4.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1468784573;s:7:\"version\";s:5:\"4.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes'),(479,'recently_activated','a:0:{}','yes'),(481,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),(486,'nvx_slider_switch','nivo','yes'),(734,'nvx_breadcrumbs','true','yes'),(1279,'nvx_display_rss','true','yes'),(1547,'category_children','a:0:{}','yes'),(2753,'nvx_portfolio_page_id','a:1:{s:19:\"portfolio_to_cat_15\";s:1:\"0\";}','yes'),(2949,'nvx_piecemaker_text_url','','yes'),(2950,'nvx_piecemaker_text_headline','','yes'),(2951,'nvx_piecemaker_text_description','','yes'),(3528,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"j.evazzadeh@live.com\";s:7:\"version\";s:6:\"4.7.10\";s:9:\"timestamp\";i:1522806825;}','no'),(6648,'_site_transient_timeout_browser_1112e7da2c1e2ca5eb7e4651881e05db','1494114815','yes'),(6649,'_site_transient_browser_1112e7da2c1e2ca5eb7e4651881e05db','a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"57.0.2987.133\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),(6653,'db_upgraded','','yes'),(6658,'can_compress_scripts','0','no'),(11012,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.8.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.6\";s:7:\"version\";s:5:\"4.8.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1530538922;s:15:\"version_checked\";s:6:\"4.7.10\";s:12:\"translations\";a:0:{}}','no'),(12161,'_site_transient_timeout_theme_roots','1530540723','no'),(12162,'_site_transient_theme_roots','a:2:{s:5:\"Visla\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),(12163,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530538924;s:7:\"checked\";a:2:{s:5:\"Visla\";s:3:\"3.1\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:1:{s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}','no'),(12164,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530538923;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"theme-preview/theme-preview.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/theme-preview\";s:4:\"slug\";s:13:\"theme-preview\";s:6:\"plugin\";s:31:\"theme-preview/theme-preview.php\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/theme-preview/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/theme-preview.1.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:57:\"https://s.w.org/plugins/geopattern-icon/theme-preview.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:23:\"wp-jalali/wp-jalali.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/wp-jalali\";s:4:\"slug\";s:9:\"wp-jalali\";s:6:\"plugin\";s:23:\"wp-jalali/wp-jalali.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wp-jalali/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-jalali.5.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wp-jalali/assets/icon-256x256.png?rev=983015\";s:2:\"1x\";s:61:\"https://ps.w.org/wp-jalali/assets/icon-128x128.png?rev=983015\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/wp-jalali/assets/banner-772x250.png?rev=982617\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(4,5,'_edit_last','1'),(5,5,'_edit_lock','1468770739:1'),(6,5,'_wp_page_template','default'),(7,6,'_edit_last','1'),(8,6,'_edit_lock','1468768363:1'),(9,8,'_form','<p>نام شما (الزامی)<br />\n    [text* your-name] </p>\n\n<p>ایمیل شما (الزامی)<br />\n    [email* your-email] </p>\n\n<p>موضوع<br />\n    [text your-subject] </p>\n\n<p>پیام شما<br />\n    [textarea your-message] </p>\n\n<p>[submit \"ارسال \"]</p>'),(10,8,'_mail','a:8:{s:7:\"subject\";s:34:\"تیم میکسا \"[your-subject]\"\";s:6:\"sender\";s:31:\"[your-name] <wordpress@mixa.ir>\";s:4:\"body\";s:209:\"از : [your-name] <[your-email]>\nموضوع: [your-subject]\n\nمحتوای پیام :\n[your-message]\n\n--\nاین ایمیل از فرم تماس در تیم میکسا (http://mixa.ir) ارسال شده است.\";s:9:\"recipient\";s:20:\"j.evazzadeh@live.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),(11,8,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"تیم میکسا \"[your-subject]\"\";s:6:\"sender\";s:37:\"تیم میکسا <wordpress@mixa.ir>\";s:4:\"body\";s:147:\"محتوای پیام :\n[your-message]\n\n--\nاین ایمیل از فرم تماس در تیم میکسا (http://mixa.ir) ارسال شده است.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: j.evazzadeh@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),(12,8,'_messages','a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:39:\"کد وارد شده صحیح نیست.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),(13,8,'_additional_settings',''),(14,8,'_locale','fa_IR'),(15,6,'_wp_page_template','template-contact.php'),(16,13,'_edit_last','1'),(17,13,'_edit_lock','1468768467:1'),(18,13,'_wp_page_template','404.php'),(19,14,'_edit_last','1'),(20,14,'_edit_lock','1468768485:1'),(21,14,'_wp_page_template','template-blog.php'),(22,15,'_edit_last','1'),(23,15,'_edit_lock','1468768491:1'),(24,15,'_wp_page_template','portfolio-template2.php'),(25,20,'_menu_item_type','custom'),(26,20,'_menu_item_menu_item_parent','0'),(27,20,'_menu_item_object_id','20'),(28,20,'_menu_item_object','custom'),(29,20,'_menu_item_target',''),(30,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(31,20,'_menu_item_xfn',''),(32,20,'_menu_item_url','http://mixa.ir/'),(52,23,'_menu_item_type','post_type'),(53,23,'_menu_item_menu_item_parent','0'),(54,23,'_menu_item_object_id','14'),(55,23,'_menu_item_object','page'),(56,23,'_menu_item_target',''),(57,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(58,23,'_menu_item_xfn',''),(59,23,'_menu_item_url',''),(61,24,'_menu_item_type','post_type'),(62,24,'_menu_item_menu_item_parent','0'),(63,24,'_menu_item_object_id','6'),(64,24,'_menu_item_object','page'),(65,24,'_menu_item_target',''),(66,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(67,24,'_menu_item_xfn',''),(68,24,'_menu_item_url',''),(70,25,'_menu_item_type','post_type'),(71,25,'_menu_item_menu_item_parent','0'),(72,25,'_menu_item_object_id','15'),(73,25,'_menu_item_object','page'),(74,25,'_menu_item_target',''),(75,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(76,25,'_menu_item_xfn',''),(77,25,'_menu_item_url',''),(79,26,'_edit_last','1'),(80,26,'_edit_lock','1468768943:1'),(81,26,'_wp_page_template','template-sitemap.php'),(82,27,'_edit_last','1'),(83,27,'_edit_lock','1468768936:1'),(84,27,'_wp_page_template','default'),(85,32,'_edit_last','1'),(86,32,'_wp_page_template','template-page-full-width.php'),(87,32,'_edit_lock','1469103656:1'),(88,35,'_edit_last','1'),(89,35,'_edit_lock','1468769286:1'),(90,35,'_wp_page_template','default'),(91,37,'_edit_last','1'),(92,37,'_edit_lock','1468769469:1'),(93,37,'_wp_page_template','default'),(94,38,'_edit_last','1'),(95,38,'_edit_lock','1468769481:1'),(96,38,'_wp_page_template','default'),(97,43,'_menu_item_type','post_type'),(98,43,'_menu_item_menu_item_parent','0'),(99,43,'_menu_item_object_id','27'),(100,43,'_menu_item_object','page'),(101,43,'_menu_item_target',''),(102,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(103,43,'_menu_item_xfn',''),(104,43,'_menu_item_url',''),(106,44,'_menu_item_type','post_type'),(107,44,'_menu_item_menu_item_parent','0'),(108,44,'_menu_item_object_id','32'),(109,44,'_menu_item_object','page'),(110,44,'_menu_item_target',''),(111,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(112,44,'_menu_item_xfn',''),(113,44,'_menu_item_url',''),(115,45,'_menu_item_type','post_type'),(116,45,'_menu_item_menu_item_parent','44'),(117,45,'_menu_item_object_id','38'),(118,45,'_menu_item_object','page'),(119,45,'_menu_item_target',''),(120,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(121,45,'_menu_item_xfn',''),(122,45,'_menu_item_url',''),(124,46,'_menu_item_type','post_type'),(125,46,'_menu_item_menu_item_parent','44'),(126,46,'_menu_item_object_id','37'),(127,46,'_menu_item_object','page'),(128,46,'_menu_item_target',''),(129,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(130,46,'_menu_item_xfn',''),(131,46,'_menu_item_url',''),(133,47,'_menu_item_type','post_type'),(134,47,'_menu_item_menu_item_parent','44'),(135,47,'_menu_item_object_id','35'),(136,47,'_menu_item_object','page'),(137,47,'_menu_item_target',''),(138,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(139,47,'_menu_item_xfn',''),(140,47,'_menu_item_url',''),(149,52,'_wp_attached_file','beryl_manager.png'),(150,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:17:\"beryl_manager.png\";s:5:\"sizes\";a:2:{s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"beryl_manager-46x36.png\";s:5:\"width\";i:46;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"popularposts\";a:4:{s:4:\"file\";s:23:\"beryl_manager-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(151,53,'_wp_attached_file','colors.png'),(152,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:10:\"colors.png\";s:5:\"sizes\";a:2:{s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"colors-46x36.png\";s:5:\"width\";i:46;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"popularposts\";a:4:{s:4:\"file\";s:16:\"colors-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(153,54,'_wp_attached_file','contact.png'),(154,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:11:\"contact.png\";s:5:\"sizes\";a:2:{s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"contact-46x36.png\";s:5:\"width\";i:46;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"popularposts\";a:4:{s:4:\"file\";s:17:\"contact-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(155,52,'_edit_lock','1468770304:1'),(156,55,'_wp_attached_file','logo.png'),(157,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:240;s:6:\"height\";i:240;s:4:\"file\";s:8:\"logo.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"logo-46x36.png\";s:5:\"width\";i:46;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"popularposts\";a:4:{s:4:\"file\";s:14:\"logo-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"wide\";a:4:{s:4:\"file\";s:16:\"logo-240x190.png\";s:5:\"width\";i:240;s:6:\"height\";i:190;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:16:\"logo-240x220.png\";s:5:\"width\";i:240;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(158,55,'_edit_lock','1468770389:1'),(159,58,'_menu_item_type','custom'),(160,58,'_menu_item_menu_item_parent','24'),(161,58,'_menu_item_object_id','58'),(162,58,'_menu_item_object','custom'),(163,58,'_menu_item_target',''),(164,58,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(165,58,'_menu_item_xfn',''),(166,58,'_menu_item_url','http://sarshomar.com');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2016-07-17 16:55:57','2016-07-17 13:25:57','به وردپرس فارسی خوش آمدید.‌ این نخستین نوشته‌‌ی شماست. می‌توانید ویرایش یا پاکش کنید و پس از آن نوشتن را آغاز کنید!','سلام دنیا!','','publish','open','open','','%d8%b3%d9%84%d8%a7%d9%85-%d8%af%d9%86%db%8c%d8%a7','','','2016-07-17 16:55:57','2016-07-17 13:25:57','',0,'http://mixa.ir/wp/?p=1',0,'post','',1),(2,1,'2016-07-17 16:55:57','2016-07-17 13:25:57','این یک برگه‌ی نمونه است که با یک نوشته در وبلاگ تفاوت دارد زیرا برگه‌ها در یک مکان ثابت می‌مانند و معمولاً در فهرست پیوندهای درونی سایت شما نمایش داده می‌شوند (در اکثر پوسته‌ها). بیشتر افراد کار کردن با برگه‌ها را از یک برگه‌ی «درباره من» که آن‌ها را به خوانندگان سایت معرفی می‌کند، شروع می‌کنند. برای مثال این‌چنین می‌گویند:\n\n<blockquote>سلام دوستان، من روزها یک کارمند اداری هستم و شب‌ها یک راننده تاکسی، این وبلاگ من است. من در اهواز زندگی می‌کنم که شهری در جنوب غربی ایران است.</blockquote>\n\nیا چیزی شبیه این:\n\n<blockquote>شرکت XYZ در سال ۱۳۶۵ تاسیس شد و ارائه‌دهنده محصولات صنعتی است. این شرکت ۲۰۰۰ کارگر و کارمند دارد. امیدواریم از محصولات ما راضی باشید.</blockquote>\n\nبه‌عنوان یک کاربر تازه‌ی وردپرس فارسی شما برای پاک کردن این برگه و ساختن برگه‌های تازه می‌توانید به <a href=\"http://mixa.ir/wp/wp-admin/\">پیشخوان خود</a> مراجعه کنید. موفق باشید!','برگه نمونه','','publish','closed','open','','برگه-نمونه','','','2016-07-17 16:55:57','2016-07-17 13:25:57','',0,'http://mixa.ir/wp/?page_id=2',0,'page','',0),(5,1,'2016-07-17 20:03:44','2016-07-17 15:33:44','ایشالا بزودی تکمیل خواهد شد...','صفحه نخست','','publish','closed','closed','','homepage','','','2016-07-17 20:24:32','2016-07-17 15:54:32','',0,'http://mixa.ir/?page_id=5',0,'page','',0),(6,1,'2016-07-17 19:44:05','2016-07-17 15:14:05','برای تماس با ما می‌توانید از فرم زیر استفاده کنید.','تماس با ما','','publish','closed','closed','','contact','','','2016-07-17 19:44:50','2016-07-17 15:14:50','',0,'http://mixa.ir/?page_id=6',0,'page','',0),(7,1,'2016-07-17 19:42:09','2016-07-17 15:12:09','برگه نخست به صورت خودکار پر خواهد شد','homepage','','inherit','closed','closed','','5-revision-v1','','','2016-07-17 19:42:09','2016-07-17 15:12:09','',5,'http://mixa.ir/%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87/5-revision-v1/',0,'revision','',0),(8,1,'2016-07-17 19:42:53','2016-07-17 15:12:53','<p>نام شما (الزامی)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>ایمیل شما (الزامی)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>موضوع<br />\r\n    [text your-subject] </p>\r\n\r\n<p>پیام شما<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit \"ارسال \"]</p>\nتیم میکسا \"[your-subject]\"\n[your-name] <wordpress@mixa.ir>\nاز : [your-name] <[your-email]>\r\nموضوع: [your-subject]\r\n\r\nمحتوای پیام :\r\n[your-message]\r\n\r\n--\r\nاین ایمیل از فرم تماس در تیم میکسا (http://mixa.ir) ارسال شده است.\nj.evazzadeh@live.com\nReply-To: [your-email]\n\n\n\n\nتیم میکسا \"[your-subject]\"\nتیم میکسا <wordpress@mixa.ir>\nمحتوای پیام :\r\n[your-message]\r\n\r\n--\r\nاین ایمیل از فرم تماس در تیم میکسا (http://mixa.ir) ارسال شده است.\n[your-email]\nReply-To: j.evazzadeh@live.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nکد وارد شده صحیح نیست.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.','contact','','publish','closed','closed','','%d9%81%d8%b1%d9%85-%d8%aa%d9%85%d8%a7%d8%b3-1','','','2016-07-17 19:43:21','2016-07-17 15:13:21','',0,'http://mixa.ir/?post_type=wpcf7_contact_form&#038;p=8',0,'wpcf7_contact_form','',0),(9,1,'2016-07-17 19:44:05','2016-07-17 15:14:05','برای تماس با ما می‌توانید از فرم زیر استفاده کنید.\r\n\r\n[contact-form-7 id=\"8\" title=\"contact\"]','contact','','inherit','closed','closed','','6-revision-v1','','','2016-07-17 19:44:05','2016-07-17 15:14:05','',6,'http://mixa.ir/%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87/6-revision-v1/',0,'revision','',0),(10,1,'2016-07-17 19:44:36','2016-07-17 15:14:36','برای تماس با ما می‌توانید از فرم زیر استفاده کنید.','contact','','inherit','closed','closed','','6-revision-v1','','','2016-07-17 19:44:36','2016-07-17 15:14:36','',6,'http://mixa.ir/%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87/6-revision-v1/',0,'revision','',0),(11,1,'2016-07-17 19:44:44','2016-07-17 15:14:44','برای تماس با ما می‌توانید از فرم زیر استفاده کنید.','contact','','inherit','closed','closed','','6-autosave-v1','','','2016-07-17 19:44:44','2016-07-17 15:14:44','',6,'http://mixa.ir/%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87/6-autosave-v1/',0,'revision','',0),(12,1,'2016-07-17 19:44:50','2016-07-17 15:14:50','برای تماس با ما می‌توانید از فرم زیر استفاده کنید.','تماس با ما','','inherit','closed','closed','','6-revision-v1','','','2016-07-17 19:44:50','2016-07-17 15:14:50','',6,'http://mixa.ir/%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87/6-revision-v1/',0,'revision','',0),(13,1,'2016-07-17 19:46:21','2016-07-17 15:16:21','','not found','','publish','closed','closed','','not-found','','','2016-07-17 19:46:21','2016-07-17 15:16:21','',0,'http://mixa.ir/?page_id=13',0,'page','',0),(14,1,'2016-07-17 19:46:31','2016-07-17 15:16:31','','بلاگ','','publish','closed','closed','','blog','','','2016-07-17 19:46:57','2016-07-17 15:16:57','',0,'http://mixa.ir/?page_id=14',0,'page','',0),(15,1,'2016-07-17 19:47:07','2016-07-17 15:17:07','','نمونه کارها','','publish','closed','closed','','%d9%86%d9%85%d9%88%d9%86%d9%87-%da%a9%d8%a7%d8%b1%d9%87%d8%a7','','','2016-07-17 19:47:07','2016-07-17 15:17:07','',0,'http://mixa.ir/?page_id=15',0,'page','',0),(16,1,'2016-07-17 19:46:21','2016-07-17 15:16:21','','not found','','inherit','closed','closed','','13-revision-v1','','','2016-07-17 19:46:21','2016-07-17 15:16:21','',13,'http://mixa.ir/news/13-revision-v1/',0,'revision','',0),(17,1,'2016-07-17 19:46:31','2016-07-17 15:16:31','','blog','','inherit','closed','closed','','14-revision-v1','','','2016-07-17 19:46:31','2016-07-17 15:16:31','',14,'http://mixa.ir/news/14-revision-v1/',0,'revision','',0),(18,1,'2016-07-17 19:46:57','2016-07-17 15:16:57','','بلاگ','','inherit','closed','closed','','14-revision-v1','','','2016-07-17 19:46:57','2016-07-17 15:16:57','',14,'http://mixa.ir/news/14-revision-v1/',0,'revision','',0),(19,1,'2016-07-17 19:47:07','2016-07-17 15:17:07','','نمونه کارها','','inherit','closed','closed','','15-revision-v1','','','2016-07-17 19:47:07','2016-07-17 15:17:07','',15,'http://mixa.ir/news/15-revision-v1/',0,'revision','',0),(20,1,'2016-07-17 19:47:50','2016-07-17 15:17:50','','صفحه‌ی نخست','','publish','closed','closed','','%d8%ae%d8%a7%d9%86%d9%87','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',0,'http://mixa.ir/?p=20',1,'nav_menu_item','',0),(23,1,'2016-07-17 19:47:50','2016-07-17 15:17:50',' ','','','publish','closed','closed','','23','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',0,'http://mixa.ir/?p=23',3,'nav_menu_item','',0),(24,1,'2016-07-17 19:47:50','2016-07-17 15:17:50',' ','','','publish','closed','closed','','24','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',0,'http://mixa.ir/?p=24',4,'nav_menu_item','',0),(25,1,'2016-07-17 19:47:50','2016-07-17 15:17:50',' ','','','publish','closed','closed','','25','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',0,'http://mixa.ir/?p=25',2,'nav_menu_item','',0),(26,1,'2016-07-17 19:48:58','2016-07-17 15:18:58','','نقشه سایت','','publish','closed','closed','','sitemap','','','2016-07-17 19:48:58','2016-07-17 15:18:58','',0,'http://mixa.ir/?page_id=26',0,'page','',0),(27,1,'2016-07-17 19:49:31','2016-07-17 15:19:31','تیم میکسا Mixa  در سال ۱۳۸۹ توسط جمعی از متخصصین جوان و باتجربه طراحی وب در ایران فعالیت رسمی خود را آغاز کرده است. ما با اتکا به توان خود و با استفاده از آخرین فناوری‌ها و رعایت استانداردهای گوناگون طراحی در دنیا، در تلاش برای ارتقای فرهنگ وب در جامعه‌ی ایرانی بوده و هستیم.\r\n<h2>ما یک تیم ژل شده هستیم</h2>\r\nتیم ژل شده گروهی از افراد هستند که چنان به هم محکم پیوند خورده اند که کلیت آنها بزرگتر از حاصل جمع تک تک آنهاست. با ژل شدن یک تیم، احتمال موفقیت بالا رفته و جلوی تیم را نمی توان گرفت. نیازی به مدیریت آنها به شیوه سنتی نیست و قطعا نیازی به انگیزش ندارند. آنها تکانه لازم را دارند؛ بهره وری و انگیزه اعضای تیم ژل شده به مراتب بیشتر از حد متوسط است. آنها هدفی مشترک، فرهنگی مشترک و در بسیاری موارد ، نوعی حس برتری دارند که آنها را منحصر به فرد می‌سازد\r\n<h2>اعضای تیم میکسا</h2>\r\nبرای آشنایی بیشتر با میکسا می‌توانید با اعضای تیم میکسا بیشتر آشنا شوید.','درباره تیم میکسا','','publish','closed','closed','','about','','','2016-07-17 19:53:35','2016-07-17 15:23:35','',0,'http://mixa.ir/?page_id=27',0,'page','',0),(28,1,'2016-07-17 19:48:58','2016-07-17 15:18:58','','نقشه سایت','','inherit','closed','closed','','26-revision-v1','','','2016-07-17 19:48:58','2016-07-17 15:18:58','',26,'http://mixa.ir/news/26-revision-v1/',0,'revision','',0),(29,1,'2016-07-17 19:49:31','2016-07-17 15:19:31','','درباره تیم میکسا','','inherit','closed','closed','','27-revision-v1','','','2016-07-17 19:49:31','2016-07-17 15:19:31','',27,'http://mixa.ir/news/27-revision-v1/',0,'revision','',0),(30,1,'2016-07-17 19:51:38','2016-07-17 15:21:38','تیم مکسا(Mixa) در سال ۱۳۸۹ توسط جمعی از متخصصین جوان و باتجربه طراحی وب در ایران فعالیت رسمی خود را آغاز کرده است. ما با اتکا به توان خود و با استفاده از آخرین فناوری‌ها و رعایت استانداردهای گوناگون طراحی در دنیا، در تلاش برای ارتقای فرهنگ وب در جامعه‌ی ایرانی بوده و هستیم.\n\nبه زودی اطلاعات زیادی درباره گروه سرنا (Serena Group) درخواهید یافت. در ابتدا تنها هدف ایجاد ایم تیم تشریح میشود.\n<h1 class=\"animated\">ما یک تیم ژل شده هستیم</h1>\nتیم ژل شده گروهی از افراد هستند که چنان به هم محکم پیوند خورده اند که کلیت آنها بزرگتر از حاصل جمع تک تک آنهاست. با ژل شدن یک تیم، احتمال موفقیت بالا رفته و جلوی تیم را نمی توان گرفت. نیازی به مدیریت آنها به شیوه سنتی نیست و قطعا نیازی به انگیزش ندارند. آنها تکانه لازم را دارند؛ بهره وری و انگیزه اعضای تیم ژل شده به مراتب بیشتر از حد متوسط است. آنها هدفی مشترک، فرهنگی مشترک و در بسیاری موارد ، نوعی حس برتری دارند که آنها را منحصر به فرد می سازد\n<h1>اعضای گروه سرنا</h1>\nبرای آشنایی بیشتر با گروه سرنا می توانید با <a title=\"Serena Members\" href=\"http://web.archive.org/web/20140816081307/http://serena.ir/about/team/\">اعضای گروه سرنا</a> بیشتر آشنا شوید.','درباره تیم میکسا','','inherit','closed','closed','','27-autosave-v1','','','2016-07-17 19:51:38','2016-07-17 15:21:38','',27,'http://mixa.ir/news/27-autosave-v1/',0,'revision','',0),(31,1,'2016-07-17 19:53:07','2016-07-17 15:23:07','تیم میکسا Mixa  در سال ۱۳۸۹ توسط جمعی از متخصصین جوان و باتجربه طراحی وب در ایران فعالیت رسمی خود را آغاز کرده است. ما با اتکا به توان خود و با استفاده از آخرین فناوری‌ها و رعایت استانداردهای گوناگون طراحی در دنیا، در تلاش برای ارتقای فرهنگ وب در جامعه‌ی ایرانی بوده و هستیم.\r\n<h2>ما یک تیم ژل شده هستیم</h2>\r\nتیم ژل شده گروهی از افراد هستند که چنان به هم محکم پیوند خورده اند که کلیت آنها بزرگتر از حاصل جمع تک تک آنهاست. با ژل شدن یک تیم، احتمال موفقیت بالا رفته و جلوی تیم را نمی توان گرفت. نیازی به مدیریت آنها به شیوه سنتی نیست و قطعا نیازی به انگیزش ندارند. آنها تکانه لازم را دارند؛ بهره وری و انگیزه اعضای تیم ژل شده به مراتب بیشتر از حد متوسط است. آنها هدفی مشترک، فرهنگی مشترک و در بسیاری موارد ، نوعی حس برتری دارند که آنها را منحصر به فرد می‌سازد\r\n<h2>اعضای تیم میکسا</h2>\r\nبرای آشنایی بیشتر با میکسا می‌توانید با اعضای تیم میکسا بیشتر آشنا شوید.','درباره تیم میکسا','','inherit','closed','closed','','27-revision-v1','','','2016-07-17 19:53:07','2016-07-17 15:23:07','',27,'http://mixa.ir/news/27-revision-v1/',0,'revision','',0),(32,1,'2016-07-17 19:55:18','2016-07-17 15:25:18','اعضای تیم میکسا Mixa را به زودی بیشتر خواهید شناخت! منتظر باشید...','اعضای تیم میکسا','','publish','closed','closed','','team','','','2016-07-17 19:56:19','2016-07-17 15:26:19','',0,'http://mixa.ir/?page_id=32',0,'page','',0),(33,1,'2016-07-17 19:54:58','2016-07-17 15:24:58','اعضای تیم میکسا Mixa را به زودی بیشتر خواهید شناخت! منتظر باشید...','team','','inherit','closed','closed','','32-revision-v1','','','2016-07-17 19:54:58','2016-07-17 15:24:58','',32,'http://mixa.ir/news/32-revision-v1/',0,'revision','',0),(34,1,'2016-07-17 19:55:18','2016-07-17 15:25:18','اعضای تیم میکسا Mixa را به زودی بیشتر خواهید شناخت! منتظر باشید...','اعضای تیم میکسا','','inherit','closed','closed','','32-revision-v1','','','2016-07-17 19:55:18','2016-07-17 15:25:18','',32,'http://mixa.ir/news/32-revision-v1/',0,'revision','',0),(35,1,'2016-07-17 19:58:16','2016-07-17 15:28:16','محمد علی صالحی','محمد علی صالحی','','publish','closed','closed','','mohamadali_salehi','','','2016-07-17 19:59:16','2016-07-17 15:29:16','',32,'http://mixa.ir/?page_id=35',0,'page','',0),(36,1,'2016-07-17 19:58:16','2016-07-17 15:28:16','','محمد علی صالحی','','inherit','closed','closed','','35-revision-v1','','','2016-07-17 19:58:16','2016-07-17 15:28:16','',35,'http://mixa.ir/news/35-revision-v1/',0,'revision','',0),(37,1,'2016-07-17 19:58:59','2016-07-17 15:28:59','علی مدبر','علی مدبر','','publish','closed','closed','','ali_modabber','','','2016-07-17 20:03:03','2016-07-17 15:33:03','',32,'http://mixa.ir/?page_id=37',0,'page','',0),(38,1,'2016-07-17 19:59:31','2016-07-17 15:29:31','علی خریدار','علی خریدار','','publish','closed','closed','','alijkh','','','2016-07-17 20:03:32','2016-07-17 15:33:32','',32,'http://mixa.ir/?page_id=38',0,'page','',0),(39,1,'2016-07-17 19:58:59','2016-07-17 15:28:59','','علی مدبر','','inherit','closed','closed','','37-revision-v1','','','2016-07-17 19:58:59','2016-07-17 15:28:59','',37,'http://mixa.ir/news/37-revision-v1/',0,'revision','',0),(40,1,'2016-07-17 19:59:16','2016-07-17 15:29:16','محمد علی صالحی','محمد علی صالحی','','inherit','closed','closed','','35-revision-v1','','','2016-07-17 19:59:16','2016-07-17 15:29:16','',35,'http://mixa.ir/news/35-revision-v1/',0,'revision','',0),(41,1,'2016-07-17 19:59:20','2016-07-17 15:29:20','علی مدبر','علی مدبر','','inherit','closed','closed','','37-revision-v1','','','2016-07-17 19:59:20','2016-07-17 15:29:20','',37,'http://mixa.ir/news/37-revision-v1/',0,'revision','',0),(42,1,'2016-07-17 19:59:31','2016-07-17 15:29:31','علی خریدار','علی خریدار','','inherit','closed','closed','','38-revision-v1','','','2016-07-17 19:59:31','2016-07-17 15:29:31','',38,'http://mixa.ir/news/38-revision-v1/',0,'revision','',0),(43,1,'2016-07-17 20:00:46','2016-07-17 15:30:46',' ','','','publish','closed','closed','','43','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',0,'http://mixa.ir/?p=43',6,'nav_menu_item','',0),(44,1,'2016-07-17 20:00:46','2016-07-17 15:30:46',' ','','','publish','closed','closed','','44','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',0,'http://mixa.ir/?p=44',7,'nav_menu_item','',0),(45,1,'2016-07-17 20:02:58','2016-07-17 15:32:58',' ','','','publish','closed','closed','','45','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',32,'http://mixa.ir/?p=45',8,'nav_menu_item','',0),(46,1,'2016-07-17 20:02:58','2016-07-17 15:32:58',' ','','','publish','closed','closed','','46','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',32,'http://mixa.ir/?p=46',9,'nav_menu_item','',0),(47,1,'2016-07-17 20:02:58','2016-07-17 15:32:58',' ','','','publish','closed','closed','','47','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',32,'http://mixa.ir/?p=47',10,'nav_menu_item','',0),(48,1,'2016-07-17 20:03:44','2016-07-17 15:33:44','برگه نخست به صورت خودکار پر خواهد شد','صفحه نخست','','inherit','closed','closed','','5-revision-v1','','','2016-07-17 20:03:44','2016-07-17 15:33:44','',5,'http://mixa.ir/news/5-revision-v1/',0,'revision','',0),(52,1,'2016-07-17 20:16:32','2016-07-17 15:46:32','','beryl_manager','','inherit','open','closed','','beryl_manager','','','2016-07-17 20:16:32','2016-07-17 15:46:32','',0,'http://mixa.ir/wp/dl/beryl_manager.png',0,'attachment','image/png',0),(53,1,'2016-07-17 20:16:33','2016-07-17 15:46:33','','colors','','inherit','open','closed','','colors','','','2016-07-17 20:16:33','2016-07-17 15:46:33','',0,'http://mixa.ir/wp/dl/colors.png',0,'attachment','image/png',0),(54,1,'2016-07-17 20:16:35','2016-07-17 15:46:35','','contact','','inherit','open','closed','','contact-2','','','2016-07-17 20:16:35','2016-07-17 15:46:35','',0,'http://mixa.ir/wp/dl/contact.png',0,'attachment','image/png',0),(55,1,'2016-07-17 20:18:43','2016-07-17 15:48:43','','logo','','inherit','open','closed','','logo','','','2016-07-17 20:18:43','2016-07-17 15:48:43','',0,'http://mixa.ir/wp/dl/logo.png',0,'attachment','image/png',0),(56,1,'2016-07-17 20:24:32','2016-07-17 15:54:32','ایشالا بزودی تکمیل خواهد شد...','صفحه نخست','','inherit','closed','closed','','5-revision-v1','','','2016-07-17 20:24:32','2016-07-17 15:54:32','',5,'http://mixa.ir/news/5-revision-v1/',0,'revision','',0),(57,1,'2016-07-21 16:41:46','2016-07-21 12:11:46','اعضای تیم میکسا Mixa را به زودی بیشتر خواهید شناخت! منتظر باشید...\n\n&nbsp;\n\n&nbsp;','اعضای تیم میکسا','','inherit','closed','closed','','32-autosave-v1','','','2016-07-21 16:41:46','2016-07-21 12:11:46','',32,'http://mixa.ir/news/32-autosave-v1/',0,'revision','',0),(58,1,'2017-04-30 04:29:46','2017-04-29 23:59:46','','سرشمار','','publish','closed','closed','','%d8%b3%d8%b1%d8%b4%d9%85%d8%a7%d8%b1','','','2017-04-30 04:30:33','2017-04-30 00:00:33','',0,'http://mixa.ir/?p=58',5,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(20,2,0),(23,2,0),(24,2,0),(25,2,0),(43,2,0),(44,2,0),(45,2,0),(46,2,0),(47,2,0),(58,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,10),(3,3,'category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'اخبار','news',0),(2,'mainlist','mainlist',0),(3,'نمونه کارها','portfolio',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Javad'),(2,1,'first_name','جواد'),(3,1,'last_name','عوض‌زاده'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers',''),(13,1,'show_welcome_panel','0'),(14,1,'session_tokens','a:1:{s:64:\"55407f1e22d837b234e79b0ac0ff586a86691bd26f2797565718853af0bd8969\";a:4:{s:10:\"expiration\";i:1494719614;s:2:\"ip\";s:13:\"5.125.230.114\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\";s:5:\"login\";i:1493510014;}}'),(15,1,'wp_dashboard_quick_press_last_post_id','3'),(16,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(17,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}'),(18,1,'wp_user-settings','hidetb=1'),(19,1,'wp_user-settings-time','1468768984'),(20,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:39:\"dashboard_right_now,wp_dashboard_widget\";s:4:\"side\";s:18:\"dashboard_activity\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),(21,1,'nav_menu_recently_edited','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Javad','$P$BCmWA/jh.iKuz2b.39NL5603NMhX5F0','javad','j.evazzadeh@live.com','http://evazzadeh.com','2016-07-17 13:25:57','',0,'Javad');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-11 16:35:25
