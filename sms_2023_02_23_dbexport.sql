-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: sms
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `error_tracers`
--

DROP TABLE IF EXISTS `error_tracers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_tracers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_info` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_api` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_tracers`
--

LOCK TABLES `error_tracers` WRITE;
/*!40000 ALTER TABLE `error_tracers` DISABLE KEYS */;
INSERT INTO `error_tracers` VALUES (1,'2023-02-14 21:28:07','2023-02-14 21:28:07','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','9778302035','[{\"message_id\":158542767,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639778302035\",\"message\":\"BILLS\\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:28:07\",\"updated_at\":\"2023-02-14 21:28:07\"}]'),(2,'2023-02-14 21:28:30','2023-02-14 21:28:30','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM. Ref # FB123','9778302035','[{\"message_id\":158542797,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639778302035\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM. Ref # FB123\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:28:30\",\"updated_at\":\"2023-02-14 21:28:30\"}]'),(3,'2023-02-14 21:28:45','2023-02-14 21:28:45','INFO\nOur AGMA 2023 will be on December 23, 2023. Registration is on going.FB123','9778302035','[{\"message_id\":158542817,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639778302035\",\"message\":\"INFO\\nOur AGMA 2023 will be on December 23, 2023. Registration is on going.FB123\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:28:44\",\"updated_at\":\"2023-02-14 21:28:44\"}]'),(4,'2023-02-14 21:36:17','2023-02-14 21:36:17','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','9173153590','[{\"message_id\":158543851,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639173153590\",\"message\":\"BILLS\\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:17\",\"updated_at\":\"2023-02-14 21:36:17\"}]'),(5,'2023-02-14 21:36:18','2023-02-14 21:36:18','BILLS\nAccount:02333311212, Amount due is 2,501.00 Period of Feburayr 2024 Due date will be Febrary 12, 2024  Ref # FB124','9912132293','[{\"message_id\":158543853,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639912132293\",\"message\":\"BILLS\\nAccount:02333311212, Amount due is 2,501.00 Period of Feburayr 2024 Due date will be Febrary 12, 2024  Ref # FB124\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:18\",\"updated_at\":\"2023-02-14 21:36:18\"}]'),(6,'2023-02-14 21:36:19','2023-02-14 21:36:19','BILLS\nAccount:02333311213, Amount due is 2,502.00 Period of Feburayr 2025 Due date will be Febrary 12, 2025  Ref # FB125','9618926927','[{\"message_id\":158543855,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639618926927\",\"message\":\"BILLS\\nAccount:02333311213, Amount due is 2,502.00 Period of Feburayr 2025 Due date will be Febrary 12, 2025  Ref # FB125\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:19\",\"updated_at\":\"2023-02-14 21:36:19\"}]'),(7,'2023-02-14 21:36:21','2023-02-14 21:36:21','BILLS\nAccount:02333311214, Amount due is 2,503.00 Period of Feburayr 2026 Due date will be Febrary 12, 2026  Ref # FB126','9176261374','[{\"message_id\":158543858,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639176261374\",\"message\":\"BILLS\\nAccount:02333311214, Amount due is 2,503.00 Period of Feburayr 2026 Due date will be Febrary 12, 2026  Ref # FB126\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:20\",\"updated_at\":\"2023-02-14 21:36:20\"}]'),(8,'2023-02-14 21:36:22','2023-02-14 21:36:22','BILLS\nAccount:02333311215, Amount due is 2,504.00 Period of Feburayr 2027 Due date will be Febrary 12, 2027  Ref # FB127','9554816526','[{\"message_id\":158543861,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639554816526\",\"message\":\"BILLS\\nAccount:02333311215, Amount due is 2,504.00 Period of Feburayr 2027 Due date will be Febrary 12, 2027  Ref # FB127\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:22\",\"updated_at\":\"2023-02-14 21:36:22\"}]'),(9,'2023-02-14 21:36:23','2023-02-14 21:36:23','BILLS\nAccount:02333311216, Amount due is 2,505.00 Period of Feburayr 2028 Due date will be Febrary 12, 2028  Ref # FB128','9278719773','[{\"message_id\":158543864,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639278719773\",\"message\":\"BILLS\\nAccount:02333311216, Amount due is 2,505.00 Period of Feburayr 2028 Due date will be Febrary 12, 2028  Ref # FB128\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:23\",\"updated_at\":\"2023-02-14 21:36:23\"}]'),(10,'2023-02-14 21:36:30','2023-02-14 21:36:30','BILLS\nAccount:02333311217, Amount due is 2,506.00 Period of Feburayr 2029 Due date will be Febrary 12, 2029  Ref # FB129','9292803760','[{\"message_id\":158543877,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639292803760\",\"message\":\"BILLS\\nAccount:02333311217, Amount due is 2,506.00 Period of Feburayr 2029 Due date will be Febrary 12, 2029  Ref # FB129\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:30\",\"updated_at\":\"2023-02-14 21:36:30\"}]'),(11,'2023-02-14 21:36:33','2023-02-14 21:36:33','BILLS\nAccount:02333311218, Amount due is 2,507.00 Period of Feburayr 2030 Due date will be Febrary 12, 2030  Ref # FB130','9171165356','[{\"message_id\":158543881,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639171165356\",\"message\":\"BILLS\\nAccount:02333311218, Amount due is 2,507.00 Period of Feburayr 2030 Due date will be Febrary 12, 2030  Ref # FB130\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:32\",\"updated_at\":\"2023-02-14 21:36:32\"}]'),(12,'2023-02-14 21:36:36','2023-02-14 21:36:36','BILLS\nAccount:02333311219, Amount due is 2,508.00 Period of Feburayr 2031 Due date will be Febrary 12, 2031  Ref # FB131','9456843397','[{\"message_id\":158543887,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639456843397\",\"message\":\"BILLS\\nAccount:02333311219, Amount due is 2,508.00 Period of Feburayr 2031 Due date will be Febrary 12, 2031  Ref # FB131\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:36\",\"updated_at\":\"2023-02-14 21:36:36\"}]'),(13,'2023-02-14 21:36:38','2023-02-14 21:36:38','BILLS\nAccount:02333311220, Amount due is 2,509.00 Period of Feburayr 2032 Due date will be Febrary 12, 2032  Ref # FB132','9070368238','[{\"message_id\":158543889,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639070368238\",\"message\":\"BILLS\\nAccount:02333311220, Amount due is 2,509.00 Period of Feburayr 2032 Due date will be Febrary 12, 2032  Ref # FB132\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:38\",\"updated_at\":\"2023-02-14 21:36:38\"}]'),(14,'2023-02-14 21:36:41','2023-02-14 21:36:41','BILLS\nAccount:02333311221, Amount due is 2,510.00 Period of Feburayr 2033 Due date will be Febrary 12, 2033  Ref # FB133','9468116837','[{\"message_id\":158543893,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639468116837\",\"message\":\"BILLS\\nAccount:02333311221, Amount due is 2,510.00 Period of Feburayr 2033 Due date will be Febrary 12, 2033  Ref # FB133\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:40\",\"updated_at\":\"2023-02-14 21:36:40\"}]'),(15,'2023-02-14 21:36:43','2023-02-14 21:36:43','BILLS\nAccount:02333311222, Amount due is 2,511.00 Period of Feburayr 2034 Due date will be Febrary 12, 2034  Ref # FB134','9955144665','[{\"message_id\":158543896,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639955144665\",\"message\":\"BILLS\\nAccount:02333311222, Amount due is 2,511.00 Period of Feburayr 2034 Due date will be Febrary 12, 2034  Ref # FB134\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:43\",\"updated_at\":\"2023-02-14 21:36:43\"}]'),(16,'2023-02-14 21:36:45','2023-02-14 21:36:45','BILLS\nAccount:02333311223, Amount due is 2,512.00 Period of Feburayr 2035 Due date will be Febrary 12, 2035  Ref # FB135','9756985941','[{\"message_id\":158543901,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639756985941\",\"message\":\"BILLS\\nAccount:02333311223, Amount due is 2,512.00 Period of Feburayr 2035 Due date will be Febrary 12, 2035  Ref # FB135\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-14 21:36:45\",\"updated_at\":\"2023-02-14 21:36:45\"}]'),(17,'2023-02-17 14:23:20','2023-02-17 14:23:20','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','9070368238','[{\"message_id\":159018658,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639070368238\",\"message\":\"BILLS\\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 14:23:20\",\"updated_at\":\"2023-02-17 14:23:20\"}]'),(18,'2023-02-17 14:24:56','2023-02-17 14:24:56','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','9070368238','[{\"message_id\":159018865,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639070368238\",\"message\":\"BILLS\\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 14:24:55\",\"updated_at\":\"2023-02-17 14:24:55\"}]'),(19,'2023-02-17 14:28:19','2023-02-17 14:28:19','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM. Ref # FB123','9070368238','[{\"message_id\":159019347,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639070368238\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM. Ref # FB123\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 14:28:19\",\"updated_at\":\"2023-02-17 14:28:19\"}]'),(20,'2023-02-17 14:33:07','2023-02-17 14:33:07','INFO\nOur AGMA 2023 will be on December 23, 2023. Registration is on going.FB123','9070368238','[{\"message_id\":159020041,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639070368238\",\"message\":\"INFO\\nOur AGMA 2023 will be on December 23, 2023. Registration is on going.FB123\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 14:33:07\",\"updated_at\":\"2023-02-17 14:33:07\"}]'),(21,'2023-02-17 15:06:53','2023-02-17 15:06:53','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI1','09778302035','[{\"message_id\":159024533,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639778302035\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI1\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 15:06:53\",\"updated_at\":\"2023-02-17 15:06:53\"}]'),(22,'2023-02-17 15:06:54','2023-02-17 15:06:54','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI2','09953044934','[{\"message_id\":159024540,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639953044934\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI2\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 15:06:54\",\"updated_at\":\"2023-02-17 15:06:54\"}]'),(23,'2023-02-17 15:06:55','2023-02-17 15:06:55','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI3','09778178974','[{\"message_id\":159024545,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639778178974\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI3\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 15:06:55\",\"updated_at\":\"2023-02-17 15:06:55\"}]'),(24,'2023-02-17 15:06:56','2023-02-17 15:06:56','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI4','09165576777','[{\"message_id\":159024547,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639165576777\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI4\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 15:06:56\",\"updated_at\":\"2023-02-17 15:06:56\"}]'),(25,'2023-02-17 15:06:57','2023-02-17 15:06:57','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI5','09056635990','[{\"message_id\":159024553,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639056635990\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI5\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 15:06:57\",\"updated_at\":\"2023-02-17 15:06:57\"}]'),(26,'2023-02-17 16:35:15','2023-02-17 16:35:15','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM.','9173153590','[{\"message_id\":159041600,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639173153590\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM.\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 16:35:14\",\"updated_at\":\"2023-02-17 16:35:14\"}]'),(27,'2023-02-17 16:39:50','2023-02-17 16:39:50','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','09778302035','[{\"message_id\":159046779,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639778302035\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 16:39:50\",\"updated_at\":\"2023-02-17 16:39:50\"}]'),(28,'2023-02-17 16:39:51','2023-02-17 16:39:51','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','09953044934','[{\"message_id\":159046782,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639953044934\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 16:39:51\",\"updated_at\":\"2023-02-17 16:39:51\"}]'),(29,'2023-02-17 16:39:52','2023-02-17 16:39:52','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','09778178974','[{\"message_id\":159046787,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639778178974\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 16:39:52\",\"updated_at\":\"2023-02-17 16:39:52\"}]'),(30,'2023-02-17 16:39:53','2023-02-17 16:39:53','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','09165576777','[{\"message_id\":159046789,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639165576777\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 16:39:53\",\"updated_at\":\"2023-02-17 16:39:53\"}]'),(31,'2023-02-17 16:39:55','2023-02-17 16:39:55','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','09056635990','[{\"message_id\":159046795,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639056635990\",\"message\":\"POWER_OUTAGE\\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-17 16:39:54\",\"updated_at\":\"2023-02-17 16:39:54\"}]'),(32,'2023-02-18 16:01:01','2023-02-18 16:01:01','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023','9173153590','[{\"message_id\":159200434,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639173153590\",\"message\":\"BILLS\\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023\",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Globe\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-18 16:01:00\",\"updated_at\":\"2023-02-18 16:01:00\"}]'),(33,'2023-02-18 16:01:18','2023-02-18 16:01:18','INFO\nOur AGMA 2023 will be on December 23, 2023. Registration is on going. ','9618926927','[{\"message_id\":159200464,\"user_id\":17507,\"user\":\"alfred.suiterx@gmail.com\",\"account_id\":17369,\"account\":\"Adventures\",\"recipient\":\"639618926927\",\"message\":\"INFO\\nOur AGMA 2023 will be on December 23, 2023. Registration is on going. \",\"sender_name\":\"CEBECO2DEMO\",\"network\":\"Smart\",\"status\":\"Pending\",\"type\":\"Single\",\"source\":\"Api\",\"created_at\":\"2023-02-18 16:01:18\",\"updated_at\":\"2023-02-18 16:01:18\"}]');
/*!40000 ALTER TABLE `error_tracers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (69,'2014_10_12_000000_create_users_table',1),(70,'2014_10_12_100000_create_password_resets_table',1),(71,'2019_08_19_000000_create_failed_jobs_table',1),(72,'2019_12_14_000001_create_personal_access_tokens_table',1),(73,'2023_02_08_010820_create_senders_table',1),(74,'2023_02_09_103150_create_pending_sends_table',1),(75,'2023_02_09_115009_create_error_tracers_table',1),(76,'2023_02_09_184354_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_sends`
--

DROP TABLE IF EXISTS `pending_sends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_sends` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'P',
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batchid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batchdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_sends`
--

LOCK TABLES `pending_sends` WRITE;
/*!40000 ALTER TABLE `pending_sends` DISABLE KEYS */;
INSERT INTO `pending_sends` VALUES (1,'D','9778302035','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','20230214092803PM','2023-02-14 09:28:03','BILLS','2023-02-14 21:28:03','2023-02-14 21:28:07'),(2,'D','9778302035','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM. Ref # FB123','20230214092826PM','2023-02-14 09:28:26','POWER_OUTAGE','2023-02-14 21:28:26','2023-02-14 21:28:30'),(3,'D','9778302035','INFO\nOur AGMA 2023 will be on December 23, 2023. Registration is on going.FB123','20230214092841PM','2023-02-14 09:28:41','INFO','2023-02-14 21:28:41','2023-02-14 21:28:45'),(4,'D','9173153590','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:17'),(5,'D','9912132293','BILLS\nAccount:02333311212, Amount due is 2,501.00 Period of Feburayr 2024 Due date will be Febrary 12, 2024  Ref # FB124','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:18'),(6,'D','9618926927','BILLS\nAccount:02333311213, Amount due is 2,502.00 Period of Feburayr 2025 Due date will be Febrary 12, 2025  Ref # FB125','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:19'),(7,'D','9176261374','BILLS\nAccount:02333311214, Amount due is 2,503.00 Period of Feburayr 2026 Due date will be Febrary 12, 2026  Ref # FB126','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:21'),(8,'D','9554816526','BILLS\nAccount:02333311215, Amount due is 2,504.00 Period of Feburayr 2027 Due date will be Febrary 12, 2027  Ref # FB127','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:22'),(9,'D','9278719773','BILLS\nAccount:02333311216, Amount due is 2,505.00 Period of Feburayr 2028 Due date will be Febrary 12, 2028  Ref # FB128','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:23'),(10,'D','9292803760','BILLS\nAccount:02333311217, Amount due is 2,506.00 Period of Feburayr 2029 Due date will be Febrary 12, 2029  Ref # FB129','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:30'),(11,'D','9171165356','BILLS\nAccount:02333311218, Amount due is 2,507.00 Period of Feburayr 2030 Due date will be Febrary 12, 2030  Ref # FB130','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:33'),(12,'D','9456843397','BILLS\nAccount:02333311219, Amount due is 2,508.00 Period of Feburayr 2031 Due date will be Febrary 12, 2031  Ref # FB131','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:36'),(13,'D','9070368238','BILLS\nAccount:02333311220, Amount due is 2,509.00 Period of Feburayr 2032 Due date will be Febrary 12, 2032  Ref # FB132','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:38'),(14,'D','9468116837','BILLS\nAccount:02333311221, Amount due is 2,510.00 Period of Feburayr 2033 Due date will be Febrary 12, 2033  Ref # FB133','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:41'),(15,'D','9955144665','BILLS\nAccount:02333311222, Amount due is 2,511.00 Period of Feburayr 2034 Due date will be Febrary 12, 2034  Ref # FB134','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:43'),(16,'D','9756985941','BILLS\nAccount:02333311223, Amount due is 2,512.00 Period of Feburayr 2035 Due date will be Febrary 12, 2035  Ref # FB135','20230214093613PM','2023-02-14 09:36:13','BILLS','2023-02-14 21:36:13','2023-02-14 21:36:45'),(17,'D','9070368238','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','20230217022318PM','2023-02-17 02:23:18','BILLS','2023-02-17 14:23:18','2023-02-17 14:23:20'),(18,'D','9070368238','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','20230217022452PM','2023-02-17 02:24:52','BILLS','2023-02-17 14:24:52','2023-02-17 14:24:56'),(19,'D','9070368238','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM. Ref # FB123','20230217022817PM','2023-02-17 02:28:17','POWER_OUTAGE','2023-02-17 14:28:17','2023-02-17 14:28:19'),(20,'D','9070368238','INFO\nOur AGMA 2023 will be on December 23, 2023. Registration is on going.FB123','20230217023305PM','2023-02-17 02:33:05','INFO','2023-02-17 14:33:05','2023-02-17 14:33:07'),(21,'D','09778302035','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI1','20230217030651PM','2023-02-17 03:06:51','POWER_OUTAGE','2023-02-17 15:06:51','2023-02-17 15:06:53'),(22,'D','09953044934','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI2','20230217030651PM','2023-02-17 03:06:51','POWER_OUTAGE','2023-02-17 15:06:51','2023-02-17 15:06:54'),(23,'D','09778178974','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI3','20230217030651PM','2023-02-17 03:06:51','POWER_OUTAGE','2023-02-17 15:06:51','2023-02-17 15:06:55'),(24,'D','09165576777','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI4','20230217030651PM','2023-02-17 03:06:51','POWER_OUTAGE','2023-02-17 15:06:51','2023-02-17 15:06:56'),(25,'D','09056635990','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI5','20230217030651PM','2023-02-17 03:06:51','POWER_OUTAGE','2023-02-17 15:06:51','2023-02-17 15:06:57'),(26,'D','9173153590','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM.','20230217043513PM','2023-02-17 04:35:13','POWER_OUTAGE','2023-02-17 16:35:13','2023-02-17 16:35:15'),(27,'D','09778302035','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','20230217043946PM','2023-02-17 04:39:46','POWER_OUTAGE','2023-02-17 16:39:46','2023-02-17 16:39:50'),(28,'D','09953044934','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','20230217043946PM','2023-02-17 04:39:46','POWER_OUTAGE','2023-02-17 16:39:46','2023-02-17 16:39:51'),(29,'D','09778178974','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','20230217043946PM','2023-02-17 04:39:46','POWER_OUTAGE','2023-02-17 16:39:46','2023-02-17 16:39:52'),(30,'D','09165576777','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','20230217043946PM','2023-02-17 04:39:46','POWER_OUTAGE','2023-02-17 16:39:46','2023-02-17 16:39:53'),(31,'D','09056635990','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','20230217043946PM','2023-02-17 04:39:46','POWER_OUTAGE','2023-02-17 16:39:46','2023-02-17 16:39:55'),(32,'D','9173153590','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023','20230218040056PM','2023-02-18 04:00:56','BILLS','2023-02-18 16:00:56','2023-02-18 16:01:01'),(33,'D','9618926927','INFO\nOur AGMA 2023 will be on December 23, 2023. Registration is on going. ','20230218040116PM','2023-02-18 04:01:16','INFO','2023-02-18 16:01:16','2023-02-18 16:01:18');
/*!40000 ALTER TABLE `pending_sends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senders`
--

DROP TABLE IF EXISTS `senders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `batchid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_proccessed_date` datetime NOT NULL,
  `message_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `network` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senders`
--

LOCK TABLES `senders` WRITE;
/*!40000 ALTER TABLE `senders` DISABLE KEYS */;
INSERT INTO `senders` VALUES (1,'20230214092803PM','2023-02-14 09:28:03',158542767,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639778302035','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:28:07','2023-02-14 21:28:14'),(2,'20230214092826PM','2023-02-14 09:28:26',158542797,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639778302035','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM. Ref # FB123','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-14 21:28:30','2023-02-14 21:28:37'),(3,'20230214092841PM','2023-02-14 09:28:41',158542817,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639778302035','INFO\nOur AGMA 2023 will be on December 23, 2023. Registration is on going.FB123','CEBECO2DEMO','Globe','Sent','Single','Api','INFO','2023-02-14 21:28:44','2023-02-14 21:28:52'),(4,'20230214093613PM','2023-02-14 09:36:13',158543851,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639173153590','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:36:17','2023-02-14 21:36:24'),(5,'20230214093613PM','2023-02-14 09:36:13',158543853,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639912132293','BILLS\nAccount:02333311212, Amount due is 2,501.00 Period of Feburayr 2024 Due date will be Febrary 12, 2024  Ref # FB124','CEBECO2DEMO','Smart','Sent','Single','Api','BILLS','2023-02-14 21:36:18','2023-02-14 21:36:25'),(6,'20230214093613PM','2023-02-14 09:36:13',158543855,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639618926927','BILLS\nAccount:02333311213, Amount due is 2,502.00 Period of Feburayr 2025 Due date will be Febrary 12, 2025  Ref # FB125','CEBECO2DEMO','Smart','Sent','Single','Api','BILLS','2023-02-14 21:36:19','2023-02-14 21:36:26'),(7,'20230214093613PM','2023-02-14 09:36:13',158543858,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639176261374','BILLS\nAccount:02333311214, Amount due is 2,503.00 Period of Feburayr 2026 Due date will be Febrary 12, 2026  Ref # FB126','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:36:20','2023-02-14 21:36:27'),(8,'20230214093613PM','2023-02-14 09:36:13',158543861,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639554816526','BILLS\nAccount:02333311215, Amount due is 2,504.00 Period of Feburayr 2027 Due date will be Febrary 12, 2027  Ref # FB127','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:36:22','2023-02-14 21:36:28'),(9,'20230214093613PM','2023-02-14 09:36:13',158543864,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639278719773','BILLS\nAccount:02333311216, Amount due is 2,505.00 Period of Feburayr 2028 Due date will be Febrary 12, 2028  Ref # FB128','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:36:23','2023-02-14 21:36:29'),(10,'20230214093613PM','2023-02-14 09:36:13',158543877,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639292803760','BILLS\nAccount:02333311217, Amount due is 2,506.00 Period of Feburayr 2029 Due date will be Febrary 12, 2029  Ref # FB129','CEBECO2DEMO','Smart','Sent','Single','Api','BILLS','2023-02-14 21:36:30','2023-02-14 21:36:34'),(11,'20230214093613PM','2023-02-14 09:36:13',158543881,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639171165356','BILLS\nAccount:02333311218, Amount due is 2,507.00 Period of Feburayr 2030 Due date will be Febrary 12, 2030  Ref # FB130','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:36:32','2023-02-14 21:36:37'),(12,'20230214093613PM','2023-02-14 09:36:13',158543887,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639456843397','BILLS\nAccount:02333311219, Amount due is 2,508.00 Period of Feburayr 2031 Due date will be Febrary 12, 2031  Ref # FB131','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:36:36','2023-02-14 21:36:40'),(13,'20230214093613PM','2023-02-14 09:36:13',158543889,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639070368238','BILLS\nAccount:02333311220, Amount due is 2,509.00 Period of Feburayr 2032 Due date will be Febrary 12, 2032  Ref # FB132','CEBECO2DEMO','Smart','Sent','Single','Api','BILLS','2023-02-14 21:36:38','2023-02-14 21:36:42'),(14,'20230214093613PM','2023-02-14 09:36:13',158543893,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639468116837','BILLS\nAccount:02333311221, Amount due is 2,510.00 Period of Feburayr 2033 Due date will be Febrary 12, 2033  Ref # FB133','CEBECO2DEMO','Smart','Sent','Single','Api','BILLS','2023-02-14 21:36:40','2023-02-14 21:36:46'),(15,'20230214093613PM','2023-02-14 09:36:13',158543896,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639955144665','BILLS\nAccount:02333311222, Amount due is 2,511.00 Period of Feburayr 2034 Due date will be Febrary 12, 2034  Ref # FB134','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:36:43','2023-02-17 14:23:30'),(16,'20230214093613PM','2023-02-14 09:36:13',158543901,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639756985941','BILLS\nAccount:02333311223, Amount due is 2,512.00 Period of Feburayr 2035 Due date will be Febrary 12, 2035  Ref # FB135','CEBECO2DEMO','Globe','Sent','Single','Api','BILLS','2023-02-14 21:36:45','2023-02-17 14:25:03'),(17,'20230217022318PM','2023-02-17 02:23:18',159018658,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639070368238','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','CEBECO2DEMO','Smart','Sent','Single','Api','BILLS','2023-02-17 14:23:20','2023-02-17 14:28:29'),(18,'20230217022452PM','2023-02-17 02:24:52',159018865,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639070368238','BILLS\nAccount:02333311211, Amount due is 2,500.00 Period of Feburayr 2023 Due date will be Febrary 12, 2023  Ref # FB123','CEBECO2DEMO','Smart','Sent','Single','Api','BILLS','2023-02-17 14:24:55','2023-02-17 14:33:17'),(19,'20230217022817PM','2023-02-17 02:28:17',159019347,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639070368238','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM. Ref # FB123','CEBECO2DEMO','Smart','Sent','Single','Api','POWER_OUTAGE','2023-02-17 14:28:19','2023-02-17 15:07:04'),(20,'20230217023305PM','2023-02-17 02:33:05',159020041,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639070368238','INFO\nOur AGMA 2023 will be on December 23, 2023. Registration is on going.FB123','CEBECO2DEMO','Smart','Sent','Single','Api','INFO','2023-02-17 14:33:07','2023-02-17 15:07:05'),(21,'20230217030651PM','2023-02-17 03:06:51',159024533,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639778302035','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI1','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 15:06:53','2023-02-17 15:07:07'),(22,'20230217030651PM','2023-02-17 03:06:51',159024540,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639953044934','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI2','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 15:06:54','2023-02-17 15:07:08'),(23,'20230217030651PM','2023-02-17 03:06:51',159024545,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639778178974','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI3','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 15:06:55','2023-02-17 15:07:09'),(24,'20230217030651PM','2023-02-17 03:06:51',159024547,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639165576777','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI4','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 15:06:56','2023-02-17 16:35:25'),(25,'20230217030651PM','2023-02-17 03:06:51',159024553,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639056635990','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM. Ref # PI5','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 15:06:57','2023-02-17 16:39:59'),(26,'20230217043513PM','2023-02-17 04:35:13',159041600,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639173153590','POWER_OUTAGE\nAffected Areas:Bogo City, Danao City, Medellin. Reason: Clearing the 69KV Lines. Duration is From: Febrary 12, 2023 7:30 AM To:Febrary 12, 2023 5:30 PM.','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 16:35:14','2023-02-17 16:40:00'),(27,'20230217043946PM','2023-02-17 04:39:46',159046779,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639778302035','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 16:39:50','2023-02-17 16:40:01'),(28,'20230217043946PM','2023-02-17 04:39:46',159046782,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639953044934','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 16:39:51','2023-02-17 16:40:02'),(29,'20230217043946PM','2023-02-17 04:39:46',159046787,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639778178974','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 16:39:52','2023-02-17 16:40:03'),(30,'20230217043946PM','2023-02-17 04:39:46',159046789,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639165576777','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 16:39:53','2023-02-18 16:01:08'),(31,'20230217043946PM','2023-02-17 04:39:46',159046795,17507,'alfred.suiterx@gmail.com',17369,'Adventures','639056635990','POWER_OUTAGE\nAffected Areas:Whole Barangay of Carmen, Mga Barangay sa Catmon (Binogkalan,Panalipan,Basak og Amancion. Reason: Clearing the 69KV Lines. Duration is From: Febrary 18, 2023 8:00 AM To:Febrary 18, 2023 11:00 AM.','CEBECO2DEMO','Globe','Sent','Single','Api','POWER_OUTAGE','2023-02-17 16:39:54','2023-02-18 16:01:28');
/*!40000 ALTER TABLE `senders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2023-02-23  6:17:02
