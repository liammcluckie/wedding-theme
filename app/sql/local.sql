-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (64,'action_scheduler/migration_hook','pending','2023-01-17 19:44:31','2023-01-17 19:44:31','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1673984671;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1673984671;}',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,64,'action created','2023-01-17 19:43:31','2023-01-17 19:43:31');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-10-12 17:00:03','2022-10-12 17:00:03','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_imagify_files`
--

DROP TABLE IF EXISTS `wp_imagify_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_imagify_files` (
  `file_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `file_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `modified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `width` smallint(2) unsigned NOT NULL DEFAULT '0',
  `height` smallint(2) unsigned NOT NULL DEFAULT '0',
  `original_size` int(4) unsigned NOT NULL DEFAULT '0',
  `optimized_size` int(4) unsigned DEFAULT NULL,
  `percent` smallint(2) unsigned DEFAULT NULL,
  `optimization_level` tinyint(1) unsigned DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `path` (`path`),
  KEY `folder_id` (`folder_id`),
  KEY `optimization_level` (`optimization_level`),
  KEY `status` (`status`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_imagify_files`
--

LOCK TABLES `wp_imagify_files` WRITE;
/*!40000 ALTER TABLE `wp_imagify_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_imagify_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_imagify_folders`
--

DROP TABLE IF EXISTS `wp_imagify_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_imagify_folders` (
  `folder_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  UNIQUE KEY `path` (`path`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_imagify_folders`
--

LOCK TABLES `wp_imagify_folders` WRITE;
/*!40000 ALTER TABLE `wp_imagify_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_imagify_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_action_meta`
--

DROP TABLE IF EXISTS `wp_nf3_action_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `meta_key` longtext COLLATE utf8mb4_general_ci,
  `meta_value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_action_meta`
--

LOCK TABLES `wp_nf3_action_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_action_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_action_meta` VALUES (79,5,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (80,5,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (81,5,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (82,5,'message','Your form has been successfully submitted.','message','Your form has been successfully submitted.');
INSERT INTO `wp_nf3_action_meta` VALUES (83,5,'order','1','order','1');
INSERT INTO `wp_nf3_action_meta` VALUES (84,5,'to','{wp:admin_email}','to','{wp:admin_email}');
INSERT INTO `wp_nf3_action_meta` VALUES (85,5,'reply_to','','reply_to','');
INSERT INTO `wp_nf3_action_meta` VALUES (86,5,'email_subject','Ninja Forms Submission','email_subject','Ninja Forms Submission');
INSERT INTO `wp_nf3_action_meta` VALUES (87,5,'email_message','{fields_table}','email_message','{fields_table}');
INSERT INTO `wp_nf3_action_meta` VALUES (88,5,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (89,5,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (90,5,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (91,5,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (92,5,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (93,5,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (94,5,'success_msg','<p>Thank you, we can\'t wait to see you! </p><p>If you do not get a response from us please get in touch.</p>','success_msg','<p>Thank you, we can\'t wait to see you! </p><p>If you do not get a response from us please get in touch.</p>');
INSERT INTO `wp_nf3_action_meta` VALUES (95,5,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_action_meta` VALUES (96,6,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (97,6,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (98,6,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (99,6,'order','2','order','2');
INSERT INTO `wp_nf3_action_meta` VALUES (100,6,'to','{wp:admin_email}','to','{wp:admin_email}');
INSERT INTO `wp_nf3_action_meta` VALUES (101,6,'reply_to','ansell.mcluckie@gmail.com','reply_to','ansell.mcluckie@gmail.com');
INSERT INTO `wp_nf3_action_meta` VALUES (102,6,'email_subject','RSVP Form Submission','email_subject','RSVP Form Submission');
INSERT INTO `wp_nf3_action_meta` VALUES (103,6,'email_message','{fields_table}','email_message','{fields_table}');
INSERT INTO `wp_nf3_action_meta` VALUES (104,6,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (105,6,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (106,6,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (107,6,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (108,6,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (109,6,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (110,6,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_action_meta` VALUES (111,7,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (112,7,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (113,7,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (114,7,'order','3','order','3');
INSERT INTO `wp_nf3_action_meta` VALUES (115,7,'to','{wp:admin_email}','to','{wp:admin_email}');
INSERT INTO `wp_nf3_action_meta` VALUES (116,7,'reply_to','','reply_to','');
INSERT INTO `wp_nf3_action_meta` VALUES (117,7,'email_subject','Ninja Forms Submission','email_subject','Ninja Forms Submission');
INSERT INTO `wp_nf3_action_meta` VALUES (118,7,'email_message','{fields_table}','email_message','{fields_table}');
INSERT INTO `wp_nf3_action_meta` VALUES (119,7,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (120,7,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (121,7,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (122,7,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (123,7,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (124,7,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (125,7,'success_msg','Your form has been successfully submitted.','success_msg','Your form has been successfully submitted.');
INSERT INTO `wp_nf3_action_meta` VALUES (126,7,'redirect_url','','redirect_url','');
INSERT INTO `wp_nf3_action_meta` VALUES (127,7,'submitter_email','','submitter_email','');
INSERT INTO `wp_nf3_action_meta` VALUES (128,7,'fields-save-toggle','save_all','fields-save-toggle','save_all');
INSERT INTO `wp_nf3_action_meta` VALUES (129,7,'exception_fields','a:0:{}','exception_fields','a:0:{}');
INSERT INTO `wp_nf3_action_meta` VALUES (130,7,'set_subs_to_expire','0','set_subs_to_expire','0');
INSERT INTO `wp_nf3_action_meta` VALUES (131,7,'subs_expire_time','90','subs_expire_time','90');
INSERT INTO `wp_nf3_action_meta` VALUES (132,7,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_action_meta` VALUES (133,8,'title','','title','');
INSERT INTO `wp_nf3_action_meta` VALUES (134,8,'key','','key','');
INSERT INTO `wp_nf3_action_meta` VALUES (135,8,'type','save','type','save');
INSERT INTO `wp_nf3_action_meta` VALUES (136,8,'active','1','active','1');
INSERT INTO `wp_nf3_action_meta` VALUES (137,8,'created_at','2016-08-24 16:39:20','created_at','2016-08-24 16:39:20');
INSERT INTO `wp_nf3_action_meta` VALUES (138,8,'label','Record Submission','label','Record Submission');
INSERT INTO `wp_nf3_action_meta` VALUES (139,8,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (140,8,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (141,8,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (142,8,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}','conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}');
INSERT INTO `wp_nf3_action_meta` VALUES (143,8,'payment_gateways','','payment_gateways','');
INSERT INTO `wp_nf3_action_meta` VALUES (144,8,'payment_total','','payment_total','');
INSERT INTO `wp_nf3_action_meta` VALUES (145,8,'tag','','tag','');
INSERT INTO `wp_nf3_action_meta` VALUES (146,8,'to','{wp:admin_email}','to','{wp:admin_email}');
INSERT INTO `wp_nf3_action_meta` VALUES (147,8,'email_subject','Ninja Forms Submission','email_subject','Ninja Forms Submission');
INSERT INTO `wp_nf3_action_meta` VALUES (148,8,'email_message','{fields_table}','email_message','{fields_table}');
INSERT INTO `wp_nf3_action_meta` VALUES (149,8,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (150,8,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (151,8,'reply_to','','reply_to','');
INSERT INTO `wp_nf3_action_meta` VALUES (152,8,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (153,8,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (154,8,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (155,8,'attach_csv','','attach_csv','');
INSERT INTO `wp_nf3_action_meta` VALUES (156,8,'redirect_url','','redirect_url','');
INSERT INTO `wp_nf3_action_meta` VALUES (157,8,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (158,8,'parent_id','3','parent_id','3');
INSERT INTO `wp_nf3_action_meta` VALUES (159,9,'title','','title','');
INSERT INTO `wp_nf3_action_meta` VALUES (160,9,'key','','key','');
INSERT INTO `wp_nf3_action_meta` VALUES (161,9,'type','email','type','email');
INSERT INTO `wp_nf3_action_meta` VALUES (162,9,'active','1','active','1');
INSERT INTO `wp_nf3_action_meta` VALUES (163,9,'created_at','2016-08-24 16:39:20','created_at','2016-08-24 16:39:20');
INSERT INTO `wp_nf3_action_meta` VALUES (164,9,'label','Email Confirmation','label','Email Confirmation');
INSERT INTO `wp_nf3_action_meta` VALUES (165,9,'to','{field:email}','to','{field:email}');
INSERT INTO `wp_nf3_action_meta` VALUES (166,9,'subject','This is an email action.','subject','This is an email action.');
INSERT INTO `wp_nf3_action_meta` VALUES (167,9,'message','Hello, Ninja Forms!','message','Hello, Ninja Forms!');
INSERT INTO `wp_nf3_action_meta` VALUES (168,9,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (169,9,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (170,9,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (171,9,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}','conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}');
INSERT INTO `wp_nf3_action_meta` VALUES (172,9,'payment_gateways','','payment_gateways','');
INSERT INTO `wp_nf3_action_meta` VALUES (173,9,'payment_total','','payment_total','');
INSERT INTO `wp_nf3_action_meta` VALUES (174,9,'tag','','tag','');
INSERT INTO `wp_nf3_action_meta` VALUES (175,9,'email_subject','Submission Confirmation ','email_subject','Submission Confirmation ');
INSERT INTO `wp_nf3_action_meta` VALUES (176,9,'email_message','<p>{all_fields_table}<br></p>','email_message','<p>{all_fields_table}<br></p>');
INSERT INTO `wp_nf3_action_meta` VALUES (177,9,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (178,9,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (179,9,'reply_to','','reply_to','');
INSERT INTO `wp_nf3_action_meta` VALUES (180,9,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (181,9,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (182,9,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (183,9,'attach_csv','','attach_csv','');
INSERT INTO `wp_nf3_action_meta` VALUES (184,9,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (185,9,'parent_id','3','parent_id','3');
INSERT INTO `wp_nf3_action_meta` VALUES (186,10,'title','','title','');
INSERT INTO `wp_nf3_action_meta` VALUES (187,10,'key','','key','');
INSERT INTO `wp_nf3_action_meta` VALUES (188,10,'type','email','type','email');
INSERT INTO `wp_nf3_action_meta` VALUES (189,10,'active','1','active','1');
INSERT INTO `wp_nf3_action_meta` VALUES (190,10,'created_at','2016-08-24 16:47:39','created_at','2016-08-24 16:47:39');
INSERT INTO `wp_nf3_action_meta` VALUES (191,10,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (192,10,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (193,10,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (194,10,'label','Email Notification','label','Email Notification');
INSERT INTO `wp_nf3_action_meta` VALUES (195,10,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}','conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}');
INSERT INTO `wp_nf3_action_meta` VALUES (196,10,'payment_gateways','','payment_gateways','');
INSERT INTO `wp_nf3_action_meta` VALUES (197,10,'payment_total','','payment_total','');
INSERT INTO `wp_nf3_action_meta` VALUES (198,10,'tag','','tag','');
INSERT INTO `wp_nf3_action_meta` VALUES (199,10,'to','{system:admin_email}','to','{system:admin_email}');
INSERT INTO `wp_nf3_action_meta` VALUES (200,10,'email_subject','New message from {field:name}','email_subject','New message from {field:name}');
INSERT INTO `wp_nf3_action_meta` VALUES (201,10,'email_message','<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>','email_message','<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>');
INSERT INTO `wp_nf3_action_meta` VALUES (202,10,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (203,10,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (204,10,'reply_to','{field:email}','reply_to','{field:email}');
INSERT INTO `wp_nf3_action_meta` VALUES (205,10,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (206,10,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (207,10,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (208,10,'attach_csv','0','attach_csv','0');
INSERT INTO `wp_nf3_action_meta` VALUES (209,10,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (210,10,'parent_id','3','parent_id','3');
INSERT INTO `wp_nf3_action_meta` VALUES (211,11,'title','','title','');
INSERT INTO `wp_nf3_action_meta` VALUES (212,11,'key','','key','');
INSERT INTO `wp_nf3_action_meta` VALUES (213,11,'type','successmessage','type','successmessage');
INSERT INTO `wp_nf3_action_meta` VALUES (214,11,'active','1','active','1');
INSERT INTO `wp_nf3_action_meta` VALUES (215,11,'created_at','2016-08-24 16:39:20','created_at','2016-08-24 16:39:20');
INSERT INTO `wp_nf3_action_meta` VALUES (216,11,'label','Success Message','label','Success Message');
INSERT INTO `wp_nf3_action_meta` VALUES (217,11,'message','Thank you {field:name} for filling out my form!','message','Thank you {field:name} for filling out my form!');
INSERT INTO `wp_nf3_action_meta` VALUES (218,11,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (219,11,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (220,11,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (221,11,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}','conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}');
INSERT INTO `wp_nf3_action_meta` VALUES (222,11,'payment_gateways','','payment_gateways','');
INSERT INTO `wp_nf3_action_meta` VALUES (223,11,'payment_total','','payment_total','');
INSERT INTO `wp_nf3_action_meta` VALUES (224,11,'tag','','tag','');
INSERT INTO `wp_nf3_action_meta` VALUES (225,11,'to','{wp:admin_email}','to','{wp:admin_email}');
INSERT INTO `wp_nf3_action_meta` VALUES (226,11,'email_subject','Ninja Forms Submission','email_subject','Ninja Forms Submission');
INSERT INTO `wp_nf3_action_meta` VALUES (227,11,'email_message','{fields_table}','email_message','{fields_table}');
INSERT INTO `wp_nf3_action_meta` VALUES (228,11,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (229,11,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (230,11,'reply_to','','reply_to','');
INSERT INTO `wp_nf3_action_meta` VALUES (231,11,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (232,11,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (233,11,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (234,11,'attach_csv','','attach_csv','');
INSERT INTO `wp_nf3_action_meta` VALUES (235,11,'redirect_url','','redirect_url','');
INSERT INTO `wp_nf3_action_meta` VALUES (236,11,'success_msg','<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>','success_msg','<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>');
INSERT INTO `wp_nf3_action_meta` VALUES (237,11,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (238,11,'parent_id','3','parent_id','3');
INSERT INTO `wp_nf3_action_meta` VALUES (239,8,'success_msg','Your form has been successfully submitted.','success_msg','Your form has been successfully submitted.');
INSERT INTO `wp_nf3_action_meta` VALUES (240,8,'submitter_email','','submitter_email','');
INSERT INTO `wp_nf3_action_meta` VALUES (241,8,'fields-save-toggle','save_all','fields-save-toggle','save_all');
INSERT INTO `wp_nf3_action_meta` VALUES (242,8,'exception_fields','a:0:{}','exception_fields','a:0:{}');
INSERT INTO `wp_nf3_action_meta` VALUES (243,8,'set_subs_to_expire','0','set_subs_to_expire','0');
INSERT INTO `wp_nf3_action_meta` VALUES (244,8,'subs_expire_time','90','subs_expire_time','90');
/*!40000 ALTER TABLE `wp_nf3_action_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_actions`
--

DROP TABLE IF EXISTS `wp_nf3_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_general_ci,
  `key` longtext COLLATE utf8mb4_general_ci,
  `type` longtext COLLATE utf8mb4_general_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `label` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_actions`
--

LOCK TABLES `wp_nf3_actions` WRITE;
/*!40000 ALTER TABLE `wp_nf3_actions` DISABLE KEYS */;
INSERT INTO `wp_nf3_actions` VALUES (5,NULL,NULL,'successmessage',1,2,'2022-11-14 19:20:44','2022-11-14 19:20:44','Success Message');
INSERT INTO `wp_nf3_actions` VALUES (6,NULL,NULL,'email',1,2,'2022-11-14 19:20:44','2022-11-14 19:20:44','Admin Email');
INSERT INTO `wp_nf3_actions` VALUES (7,NULL,NULL,'save',1,2,'2022-11-14 19:20:44','2022-11-14 19:20:44','Record Submission');
INSERT INTO `wp_nf3_actions` VALUES (8,'','','save',1,3,'2016-08-24 15:39:20',NULL,'Record Submission');
INSERT INTO `wp_nf3_actions` VALUES (9,'','','email',1,3,'2016-08-24 15:39:20',NULL,'Email Confirmation');
INSERT INTO `wp_nf3_actions` VALUES (10,'','','email',1,3,'2016-08-24 15:47:39',NULL,'Email Notification');
INSERT INTO `wp_nf3_actions` VALUES (11,'','','successmessage',1,3,'2016-08-24 15:39:20',NULL,'Success Message');
/*!40000 ALTER TABLE `wp_nf3_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_chunks`
--

DROP TABLE IF EXISTS `wp_nf3_chunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_chunks`
--

LOCK TABLES `wp_nf3_chunks` WRITE;
/*!40000 ALTER TABLE `wp_nf3_chunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_chunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_field_meta`
--

DROP TABLE IF EXISTS `wp_nf3_field_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `meta_key` longtext COLLATE utf8mb4_general_ci,
  `meta_value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_field_meta`
--

LOCK TABLES `wp_nf3_field_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_field_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_field_meta` VALUES (261,5,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (262,5,'order','1','order','1');
INSERT INTO `wp_nf3_field_meta` VALUES (263,5,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (264,5,'type','repeater','type','repeater');
INSERT INTO `wp_nf3_field_meta` VALUES (265,5,'label','Guest RSVP','label','Guest RSVP');
INSERT INTO `wp_nf3_field_meta` VALUES (266,5,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (267,5,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (268,5,'desc_text','<p>Please fill out the form below for each guest attending.</p>','desc_text','<p>Please fill out the form below for each guest attending.</p>');
INSERT INTO `wp_nf3_field_meta` VALUES (269,5,'fields','a:4:{i:0;a:23:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-13\";s:5:\"label\";s:10:\"First Name\";s:4:\"type\";s:9:\"firstname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"fname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";}i:1;a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-15\";s:5:\"label\";s:9:\"Last Name\";s:4:\"type\";s:8:\"lastname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"lname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}i:2;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-19\";s:5:\"label\";s:12:\"Song Request\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:26:\"song_request_1668453218742\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:13:\"Artist & Song\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}i:3;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-21\";s:5:\"label\";s:36:\"Dietary Requirements - If applicable\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:50:\"dietary_requirements_-_if_applicable_1668453247396\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}}','fields','a:4:{i:0;a:23:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-13\";s:5:\"label\";s:10:\"First Name\";s:4:\"type\";s:9:\"firstname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"fname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";}i:1;a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-15\";s:5:\"label\";s:9:\"Last Name\";s:4:\"type\";s:8:\"lastname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"lname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}i:2;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-19\";s:5:\"label\";s:12:\"Song Request\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:26:\"song_request_1668453218742\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:13:\"Artist & Song\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}i:3;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-21\";s:5:\"label\";s:36:\"Dietary Requirements - If applicable\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:50:\"dietary_requirements_-_if_applicable_1668453247396\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}}');
INSERT INTO `wp_nf3_field_meta` VALUES (270,5,'key','guest_rsvp_1668453302292','key','guest_rsvp_1668453302292');
INSERT INTO `wp_nf3_field_meta` VALUES (271,5,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_field_meta` VALUES (272,6,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (273,6,'order','2','order','2');
INSERT INTO `wp_nf3_field_meta` VALUES (274,6,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (275,6,'label','Other information','label','Other information');
INSERT INTO `wp_nf3_field_meta` VALUES (276,6,'type','textarea','type','textarea');
INSERT INTO `wp_nf3_field_meta` VALUES (277,6,'key','other_information_1668453359906','key','other_information_1668453359906');
INSERT INTO `wp_nf3_field_meta` VALUES (278,6,'label_pos','default','label_pos','default');
INSERT INTO `wp_nf3_field_meta` VALUES (279,6,'required','','required','');
INSERT INTO `wp_nf3_field_meta` VALUES (280,6,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (281,6,'placeholder','','placeholder','');
INSERT INTO `wp_nf3_field_meta` VALUES (282,6,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (283,6,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (284,6,'input_limit','','input_limit','');
INSERT INTO `wp_nf3_field_meta` VALUES (285,6,'input_limit_type','characters','input_limit_type','characters');
INSERT INTO `wp_nf3_field_meta` VALUES (286,6,'input_limit_msg','Character(s) left','input_limit_msg','Character(s) left');
INSERT INTO `wp_nf3_field_meta` VALUES (287,6,'manual_key','','manual_key','');
INSERT INTO `wp_nf3_field_meta` VALUES (288,6,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (289,6,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (290,6,'textarea_rte','','textarea_rte','');
INSERT INTO `wp_nf3_field_meta` VALUES (291,6,'disable_rte_mobile','','disable_rte_mobile','');
INSERT INTO `wp_nf3_field_meta` VALUES (292,6,'textarea_media','','textarea_media','');
INSERT INTO `wp_nf3_field_meta` VALUES (293,6,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (294,6,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_field_meta` VALUES (295,7,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (296,7,'order','9999','order','9999');
INSERT INTO `wp_nf3_field_meta` VALUES (297,7,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (298,7,'type','submit','type','submit');
INSERT INTO `wp_nf3_field_meta` VALUES (299,7,'label','Submit','label','Submit');
INSERT INTO `wp_nf3_field_meta` VALUES (300,7,'processing_label','Processing','processing_label','Processing');
INSERT INTO `wp_nf3_field_meta` VALUES (301,7,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (302,7,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (303,7,'key','submit_1668453643311','key','submit_1668453643311');
INSERT INTO `wp_nf3_field_meta` VALUES (304,8,'label','Name','label','Name');
INSERT INTO `wp_nf3_field_meta` VALUES (305,8,'key','name','key','name');
INSERT INTO `wp_nf3_field_meta` VALUES (306,8,'parent_id','3','parent_id','3');
INSERT INTO `wp_nf3_field_meta` VALUES (307,8,'type','textbox','type','textbox');
INSERT INTO `wp_nf3_field_meta` VALUES (308,8,'created_at','2016-08-24 16:39:20','created_at','2016-08-24 16:39:20');
INSERT INTO `wp_nf3_field_meta` VALUES (309,8,'label_pos','above','label_pos','above');
INSERT INTO `wp_nf3_field_meta` VALUES (310,8,'required','1','required','1');
INSERT INTO `wp_nf3_field_meta` VALUES (311,8,'order','1','order','1');
INSERT INTO `wp_nf3_field_meta` VALUES (312,8,'placeholder','','placeholder','');
INSERT INTO `wp_nf3_field_meta` VALUES (313,8,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (314,8,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (315,8,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (316,8,'objectType','Field','objectType','Field');
INSERT INTO `wp_nf3_field_meta` VALUES (317,8,'objectDomain','fields','objectDomain','fields');
INSERT INTO `wp_nf3_field_meta` VALUES (318,8,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (319,8,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (320,8,'input_limit','','input_limit','');
INSERT INTO `wp_nf3_field_meta` VALUES (321,8,'input_limit_type','characters','input_limit_type','characters');
INSERT INTO `wp_nf3_field_meta` VALUES (322,8,'input_limit_msg','Character(s) left','input_limit_msg','Character(s) left');
INSERT INTO `wp_nf3_field_meta` VALUES (323,8,'manual_key','','manual_key','');
INSERT INTO `wp_nf3_field_meta` VALUES (324,8,'disable_input','','disable_input','');
INSERT INTO `wp_nf3_field_meta` VALUES (325,8,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (326,8,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (327,8,'desc_text','','desc_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (328,8,'disable_browser_autocomplete','','disable_browser_autocomplete','');
INSERT INTO `wp_nf3_field_meta` VALUES (329,8,'mask','','mask','');
INSERT INTO `wp_nf3_field_meta` VALUES (330,8,'custom_mask','','custom_mask','');
INSERT INTO `wp_nf3_field_meta` VALUES (331,8,'wrap_styles_background-color','','wrap_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (332,8,'wrap_styles_border','','wrap_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (333,8,'wrap_styles_border-style','','wrap_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (334,8,'wrap_styles_border-color','','wrap_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (335,8,'wrap_styles_color','','wrap_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (336,8,'wrap_styles_height','','wrap_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (337,8,'wrap_styles_width','','wrap_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (338,8,'wrap_styles_font-size','','wrap_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (339,8,'wrap_styles_margin','','wrap_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (340,8,'wrap_styles_padding','','wrap_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (341,8,'wrap_styles_display','','wrap_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (342,8,'wrap_styles_float','','wrap_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (343,8,'wrap_styles_show_advanced_css','0','wrap_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (344,8,'wrap_styles_advanced','','wrap_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (345,8,'label_styles_background-color','','label_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (346,8,'label_styles_border','','label_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (347,8,'label_styles_border-style','','label_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (348,8,'label_styles_border-color','','label_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (349,8,'label_styles_color','','label_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (350,8,'label_styles_height','','label_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (351,8,'label_styles_width','','label_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (352,8,'label_styles_font-size','','label_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (353,8,'label_styles_margin','','label_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (354,8,'label_styles_padding','','label_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (355,8,'label_styles_display','','label_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (356,8,'label_styles_float','','label_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (357,8,'label_styles_show_advanced_css','0','label_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (358,8,'label_styles_advanced','','label_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (359,8,'element_styles_background-color','','element_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (360,8,'element_styles_border','','element_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (361,8,'element_styles_border-style','','element_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (362,8,'element_styles_border-color','','element_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (363,8,'element_styles_color','','element_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (364,8,'element_styles_height','','element_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (365,8,'element_styles_width','','element_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (366,8,'element_styles_font-size','','element_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (367,8,'element_styles_margin','','element_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (368,8,'element_styles_padding','','element_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (369,8,'element_styles_display','','element_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (370,8,'element_styles_float','','element_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (371,8,'element_styles_show_advanced_css','0','element_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (372,8,'element_styles_advanced','','element_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (373,8,'cellcid','c3277','cellcid','c3277');
INSERT INTO `wp_nf3_field_meta` VALUES (374,9,'label','Email','label','Email');
INSERT INTO `wp_nf3_field_meta` VALUES (375,9,'key','email','key','email');
INSERT INTO `wp_nf3_field_meta` VALUES (376,9,'parent_id','3','parent_id','3');
INSERT INTO `wp_nf3_field_meta` VALUES (377,9,'type','email','type','email');
INSERT INTO `wp_nf3_field_meta` VALUES (378,9,'created_at','2016-08-24 16:39:20','created_at','2016-08-24 16:39:20');
INSERT INTO `wp_nf3_field_meta` VALUES (379,9,'label_pos','above','label_pos','above');
INSERT INTO `wp_nf3_field_meta` VALUES (380,9,'required','1','required','1');
INSERT INTO `wp_nf3_field_meta` VALUES (381,9,'order','2','order','2');
INSERT INTO `wp_nf3_field_meta` VALUES (382,9,'placeholder','','placeholder','');
INSERT INTO `wp_nf3_field_meta` VALUES (383,9,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (384,9,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (385,9,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (386,9,'objectType','Field','objectType','Field');
INSERT INTO `wp_nf3_field_meta` VALUES (387,9,'objectDomain','fields','objectDomain','fields');
INSERT INTO `wp_nf3_field_meta` VALUES (388,9,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (389,9,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (390,9,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (391,9,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (392,9,'desc_text','','desc_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (393,9,'wrap_styles_background-color','','wrap_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (394,9,'wrap_styles_border','','wrap_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (395,9,'wrap_styles_border-style','','wrap_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (396,9,'wrap_styles_border-color','','wrap_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (397,9,'wrap_styles_color','','wrap_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (398,9,'wrap_styles_height','','wrap_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (399,9,'wrap_styles_width','','wrap_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (400,9,'wrap_styles_font-size','','wrap_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (401,9,'wrap_styles_margin','','wrap_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (402,9,'wrap_styles_padding','','wrap_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (403,9,'wrap_styles_display','','wrap_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (404,9,'wrap_styles_float','','wrap_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (405,9,'wrap_styles_show_advanced_css','0','wrap_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (406,9,'wrap_styles_advanced','','wrap_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (407,9,'label_styles_background-color','','label_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (408,9,'label_styles_border','','label_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (409,9,'label_styles_border-style','','label_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (410,9,'label_styles_border-color','','label_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (411,9,'label_styles_color','','label_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (412,9,'label_styles_height','','label_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (413,9,'label_styles_width','','label_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (414,9,'label_styles_font-size','','label_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (415,9,'label_styles_margin','','label_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (416,9,'label_styles_padding','','label_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (417,9,'label_styles_display','','label_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (418,9,'label_styles_float','','label_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (419,9,'label_styles_show_advanced_css','0','label_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (420,9,'label_styles_advanced','','label_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (421,9,'element_styles_background-color','','element_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (422,9,'element_styles_border','','element_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (423,9,'element_styles_border-style','','element_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (424,9,'element_styles_border-color','','element_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (425,9,'element_styles_color','','element_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (426,9,'element_styles_height','','element_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (427,9,'element_styles_width','','element_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (428,9,'element_styles_font-size','','element_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (429,9,'element_styles_margin','','element_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (430,9,'element_styles_padding','','element_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (431,9,'element_styles_display','','element_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (432,9,'element_styles_float','','element_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (433,9,'element_styles_show_advanced_css','0','element_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (434,9,'element_styles_advanced','','element_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (435,9,'cellcid','c3281','cellcid','c3281');
INSERT INTO `wp_nf3_field_meta` VALUES (436,10,'label','Message','label','Message');
INSERT INTO `wp_nf3_field_meta` VALUES (437,10,'key','message','key','message');
INSERT INTO `wp_nf3_field_meta` VALUES (438,10,'parent_id','3','parent_id','3');
INSERT INTO `wp_nf3_field_meta` VALUES (439,10,'type','textarea','type','textarea');
INSERT INTO `wp_nf3_field_meta` VALUES (440,10,'created_at','2016-08-24 16:39:20','created_at','2016-08-24 16:39:20');
INSERT INTO `wp_nf3_field_meta` VALUES (441,10,'label_pos','above','label_pos','above');
INSERT INTO `wp_nf3_field_meta` VALUES (442,10,'required','1','required','1');
INSERT INTO `wp_nf3_field_meta` VALUES (443,10,'order','3','order','3');
INSERT INTO `wp_nf3_field_meta` VALUES (444,10,'placeholder','','placeholder','');
INSERT INTO `wp_nf3_field_meta` VALUES (445,10,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (446,10,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (447,10,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (448,10,'objectType','Field','objectType','Field');
INSERT INTO `wp_nf3_field_meta` VALUES (449,10,'objectDomain','fields','objectDomain','fields');
INSERT INTO `wp_nf3_field_meta` VALUES (450,10,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (451,10,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (452,10,'input_limit','','input_limit','');
INSERT INTO `wp_nf3_field_meta` VALUES (453,10,'input_limit_type','characters','input_limit_type','characters');
INSERT INTO `wp_nf3_field_meta` VALUES (454,10,'input_limit_msg','Character(s) left','input_limit_msg','Character(s) left');
INSERT INTO `wp_nf3_field_meta` VALUES (455,10,'manual_key','','manual_key','');
INSERT INTO `wp_nf3_field_meta` VALUES (456,10,'disable_input','','disable_input','');
INSERT INTO `wp_nf3_field_meta` VALUES (457,10,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (458,10,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (459,10,'desc_text','','desc_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (460,10,'disable_browser_autocomplete','','disable_browser_autocomplete','');
INSERT INTO `wp_nf3_field_meta` VALUES (461,10,'textarea_rte','','textarea_rte','');
INSERT INTO `wp_nf3_field_meta` VALUES (462,10,'disable_rte_mobile','','disable_rte_mobile','');
INSERT INTO `wp_nf3_field_meta` VALUES (463,10,'textarea_media','','textarea_media','');
INSERT INTO `wp_nf3_field_meta` VALUES (464,10,'wrap_styles_background-color','','wrap_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (465,10,'wrap_styles_border','','wrap_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (466,10,'wrap_styles_border-style','','wrap_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (467,10,'wrap_styles_border-color','','wrap_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (468,10,'wrap_styles_color','','wrap_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (469,10,'wrap_styles_height','','wrap_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (470,10,'wrap_styles_width','','wrap_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (471,10,'wrap_styles_font-size','','wrap_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (472,10,'wrap_styles_margin','','wrap_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (473,10,'wrap_styles_padding','','wrap_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (474,10,'wrap_styles_display','','wrap_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (475,10,'wrap_styles_float','','wrap_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (476,10,'wrap_styles_show_advanced_css','0','wrap_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (477,10,'wrap_styles_advanced','','wrap_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (478,10,'label_styles_background-color','','label_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (479,10,'label_styles_border','','label_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (480,10,'label_styles_border-style','','label_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (481,10,'label_styles_border-color','','label_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (482,10,'label_styles_color','','label_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (483,10,'label_styles_height','','label_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (484,10,'label_styles_width','','label_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (485,10,'label_styles_font-size','','label_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (486,10,'label_styles_margin','','label_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (487,10,'label_styles_padding','','label_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (488,10,'label_styles_display','','label_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (489,10,'label_styles_float','','label_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (490,10,'label_styles_show_advanced_css','0','label_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (491,10,'label_styles_advanced','','label_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (492,10,'element_styles_background-color','','element_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (493,10,'element_styles_border','','element_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (494,10,'element_styles_border-style','','element_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (495,10,'element_styles_border-color','','element_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (496,10,'element_styles_color','','element_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (497,10,'element_styles_height','','element_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (498,10,'element_styles_width','','element_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (499,10,'element_styles_font-size','','element_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (500,10,'element_styles_margin','','element_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (501,10,'element_styles_padding','','element_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (502,10,'element_styles_display','','element_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (503,10,'element_styles_float','','element_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (504,10,'element_styles_show_advanced_css','0','element_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (505,10,'element_styles_advanced','','element_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (506,10,'cellcid','c3284','cellcid','c3284');
INSERT INTO `wp_nf3_field_meta` VALUES (507,11,'label','Submit','label','Submit');
INSERT INTO `wp_nf3_field_meta` VALUES (508,11,'key','submit','key','submit');
INSERT INTO `wp_nf3_field_meta` VALUES (509,11,'parent_id','3','parent_id','3');
INSERT INTO `wp_nf3_field_meta` VALUES (510,11,'type','submit','type','submit');
INSERT INTO `wp_nf3_field_meta` VALUES (511,11,'created_at','2016-08-24 16:39:20','created_at','2016-08-24 16:39:20');
INSERT INTO `wp_nf3_field_meta` VALUES (512,11,'processing_label','Processing','processing_label','Processing');
INSERT INTO `wp_nf3_field_meta` VALUES (513,11,'order','5','order','5');
INSERT INTO `wp_nf3_field_meta` VALUES (514,11,'objectType','Field','objectType','Field');
INSERT INTO `wp_nf3_field_meta` VALUES (515,11,'objectDomain','fields','objectDomain','fields');
INSERT INTO `wp_nf3_field_meta` VALUES (516,11,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (517,11,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (518,11,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (519,11,'wrap_styles_background-color','','wrap_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (520,11,'wrap_styles_border','','wrap_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (521,11,'wrap_styles_border-style','','wrap_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (522,11,'wrap_styles_border-color','','wrap_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (523,11,'wrap_styles_color','','wrap_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (524,11,'wrap_styles_height','','wrap_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (525,11,'wrap_styles_width','','wrap_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (526,11,'wrap_styles_font-size','','wrap_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (527,11,'wrap_styles_margin','','wrap_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (528,11,'wrap_styles_padding','','wrap_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (529,11,'wrap_styles_display','','wrap_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (530,11,'wrap_styles_float','','wrap_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (531,11,'wrap_styles_show_advanced_css','0','wrap_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (532,11,'wrap_styles_advanced','','wrap_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (533,11,'label_styles_background-color','','label_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (534,11,'label_styles_border','','label_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (535,11,'label_styles_border-style','','label_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (536,11,'label_styles_border-color','','label_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (537,11,'label_styles_color','','label_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (538,11,'label_styles_height','','label_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (539,11,'label_styles_width','','label_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (540,11,'label_styles_font-size','','label_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (541,11,'label_styles_margin','','label_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (542,11,'label_styles_padding','','label_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (543,11,'label_styles_display','','label_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (544,11,'label_styles_float','','label_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (545,11,'label_styles_show_advanced_css','0','label_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (546,11,'label_styles_advanced','','label_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (547,11,'element_styles_background-color','','element_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (548,11,'element_styles_border','','element_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (549,11,'element_styles_border-style','','element_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (550,11,'element_styles_border-color','','element_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (551,11,'element_styles_color','','element_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (552,11,'element_styles_height','','element_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (553,11,'element_styles_width','','element_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (554,11,'element_styles_font-size','','element_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (555,11,'element_styles_margin','','element_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (556,11,'element_styles_padding','','element_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (557,11,'element_styles_display','','element_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (558,11,'element_styles_float','','element_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (559,11,'element_styles_show_advanced_css','0','element_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (560,11,'element_styles_advanced','','element_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (561,11,'submit_element_hover_styles_background-color','','submit_element_hover_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (562,11,'submit_element_hover_styles_border','','submit_element_hover_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (563,11,'submit_element_hover_styles_border-style','','submit_element_hover_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (564,11,'submit_element_hover_styles_border-color','','submit_element_hover_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (565,11,'submit_element_hover_styles_color','','submit_element_hover_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (566,11,'submit_element_hover_styles_height','','submit_element_hover_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (567,11,'submit_element_hover_styles_width','','submit_element_hover_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (568,11,'submit_element_hover_styles_font-size','','submit_element_hover_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (569,11,'submit_element_hover_styles_margin','','submit_element_hover_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (570,11,'submit_element_hover_styles_padding','','submit_element_hover_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (571,11,'submit_element_hover_styles_display','','submit_element_hover_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (572,11,'submit_element_hover_styles_float','','submit_element_hover_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (573,11,'submit_element_hover_styles_show_advanced_css','0','submit_element_hover_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (574,11,'submit_element_hover_styles_advanced','','submit_element_hover_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (575,11,'cellcid','c3287','cellcid','c3287');
INSERT INTO `wp_nf3_field_meta` VALUES (576,8,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (577,8,'field_label','Name','field_label','Name');
INSERT INTO `wp_nf3_field_meta` VALUES (578,8,'field_key','name','field_key','name');
INSERT INTO `wp_nf3_field_meta` VALUES (579,8,'custom_name_attribute','','custom_name_attribute','');
INSERT INTO `wp_nf3_field_meta` VALUES (580,8,'personally_identifiable','','personally_identifiable','');
INSERT INTO `wp_nf3_field_meta` VALUES (581,8,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (582,9,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (583,9,'field_label','Email','field_label','Email');
INSERT INTO `wp_nf3_field_meta` VALUES (584,9,'field_key','email','field_key','email');
INSERT INTO `wp_nf3_field_meta` VALUES (585,9,'custom_name_attribute','email','custom_name_attribute','email');
INSERT INTO `wp_nf3_field_meta` VALUES (586,9,'personally_identifiable','1','personally_identifiable','1');
INSERT INTO `wp_nf3_field_meta` VALUES (587,9,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (588,10,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (589,10,'field_label','Message','field_label','Message');
INSERT INTO `wp_nf3_field_meta` VALUES (590,10,'field_key','message','field_key','message');
INSERT INTO `wp_nf3_field_meta` VALUES (591,10,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (592,11,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (593,11,'field_label','Submit','field_label','Submit');
INSERT INTO `wp_nf3_field_meta` VALUES (594,11,'field_key','submit','field_key','submit');
/*!40000 ALTER TABLE `wp_nf3_field_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_fields`
--

DROP TABLE IF EXISTS `wp_nf3_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` longtext COLLATE utf8mb4_general_ci,
  `key` longtext COLLATE utf8mb4_general_ci,
  `type` longtext COLLATE utf8mb4_general_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext COLLATE utf8mb4_general_ci,
  `field_key` longtext COLLATE utf8mb4_general_ci,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext COLLATE utf8mb4_general_ci,
  `label_pos` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_fields`
--

LOCK TABLES `wp_nf3_fields` WRITE;
/*!40000 ALTER TABLE `wp_nf3_fields` DISABLE KEYS */;
INSERT INTO `wp_nf3_fields` VALUES (5,'Guest RSVP','guest_rsvp_1668453302292','repeater',2,NULL,NULL,'Guest RSVP','guest_rsvp_1668453302292',1,_binary '\0','','',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (6,'Other information','other_information_1668453359906','textarea',2,NULL,NULL,'Other information','other_information_1668453359906',2,_binary '\0','','default',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (7,'Submit','submit_1668453643311','submit',2,NULL,NULL,'Submit','submit_1668453643311',9999,_binary '\0','','',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (8,'Name','name','textbox',3,NULL,NULL,'Name','name',1,_binary '','','above',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (9,'Email','email','email',3,NULL,NULL,'Email','email',2,_binary '','','above',_binary '');
INSERT INTO `wp_nf3_fields` VALUES (10,'Message','message','textarea',3,NULL,NULL,'Message','message',3,_binary '','','above',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (11,'Submit','submit','submit',3,NULL,NULL,'Submit','submit',5,_binary '\0','','',_binary '\0');
/*!40000 ALTER TABLE `wp_nf3_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_form_meta`
--

DROP TABLE IF EXISTS `wp_nf3_form_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `meta_key` longtext COLLATE utf8mb4_general_ci,
  `meta_value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_form_meta`
--

LOCK TABLES `wp_nf3_form_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_form_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_form_meta` VALUES (99,2,'objectType','Form Setting','objectType','Form Setting');
INSERT INTO `wp_nf3_form_meta` VALUES (100,2,'editActive','','editActive','');
INSERT INTO `wp_nf3_form_meta` VALUES (101,2,'show_title','1','show_title','1');
INSERT INTO `wp_nf3_form_meta` VALUES (102,2,'allow_public_link','0','allow_public_link','0');
INSERT INTO `wp_nf3_form_meta` VALUES (103,2,'embed_form','','embed_form','');
INSERT INTO `wp_nf3_form_meta` VALUES (104,2,'clear_complete','1','clear_complete','1');
INSERT INTO `wp_nf3_form_meta` VALUES (105,2,'hide_complete','1','hide_complete','1');
INSERT INTO `wp_nf3_form_meta` VALUES (106,2,'default_label_pos','above','default_label_pos','above');
INSERT INTO `wp_nf3_form_meta` VALUES (107,2,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_form_meta` VALUES (108,2,'element_class','','element_class','');
INSERT INTO `wp_nf3_form_meta` VALUES (109,2,'key','','key','');
INSERT INTO `wp_nf3_form_meta` VALUES (110,2,'add_submit','1','add_submit','1');
INSERT INTO `wp_nf3_form_meta` VALUES (111,2,'currency','','currency','');
INSERT INTO `wp_nf3_form_meta` VALUES (112,2,'unique_field_error','A form with this value has already been submitted.','unique_field_error','A form with this value has already been submitted.');
INSERT INTO `wp_nf3_form_meta` VALUES (113,2,'logged_in','','logged_in','');
INSERT INTO `wp_nf3_form_meta` VALUES (114,2,'not_logged_in_msg','','not_logged_in_msg','');
INSERT INTO `wp_nf3_form_meta` VALUES (115,2,'sub_limit_msg','The form has reached its submission limit.','sub_limit_msg','The form has reached its submission limit.');
INSERT INTO `wp_nf3_form_meta` VALUES (116,2,'calculations','a:0:{}','calculations','a:0:{}');
INSERT INTO `wp_nf3_form_meta` VALUES (117,2,'formContentData','a:3:{i:0;s:24:\"guest_rsvp_1668453302292\";i:1;s:31:\"other_information_1668453359906\";i:2;s:20:\"submit_1668453643311\";}','formContentData','a:3:{i:0;s:24:\"guest_rsvp_1668453302292\";i:1;s:31:\"other_information_1668453359906\";i:2;s:20:\"submit_1668453643311\";}');
INSERT INTO `wp_nf3_form_meta` VALUES (118,3,'title','Contact Me','title','Contact Me');
INSERT INTO `wp_nf3_form_meta` VALUES (119,3,'key','','key','');
INSERT INTO `wp_nf3_form_meta` VALUES (120,3,'created_at','2016-08-24 16:39:20','created_at','2016-08-24 16:39:20');
INSERT INTO `wp_nf3_form_meta` VALUES (121,3,'default_label_pos','above','default_label_pos','above');
INSERT INTO `wp_nf3_form_meta` VALUES (122,3,'conditions','a:0:{}','conditions','a:0:{}');
INSERT INTO `wp_nf3_form_meta` VALUES (123,3,'objectType','Form Setting','objectType','Form Setting');
INSERT INTO `wp_nf3_form_meta` VALUES (124,3,'editActive','','editActive','');
INSERT INTO `wp_nf3_form_meta` VALUES (125,3,'show_title','1','show_title','1');
INSERT INTO `wp_nf3_form_meta` VALUES (126,3,'clear_complete','1','clear_complete','1');
INSERT INTO `wp_nf3_form_meta` VALUES (127,3,'hide_complete','1','hide_complete','1');
INSERT INTO `wp_nf3_form_meta` VALUES (128,3,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_form_meta` VALUES (129,3,'element_class','','element_class','');
INSERT INTO `wp_nf3_form_meta` VALUES (130,3,'add_submit','1','add_submit','1');
INSERT INTO `wp_nf3_form_meta` VALUES (131,3,'logged_in','0','logged_in','0');
INSERT INTO `wp_nf3_form_meta` VALUES (132,3,'not_logged_in_msg','','not_logged_in_msg','');
INSERT INTO `wp_nf3_form_meta` VALUES (133,3,'sub_limit_number','','sub_limit_number','');
INSERT INTO `wp_nf3_form_meta` VALUES (134,3,'sub_limit_msg','','sub_limit_msg','');
INSERT INTO `wp_nf3_form_meta` VALUES (135,3,'calculations','a:0:{}','calculations','a:0:{}');
INSERT INTO `wp_nf3_form_meta` VALUES (136,3,'formContentData','a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}','formContentData','a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}');
INSERT INTO `wp_nf3_form_meta` VALUES (137,3,'container_styles_background-color','','container_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (138,3,'container_styles_border','','container_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (139,3,'container_styles_border-style','','container_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (140,3,'container_styles_border-color','','container_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (141,3,'container_styles_color','','container_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (142,3,'container_styles_height','','container_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (143,3,'container_styles_width','','container_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (144,3,'container_styles_font-size','','container_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (145,3,'container_styles_margin','','container_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (146,3,'container_styles_padding','','container_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (147,3,'container_styles_display','','container_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (148,3,'container_styles_float','','container_styles_float','');
INSERT INTO `wp_nf3_form_meta` VALUES (149,3,'container_styles_show_advanced_css','0','container_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (150,3,'container_styles_advanced','','container_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (151,3,'title_styles_background-color','','title_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (152,3,'title_styles_border','','title_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (153,3,'title_styles_border-style','','title_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (154,3,'title_styles_border-color','','title_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (155,3,'title_styles_color','','title_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (156,3,'title_styles_height','','title_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (157,3,'title_styles_width','','title_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (158,3,'title_styles_font-size','','title_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (159,3,'title_styles_margin','','title_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (160,3,'title_styles_padding','','title_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (161,3,'title_styles_display','','title_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (162,3,'title_styles_float','','title_styles_float','');
INSERT INTO `wp_nf3_form_meta` VALUES (163,3,'title_styles_show_advanced_css','0','title_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (164,3,'title_styles_advanced','','title_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (165,3,'row_styles_background-color','','row_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (166,3,'row_styles_border','','row_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (167,3,'row_styles_border-style','','row_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (168,3,'row_styles_border-color','','row_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (169,3,'row_styles_color','','row_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (170,3,'row_styles_height','','row_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (171,3,'row_styles_width','','row_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (172,3,'row_styles_font-size','','row_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (173,3,'row_styles_margin','','row_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (174,3,'row_styles_padding','','row_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (175,3,'row_styles_display','','row_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (176,3,'row_styles_show_advanced_css','0','row_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (177,3,'row_styles_advanced','','row_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (178,3,'row-odd_styles_background-color','','row-odd_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (179,3,'row-odd_styles_border','','row-odd_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (180,3,'row-odd_styles_border-style','','row-odd_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (181,3,'row-odd_styles_border-color','','row-odd_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (182,3,'row-odd_styles_color','','row-odd_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (183,3,'row-odd_styles_height','','row-odd_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (184,3,'row-odd_styles_width','','row-odd_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (185,3,'row-odd_styles_font-size','','row-odd_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (186,3,'row-odd_styles_margin','','row-odd_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (187,3,'row-odd_styles_padding','','row-odd_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (188,3,'row-odd_styles_display','','row-odd_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (189,3,'row-odd_styles_show_advanced_css','0','row-odd_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (190,3,'row-odd_styles_advanced','','row-odd_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (191,3,'success-msg_styles_background-color','','success-msg_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (192,3,'success-msg_styles_border','','success-msg_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (193,3,'success-msg_styles_border-style','','success-msg_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (194,3,'success-msg_styles_border-color','','success-msg_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (195,3,'success-msg_styles_color','','success-msg_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (196,3,'success-msg_styles_height','','success-msg_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (197,3,'success-msg_styles_width','','success-msg_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (198,3,'success-msg_styles_font-size','','success-msg_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (199,3,'success-msg_styles_margin','','success-msg_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (200,3,'success-msg_styles_padding','','success-msg_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (201,3,'success-msg_styles_display','','success-msg_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (202,3,'success-msg_styles_show_advanced_css','0','success-msg_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (203,3,'success-msg_styles_advanced','','success-msg_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (204,3,'error_msg_styles_background-color','','error_msg_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (205,3,'error_msg_styles_border','','error_msg_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (206,3,'error_msg_styles_border-style','','error_msg_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (207,3,'error_msg_styles_border-color','','error_msg_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (208,3,'error_msg_styles_color','','error_msg_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (209,3,'error_msg_styles_height','','error_msg_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (210,3,'error_msg_styles_width','','error_msg_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (211,3,'error_msg_styles_font-size','','error_msg_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (212,3,'error_msg_styles_margin','','error_msg_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (213,3,'error_msg_styles_padding','','error_msg_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (214,3,'error_msg_styles_display','','error_msg_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (215,3,'error_msg_styles_show_advanced_css','0','error_msg_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (216,3,'error_msg_styles_advanced','','error_msg_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (217,3,'seq_num',NULL,'seq_num',NULL);
INSERT INTO `wp_nf3_form_meta` VALUES (218,3,'allow_public_link','0','allow_public_link','0');
INSERT INTO `wp_nf3_form_meta` VALUES (219,3,'embed_form','','embed_form','');
INSERT INTO `wp_nf3_form_meta` VALUES (220,3,'currency','','currency','');
INSERT INTO `wp_nf3_form_meta` VALUES (221,3,'unique_field_error','A form with this value has already been submitted.','unique_field_error','A form with this value has already been submitted.');
/*!40000 ALTER TABLE `wp_nf3_form_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_forms`
--

DROP TABLE IF EXISTS `wp_nf3_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_general_ci,
  `key` longtext COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext COLLATE utf8mb4_general_ci,
  `default_label_pos` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_forms`
--

LOCK TABLES `wp_nf3_forms` WRITE;
/*!40000 ALTER TABLE `wp_nf3_forms` DISABLE KEYS */;
INSERT INTO `wp_nf3_forms` VALUES (2,'RSVP Form',NULL,'2022-11-14 19:20:44','2022-11-14 19:20:44',NULL,NULL,'RSVP Form','above',_binary '',_binary '',_binary '',_binary '\0',NULL);
INSERT INTO `wp_nf3_forms` VALUES (3,'Contact Me',NULL,'2016-08-24 15:39:20',NULL,NULL,NULL,'Contact Me','above',_binary '',_binary '',_binary '',_binary '\0',NULL);
/*!40000 ALTER TABLE `wp_nf3_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_object_meta`
--

DROP TABLE IF EXISTS `wp_nf3_object_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `meta_key` longtext COLLATE utf8mb4_general_ci,
  `meta_value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_object_meta`
--

LOCK TABLES `wp_nf3_object_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_object_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_object_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_objects`
--

DROP TABLE IF EXISTS `wp_nf3_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext COLLATE utf8mb4_general_ci,
  `title` longtext COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_objects`
--

LOCK TABLES `wp_nf3_objects` WRITE;
/*!40000 ALTER TABLE `wp_nf3_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_relationships`
--

DROP TABLE IF EXISTS `wp_nf3_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_relationships`
--

LOCK TABLES `wp_nf3_relationships` WRITE;
/*!40000 ALTER TABLE `wp_nf3_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_upgrades`
--

DROP TABLE IF EXISTS `wp_nf3_upgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext COLLATE utf8mb4_general_ci,
  `stage` int(11) NOT NULL DEFAULT '0',
  `maintenance` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_upgrades`
--

LOCK TABLES `wp_nf3_upgrades` WRITE;
/*!40000 ALTER TABLE `wp_nf3_upgrades` DISABLE KEYS */;
INSERT INTO `wp_nf3_upgrades` VALUES (2,'a:7:{s:2:\"id\";i:2;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:3:{i:0;a:2:{s:8:\"settings\";a:13:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:4:\"type\";s:8:\"repeater\";s:5:\"label\";s:10:\"Guest RSVP\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:9:\"desc_text\";s:63:\"<p>Please fill out the form below for each guest attending.</p>\";s:6:\"fields\";a:4:{i:0;a:23:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:3:\"5.1\";s:5:\"label\";s:10:\"First Name\";s:4:\"type\";s:9:\"firstname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"fname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";}i:1;a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:3:\"5.2\";s:5:\"label\";s:9:\"Last Name\";s:4:\"type\";s:8:\"lastname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"lname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}i:2;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:3:\"5.3\";s:5:\"label\";s:12:\"Song Request\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:26:\"song_request_1668453218742\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:13:\"Artist & Song\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}i:3;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:3:\"5.4\";s:5:\"label\";s:36:\"Dietary Requirements - If applicable\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:50:\"dietary_requirements_-_if_applicable_1668453247396\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}}s:3:\"key\";s:24:\"guest_rsvp_1668453302292\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"5\";}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:17:\"Other information\";s:4:\"type\";s:8:\"textarea\";s:3:\"key\";s:31:\"other_information_1668453359906\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"6\";}i:2;a:2:{s:8:\"settings\";a:11:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:9999;s:11:\"idAttribute\";s:2:\"id\";s:4:\"type\";s:6:\"submit\";s:5:\"label\";s:6:\"Submit\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:20:\"submit_1668453643311\";}s:2:\"id\";s:1:\"7\";}}s:7:\"actions\";a:3:{i:0;a:2:{s:8:\"settings\";a:20:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:15:\"Success Message\";s:4:\"type\";s:14:\"successmessage\";s:7:\"message\";s:42:\"Your form has been successfully submitted.\";s:5:\"order\";i:1;s:6:\"active\";b:1;s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:11:\"success_msg\";s:108:\"<p>Thank you, we can\'t wait to see you! </p><p>If you do not get a response from us please get in touch.</p>\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:18:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:11:\"Admin Email\";s:4:\"type\";s:5:\"email\";s:5:\"order\";i:2;s:6:\"active\";b:1;s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:25:\"ansell.mcluckie@gmail.com\";s:13:\"email_subject\";s:20:\"RSVP Form Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:17:\"Record Submission\";s:4:\"type\";s:4:\"save\";s:5:\"order\";i:3;s:6:\"active\";b:1;s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:7;}}s:8:\"settings\";a:20:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:0;s:5:\"title\";s:9:\"RSVP Form\";s:10:\"show_title\";i:1;s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:14:\"clear_complete\";i:1;s:13:\"hide_complete\";i:1;s:17:\"default_label_pos\";s:5:\"above\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:0:\"\";s:10:\"add_submit\";i:1;s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:9:\"logged_in\";b:0;s:17:\"not_logged_in_msg\";s:0:\"\";s:13:\"sub_limit_msg\";s:42:\"The form has reached its submission limit.\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:3:{i:0;s:24:\"guest_rsvp_1668453302292\";i:1;s:31:\"other_information_1668453359906\";i:2;s:20:\"submit_1668453643311\";}}s:14:\"deleted_fields\";a:4:{s:5:\"tmp-3\";s:5:\"tmp-3\";s:5:\"tmp-1\";s:5:\"tmp-1\";s:5:\"tmp-2\";s:5:\"tmp-2\";s:5:\"tmp-7\";s:5:\"tmp-7\";}s:15:\"deleted_actions\";a:0:{}}',4,_binary '\0');
INSERT INTO `wp_nf3_upgrades` VALUES (3,'a:7:{s:2:\"id\";i:3;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:75:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"1\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:11:\"field_label\";s:4:\"Name\";s:9:\"field_key\";s:4:\"name\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:8;}i:1;a:2:{s:8:\"settings\";a:67:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"2\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:11:\"field_label\";s:5:\"Email\";s:9:\"field_key\";s:5:\"email\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:9;}i:2;a:2:{s:8:\"settings\";a:74:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"3\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:11:\"field_label\";s:7:\"Message\";s:9:\"field_key\";s:7:\"message\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:10;}i:3;a:2:{s:8:\"settings\";a:71:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"5\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:11:\"field_label\";s:6:\"Submit\";s:9:\"field_key\";s:6:\"submit\";}s:2:\"id\";i:11;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:17:\"Record Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:8;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:9;}i:2;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:47:39\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:10;}i:3;a:2:{s:8:\"settings\";a:26:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:11;}}s:8:\"settings\";a:104:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:10:\"Contact Me\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:10:\"form_title\";s:10:\"Contact Me\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:9:\"logged_in\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:10:\"conditions\";a:0:{}s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}',4,_binary '\0');
/*!40000 ALTER TABLE `wp_nf3_upgrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1457 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10014','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10014','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Wedding','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','liammcluckie@hotmail.co.uk','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:29:\"^ninja-forms/([a-zA-Z0-9]+)/?\";s:36:\"index.php?nf_public_link=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:19:\"imagify/imagify.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','wedding-site','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','wedding-site','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','11','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1681146002','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:10:{i:1674079441;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1674093600;a:1:{s:18:\"imagify_sync_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674100800;a:1:{s:46:\"imagify_update_library_size_calculations_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1674104404;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674104430;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674140400;a:1:{s:20:\"imagify_rating_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674147604;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674147630;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674147631;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','&O=]U#aAQ^0i=cC9F7,,a8Z~$$Z<~b?/^<OFkJ1&YSPL/DeNbeB1u!&V8tM;GLVo','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','>0!O1J/g8-Cj=)2/A[>30BQvb?$nnr$Z)}XO+nD.}vU:_jj}m6i|bQ>C@M+IN&,#','no');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.1\";s:7:\"version\";s:3:\"6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.3-rollback-2.zip\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:5:\"6.0.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1674075904;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (131,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1665594155;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (134,'auth_key','$L/N/wWqCBg=;,ol6(qwbmac#cE2]5xN0aFXj3q9k@D=~j8LSnm4~/$=>lD6q^H-','no');
INSERT INTO `wp_options` VALUES (135,'auth_salt','gO)yWKwj26 >tx(oh0w|w)D X*;-c<.@up?beW=[ pLpN+<~qedy{^;|,4yyr@A=','no');
INSERT INTO `wp_options` VALUES (136,'logged_in_key','s|/cj5tD]oqekP}oVmwrQ$9c|X^Vxe<^$C,uoFPOs.>06UkfDABg$?&`!^!<rUAP','no');
INSERT INTO `wp_options` VALUES (137,'logged_in_salt',')P!O{V-;l@w;C|ztA`TFfcAj29T^C{}5x==TyoIl|?-NJt}/DXQJY792[^HD)DL*','no');
INSERT INTO `wp_options` VALUES (145,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (158,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (159,'current_theme','Liam &amp; Rose','yes');
INSERT INTO `wp_options` VALUES (160,'theme_mods_wedding-site','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (161,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (162,'recently_activated','a:1:{s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:1673984632;}','yes');
INSERT INTO `wp_options` VALUES (163,'acf_version','6.0.2','yes');
INSERT INTO `wp_options` VALUES (168,'imagify_settings','a:10:{s:13:\"auto_optimize\";i:1;s:6:\"backup\";i:1;s:7:\"api_key\";s:40:\"05e7593b80e82b6ae6b16ed360082d681448e6f3\";s:15:\"convert_to_webp\";i:1;s:19:\"display_webp_method\";s:7:\"picture\";s:7:\"cdn_url\";s:0:\"\";s:13:\"resize_larger\";i:1;s:15:\"resize_larger_w\";i:3200;s:16:\"disallowed-sizes\";a:0:{}s:7:\"version\";s:3:\"2.0\";}','yes');
INSERT INTO `wp_options` VALUES (169,'imagify_data','a:4:{s:7:\"version\";s:3:\"2.0\";s:25:\"total_size_images_library\";d:0;s:29:\"average_size_images_per_month\";d:0;s:22:\"previous_quota_percent\";d:0;}','yes');
INSERT INTO `wp_options` VALUES (170,'imagify_folders_db_version','100','yes');
INSERT INTO `wp_options` VALUES (171,'imagify_files_db_version','102','yes');
INSERT INTO `wp_options` VALUES (172,'_site_transient_timeout_imagify_check_licence_1','1697130349','no');
INSERT INTO `wp_options` VALUES (173,'_site_transient_imagify_check_licence_1','1','no');
INSERT INTO `wp_options` VALUES (189,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (190,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (396,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (471,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":5,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (710,'ninja_forms_oauth_client_secret','AER34B8FpIj5ne3FT1PG5QThRRr62La10oRfLCDj','yes');
INSERT INTO `wp_options` VALUES (711,'ninja_forms_version','3.6.14','yes');
INSERT INTO `wp_options` VALUES (712,'ninja_forms_db_version','1.4','no');
INSERT INTO `wp_options` VALUES (713,'ninja_forms_required_updates','a:6:{s:19:\"CacheCollateActions\";s:19:\"2022-11-14 19:09:31\";s:17:\"CacheCollateForms\";s:19:\"2022-11-14 19:09:31\";s:18:\"CacheCollateFields\";s:19:\"2022-11-14 19:09:31\";s:19:\"CacheCollateObjects\";s:19:\"2022-11-14 19:09:31\";s:19:\"CacheCollateCleanup\";s:19:\"2022-11-14 19:09:31\";s:25:\"CacheFieldReconcilliation\";s:19:\"2022-11-14 19:09:31\";}','yes');
INSERT INTO `wp_options` VALUES (714,'ninja_forms_settings','a:11:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:20:\"recaptcha_site_key_3\";s:0:\"\";s:22:\"recaptcha_secret_key_3\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;s:16:\"builder_dev_mode\";i:0;s:18:\"opinionated_styles\";s:5:\"light\";}','yes');
INSERT INTO `wp_options` VALUES (715,'ninja_forms_zuul','34','no');
INSERT INTO `wp_options` VALUES (718,'ninja_forms_addons_feed','[{\"title\":\"Multi Step Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-step-forms.png\",\"content\":\"Give submissions a boost on any longer form by making it a multi-page form. Drag and drop fields between pages, add breadcrumb navigation, a progress bar, and loads more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Basic 2022\",\"slug\":\"basic-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Most Popular\",\"slug\":\"most-popular\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Let users publish content just by submitting a form! Completely configurable including post type, title, even categories and tags. Set post status, author, and much more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.10\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Mailchimp\",\"image\":\"assets\\/img\\/add-ons\\/mailchimp.png\",\"content\":\"Bring new life to your lists with upgraded Mailchimp signup forms for WordPress! Easy to build and customize with no code required. Link to lists and interest groups!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp+Docs\",\"version\":\"3.3.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Make any form a custom crafted WordPress signup form for Campaign Monitor. Connect to any list, link form fields to list fields, and watch your lists grow!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.6\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Get better data on where your form traffic is coming from with every submission. Add 12+ analytics fields including UTM values,  URL referrer, geo data, and more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Connect WordPress to Constant Contact with forms that you can build and design just the way you want, no tech skills required! Subscribe users to any list or interest group.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Build your lists faster with easy to design, professional quality WordPress signup forms. No technical skills required. Connect WordPress to AWeber with style!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Set up any form to accept PayPal payments with PayPal Express for WordPress! Base totals on a fixed amount, user entered amount, or a calculated total.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.1.2\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"MailPoet\",\"image\":\"assets\\/img\\/add-ons\\/mailpoet.png\",\"content\":\"Say hello better! Customize your MailPoet signup forms to draw more subscribers than ever before. Connect WordPress to any MailPoet list in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet\",\"plugin\":\"ninja-forms-mailpoet\\/nf-mailpoet.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Customize your forms to get the most out of your connection between WordPress and Zoho. Link form fields directly to Zoho fields, custom fields included, from almost any module.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.5.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Boost conversions from WordPress to Capsule with forms tailor made to your audience. Link form fields to Capsule fields from a wide range of modules. Custom fields too!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.4.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Your customer\'s journey begins with your WordPress forms. Send Contacts, Leads, Opportunities, Custom fields and more seamlessly from WordPress to Insightly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create a new Trello card with data from any WordPress form submission. Map fields to card details, assign members and labels, upload images, embed links.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"Accept credit card payments from any of your WordPress forms. Pass customer and invoice info from any field securely into Elavon with each payment.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Don\'t see an add-on integration for a service you love? Don\'t worry! Connect WordPress to more than 4,000 different services through Zapier, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Easily map any form field to any Salesforce Object or Field. A better connection to your customers begins with a better WordPress form builder!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.3.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Get realtime Slack notifications in the workspace and channel of your choice with any new WordPress form submission. @Mention any team member!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Grow the reach of your email marketing with better CleverReach signup forms. Tailor your forms to your audience with this easy to set up integration!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Can\'t find a WordPress integration for the service you love? Send WordPress forms data to any external URL using a simple GET or POST request!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Export any form\'s submissions as a Microsoft Excel spreadsheet. Choose a date range, the fields you want to include, and export to Excel! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.4\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"Formstack Documents\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Create specifically formatted templates from an uploaded PDF or Word document, then auto-fill them from any WordPress form submission!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Offering great support is hard. Tailor your WordPress forms to match your customers\' needs with this Help Scout integration for WordPress.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Take your email marketing further with handcrafted, easy to build signup forms that connect directly into your Emma account! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"SMS Notifications\",\"slug\":\"sms-notifications\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"SMS Notifications\",\"slug\":\"sms-notifications\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscription plans a part of your business model? Let your users subscribe from any WordPress form & make management easier with Recurly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Let your users save their work and reload it all when they have time to return. Don\'t lose out on valuable submissions for longer forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.25\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Pair WordPress\' best drag and drop form builder with your EmailOctopus account for incredibly effective signup forms. Easy, complete integration.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Pipeline CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Complete, effortless integration with Pipeline CRM. Increase the flow of leads into your sales pipeline with upgraded lead generation forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Pipeline+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Pipeline+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Connect WordPress to your ConvertKit account with completely customizable opt-in forms. Watch your audience & sales grow like never before!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through highly customizable WordPress forms. Make better conversions <em>your<\\/em> Next Action!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"ActiveCampaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Design custom forms that link perfectly to your ActiveCampaign account for the ultimate in marketing automation. Better leads begin here!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign+Docs\",\"version\":\"3.1.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Agency Membership\",\"image\":\"assets\\/img\\/add-ons\\/ninja-forms-membership-bundle-2.png\",\"content\":\"Get every single Ninja Forms add-ons, at an amazingly discounted price.\",\"link\":\"https:\\/\\/ninjaforms.com\\/documentation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Agency+Membership\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/documentation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Agency+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":\"Deprecated\",\"slug\":\"deprecated\"}]},{\"title\":\"Personal Membership\",\"image\":\"assets\\/img\\/add-ons\\/individual-membership-2.png\",\"content\":\"Get our most popular add-ons at an amazingly discounted price. Perfect for the single site owner.\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Personal+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Personal+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":\"Deprecated\",\"slug\":\"deprecated\"}]},{\"title\":\"Professional Membership\",\"image\":\"assets\\/img\\/add-ons\\/professional-membership-2.png\",\"content\":\"Get our 4 most popular add-ons at an amazingly discounted price. Perfect for your Do It Yourself business owner.\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Professional+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Professional+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":\"Deprecated\",\"slug\":\"deprecated\"}]},{\"title\":\"Basic Membership\",\"image\":\"assets\\/img\\/add-ons\\/basic-membership.png\",\"content\":\"\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Basic+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Basic+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":null,\"slug\":null}]},{\"title\":\"Plus Membership\",\"image\":\"assets\\/img\\/add-ons\\/plus-membership.png\",\"content\":\"\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Plus+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Plus+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":null,\"slug\":null}]},{\"title\":\"Pro Membership\",\"image\":\"assets\\/img\\/add-ons\\/pro-membership.png\",\"content\":\"\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Pro+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Pro+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":null,\"slug\":null}]},{\"title\":\"Elite Membership\",\"image\":\"assets\\/img\\/add-ons\\/elite-membership.png\",\"content\":\"\",\"link\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elite+Membership\",\"plugin\":null,\"docs\":\"\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elite+Membership+Docs\",\"version\":null,\"categories\":[{\"name\":null,\"slug\":null}]},{\"title\":\"Scheduled Submissions Export\",\"image\":\"assets\\/img\\/add-ons\\/scheduled-submissions-export.png\",\"content\":\"Use Scheduled Submissions Export to set hourly, daily, or weekly exports of any WordPress form submissions to any email address(es)!\",\"link\":\" https:\\/\\/ninjaforms.com\\/extensions\\/scheduled-submissions-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Scheduled+Submissions+Export\",\"plugin\":\"ninja-forms-scheduled-exports\\/ninja-forms-scheduled-exports.php\",\"docs\":\" https:\\/\\/ninjaforms.com\\/docs\\/scheduled-submissions-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Scheduled+Submissions+Export+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]},{\"title\":\"CiviCRM\",\"image\":\"assets\\/img\\/add-ons\\/civicrm.png\",\"content\":\"Connect & update your CiviCRM account from any WordPress form with the Ninja Forms CiviCRM add-on. Easily add or update Contacts & Activities!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/civicrm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CiviCRM\",\"plugin\":\"ninja-forms-civicrm\\/ninja-forms-civicrm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/civicrm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CiviCRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Add file upload fields to any WordPress form. Set allowed file types, sizes, upload directories and save to WordPress, Google Drive and more.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.3.14\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Basic 2022\",\"slug\":\"basic-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Most Popular\",\"slug\":\"most-popular\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"Let users register, login, & manage profiles with customizable form templates. Allow user roles to view or edit form submissions. \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Manage Users\",\"slug\":\"user-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Edit form styles. Create two column forms. Multi column forms. Easily adjust form layout. You don\'t need a designer, just Layout and Styles!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.29\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Basic 2022\",\"slug\":\"basic-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Most Popular\",\"slug\":\"most-popular\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Use Stripe Checkout forms to sell products or subscriptions. Accept credit cards, Google Pay, Apple Pay, & much more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.2.2\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"}]},{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Create forms that change as they\'re filled out. Show and hide fields, modify lists, send email to different recipients conditionally and much more.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.1\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Basic 2022\",\"slug\":\"basic-2022\"},{\"name\":\"Plus 2022\",\"slug\":\"plus-2022\"},{\"name\":\"Pro 2022\",\"slug\":\"pro-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Most Popular\",\"slug\":\"most-popular\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Use PDF Form Submission to generate a PDF from any WordPress form submission. Create a fully customizable, fillable PDF from top to bottom!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Memberships 2022\",\"slug\":\"memberships-2022\"},{\"name\":\"Elite 2022\",\"slug\":\"elite-2022\"},{\"name\":\"Manage Submissions\",\"slug\":\"manage-submissions\"}]}]','no');
INSERT INTO `wp_options` VALUES (719,'widget_ninja_forms_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (720,'ninja-forms-views-secret','UexVKyQia8zXlI3tvVKowGd6v71o8m3ZWx9ZydtV','yes');
INSERT INTO `wp_options` VALUES (722,'ninja_forms_needs_updates','0','yes');
INSERT INTO `wp_options` VALUES (723,'nf_admin_notice','a:1:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:10:\"11/21/2022\";s:3:\"int\";i:7;}}','yes');
INSERT INTO `wp_options` VALUES (726,'nf_form_tel_data','1','no');
INSERT INTO `wp_options` VALUES (727,'ninja_forms_do_not_allow_tracking','1','yes');
INSERT INTO `wp_options` VALUES (728,'ninja_forms_optin_reported','1','yes');
INSERT INTO `wp_options` VALUES (729,'nf_form_tel_sent','true','no');
INSERT INTO `wp_options` VALUES (730,'nf_active_promotions','{\"dashboard\":[{\"id\":\"sendwp-banner\",\"location\":\"dashboard\",\"content\":\"<span aria-label=\\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\\" style=\\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'http:\\/\\/localhost:10014\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\\"><\\/span>\",\"type\":\"sendwp\",\"script\":\"\\n\\t\\t\\t\\tsetTimeout(function(){ \\/* Wait for services to init. *\\/\\n\\t\\t\\t\\t\\tvar data = {\\n\\t\\t\\t\\t\\t\\twidth: 450,\\n\\t\\t\\t\\t\\t\\tcloseOnClick: \'body\',\\n\\t\\t\\t\\t\\t\\tcloseOnEsc: true,\\n\\t\\t\\t\\t\\t\\tcontent: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n\\t\\t\\t\\t\\t\\tbtnPrimary: {\\n\\t\\t\\t\\t\\t\\t\\ttext: \'Sign me up!\',\\n\\t\\t\\t\\t\\t\\t\\tcallback: function() {\\n\\t\\t\\t\\t\\t\\t\\t\\tvar spinner = document.createElement(\'span\');\\n\\t\\t\\t\\t\\t\\t\\t\\tspinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n\\t\\t\\t\\t\\t\\t\\t\\tvar w = this.offsetWidth;\\n\\t\\t\\t\\t\\t\\t\\t\\tthis.innerHTML = spinner.outerHTML;\\n\\t\\t\\t\\t\\t\\t\\t\\tthis.style.width = w+\'px\';\\n\\t\\t\\t\\t\\t\\t\\t\\tninja_forms_sendwp_remote_install();\\n\\t\\t\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t\\t\\t},\\n\\t\\t\\t\\t\\t\\tbtnSecondary: {\\n\\t\\t\\t\\t\\t\\t\\ttext: \'Cancel\',\\n\\t\\t\\t\\t\\t\\t\\tcallback: function() {\\n\\t\\t\\t\\t\\t\\t\\t\\tsendwpModal.toggleModal(false);\\n\\t\\t\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t\\tvar sendwpModal = new NinjaModal(data);\\n\\t\\t\\t\\t}, 500);\\n\\t\\t\\t\"}]}','no');
INSERT INTO `wp_options` VALUES (731,'nf_sub_expiration','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (784,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.6.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1669060519;s:7:\"version\";s:5:\"5.6.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (843,'secret_key',';ADQMsa*qZ-N{!~X9W~5Iok?^{qFvi}h9NyRO_UyF;D_vEUVFM0Cm):gx]~jU,!:','no');
INSERT INTO `wp_options` VALUES (921,'wps_confetti','a:2:{s:12:\"install_time\";i:1670092956;s:5:\"style\";s:6:\"cannon\";}','yes');
INSERT INTO `wp_options` VALUES (1337,'_site_transient_timeout_browser_86ea820282c5c7a85f5fab9bf1140c42','1674588798','no');
INSERT INTO `wp_options` VALUES (1338,'_site_transient_browser_86ea820282c5c7a85f5fab9bf1140c42','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1339,'_site_transient_timeout_php_check_e0da9a46ec9b74424e3af84a2a13de68','1674588799','no');
INSERT INTO `wp_options` VALUES (1340,'_site_transient_php_check_e0da9a46ec9b74424e3af84a2a13de68','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (1363,'action_scheduler_hybrid_store_demarkation','63','yes');
INSERT INTO `wp_options` VALUES (1364,'schema-ActionScheduler_StoreSchema','6.0.1673984611','yes');
INSERT INTO `wp_options` VALUES (1365,'schema-ActionScheduler_LoggerSchema','3.0.1673984611','yes');
INSERT INTO `wp_options` VALUES (1366,'wp_mail_smtp_initial_version','3.7.0','no');
INSERT INTO `wp_options` VALUES (1367,'wp_mail_smtp_version','3.7.0','no');
INSERT INTO `wp_options` VALUES (1368,'wp_mail_smtp','a:3:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:26:\"liammcluckie@hotmail.co.uk\";s:9:\"from_name\";s:7:\"Wedding\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}}','no');
INSERT INTO `wp_options` VALUES (1369,'wp_mail_smtp_activated_time','1673984611','no');
INSERT INTO `wp_options` VALUES (1370,'wp_mail_smtp_activated','a:1:{s:4:\"lite\";i:1673984611;}','yes');
INSERT INTO `wp_options` VALUES (1373,'action_scheduler_lock_async-request-runner','1673984671','yes');
INSERT INTO `wp_options` VALUES (1377,'wp_mail_smtp_migration_version','5','yes');
INSERT INTO `wp_options` VALUES (1378,'wp_mail_smtp_debug_events_db_version','1','yes');
INSERT INTO `wp_options` VALUES (1379,'wp_mail_smtp_activation_prevent_redirect','1','yes');
INSERT INTO `wp_options` VALUES (1380,'wp_mail_smtp_setup_wizard_stats','a:3:{s:13:\"launched_time\";i:1673984614;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1381,'wp_mail_smtp_review_notice','a:2:{s:4:\"time\";i:1673984623;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (1450,'_transient_timeout_global_styles_wedding-site','1674075962','no');
INSERT INTO `wp_options` VALUES (1451,'_transient_global_styles_wedding-site','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
INSERT INTO `wp_options` VALUES (1453,'_site_transient_timeout_theme_roots','1674077705','no');
INSERT INTO `wp_options` VALUES (1454,'_site_transient_theme_roots','a:5:{s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:12:\"wedding-site\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1455,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1674075906;s:7:\"checked\";a:5:{s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.2\";s:12:\"wedding-site\";s:3:\"1.0\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1456,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1674075906;s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";b:0;}s:19:\"imagify/imagify.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/imagify\";s:4:\"slug\";s:7:\"imagify\";s:6:\"plugin\";s:19:\"imagify/imagify.php\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/imagify/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/imagify.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/imagify/assets/icon-256x256.png?rev=2759224\";s:2:\"1x\";s:52:\"https://ps.w.org/imagify/assets/icon.svg?rev=2833113\";s:3:\"svg\";s:52:\"https://ps.w.org/imagify/assets/icon.svg?rev=2833113\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/imagify/assets/banner-1544x500.png?rev=2759224\";s:2:\"1x\";s:62:\"https://ps.w.org/imagify/assets/banner-772x250.png?rev=2759224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.2\";s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.4\";s:19:\"imagify/imagify.php\";s:3:\"2.0\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (4,5,'_edit_lock','1672332877:1');
INSERT INTO `wp_postmeta` VALUES (8,12,'_wp_attached_file','2022/10/img030.jpg');
INSERT INTO `wp_postmeta` VALUES (9,12,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1667;s:6:\"height\";i:1020;s:4:\"file\";s:18:\"2022/10/img030.jpg\";s:8:\"filesize\";i:297283;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"img030-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10406;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"img030-1024x627.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:627;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:99371;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"img030-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5044;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"img030-768x470.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57474;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"img030-1536x940.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:940;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:209724;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (10,12,'_imagify_optimization_level','2');
INSERT INTO `wp_postmeta` VALUES (11,12,'_imagify_status','success');
INSERT INTO `wp_postmeta` VALUES (12,12,'_imagify_data','a:2:{s:5:\"sizes\";a:12:{s:4:\"full\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:297283;s:14:\"optimized_size\";i:162987;s:7:\"percent\";d:45.170000000000002;}s:22:\"1536x1536@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:209724;s:14:\"optimized_size\";i:136500;s:7:\"percent\";d:34.909999999999997;}s:25:\"medium_large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:57474;s:14:\"optimized_size\";i:44554;s:7:\"percent\";d:22.48;}s:22:\"thumbnail@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:5044;s:14:\"optimized_size\";i:3398;s:7:\"percent\";d:32.630000000000003;}s:18:\"large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:99371;s:14:\"optimized_size\";i:73274;s:7:\"percent\";d:26.260000000000002;}s:19:\"medium@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:10406;s:14:\"optimized_size\";i:7902;s:7:\"percent\";d:24.059999999999999;}s:17:\"full@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:297283;s:14:\"optimized_size\";i:224610;s:7:\"percent\";d:24.449999999999999;}s:6:\"medium\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:10406;s:14:\"optimized_size\";i:6367;s:7:\"percent\";d:38.810000000000002;}s:5:\"large\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:99371;s:14:\"optimized_size\";i:55537;s:7:\"percent\";d:44.109999999999999;}s:9:\"thumbnail\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:5044;s:14:\"optimized_size\";i:3419;s:7:\"percent\";d:32.219999999999999;}s:12:\"medium_large\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:57474;s:14:\"optimized_size\";i:32539;s:7:\"percent\";d:43.380000000000003;}s:9:\"1536x1536\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:209724;s:14:\"optimized_size\";i:105500;s:7:\"percent\";d:49.700000000000003;}}s:5:\"stats\";a:3:{s:13:\"original_size\";i:1358604;s:14:\"optimized_size\";i:856587;s:7:\"percent\";d:36.950000000000003;}}');
INSERT INTO `wp_postmeta` VALUES (13,12,'_wp_attachment_image_alt','A man on one knee proposing to a woman on a sea cliff edge');
INSERT INTO `wp_postmeta` VALUES (14,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (15,11,'hero_image','12');
INSERT INTO `wp_postmeta` VALUES (16,11,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (17,11,'hero_title','Rose &\r\nLiam');
INSERT INTO `wp_postmeta` VALUES (18,11,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (19,11,'hero_link','a:3:{s:5:\"title\";s:4:\"RSVP\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (20,11,'_hero_link','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (21,13,'hero_image','12');
INSERT INTO `wp_postmeta` VALUES (22,13,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (23,13,'hero_title','Rose &\r\nLiam');
INSERT INTO `wp_postmeta` VALUES (24,13,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (25,13,'hero_link','a:3:{s:5:\"title\";s:4:\"RSVP\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (26,13,'_hero_link','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (27,11,'_edit_lock','1667635539:1');
INSERT INTO `wp_postmeta` VALUES (30,15,'hero_image','12');
INSERT INTO `wp_postmeta` VALUES (31,15,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (32,15,'hero_title','Rose &\r\nLiam');
INSERT INTO `wp_postmeta` VALUES (33,15,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (34,15,'hero_link','a:3:{s:5:\"title\";s:4:\"RSVP\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (35,15,'_hero_link','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (36,11,'hero_button','a:3:{s:5:\"title\";s:4:\"RSVP\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (37,11,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (38,16,'hero_image','12');
INSERT INTO `wp_postmeta` VALUES (39,16,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (40,16,'hero_title','Rose &\r\nLiam');
INSERT INTO `wp_postmeta` VALUES (41,16,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (42,16,'hero_link','a:3:{s:5:\"title\";s:4:\"RSVP\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (43,16,'_hero_link','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (44,16,'hero_button','a:3:{s:5:\"title\";s:4:\"RSVP\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (45,16,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (46,11,'hero_meta','17.09.2023');
INSERT INTO `wp_postmeta` VALUES (47,11,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (48,18,'hero_image','12');
INSERT INTO `wp_postmeta` VALUES (49,18,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (50,18,'hero_title','Rose &\r\nLiam');
INSERT INTO `wp_postmeta` VALUES (51,18,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (52,18,'hero_link','a:3:{s:5:\"title\";s:4:\"RSVP\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (53,18,'_hero_link','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (54,18,'hero_button','a:3:{s:5:\"title\";s:4:\"RSVP\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,18,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (56,18,'hero_meta','17.09.2023');
INSERT INTO `wp_postmeta` VALUES (57,18,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (58,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (59,20,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (60,20,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (61,20,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (62,20,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (63,20,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (64,20,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (65,20,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (66,20,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (67,21,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (68,21,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (69,21,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (70,21,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (71,21,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (72,21,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (73,21,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (74,21,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (75,20,'_edit_lock','1672336602:1');
INSERT INTO `wp_postmeta` VALUES (76,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (77,22,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (78,22,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (79,22,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (80,22,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (81,22,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (82,22,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (83,22,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (84,22,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (85,23,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (86,23,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (87,23,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (88,23,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (89,23,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (90,23,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (91,23,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (92,23,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (93,22,'_edit_lock','1665672829:1');
INSERT INTO `wp_postmeta` VALUES (134,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (135,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (136,30,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (137,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (138,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (139,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (140,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (141,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (143,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (144,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (145,31,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (146,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (147,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (148,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (149,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (150,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (152,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (153,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (154,32,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (155,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (156,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (157,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (158,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (159,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (163,20,'_wp_page_template','templates/form.php');
INSERT INTO `wp_postmeta` VALUES (164,38,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,38,'_edit_lock','1672332872:1');
INSERT INTO `wp_postmeta` VALUES (166,20,'rsvp_form','[contact-form-7 id=\"48\" title=\"RSVP Form\"]');
INSERT INTO `wp_postmeta` VALUES (167,20,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (168,40,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (169,40,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (170,40,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (171,40,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (172,40,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (173,40,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (174,40,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (175,40,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (176,40,'rsvp_form','');
INSERT INTO `wp_postmeta` VALUES (177,40,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (178,41,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (179,41,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (180,41,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (181,41,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (182,41,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (183,41,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (184,41,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (185,41,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (186,41,'rsvp_form','');
INSERT INTO `wp_postmeta` VALUES (187,41,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (188,42,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (189,42,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (190,42,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (191,42,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (192,42,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (193,42,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (194,42,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (195,42,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (196,42,'rsvp_form','');
INSERT INTO `wp_postmeta` VALUES (197,42,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (198,43,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (199,43,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (200,43,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (201,43,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (202,43,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (203,43,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (204,43,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (205,43,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (206,43,'rsvp_form','');
INSERT INTO `wp_postmeta` VALUES (207,43,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (208,44,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (209,44,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (210,44,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (211,44,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (212,44,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (213,44,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (214,44,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (215,44,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (216,44,'rsvp_form','');
INSERT INTO `wp_postmeta` VALUES (217,44,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (224,46,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (225,46,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (226,46,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (227,46,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (228,46,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (229,46,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (230,46,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (231,46,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (232,46,'rsvp_form','');
INSERT INTO `wp_postmeta` VALUES (233,46,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (234,48,'_form','<div class=\"form-row\">\n    <div class=\"form-control\">\n        <label for=\"first-name\"> First Name </label>\n        [text* first-name]\n    </div>\n\n    <div class=\"form-control\">\n        <label for=\"last-name\"> Last Name </label>\n        [text* last-name]\n    </div>\n</div>\n\n<div class=\"form-row\">\n    <div class=\"form-control\">\n        <label for=\"email\"> Email </label>\n        [email* email]\n    </div>\n</div>\n\n<div class=\"form-row\">\n    <div class=\"form-control\">\n        <label for=\"more-info\"> Any other info </label>\n        [textarea more-info 10x5 placeholder \"e.g. dietary requirements\"]\n    </div>\n</div>\n\n<div class=\"form-row\">\n    <div class=\"form-control\">\n        <label for=\"song-request\"> Song Request </label>\n        [textarea song-request 10x5 placeholder \"Make them good!\"]\n    </div>\n</div>\n\n<div class=\"form-row flex-centered\">\n[submit \"RSVP\"]\n</div>');
INSERT INTO `wp_postmeta` VALUES (235,48,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <liammcluckie@hotmail.co.uk>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (236,48,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <liammcluckie@hotmail.co.uk>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (237,48,'_messages','a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}');
INSERT INTO `wp_postmeta` VALUES (238,48,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (239,48,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (240,49,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (241,49,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (242,49,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (243,49,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (244,49,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (245,49,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (246,49,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (247,49,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (248,49,'rsvp_form','[contact-form-7 id=\"45\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (249,49,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (250,50,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (251,50,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (252,50,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (253,50,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (254,50,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (255,50,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (256,50,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (257,50,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (258,50,'rsvp_form','[contact-form-7 id=\"48\" title=\"RSVP Form\"]');
INSERT INTO `wp_postmeta` VALUES (259,50,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (267,56,'_wp_attached_file','2022/12/eco-park.jpeg');
INSERT INTO `wp_postmeta` VALUES (268,56,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:21:\"2022/12/eco-park.jpeg\";s:8:\"filesize\";i:984102;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"eco-park-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14750;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"eco-park-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:154040;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"eco-park-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5958;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"eco-park-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88905;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"eco-park-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:314014;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"eco-park-2048x1366.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:507452;}s:4:\"card\";a:5:{s:4:\"file\";s:21:\"eco-park-800x660.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:660;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116286;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-T3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1590492769\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:18:\"0.0013333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (269,56,'_imagify_optimization_level','2');
INSERT INTO `wp_postmeta` VALUES (270,56,'_imagify_status','error');
INSERT INTO `wp_postmeta` VALUES (271,56,'_imagify_data','a:2:{s:5:\"sizes\";a:1:{s:4:\"full\";a:2:{s:7:\"success\";b:0;s:5:\"error\";s:34:\"Our server returned an error (502)\";}}s:5:\"stats\";a:3:{s:13:\"original_size\";i:0;s:14:\"optimized_size\";i:0;s:7:\"percent\";i:0;}}');
INSERT INTO `wp_postmeta` VALUES (272,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,58,'_edit_lock','1672336602:1');
INSERT INTO `wp_postmeta` VALUES (274,20,'page_intro','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultricies felis quam, vel mattis urna pretium pharetra. Maecenas auctor mi accumsan libero aliquam efficitur. Sed at nisl nulla. ');
INSERT INTO `wp_postmeta` VALUES (275,20,'_page_intro','field_63adc6365d16d');
INSERT INTO `wp_postmeta` VALUES (276,60,'hero_image','');
INSERT INTO `wp_postmeta` VALUES (277,60,'_hero_image','field_6346f40a413d9');
INSERT INTO `wp_postmeta` VALUES (278,60,'hero_title','');
INSERT INTO `wp_postmeta` VALUES (279,60,'_hero_title','field_6346f422413da');
INSERT INTO `wp_postmeta` VALUES (280,60,'hero_meta','');
INSERT INTO `wp_postmeta` VALUES (281,60,'_hero_meta','field_6346fe86fbd9d');
INSERT INTO `wp_postmeta` VALUES (282,60,'hero_button','');
INSERT INTO `wp_postmeta` VALUES (283,60,'_hero_button','field_6346f450413db');
INSERT INTO `wp_postmeta` VALUES (284,60,'rsvp_form','[contact-form-7 id=\"48\" title=\"RSVP Form\"]');
INSERT INTO `wp_postmeta` VALUES (285,60,'_rsvp_form','field_63729df89b6c4');
INSERT INTO `wp_postmeta` VALUES (286,60,'page_intro','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultricies felis quam, vel mattis urna pretium pharetra. Maecenas auctor mi accumsan libero aliquam efficitur. Sed at nisl nulla. ');
INSERT INTO `wp_postmeta` VALUES (287,60,'_page_intro','field_63adc6365d16d');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-10-12 17:00:03','2022-10-12 17:00:03','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-10-12 17:00:03','2022-10-12 17:00:03','',0,'http://localhost:10014/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (3,1,'2022-10-12 17:00:03','2022-10-12 17:00:03','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10014.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-10-12 17:00:03','2022-10-12 17:00:03','',0,'http://localhost:10014/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-10-12 17:07:49','2022-10-12 17:07:49','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Hero','hero','publish','closed','closed','','group_6346f409c0b6b','','','2022-12-29 16:55:17','2022-12-29 16:55:17','',0,'http://localhost:10014/?post_type=acf-field-group&#038;p=5',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-10-12 17:07:49','2022-10-12 17:07:49','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Hero Image','hero_image','publish','closed','closed','','field_6346f40a413d9','','','2022-10-13 14:55:48','2022-10-13 14:55:48','',5,'http://localhost:10014/?post_type=acf-field&#038;p=6',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-10-12 17:07:49','2022-10-12 17:07:49','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','Hero Title','hero_title','publish','closed','closed','','field_6346f422413da','','','2022-10-13 14:55:48','2022-10-13 14:55:48','',5,'http://localhost:10014/?post_type=acf-field&#038;p=7',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-10-12 17:07:49','2022-10-12 17:07:49','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','Hero Button','hero_button','publish','closed','closed','','field_6346f450413db','','','2022-10-12 17:52:03','2022-10-12 17:52:03','',5,'http://localhost:10014/?post_type=acf-field&#038;p=8',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-10-12 17:36:10','2022-10-12 17:36:10','','Home','','publish','closed','closed','','home','','','2022-10-12 17:52:17','2022-10-12 17:52:17','',0,'http://localhost:10014/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-10-12 17:35:19','2022-10-12 17:35:19','','img030','','inherit','open','closed','','img030','','','2022-10-12 17:43:41','2022-10-12 17:43:41','',11,'http://localhost:10014/wp-content/uploads/2022/10/img030.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-10-12 17:36:10','2022-10-12 17:36:10','','Home','','inherit','closed','closed','','11-revision-v1','','','2022-10-12 17:36:10','2022-10-12 17:36:10','',11,'http://localhost:10014/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-10-12 17:43:42','2022-10-12 17:43:42','','Home','','inherit','closed','closed','','11-revision-v1','','','2022-10-12 17:43:42','2022-10-12 17:43:42','',11,'http://localhost:10014/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-10-12 17:50:47','2022-10-12 17:50:47','','Home','','inherit','closed','closed','','11-revision-v1','','','2022-10-12 17:50:47','2022-10-12 17:50:47','',11,'http://localhost:10014/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-10-12 17:52:03','2022-10-12 17:52:03','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Use this for additional info e.g date\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Hero Meta','hero_meta','publish','closed','closed','','field_6346fe86fbd9d','','','2022-10-12 17:52:03','2022-10-12 17:52:03','',5,'http://localhost:10014/?post_type=acf-field&p=17',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-10-12 17:52:17','2022-10-12 17:52:17','','Home','','inherit','closed','closed','','11-revision-v1','','','2022-10-12 17:52:17','2022-10-12 17:52:17','',11,'http://localhost:10014/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-10-13 14:56:00','2022-10-13 14:56:00','','RSVP','','publish','closed','closed','','rsvp','','','2022-12-29 16:57:33','2022-12-29 16:57:33','',0,'http://localhost:10014/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-10-13 14:56:00','2022-10-13 14:56:00','','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-10-13 14:56:00','2022-10-13 14:56:00','',20,'http://localhost:10014/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-10-13 14:56:11','2022-10-13 14:56:11','','About','','publish','closed','closed','','about','','','2022-10-13 14:56:11','2022-10-13 14:56:11','',0,'http://localhost:10014/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-10-13 14:56:11','2022-10-13 14:56:11','','About','','inherit','closed','closed','','22-revision-v1','','','2022-10-13 14:56:11','2022-10-13 14:56:11','',22,'http://localhost:10014/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-10-13 15:53:48','2022-10-13 15:53:48',' ','','','publish','closed','closed','','30','','','2022-10-13 15:53:48','2022-10-13 15:53:48','',0,'http://localhost:10014/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-10-13 15:53:48','2022-10-13 15:53:48',' ','','','publish','closed','closed','','31','','','2022-10-13 15:53:48','2022-10-13 15:53:48','',0,'http://localhost:10014/?p=31',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-10-13 15:53:48','2022-10-13 15:53:48',' ','','','publish','closed','closed','','32','','','2022-10-13 15:53:48','2022-10-13 15:53:48','',0,'http://localhost:10014/?p=32',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-11-14 19:59:49','2022-11-14 19:59:49','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"templates/form.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Form','form','publish','closed','closed','','group_63729df769655','','','2022-12-29 16:56:01','2022-12-29 16:56:01','',0,'http://localhost:10014/?post_type=acf-field-group&#038;p=38',10,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-11-14 19:59:49','2022-11-14 19:59:49','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:5:\"delay\";i:0;s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;}','RSVP Form','rsvp_form','publish','closed','closed','','field_63729df89b6c4','','','2022-11-14 19:59:49','2022-11-14 19:59:49','',38,'http://localhost:10014/?post_type=acf-field&p=39',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-11-14 20:02:00','2022-11-14 20:02:00','Hello Liam','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-11-14 20:02:00','2022-11-14 20:02:00','',20,'http://localhost:10014/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-11-14 20:02:45','2022-11-14 20:02:45','[ninja_form id=2]','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-11-14 20:02:45','2022-11-14 20:02:45','',20,'http://localhost:10014/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-11-14 20:06:33','2022-11-14 20:06:33','[ninja_form id=]','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-11-14 20:06:33','2022-11-14 20:06:33','',20,'http://localhost:10014/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-11-14 20:06:46','2022-11-14 20:06:46','[ninja_form id=1]','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-11-14 20:06:46','2022-11-14 20:06:46','',20,'http://localhost:10014/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-11-14 20:06:56','2022-11-14 20:06:56','[ninja_form id=2]','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-11-14 20:06:56','2022-11-14 20:06:56','',20,'http://localhost:10014/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-11-14 20:13:32','2022-11-14 20:13:32','[contact-form-7 id=\"45\" title=\"Contact form 1\"]','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-11-14 20:13:32','2022-11-14 20:13:32','',20,'http://localhost:10014/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-11-21 19:55:19','2022-11-21 19:55:19','<div class=\"form-row\">\r\n    <div class=\"form-control\">\r\n        <label for=\"first-name\"> First Name </label>\r\n        [text* first-name]\r\n    </div>\r\n\r\n    <div class=\"form-control\">\r\n        <label for=\"last-name\"> Last Name </label>\r\n        [text* last-name]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"form-row\">\r\n    <div class=\"form-control\">\r\n        <label for=\"email\"> Email </label>\r\n        [email* email]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"form-row\">\r\n    <div class=\"form-control\">\r\n        <label for=\"more-info\"> Any other info </label>\r\n        [textarea more-info 10x5 placeholder \"e.g. dietary requirements\"]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"form-row\">\r\n    <div class=\"form-control\">\r\n        <label for=\"song-request\"> Song Request </label>\r\n        [textarea song-request 10x5 placeholder \"Make them good!\"]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"form-row flex-centered\">\r\n[submit \"RSVP\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <liammcluckie@hotmail.co.uk>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <liammcluckie@hotmail.co.uk>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.','RSVP Form','','publish','closed','closed','','contact-form-1','','','2022-11-30 20:04:11','2022-11-30 20:04:11','',0,'http://localhost:10014/?post_type=wpcf7_contact_form&#038;p=48',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-11-21 20:20:37','2022-11-21 20:20:37','','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-11-21 20:20:37','2022-11-21 20:20:37','',20,'http://localhost:10014/?p=49',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-11-21 20:21:17','2022-11-21 20:21:17','','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-11-21 20:21:17','2022-11-21 20:21:17','',20,'http://localhost:10014/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-12-15 16:19:56','2022-12-15 16:19:56','','eco-park','','inherit','open','closed','','eco-park','','','2022-12-15 16:19:56','2022-12-15 16:19:56','',0,'http://localhost:10014/wp-content/uploads/2022/12/eco-park.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (58,1,'2022-12-29 16:54:48','2022-12-29 16:54:48','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Intro','page-intro','publish','closed','closed','','group_63adc63629807','','','2022-12-29 16:57:07','2022-12-29 16:57:07','',0,'http://localhost:10014/?post_type=acf-field-group&#038;p=58',5,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-12-29 16:54:48','2022-12-29 16:54:48','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','Page Intro','page_intro','publish','closed','closed','','field_63adc6365d16d','','','2022-12-29 16:54:48','2022-12-29 16:54:48','',58,'http://localhost:10014/?post_type=acf-field&p=59',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-12-29 16:57:33','2022-12-29 16:57:33','','RSVP','','inherit','closed','closed','','20-revision-v1','','','2022-12-29 16:57:33','2022-12-29 16:57:33','',20,'http://localhost:10014/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-01-17 19:33:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-01-17 19:33:18','0000-00-00 00:00:00','',0,'http://localhost:10014/?p=62',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (32,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (3,'Main Menu','main-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','liam');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"c1115a981459e5d5ed8fa9159f02ba23b29df44b780100449801aa9ddf8f42ff\";a:4:{s:10:\"expiration\";i:1674156797;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1673983997;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','62');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1668456160');
INSERT INTO `wp_usermeta` VALUES (23,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_nf_form_preview_tmp-1668453057','a:4:{s:2:\"id\";s:14:\"tmp-1668453057\";s:8:\"settings\";a:20:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:0;s:5:\"title\";s:9:\"RSVP Form\";s:10:\"show_title\";i:1;s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:14:\"clear_complete\";i:1;s:13:\"hide_complete\";i:1;s:17:\"default_label_pos\";s:5:\"above\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:0:\"\";s:10:\"add_submit\";i:1;s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:9:\"logged_in\";b:0;s:17:\"not_logged_in_msg\";s:0:\"\";s:13:\"sub_limit_msg\";s:42:\"The form has reached its submission limit.\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:3:{i:0;s:24:\"guest_rsvp_1668453302292\";i:1;s:31:\"other_information_1668453359906\";i:2;s:20:\"submit_1668453643311\";}}s:6:\"fields\";a:3:{s:5:\"tmp-4\";a:1:{s:8:\"settings\";a:13:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:4:\"type\";s:8:\"repeater\";s:5:\"label\";s:10:\"Guest RSVP\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:6:\"fields\";a:4:{i:0;a:23:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-13\";s:5:\"label\";s:10:\"First Name\";s:4:\"type\";s:9:\"firstname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"fname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";}i:1;a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-15\";s:5:\"label\";s:9:\"Last Name\";s:4:\"type\";s:8:\"lastname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"lname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}i:2;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-19\";s:5:\"label\";s:12:\"Song Request\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:26:\"song_request_1668453218742\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:13:\"Artist & Song\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}i:3;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:6:\"tmp-21\";s:5:\"label\";s:36:\"Dietary Requirements - If applicable\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:50:\"dietary_requirements_-_if_applicable_1668453247396\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}}s:3:\"key\";s:24:\"guest_rsvp_1668453302292\";s:14:\"drawerDisabled\";b:0;s:9:\"desc_text\";s:63:\"<p>Please fill out the form below for each guest attending.</p>\";}}s:6:\"tmp-22\";a:1:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:17:\"Other information\";s:4:\"type\";s:8:\"textarea\";s:3:\"key\";s:31:\"other_information_1668453359906\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}}s:6:\"tmp-23\";a:1:{s:8:\"settings\";a:11:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:9999;s:11:\"idAttribute\";s:2:\"id\";s:4:\"type\";s:6:\"submit\";s:5:\"label\";s:6:\"Submit\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:20:\"submit_1668453643311\";}}}s:7:\"actions\";a:3:{s:5:\"tmp-1\";a:1:{s:8:\"settings\";a:20:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:15:\"Success Message\";s:4:\"type\";s:14:\"successmessage\";s:7:\"message\";s:42:\"Your form has been successfully submitted.\";s:5:\"order\";i:1;s:6:\"active\";b:1;s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:11:\"success_msg\";s:108:\"<p>Thank you, we can\'t wait to see you! </p><p>If you do not get a response from us please get in touch.</p>\";s:14:\"drawerDisabled\";b:0;}}s:5:\"tmp-2\";a:1:{s:8:\"settings\";a:18:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:11:\"Admin Email\";s:4:\"type\";s:5:\"email\";s:5:\"order\";i:2;s:6:\"active\";b:1;s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:25:\"ansell.mcluckie@gmail.com\";s:13:\"email_subject\";s:20:\"RSVP Form Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}}s:5:\"tmp-3\";a:1:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:17:\"Record Submission\";s:4:\"type\";s:4:\"save\";s:5:\"order\";i:3;s:6:\"active\";b:1;s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";s:14:\"drawerDisabled\";b:0;}}}}');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_nf_form_preview_2','a:4:{s:2:\"id\";i:2;s:8:\"settings\";a:20:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:0;s:5:\"title\";s:9:\"RSVP Form\";s:10:\"show_title\";i:1;s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:14:\"clear_complete\";i:1;s:13:\"hide_complete\";i:1;s:17:\"default_label_pos\";s:5:\"above\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:0:\"\";s:10:\"add_submit\";i:1;s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:9:\"logged_in\";b:0;s:17:\"not_logged_in_msg\";s:0:\"\";s:13:\"sub_limit_msg\";s:42:\"The form has reached its submission limit.\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:3:{i:0;s:24:\"guest_rsvp_1668453302292\";i:1;s:31:\"other_information_1668453359906\";i:2;s:20:\"submit_1668453643311\";}}s:6:\"fields\";a:3:{i:5;a:1:{s:8:\"settings\";a:13:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:4:\"type\";s:8:\"repeater\";s:5:\"label\";s:10:\"Guest RSVP\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:9:\"desc_text\";s:63:\"<p>Please fill out the form below for each guest attending.</p>\";s:6:\"fields\";a:4:{i:0;a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:3:\"5.2\";s:5:\"label\";s:9:\"Last Name\";s:4:\"type\";s:8:\"lastname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"lname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}i:1;a:23:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:3:\"5.1\";s:5:\"label\";s:10:\"First Name\";s:4:\"type\";s:9:\"firstname\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:0:\"\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:21:\"custom_name_attribute\";s:5:\"fname\";s:23:\"personally_identifiable\";s:1:\"1\";s:28:\"disable_browser_autocomplete\";N;s:5:\"value\";s:0:\"\";}i:2;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:3:\"5.3\";s:5:\"label\";s:12:\"Song Request\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:26:\"song_request_1668453218742\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:13:\"Artist & Song\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}i:3;a:30:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:11:\"idAttribute\";s:2:\"id\";s:2:\"id\";s:3:\"5.4\";s:5:\"label\";s:36:\"Dietary Requirements - If applicable\";s:4:\"type\";s:7:\"textbox\";s:13:\"repeaterField\";b:1;s:3:\"key\";s:50:\"dietary_requirements_-_if_applicable_1668453247396\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:13:\"disable_input\";N;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";N;s:28:\"disable_browser_autocomplete\";N;s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}}s:3:\"key\";s:24:\"guest_rsvp_1668453302292\";s:14:\"drawerDisabled\";b:0;}}i:6;a:1:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:17:\"Other information\";s:4:\"type\";s:8:\"textarea\";s:3:\"key\";s:31:\"other_information_1668453359906\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}}i:7;a:1:{s:8:\"settings\";a:11:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:9999;s:11:\"idAttribute\";s:2:\"id\";s:4:\"type\";s:6:\"submit\";s:5:\"label\";s:6:\"Submit\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:20:\"submit_1668453643311\";}}}s:7:\"actions\";a:3:{i:7;a:1:{s:8:\"settings\";a:28:{s:5:\"title\";N;s:3:\"key\";N;s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-11-14 19:20:44\";s:5:\"label\";s:17:\"Record Submission\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"3\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";s:14:\"drawerDisabled\";s:0:\"\";}}i:5;a:1:{s:8:\"settings\";a:23:{s:5:\"title\";N;s:3:\"key\";N;s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-11-14 19:20:44\";s:5:\"label\";s:15:\"Success Message\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:7:\"message\";s:42:\"Your form has been successfully submitted.\";s:5:\"order\";s:1:\"1\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:11:\"success_msg\";s:108:\"<p>Thank you, we can\'t wait to see you! </p><p>If you do not get a response from us please get in touch.</p>\";s:14:\"drawerDisabled\";s:0:\"\";}}i:6;a:1:{s:8:\"settings\";a:21:{s:5:\"title\";N;s:3:\"key\";N;s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-11-14 19:20:44\";s:5:\"label\";s:11:\"Admin Email\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"2\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:25:\"ansell.mcluckie@gmail.com\";s:13:\"email_subject\";s:20:\"RSVP Form Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:14:\"drawerDisabled\";s:0:\"\";}}}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'liam','$P$Bw6K2LeugR0PMHtO5NjLUOzhH2vQ5s/','liam','liammcluckie@hotmail.co.uk','http://localhost:10014','2022-10-12 17:00:03','',0,'liam');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_debug_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

LOCK TABLES `wp_wpmailsmtp_debug_events` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_debug_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpmailsmtp_debug_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

LOCK TABLES `wp_wpmailsmtp_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-18 21:06:28
