-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for Linux (x86_64)
--
-- Host: manito42-rds-freetier.cv2imfx1687y.ap-northeast-2.rds.amazonaws.com    Database: manito42
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('055b168d-9d46-4a1b-a8e5-d00da4118b56','f43436b7aa4f763487167cca985bdde1ab7123bc71e3309600de7eeaa3d9ceff','2023-10-01 12:37:52.643','20231001120336_118',NULL,NULL,'2023-10-01 12:37:52.478',1),('0eefdc08-b46b-4816-b848-6ca16dda3731','2e03e9399c321ba0c4b2d4f5a22e557e7025dd807c7177a0a74caea8952d9402','2023-10-01 12:00:51.514','20231001110315_226',NULL,NULL,'2023-10-01 12:00:51.338',1),('257ed649-6fee-4195-ad22-f5dca530d4bf','2f467c1a3d5aa0b58727001e7ad906899f69ec3668b819da8517ef4056ffdc8d','2023-08-23 18:57:46.869','20230819120335_test_deployment',NULL,NULL,'2023-08-23 18:57:46.633',1),('50464e8a-8d3f-41c4-9171-e52936000572','8de7f113426b512da8c638632a27c2493bd43904a62c247e31014add7bef2afc','2023-09-18 07:09:24.901','20230918024610_95',NULL,NULL,'2023-09-18 07:09:24.646',1),('5c50d4da-5ce2-4651-8cc2-3d6504971734','36bd89f43f65ebd57ad5ad182328f7dc2082382b12dcc6f6db17d21f8b1648ba','2023-09-15 10:14:25.126','20230905050509_mentee_checked',NULL,NULL,'2023-09-15 10:14:24.641',1),('a7c32860-235f-48da-a54b-eb8bbf0adf7d','80862e49474a466fac58db8e3922b8d93a791aeff2ec2e038774ca103e81f884','2023-09-29 11:58:48.882','20230928063148_116',NULL,NULL,'2023-09-29 11:58:48.438',1),('c1bcf230-b78f-4cb4-96da-dd3df46ec204','f29564d82f45a8423b9bd8e2968cc4af76f7637223e8f0b07c69408a66879754','2023-08-26 08:16:00.563','20230825104645_',NULL,NULL,'2023-08-26 08:16:00.317',1),('c3ffd29d-3935-45a3-8ff9-266859c517a8','82115d0feea5d7a842c480f7d70390648ff795a4beedefa257c01d7ef77fa2a4','2023-10-05 17:21:30.358','20231005163230_disable_null_social_link',NULL,NULL,'2023-10-05 17:21:29.981',1),('db9709eb-b0ff-43f4-85bd-296f7fb98a00','2c5e0548785f03dd746f17e15b78f2be1ae07299a9c761f7c83dfd65e7616a74','2023-08-23 18:57:46.628','20230606045908_init',NULL,NULL,'2023-08-23 18:57:45.311',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_profiles_categories`
--

DROP TABLE IF EXISTS `_profiles_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_profiles_categories` (
  `A` int NOT NULL,
  `B` int NOT NULL,
  UNIQUE KEY `_profiles_categories_AB_unique` (`A`,`B`),
  KEY `_profiles_categories_B_index` (`B`),
  CONSTRAINT `_profiles_categories_A_fkey` FOREIGN KEY (`A`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `_profiles_categories_B_fkey` FOREIGN KEY (`B`) REFERENCES `mentor_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_profiles_categories`
--

LOCK TABLES `_profiles_categories` WRITE;
/*!40000 ALTER TABLE `_profiles_categories` DISABLE KEYS */;
INSERT INTO `_profiles_categories` VALUES (1,107),(3,107),(2,108),(8,109),(16,109),(13,110),(13,111),(2,112),(7,113),(17,113),(1,114),(7,116),(1,118),(2,118),(14,121),(7,122),(14,123),(5,124),(2,126),(14,127);
/*!40000 ALTER TABLE `_profiles_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_profiles_hashtags`
--

DROP TABLE IF EXISTS `_profiles_hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_profiles_hashtags` (
  `A` int NOT NULL,
  `B` int NOT NULL,
  UNIQUE KEY `_profiles_hashtags_AB_unique` (`A`,`B`),
  KEY `_profiles_hashtags_B_index` (`B`),
  CONSTRAINT `_profiles_hashtags_A_fkey` FOREIGN KEY (`A`) REFERENCES `hashtags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `_profiles_hashtags_B_fkey` FOREIGN KEY (`B`) REFERENCES `mentor_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_profiles_hashtags`
--

LOCK TABLES `_profiles_hashtags` WRITE;
/*!40000 ALTER TABLE `_profiles_hashtags` DISABLE KEYS */;
INSERT INTO `_profiles_hashtags` VALUES (276,107),(277,107),(278,107),(279,107),(285,108),(271,109),(288,109),(293,109),(298,109),(212,110),(274,110),(216,111),(240,111),(206,112),(178,113),(217,114),(133,115),(239,115),(131,116),(250,118),(251,118),(256,118),(131,121),(131,122),(284,123),(300,124),(131,126),(131,127);
/*!40000 ALTER TABLE `_profiles_hashtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_reservations_hashtags`
--

DROP TABLE IF EXISTS `_reservations_hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_reservations_hashtags` (
  `A` int NOT NULL,
  `B` int NOT NULL,
  UNIQUE KEY `_reservations_hashtags_AB_unique` (`A`,`B`),
  KEY `_reservations_hashtags_B_index` (`B`),
  CONSTRAINT `_reservations_hashtags_A_fkey` FOREIGN KEY (`A`) REFERENCES `hashtags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `_reservations_hashtags_B_fkey` FOREIGN KEY (`B`) REFERENCES `reservations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_reservations_hashtags`
--

LOCK TABLES `_reservations_hashtags` WRITE;
/*!40000 ALTER TABLE `_reservations_hashtags` DISABLE KEYS */;
INSERT INTO `_reservations_hashtags` VALUES (135,38),(136,39),(136,40),(134,43),(136,48),(135,49),(135,50),(135,51),(131,52),(135,53),(135,54),(135,55),(145,57),(149,66),(131,67),(133,67),(142,68),(137,69),(136,70),(137,70),(178,71),(136,72),(136,73),(135,74),(136,74),(137,74),(138,74),(139,74),(138,86),(136,110),(149,123),(137,124),(137,125),(133,129),(135,130),(134,133),(135,134),(146,135),(179,136),(179,137),(131,138),(133,138),(137,139),(134,140),(145,141),(196,142),(197,143),(134,144),(207,145),(217,146),(131,147),(248,148),(131,149),(256,150),(250,151),(251,152),(251,153),(251,154),(251,155),(257,156),(262,157),(257,158),(262,159),(257,160),(257,161),(257,162),(262,163),(262,164),(262,165),(262,166),(131,167),(131,168),(131,169),(212,170),(212,171),(212,172),(212,173),(131,174),(262,175),(274,176),(206,177),(206,178),(206,179),(131,180),(137,181),(137,182),(137,183),(137,184),(240,185),(240,186),(279,187),(240,188),(279,189),(300,190),(300,191),(298,192),(274,193),(131,194),(131,195),(131,196),(131,197),(274,198),(206,199),(300,200),(131,201),(300,202),(240,203),(300,204),(300,205),(216,206),(300,207),(240,208);
/*!40000 ALTER TABLE `_reservations_hashtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancel_reasons`
--

DROP TABLE IF EXISTS `cancel_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancel_reasons` (
  `content` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `requested_user_id` int NOT NULL,
  `reservation_id` int NOT NULL,
  UNIQUE KEY `cancel_reasons_reservation_id_key` (`reservation_id`),
  UNIQUE KEY `cancel_reasons_reservation_id_requested_user_id_key` (`reservation_id`,`requested_user_id`),
  KEY `cancel_reasons_requested_user_id_fkey` (`requested_user_id`),
  CONSTRAINT `cancel_reasons_requested_user_id_fkey` FOREIGN KEY (`requested_user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cancel_reasons_reservation_id_fkey` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancel_reasons`
--

LOCK TABLES `cancel_reasons` WRITE;
/*!40000 ALTER TABLE `cancel_reasons` DISABLE KEYS */;
INSERT INTO `cancel_reasons` VALUES ('테스트 1234','2023-10-03 21:06:45',109,49),('string','2023-10-02 03:28:27',108,144),('','2023-10-03 21:01:53',109,145),('string','2023-10-02 18:42:55',112,149),('string','2023-10-02 18:41:54',112,150),('string','2023-10-02 18:50:17',112,152),('시간이 맞지않아 취소합니다.','2023-10-02 19:49:06',112,153),('dfadsfads','2023-10-02 19:53:27',112,154),('adsfadsf','2023-10-02 20:01:46',112,155),('멘토/멘티로부터 연락이 없어서 취소합니다.','2023-10-02 21:56:37',112,156),('asdfkladsj;lasdkf','2023-10-02 21:57:21',112,157),('','2023-10-02 22:39:28',112,158),('','2023-10-02 22:40:54',112,159),('','2023-10-02 22:42:06',112,160),('','2023-10-02 22:56:46',112,161),('','2023-10-02 23:05:39',112,162),('','2023-10-02 23:22:51',112,163),('','2023-10-02 23:23:22',112,164),('시간이 맞지않아 취소합니다.','2023-10-04 22:54:23',112,167),('hi','2023-10-03 06:52:13',110,168),('멘토/멘티로부터 연락이 없어서 취소합니다.','2023-10-03 07:35:12',110,169),('','2023-10-03 21:10:54',109,170),('','2023-10-03 21:11:18',109,171),('멘토/멘티로부터 연락이 없어서 취소합니다.','2023-10-03 21:11:42',109,172),('시간이 맞지않아 취소합니다.','2023-10-03 21:12:10',109,173),('','2023-10-03 21:29:44',130,174),('시간이 맞지않아 취소합니다.','2023-10-04 01:20:29',108,175),('시간이 맞지않아 취소합니다.','2023-10-04 22:53:47',109,180),('시간이 맞지않아 취소합니다.','2023-10-05 06:30:11',109,185),('시간이 맞지않아 취소합니다.','2023-10-05 21:03:46',112,188),('시간이 맞지않아 취소합니다.','2023-10-13 21:34:33',112,192),('시간이 맞지않아 취소합니다.','2023-10-27 02:00:18',138,195);
/*!40000 ALTER TABLE `cancel_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (7,'42'),(5,'AI'),(17,'Web3'),(6,'게임'),(14,'그래픽스'),(16,'네트워크'),(13,'데이터'),(2,'모바일'),(15,'보안'),(11,'수학'),(10,'언어'),(9,'예술'),(1,'웹 개발'),(4,'창업'),(3,'취업'),(8,'클라우드'),(12,'학문');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtags`
--

DROP TABLE IF EXISTS `hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashtags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashtags_tag_name_key` (`tag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtags`
--

LOCK TABLES `hashtags` WRITE;
/*!40000 ALTER TABLE `hashtags` DISABLE KEYS */;
INSERT INTO `hashtags` VALUES (153,'000000000'),(152,'00000000000'),(236,'000000000000'),(156,'0123143231'),(154,'0123456789'),(202,'012345678912'),(155,'0123459681'),(237,'111111111111'),(226,'12'),(267,'1223'),(262,'123'),(204,'123123123123123'),(264,'1232'),(259,'12324'),(257,'1234'),(222,'123413243243'),(260,'12343'),(258,'12345'),(221,'123456789'),(235,'12345678901'),(234,'123456789012'),(146,'12345678901234567890'),(157,'1234567890123456789012345'),(151,'123456789012345678901234567890'),(271,'22'),(261,'222'),(238,'222222222222'),(268,'23'),(265,'234'),(266,'2345'),(289,'24'),(223,'312432121111'),(224,'321243212443'),(182,'3213123132132131321132'),(183,'321321321'),(269,'34'),(225,'414134141132'),(216,'42'),(263,'4431'),(270,'54'),(244,'aa'),(294,'aaa'),(134,'aaaaaaa'),(208,'aaaaaaaaaaa'),(145,'aaaaaaaaaaaaaaaaa'),(150,'aaaaaaaaaaaaaaaaaaaaaaaa'),(158,'aaaaaaaaaabbbbbbbbbbaaaaaaaaaa'),(290,'ab'),(199,'abc'),(291,'abcdde'),(296,'abcdedd'),(197,'abcdef'),(173,'abcdefghijabcdefghijabcdefghijab'),(176,'abcdefghijabcdefghijabcdefghija⭐'),(298,'abcdeq'),(198,'abde'),(292,'ad'),(231,'adsfadsfadsf'),(177,'adsfasdf'),(207,'asdasd'),(132,'asdf'),(239,'asdfadf'),(178,'asdfasdf'),(283,'asdfs'),(192,'asfasf'),(243,'av'),(137,'AWS'),(295,'bbd'),(240,'C#'),(241,'C++'),(206,'CC'),(293,'ccs'),(256,'Combine'),(205,'CPP'),(297,'da'),(180,'dasfd'),(212,'dd'),(214,'dddasdfasdfasdfasdf'),(229,'dddd'),(213,'ddddddddddddd'),(299,'dea'),(200,'def'),(230,'dsdd'),(209,'eeeeeeeeee'),(184,'fasdddfsafasdfadsasd'),(191,'fasfds'),(194,'fasfsadf'),(215,'fd'),(280,'fdasd'),(186,'fdsafadsfasfdsafsad'),(195,'fdsfsdfasd'),(196,'fsdafasfasd'),(193,'fsdafdsaf'),(187,'fsdaffsdafsadf'),(219,'fsdfdsfasdfd'),(272,'gg'),(140,'Hello'),(233,'hi'),(249,'imac'),(246,'ios'),(248,'iphone'),(255,'MVVM'),(136,'NestJS'),(277,'Next.js'),(139,'Nextjs'),(242,'Node.js'),(220,'Nodejs'),(273,'qq'),(278,'React'),(274,'rer'),(210,'rrrrr'),(185,'safasfsdfsdafsdfas'),(133,'sdf'),(254,'sdfu'),(245,'swift'),(253,'Swiftu'),(250,'SwiftUI'),(252,'Swiftw'),(286,'te'),(131,'test'),(203,'test123'),(181,'test12312321332121312321'),(218,'test12324444'),(188,'test2'),(189,'test3'),(190,'test4'),(228,'testestsetse'),(227,'testtesttest'),(179,'tet'),(300,'tt'),(251,'UIKit'),(141,'World'),(211,'wwwwwwww'),(247,'xcode'),(217,'yujrt'),(285,'ㄴㅇㄹ'),(282,'ㄹㄹ'),(275,'ㄹㄹㅇㅁㄴㄴ'),(281,'ㅁㄴㅇ'),(284,'ㅅㄷㄴㅅ'),(143,'녕안'),(138,'백엔드'),(288,'사진'),(142,'안녕'),(135,'이너서클'),(201,'일이삼사오륙칠팔구십일이'),(159,'일이삼사오육칠팔'),(160,'일이삼사오육칠팔a'),(167,'일이삼사오육칠팔aaaaaaaaaaaaaaaaaaaaa'),(168,'일이삼사오육칠팔aaaaaaaaaaaaaaaaaaaaaa'),(169,'일이삼사오육칠팔aaaaaaaaaaaaaaaaaaaaaaa'),(161,'일이삼사오육칠팔aaaaaaaaaaaaaaaaaaaaaaaa'),(232,'일이삼사오육칠팔구십일이'),(147,'일이삼사오육칠팔구십일이삼사오육'),(148,'일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사'),(149,'일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십'),(171,'일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이'),(279,'취업'),(287,'테스'),(276,'프론트엔드'),(144,'하이');
/*!40000 ALTER TABLE `hashtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentee_feedbacks`
--

DROP TABLE IF EXISTS `mentee_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentee_feedbacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mentee_id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mentee_feedbacks_mentee_id_reservation_id_key` (`mentee_id`,`reservation_id`),
  UNIQUE KEY `mentee_feedbacks_reservation_id_key` (`reservation_id`),
  KEY `mentee_feedbacks_mentor_id_fkey` (`mentor_id`),
  CONSTRAINT `mentee_feedbacks_mentee_id_fkey` FOREIGN KEY (`mentee_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mentee_feedbacks_mentor_id_fkey` FOREIGN KEY (`mentor_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mentee_feedbacks_reservation_id_fkey` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentee_feedbacks`
--

LOCK TABLES `mentee_feedbacks` WRITE;
/*!40000 ALTER TABLE `mentee_feedbacks` DISABLE KEYS */;
INSERT INTO `mentee_feedbacks` VALUES (7,108,111,38,5,'asdfasdf','2023-09-24 05:55:26','2023-09-24 05:55:26'),(8,108,109,39,5,'메일확인','2023-09-24 17:48:18','2023-09-24 17:48:18'),(9,108,109,54,5,'ㅇㅁㄹㄴㄹㅁㄴㅇㄹ','2023-09-24 18:16:01','2023-09-24 18:16:01'),(10,108,111,55,5,'감사요!','2023-09-24 18:37:36','2023-09-24 18:37:36'),(11,109,110,66,5,'ㅇㅇㅇ','2023-09-24 20:15:34','2023-09-24 20:15:34'),(12,111,109,40,0,'1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111','2023-09-24 21:22:37','2023-09-24 21:22:37'),(13,111,108,43,0,'멘토링 만족도 0','2023-09-24 21:23:49','2023-09-24 21:23:49'),(14,113,109,70,5,'사장님이 맛있고 음식이 친절해요','2023-09-24 21:37:41','2023-09-24 21:37:41'),(15,113,109,110,0,'dd','2023-09-24 22:16:01','2023-09-24 22:16:01'),(16,109,108,129,5,'백엔드의 신','2023-09-25 01:10:16','2023-09-25 01:10:16'),(17,108,111,130,5,'가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바','2023-09-25 01:20:25','2023-09-25 01:20:25'),(18,108,111,134,0,'ㅇㄹ메느엘므넹르ㅔㅁㄴ으레브ㅔㅈㅇ르ㅔㅂㅈ드란으라느아름나읾ㄴㅍㅇㅁㄴㅍ','2023-09-25 01:39:31','2023-09-25 01:39:31'),(19,109,112,68,5,'최고의 멘토링','2023-09-25 02:01:14','2023-09-25 02:01:14'),(20,108,111,136,0,'얍','2023-09-25 02:26:56','2023-09-25 02:26:56'),(21,112,108,52,0,'','2023-09-25 03:45:45','2023-09-25 03:45:45'),(22,112,110,51,1,'ㄷㄱㄷㄱㄷㄱㄷ','2023-09-25 03:46:07','2023-09-25 03:46:07'),(23,112,109,48,5,'비기으ㅏㅇㆍ','2023-09-25 03:46:21','2023-09-25 03:46:21'),(24,112,108,138,0,'','2023-09-26 03:12:03','2023-09-26 03:12:03'),(25,109,110,123,5,'최고','2023-09-30 04:44:09','2023-09-30 04:44:09'),(26,110,109,124,5,'ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ','2023-09-30 19:22:56','2023-09-30 19:22:56'),(27,109,114,146,5,'test','2023-10-01 13:11:49','2023-10-01 13:11:49'),(28,112,109,143,5,'test입니다\n','2023-10-01 17:10:31','2023-10-01 17:10:31'),(29,112,109,139,5,'test3입니다','2023-10-01 17:10:43','2023-10-01 17:10:43'),(30,112,109,165,5,'ㅇㅇ','2023-10-02 23:34:29','2023-10-02 23:34:29'),(31,112,109,166,5,'d','2023-10-02 23:49:01','2023-10-02 23:49:01'),(32,110,109,142,5,'good','2023-10-04 18:59:04','2023-10-04 18:59:04'),(33,109,112,178,5,'test','2023-10-04 19:06:52','2023-10-04 19:06:52'),(34,109,112,179,5,'good!!','2023-10-04 19:17:39','2023-10-04 19:17:39'),(35,109,110,176,5,'Good!!!','2023-10-04 19:17:48','2023-10-04 19:17:48'),(36,134,109,182,5,'dd','2023-10-05 06:03:00','2023-10-05 06:03:00'),(37,134,109,183,5,'ddd','2023-10-05 06:04:01','2023-10-05 06:04:01'),(38,134,109,184,5,'d','2023-10-05 06:29:03','2023-10-05 06:29:03'),(39,110,112,177,5,'','2023-10-05 21:05:56','2023-10-05 21:05:56'),(40,136,135,190,5,'ㄴㅇㄹㅁㄴㅇㄹ','2023-10-10 16:47:17','2023-10-10 16:47:17'),(41,136,135,191,5,'ㅅ','2023-10-10 17:03:50','2023-10-10 17:03:50'),(42,138,137,194,5,'t','2023-10-27 02:29:40','2023-10-27 02:29:40'),(43,137,138,196,5,'a','2023-10-27 02:30:04','2023-10-27 02:30:04'),(44,111,135,202,5,'ㅁ','2023-10-30 23:27:34','2023-10-30 23:27:34'),(45,111,135,204,5,'','2023-10-31 00:22:49','2023-10-31 00:22:49'),(46,135,111,203,5,'','2023-10-31 00:24:01','2023-10-31 00:24:01'),(47,135,111,206,5,'a','2023-10-31 02:56:09','2023-10-31 02:56:09');
/*!40000 ALTER TABLE `mentee_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_feedbacks`
--

DROP TABLE IF EXISTS `mentor_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_feedbacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mentee_id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mentor_feedbacks_mentor_id_reservation_id_key` (`mentor_id`,`reservation_id`),
  UNIQUE KEY `mentor_feedbacks_reservation_id_key` (`reservation_id`),
  KEY `mentor_feedbacks_mentee_id_fkey` (`mentee_id`),
  CONSTRAINT `mentor_feedbacks_mentee_id_fkey` FOREIGN KEY (`mentee_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mentor_feedbacks_mentor_id_fkey` FOREIGN KEY (`mentor_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mentor_feedbacks_reservation_id_fkey` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_feedbacks`
--

LOCK TABLES `mentor_feedbacks` WRITE;
/*!40000 ALTER TABLE `mentor_feedbacks` DISABLE KEYS */;
INSERT INTO `mentor_feedbacks` VALUES (2,108,109,54,4.5,'2023-09-24 18:41:50','2023-09-24 18:41:50'),(3,108,109,39,5,'2023-09-24 18:42:04','2023-09-24 18:42:04'),(4,109,110,66,5,'2023-09-24 20:17:24','2023-09-24 20:17:24'),(5,108,111,38,0.5,'2023-09-24 21:20:25','2023-09-24 21:20:25'),(6,108,111,55,0,'2023-09-24 21:31:09','2023-09-24 21:31:09'),(7,113,109,70,5,'2023-09-24 21:37:56','2023-09-24 21:37:56'),(8,111,109,40,5,'2023-09-24 21:38:48','2023-09-24 21:38:48'),(9,113,109,110,5,'2023-09-24 22:16:22','2023-09-24 22:16:22'),(10,108,111,130,5,'2023-09-25 01:21:43','2023-09-25 01:21:43'),(11,111,108,43,0,'2023-09-25 01:52:44','2023-09-25 01:52:44'),(12,108,111,136,5,'2023-09-25 02:27:19','2023-09-25 02:27:19'),(13,112,109,48,5,'2023-09-25 21:37:17','2023-09-25 21:37:17'),(14,112,109,139,5,'2023-10-02 20:09:23','2023-10-02 20:09:23'),(15,112,109,143,5,'2023-10-02 20:09:50','2023-10-02 20:09:50'),(16,109,112,68,5,'2023-10-02 20:10:03','2023-10-02 20:10:03'),(17,112,109,165,5,'2023-10-02 23:34:32','2023-10-02 23:34:32'),(18,110,109,142,5,'2023-10-04 18:59:19','2023-10-04 18:59:19'),(19,109,110,123,5,'2023-10-04 19:00:02','2023-10-04 19:00:02'),(20,112,109,166,5,'2023-10-04 19:05:56','2023-10-04 19:05:56'),(21,109,112,178,5,'2023-10-04 19:07:02','2023-10-04 19:07:02'),(22,134,109,182,5,'2023-10-05 06:03:09','2023-10-05 06:03:09'),(23,134,109,183,5,'2023-10-05 06:04:15','2023-10-05 06:04:15'),(24,134,109,184,5,'2023-10-05 06:29:12','2023-10-05 06:29:12'),(25,109,112,179,5,'2023-10-05 20:49:47','2023-10-05 20:49:47'),(26,136,135,190,5,'2023-10-10 16:48:21','2023-10-10 16:48:21'),(27,138,137,194,5,'2023-10-27 02:29:56','2023-10-27 02:29:56'),(28,137,138,196,5,'2023-10-27 02:30:18','2023-10-27 02:30:18'),(29,111,135,202,5,'2023-10-30 23:28:00','2023-10-30 23:28:00'),(30,111,135,204,5,'2023-10-31 00:23:51','2023-10-31 00:23:51'),(31,135,111,203,5,'2023-10-31 00:24:43','2023-10-31 00:24:43');
/*!40000 ALTER TABLE `mentor_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_profiles`
--

DROP TABLE IF EXISTS `mentor_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shortDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isHide` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mentoring_count` int NOT NULL DEFAULT '0',
  `socialLink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mentor_profiles_user_id_key` (`user_id`),
  CONSTRAINT `mentor_profiles_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_profiles`
--

LOCK TABLES `mentor_profiles` WRITE;
/*!40000 ALTER TABLE `mentor_profiles` DISABLE KEYS */;
INSERT INTO `mentor_profiles` VALUES (107,107,'42 마니또 기획 및 프론트엔드 구리입니다!','42 마니또 기획 및 프론트 엔드를 맡은 구리입니다.\n현재 플린트에서 백오피스 개발자로 근무중입니다!\n\n- 취업 준비에 필요한 정보들에 관련해서 멘토링 해드릴 수 있습니다!\n- 프론트엔드에 관해서도 초심자 분들하고 함께 이야기 나누고 싶어요!\n\n[멘토링 가능 시간]\n- 업무로 인해 주말 오후 3시 이후, 온라인으로 가능합니다!',0,'2023-09-23 21:03:07','2023-10-04 23:35:59',0,'https://42born2code.slack.com/team/U02LCB1ERDJ'),(108,108,'ㅁㄴㅇㄹ','스팸메일 나오면 바로 카톡\n\nhttps://github.com/koreanddinghwan',1,'2023-09-23 21:05:12','2023-10-12 19:33:20',1,'https://42born2code.slack.com/team/U035K1WFM6H'),(109,109,'42 Manito 기획 및 개발을 맡은 sungjpar 입니다. 가볍게 연락해주세요.','42 마니또를 개발한 sungjpar 입니다. 서비스, AWS, NestJS 등 다양한 분야에 대해서 가볍게 연락해주세요. \n\n- 깃허브\nhttps://github.com/JuneParkCode',0,'2023-09-23 21:40:20','2023-10-15 15:23:48',14,''),(110,110,'','',0,'2023-09-23 21:40:36','2023-10-12 20:37:35',2,''),(111,111,'','',0,'2023-09-23 23:27:28','2023-10-31 00:24:43',5,''),(112,112,'Tajsjdjdkdkskkdkdksksmsnenwnwnskxkckkxkskhshshsjsj','s',0,'2023-09-24 05:57:35','2023-10-13 21:38:22',3,''),(113,113,'asdfasdfasdfas','asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdasdfasdfasdfasdfffasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasd',1,'2023-09-24 21:28:33','2023-09-24 23:34:43',0,''),(114,114,'https://api.dev.42manito.com/dev/login/5','hh',1,'2023-09-29 23:10:04','2023-09-29 23:11:06',0,''),(115,115,'https://api.dev.42manito.com/dev/login/6','sdfdsfsdfsd',1,'2023-09-30 00:15:29','2023-09-30 22:23:46',0,''),(116,118,'test','test',1,'2023-09-30 07:16:32','2023-09-30 07:16:59',0,''),(117,119,'','',1,'2023-09-30 17:26:40','2023-09-30 17:26:40',0,''),(118,120,'이 거지같은 iOS 취업 시장에 버려지다니....','아아 마이크 테스트 하나,,둘,,,하나,,,둘,,,,\n안녕 날 소개하지 내 이름은 김하온 직업은 트레블러 취미는 메디테이션, 독서, 영화 시청 가사에 증오는 빼는 편이야 질리는 맛이기에',1,'2023-10-01 03:37:29','2023-10-01 03:54:56',0,''),(119,124,'','',1,'2023-10-01 13:09:38','2023-10-01 13:09:38',0,''),(120,126,'','',1,'2023-10-01 13:10:45','2023-10-01 13:10:45',0,''),(121,130,'','',1,'2023-10-03 21:25:57','2023-10-03 21:26:42',0,''),(122,132,'test','test',0,'2023-10-04 19:18:10','2023-10-04 19:19:35',0,'https://42born2code.slack.com/team/U035K1TH1GD'),(123,134,'fdsafsd','ㅅㅅ',1,'2023-10-05 01:33:19','2023-10-05 17:42:35',0,'https://42born2code.slack.com/team/U035K1TH1GD'),(124,135,'tttttt','',0,'2023-10-10 16:19:35','2023-10-31 00:23:51',3,'https://42born2code.slack.com/team/U035K1WFM6H'),(125,136,'','',1,'2023-10-10 16:20:56','2023-10-10 16:20:56',0,''),(126,137,'men1','gd',0,'2023-10-26 22:17:05','2023-10-27 02:29:56',1,''),(127,138,'men2','gd',0,'2023-10-27 01:44:22','2023-10-27 02:30:18',1,''),(128,139,'','',1,'2023-10-30 22:38:17','2023-10-30 22:38:17',0,''),(129,140,'','',1,'2023-10-30 22:38:56','2023-10-30 22:38:56',0,'');
/*!40000 ALTER TABLE `mentor_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mentor_id` int NOT NULL,
  `mentee_id` int NOT NULL,
  `category_id` int NOT NULL,
  `request_message` text COLLATE utf8mb4_unicode_ci,
  `status` enum('REQUEST','ACCEPT','CANCEL','MENTEE_CHECKED','MENTEE_FEEDBACK','DONE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'REQUEST',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reservations_mentee_id_fkey` (`mentee_id`),
  KEY `reservations_category_id_fkey` (`category_id`),
  KEY `reservations_mentor_id_mentee_id_status_idx` (`mentor_id`,`mentee_id`,`status`),
  CONSTRAINT `reservations_category_id_fkey` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `reservations_mentee_id_fkey` FOREIGN KEY (`mentee_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `reservations_mentor_id_fkey` FOREIGN KEY (`mentor_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (38,111,108,7,'test','DONE','2023-09-24 04:29:07','2023-09-24 21:20:25'),(39,109,108,16,'spam?','DONE','2023-09-24 04:40:52','2023-09-24 18:42:04'),(40,109,111,16,'ㅇㅇ','DONE','2023-09-24 04:40:59','2023-09-24 21:38:48'),(43,108,111,1,'ttestt','DONE','2023-09-24 05:45:42','2023-09-25 01:52:44'),(48,109,112,16,'테스트 9.24','DONE','2023-09-24 05:57:53','2023-09-25 21:37:17'),(49,111,109,7,'멘토링 해줘여','CANCEL','2023-09-24 05:58:00','2023-10-03 21:06:45'),(50,111,112,7,'Test 2','CANCEL','2023-09-24 16:02:55','2023-09-24 17:23:14'),(51,110,112,7,'Test2','MENTEE_FEEDBACK','2023-09-24 16:03:33','2023-09-25 03:46:07'),(52,108,112,7,'Test2','MENTEE_FEEDBACK','2023-09-24 17:15:35','2023-09-25 03:45:45'),(53,111,108,7,'ㅅㄷㄴㅅ','CANCEL','2023-09-24 17:49:33','2023-09-24 18:31:16'),(54,109,108,1,'스팸메일뜨면 카톡주세여','DONE','2023-09-24 17:49:54','2023-09-24 18:41:50'),(55,111,108,7,'ㅅㄷㄴㅅ','DONE','2023-09-24 18:31:29','2023-09-24 21:31:09'),(57,110,109,8,'ㅅㄷㄴㅅ','CANCEL','2023-09-24 20:09:42','2023-09-24 20:12:38'),(66,110,109,2,'ㄹㅇㅁㄴㅇㄹ','DONE','2023-09-24 20:14:51','2023-09-24 20:17:24'),(67,108,109,1,'스팸 잘 굽는법을 아신다해서 멘토링 요청 드립니다.','CANCEL','2023-09-24 20:29:31','2023-09-25 00:47:37'),(68,112,109,2,'반갑읍니다.','DONE','2023-09-24 20:36:14','2023-10-02 20:10:03'),(69,109,110,1,'ㅁㅁ','MENTEE_CHECKED','2023-09-24 20:45:16','2023-09-24 20:45:30'),(70,109,113,7,'asdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfasdfawqfasdfasdfasdffasdfasdfasdfa','DONE','2023-09-24 21:30:26','2023-09-24 21:37:56'),(71,113,109,17,'코인 잘하신다해서 web3 멘토링 신청합니다.','CANCEL','2023-09-24 21:38:20','2023-09-24 21:38:26'),(72,109,113,1,'ㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㅁㅇㅇㄴㄴㄹㄹㅁㅁㄴㄴㅇㅇㄹㄹㅁㅁㄴㄴㅇㅇㄹㄹㅁㅁㅇㅇㄴㄴㄹㄹㅁㅁㄴㄴㅇㅇㄹㄹㅁㅁㄴㄴㅇㅇㄹㄹㅁㅁㄴㄴㅇㅇㄹㄹㅁㅁㄴㄴㅇㅇㄹㄹㅁㅁㄴㄴㅇㅇㄹ','CANCEL','2023-09-24 21:39:12','2023-09-24 21:39:20'),(73,109,113,7,'ㅁㄴㅇㄹㅁㄴㅇㄹㅂㅈㄷ','CANCEL','2023-09-24 21:39:39','2023-09-24 21:39:57'),(74,109,113,7,'\\\\','CANCEL','2023-09-24 21:44:55','2023-09-24 21:44:59'),(86,109,110,8,'123213','CANCEL','2023-09-24 22:01:40','2023-09-24 22:02:26'),(110,109,113,1,'adsads','DONE','2023-09-24 22:12:59','2023-09-24 22:16:22'),(123,110,109,2,'ㅇ','DONE','2023-09-24 22:18:22','2023-10-04 19:00:02'),(124,109,110,16,'11','MENTEE_FEEDBACK','2023-09-24 22:19:40','2023-09-30 19:22:56'),(125,109,113,16,'asdfasdfasdf','CANCEL','2023-09-24 22:19:49','2023-09-24 23:23:21'),(129,108,109,8,'ㅅㄷㄴㅅ','MENTEE_FEEDBACK','2023-09-25 00:47:54','2023-09-25 01:10:16'),(130,111,108,7,'ㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㄴㅁㄹ','DONE','2023-09-25 01:14:32','2023-09-25 01:21:43'),(133,108,111,7,'42/aaaaaaa','CANCEL','2023-09-25 01:26:40','2023-09-25 01:27:15'),(134,111,108,7,'담배피고싶어요','MENTEE_FEEDBACK','2023-09-25 01:35:41','2023-09-25 01:39:31'),(135,110,108,7,'sdfs','CANCEL','2023-09-25 02:24:48','2023-09-26 04:17:58'),(136,111,108,7,'sdfs','DONE','2023-09-25 02:25:38','2023-09-25 02:27:19'),(137,111,112,7,'Test 아침','CANCEL','2023-09-25 16:36:44','2023-09-28 09:07:14'),(138,108,112,8,'스팸먹고싶다','MENTEE_FEEDBACK','2023-09-25 16:38:21','2023-09-26 03:12:03'),(139,109,112,16,'버그버그','DONE','2023-09-25 16:38:46','2023-10-02 20:09:23'),(140,108,109,7,'fdsafsd','MENTEE_CHECKED','2023-09-26 03:11:52','2023-09-26 03:14:36'),(141,110,111,7,'test','MENTEE_CHECKED','2023-09-26 16:49:10','2023-09-30 04:12:50'),(142,109,110,7,'test','DONE','2023-09-27 22:30:36','2023-10-04 18:59:19'),(143,109,112,14,'dd','DONE','2023-09-28 09:27:55','2023-10-02 20:09:50'),(144,108,110,8,'test','CANCEL','2023-09-28 23:22:15','2023-10-02 03:28:27'),(145,110,109,2,'ㅅㄷㄴㅅ','CANCEL','2023-09-29 22:03:27','2023-10-03 21:01:53'),(146,114,109,1,'test','MENTEE_FEEDBACK','2023-09-30 04:43:06','2023-10-01 13:11:49'),(147,118,109,7,'test','MENTEE_CHECKED','2023-09-30 07:17:21','2023-09-30 07:17:39'),(148,120,115,1,'asdfasdf','REQUEST','2023-10-01 03:39:07','2023-10-01 03:39:07'),(149,118,112,7,'ddd','CANCEL','2023-10-01 16:46:06','2023-10-02 18:42:55'),(150,120,112,2,'test입니다','CANCEL','2023-10-01 17:11:55','2023-10-02 18:41:54'),(151,120,111,1,'test','REQUEST','2023-10-02 02:06:26','2023-10-02 02:06:26'),(152,120,112,2,'d','CANCEL','2023-10-02 18:43:41','2023-10-02 18:50:17'),(153,120,112,2,'d','CANCEL','2023-10-02 18:55:16','2023-10-02 19:49:06'),(154,120,112,1,'dd','CANCEL','2023-10-02 19:53:19','2023-10-02 19:53:27'),(155,120,112,2,'dd','CANCEL','2023-10-02 20:01:35','2023-10-02 20:01:46'),(156,109,112,7,'dd','CANCEL','2023-10-02 20:10:20','2023-10-02 21:56:37'),(157,109,112,7,'d','CANCEL','2023-10-02 21:56:52','2023-10-02 21:57:21'),(158,109,112,7,'ddd','CANCEL','2023-10-02 22:06:40','2023-10-02 22:39:28'),(159,109,112,7,'ㅇㅇ','CANCEL','2023-10-02 22:40:48','2023-10-02 22:40:54'),(160,109,112,7,'d','CANCEL','2023-10-02 22:42:00','2023-10-02 22:42:06'),(161,109,112,7,'ikii','CANCEL','2023-10-02 22:47:11','2023-10-02 22:56:46'),(162,109,112,7,'ㅎ','CANCEL','2023-10-02 23:05:17','2023-10-02 23:05:39'),(163,109,112,7,'dd','CANCEL','2023-10-02 23:15:15','2023-10-02 23:22:51'),(164,109,112,7,'dd','CANCEL','2023-10-02 23:23:13','2023-10-02 23:23:22'),(165,109,112,7,'ㅇㅇㅇ','DONE','2023-10-02 23:32:18','2023-10-02 23:34:32'),(166,109,112,7,'ㅇㅇ','DONE','2023-10-02 23:34:42','2023-10-04 19:05:56'),(167,118,112,7,'d','CANCEL','2023-10-02 23:49:24','2023-10-04 22:54:23'),(168,118,110,7,'gg','CANCEL','2023-10-03 06:52:05','2023-10-03 06:52:13'),(169,118,110,7,'fg','CANCEL','2023-10-03 07:34:49','2023-10-03 07:35:12'),(170,112,109,16,'dd','CANCEL','2023-10-03 21:10:35','2023-10-03 21:10:54'),(171,112,109,16,'dd2','CANCEL','2023-10-03 21:11:12','2023-10-03 21:11:18'),(172,112,109,16,'t3','CANCEL','2023-10-03 21:11:36','2023-10-03 21:11:42'),(173,112,109,16,'test4','CANCEL','2023-10-03 21:12:02','2023-10-03 21:12:10'),(174,130,111,14,'ee','CANCEL','2023-10-03 21:26:56','2023-10-03 21:29:44'),(175,109,108,7,'dd','CANCEL','2023-10-04 01:20:18','2023-10-04 01:20:29'),(176,110,109,13,'test','MENTEE_FEEDBACK','2023-10-04 19:00:21','2023-10-04 19:17:48'),(177,112,110,16,'test','MENTEE_FEEDBACK','2023-10-04 19:04:54','2023-10-05 21:05:56'),(178,112,109,16,'test','DONE','2023-10-04 19:06:22','2023-10-04 19:07:02'),(179,112,109,16,'test2','DONE','2023-10-04 19:07:16','2023-10-05 20:49:47'),(180,132,109,7,'good','CANCEL','2023-10-04 19:20:09','2023-10-04 22:53:47'),(181,109,107,8,'AWS 네트워크 구축을 하고 싶습니다!','MENTEE_CHECKED','2023-10-04 22:55:35','2023-10-05 01:32:48'),(182,109,134,8,'fasfddsaf','DONE','2023-10-05 01:33:30','2023-10-05 06:03:09'),(183,109,134,16,'dd','DONE','2023-10-05 06:03:22','2023-10-05 06:04:15'),(184,109,134,16,'test','DONE','2023-10-05 06:04:28','2023-10-05 06:29:12'),(185,109,134,16,'dd','CANCEL','2023-10-05 06:29:24','2023-10-05 06:30:11'),(186,109,134,16,'dd','MENTEE_CHECKED','2023-10-05 06:30:49','2023-10-05 06:31:12'),(187,107,108,3,'졸려요','REQUEST','2023-10-05 08:34:27','2023-10-05 08:34:27'),(188,109,112,16,'t','CANCEL','2023-10-05 20:42:05','2023-10-05 21:03:46'),(189,107,109,3,'test\n','REQUEST','2023-10-05 23:48:02','2023-10-05 23:48:02'),(190,135,136,5,'해줘','DONE','2023-10-10 16:21:24','2023-10-10 16:48:21'),(191,135,136,5,'ㄴㅇ','MENTEE_FEEDBACK','2023-10-10 17:01:58','2023-10-10 17:03:50'),(192,109,112,8,'nh','CANCEL','2023-10-13 21:34:10','2023-10-13 21:34:33'),(193,110,115,13,'dd','MENTEE_CHECKED','2023-10-13 21:36:09','2023-10-13 21:38:48'),(194,137,138,2,'plz','DONE','2023-10-27 01:46:14','2023-10-27 02:29:56'),(195,138,137,14,'123','CANCEL','2023-10-27 01:59:19','2023-10-27 02:00:18'),(196,138,137,14,'gd','DONE','2023-10-27 02:00:42','2023-10-27 02:30:18'),(197,137,138,2,'a','MENTEE_CHECKED','2023-10-27 02:30:43','2023-10-27 02:31:11'),(198,110,108,13,'n','REQUEST','2023-10-30 22:18:06','2023-10-30 22:18:06'),(199,112,108,2,'ac','REQUEST','2023-10-30 22:19:25','2023-10-30 22:19:25'),(200,135,132,5,'modal1','MENTEE_CHECKED','2023-10-30 23:02:00','2023-10-30 23:02:44'),(201,132,135,7,'aaaaa','MENTEE_CHECKED','2023-10-30 23:22:37','2023-10-31 00:23:28'),(202,135,111,5,'n','DONE','2023-10-30 23:25:16','2023-10-30 23:28:00'),(203,111,135,13,'0','DONE','2023-10-30 23:29:49','2023-10-31 00:24:43'),(204,135,111,5,'t','DONE','2023-10-30 23:34:40','2023-10-31 00:23:51'),(205,135,111,5,'a','MENTEE_CHECKED','2023-10-31 00:25:29','2023-10-31 00:28:59'),(206,111,135,13,'tsrt','MENTEE_FEEDBACK','2023-10-31 00:37:08','2023-10-31 02:56:09'),(207,135,130,5,'1','MENTEE_CHECKED','2023-10-31 03:00:38','2023-10-31 03:01:21'),(208,111,135,13,'.','MENTEE_CHECKED','2023-10-31 03:03:09','2023-10-31 03:04:10');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('ADMIN','USER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mentor_profile_id` int DEFAULT NULL,
  `mentoring_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_key` (`email`),
  UNIQUE KEY `users_nickname_key` (`nickname`),
  UNIQUE KEY `users_mentor_profile_id_key` (`mentor_profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (107,'gulee@student.42seoul.kr','gulee','https://cdn.intra.42.fr/users/4dabd5c31d9f620ea04c592faae936de/gulee.JPG','USER','2023-09-23 21:03:07','2023-09-23 21:03:07',NULL,0),(108,'myukang@student.42seoul.kr','myukang','https://cdn.intra.42.fr/users/01a549a4fd11f815ff2057db26ceaa6e/myukang.jpg','USER','2023-09-23 21:05:12','2023-10-30 22:57:56',NULL,7),(109,'sungjpar@student.42seoul.kr','sungjpar','https://cdn.intra.42.fr/users/e433fdfa3b130d737d084240f3e86371/sungjpar.jpg','USER','2023-09-23 21:40:20','2023-10-04 19:17:48',NULL,8),(110,'jinkim2@student.42seoul.kr','jinkim2','https://cdn.intra.42.fr/users/3d39ec34e11cbe8a93f7deba73b78e56/jinkim2.jpg','USER','2023-09-23 21:40:36','2023-10-30 22:58:34',NULL,3),(111,'soo@student.42seoul.kr','soo','https://cdn.intra.42.fr/users/9ea0d4ca42dc626e52f65faa9d700784/soo.jpg','USER','2023-09-23 23:27:28','2023-10-31 02:54:13',NULL,4),(112,'sangylee@student.42seoul.kr','sangylee','https://cdn.intra.42.fr/users/9e3d26310ecaf77226ed7452450e81ab/sangylee.jpg','USER','2023-09-24 05:57:35','2023-10-13 21:32:26',NULL,8),(113,'jinhyeop@student.42seoul.kr','jinhyeop','https://cdn.intra.42.fr/users/b99d5ec6d72e2777433edef864152bf3/jinhyeop.jpg','USER','2023-09-24 21:28:33','2023-09-24 22:16:01',NULL,2),(114,'42manito5@gmail.com','manitoDevUser5','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-09-29 23:10:04','2023-10-06 07:13:51',NULL,0),(115,'42manito6@gmail.com','manitoDevUser6','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-09-30 00:15:29','2023-09-30 00:15:29',NULL,0),(118,'42manito105@gmail.com','manitoDevUser105','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-09-30 07:16:32','2023-09-30 07:16:32',NULL,0),(119,'42manito104@gmail.com','manitoDevUser104','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-09-30 17:26:40','2023-09-30 17:26:40',NULL,0),(120,'jinyoo@student.42seoul.kr','jinyoo','https://cdn.intra.42.fr/users/79a44c06deef00328db1ab8fcf3c3824/jinyoo.jpg','USER','2023-10-01 03:37:29','2023-10-01 03:37:29',NULL,0),(124,'42manito9@gmail.com','manitoDevUser9','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-01 13:09:38','2023-10-01 13:09:38',NULL,0),(126,'42manito121@gmail.com','manitoDevUser121','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-01 13:10:45','2023-10-25 03:31:37',NULL,0),(130,'42manito1@gmail.com','manitoDevUser1','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-03 21:25:57','2023-10-03 21:25:57',NULL,0),(132,'42manito122@gmail.com','manitoDevUser122','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-04 19:18:10','2023-10-30 22:45:22',NULL,0),(134,'42manito123@gmail.com','manitoDevUser123','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-05 01:33:19','2023-10-05 06:29:03',NULL,3),(135,'42manito10@gmail.com','manitoDevUser10','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-10 16:19:35','2023-10-31 02:56:09',NULL,2),(136,'42manito4@gmail.com','manitoDevUser4','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-10 16:20:56','2023-10-10 17:03:50',NULL,2),(137,'42manitoNaN@gmail.com','manitoDevUserNaN','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-26 22:17:05','2023-10-30 22:38:10',NULL,1),(138,'42manito138@gmail.com','manitoDevUser138','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-27 01:44:22','2023-10-27 02:29:40',NULL,1),(139,'42manito137@gmail.com','manitoDevUser137','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-30 22:38:17','2023-10-30 22:38:17',NULL,0),(140,'42manito167@gmail.com','manitoDevUser167','https://cdn.intra.42.fr/users/medium_manito.jpg','USER','2023-10-30 22:38:56','2023-10-30 22:38:56',NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-06 17:12:31
