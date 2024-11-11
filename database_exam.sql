-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contacts_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Muhammad Rizky Fadli','PT. Multipolar.tbk','muhammad.fadli@multipolar.com','089610976653','Jalan Palem V No 24','2024-11-09 04:30:43','2024-11-09 04:30:48'),(2,'aleale','qq','aleale@qq.com','14045',NULL,'2024-11-10 09:42:03','2024-11-10 09:42:03'),(3,'1','1','1@1.1','1',NULL,'2024-11-10 17:20:47','2024-11-10 17:20:47');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_segments`
--

DROP TABLE IF EXISTS `customer_segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_segments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `segment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_segments`
--

LOCK TABLES `customer_segments` WRITE;
/*!40000 ALTER TABLE `customer_segments` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_segments` ENABLE KEYS */;
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
-- Table structure for table `interactions`
--

DROP TABLE IF EXISTS `interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` bigint unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `interaction_date` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interactions_contact_id_foreign` (`contact_id`),
  CONSTRAINT `interactions_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactions`
--

LOCK TABLES `interactions` WRITE;
/*!40000 ALTER TABLE `interactions` DISABLE KEYS */;
INSERT INTO `interactions` VALUES (2,3,'Penambahan Kontak','Kontak dengan nama 1 ditambahkan','2024-11-10 17:20:47','2024-11-10 17:20:47','2024-11-10 17:20:47'),(3,1,'Penambahan Penjualan','Penjualan sebesar 6.00 ditambahkan','2024-11-11 00:24:00','2024-11-11 00:23:49','2024-11-11 00:23:49'),(4,2,'Perubahan Penjualan','Penjualan sebesar 5.00 diubah','2024-11-10 16:43:00','2024-11-11 00:23:57','2024-11-11 00:23:57'),(5,2,'Perubahan Penjualan','Penjualan sebesar 7.00 diubah','2024-11-10 16:43:00','2024-11-11 00:31:06','2024-11-11 00:31:06'),(6,1,'Perubahan Penjualan','Penjualan sebesar 6.00 diubah','2024-11-09 12:57:00','2024-11-11 00:38:53','2024-11-11 00:38:53'),(7,2,'Penambahan Penjualan','Penjualan sebesar 3.00 ditambahkan','2024-11-11 00:42:00','2024-11-11 00:42:42','2024-11-11 00:42:42'),(8,3,'Perubahan Kontak','Kontak dengan nama 1 diubah','2024-11-11 00:47:48','2024-11-11 00:47:48','2024-11-11 00:47:48'),(9,2,'Perubahan Penjualan','Penjualan sebesar 4.00 diubah','2024-11-11 00:48:21','2024-11-11 00:48:21','2024-11-11 00:48:21'),(10,3,'Penambahan Penjualan','Penjualan sebesar 20.00 ditambahkan','2024-11-11 01:49:50','2024-11-11 01:49:50','2024-11-11 01:49:50'),(11,3,'Penghapusan Penjualan','Penjualan sebesar 20.00 dihapus','2024-11-11 01:50:13','2024-11-11 01:50:13','2024-11-11 01:50:13'),(12,2,'Penambahan Penjualan','Penjualan sebesar 10.00 ditambahkan','2024-11-11 02:15:44','2024-11-11 02:15:44','2024-11-11 02:15:44');
/*!40000 ALTER TABLE `interactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_11_09_035529_create_contacts_table',2),(5,'2024_11_09_035533_create_interactions_table',2),(6,'2024_11_09_035536_create_sales_table',2),(7,'2024_11_09_035540_create_reports_table',2),(8,'2024_11_09_073945_add_role_to_users_table',3),(9,'2024_11_10_093741_create_customer_segments_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` VALUES ('aleale@aleale.com','$2y$12$f6sZv/Gw7kwwFM3dLEMDTeApjUig/m2F5BgrfyAPtI9fbmnViEad.','2024-11-09 08:40:26'),('rizkijak73@gmail.com','$2y$12$XVxSX7eg1ulajpe4zk8/cu7FpVmrMbMsCfOaNKQrAzlkH1vU7i7wm','2024-11-09 08:42:08');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `generated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (8,'Pembelian','43f','2024-11-09 05:39:00','2024-11-09 05:34:33','2024-11-10 07:52:25');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` bigint unsigned NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_contact_id_foreign` (`contact_id`),
  CONSTRAINT `sales_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (9,1,6.00,'Lunas','2024-11-09 12:57:00','2024-11-09 05:55:58','2024-11-11 00:38:53'),(10,2,7.00,'Lunas','2024-11-10 16:43:00','2024-11-10 09:42:22','2024-11-11 00:31:06'),(11,1,6.00,'Lunas','2024-11-11 00:24:00','2024-11-11 00:23:49','2024-11-11 00:23:49'),(12,2,4.00,'Lunas','2024-11-11 00:42:00','2024-11-11 00:42:42','2024-11-11 00:48:21'),(14,2,10.00,'rg42','2024-11-11 09:15:00','2024-11-11 02:15:44','2024-11-11 02:15:44');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0AQ5DY0GhPXvAx831oy9E0gAh5OCVPJmkF5dElCc',NULL,'206.189.95.232','Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA77294) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2320.98 Mobile Safari/537.3','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnRTTlNSTE1VeGNxSEVrY1I4TW5velJSNW1oOHFlM2ttQnA1d0FsdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731302423),('111MIRznj4qbyc5nFx1IBXdXDGG1HwThEEJQ64zA',NULL,'13.57.251.44','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWJ6UGl0b0wwbzVnQWloeTdySThxN3Y0dm1JVTFoMHNsSnJqZFZTTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731295789),('3nwaPQvKIz01jbODHKSo3ulcQGclwpmCFdCbtxmE',NULL,'47.122.48.75','Mozilla/5.0 (Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoib2xIakpSd0lLUmRTNVRYSjhOSmZ1Y0lxMFNkZDFXajlMb3k1QVZ0NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMTMuMjEzLjQyLjEzMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731302730),('4B1e4O81QZ5ZtW5QQitrLFK5PxW6xkNlgVif3UUP',NULL,'82.102.25.222','Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3RPM3RUZWk2d2IwZjRpeUwza2xWTm5lRDJQd0hHNlExZFNQSHU3ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731302968),('4zVNsGTgtnVZFrMiKBuV5XLOo2jz72k6RY6ItXdW',NULL,'68.235.45.43','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkZJc1VFQ0tibTh1SW80WVdhOEgxNGUxWm45SjI2SEJLNEpQcnYxQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731303067),('bfMPwSeLmW51i6VJlyxuOZY5zKzrAVKaOtpLwfJx',NULL,'206.189.95.232','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRklSSDJteUVTcm1pV09yZmp1SzhJOEVwUUJhSFFmRVpEVTlOQnNTbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731302422),('bsg7hVZOjSScDyFmETMDhZY8EUO7V58LHqzJd5uK',NULL,'156.146.41.3','Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWdrbUtYbGlDd0FMU084Y1BBTVNwSmpUclBrVDVTSWxobUR0WHVBVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731302967),('C15qPnoFjdPsHgG3SvBluwHNgTZurgzzRtJmbTRo',NULL,'156.146.41.3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoicFFDZnlydWxuUW1VSWd4c1JHajZPWThPMDdoQ1AyQ2p6VFlaNVRHTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731302967),('caK4wGuL422onHc5kAxIFMkBUbHy2HYBeomJCmr9',NULL,'47.122.48.75','Mozilla/5.0 (Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoieE9xTE5xdURvN3d2Vnp2ejM4dW5rR01EcmN4dHAzeHZJbVhSYUpiTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMTMuMjEzLjQyLjEzMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731302730),('cuOQ1fDDDjC3GGcpdYVVhluuLjIMdMrUa7GRgGTW',NULL,'47.122.48.75','Mozilla/5.0 (Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1RRQU1jWUtRY251MFJHSlNPRWxBWDZGUjhiYTBsekN1SnJ3djNFSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731298002),('D8TsgdZXabKDannJHGxlHwpvfyf3p6aIGQtnEter',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0h2NGZnYk5CZzVCU0ZQWkZ2VXgydUx4VE93VDNjcURCd2JoZm1WTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHA6Ly9lYzItMTMtMjEzLTQyLTEzMi5hcC1zb3V0aGVhc3QtMS5jb21wdXRlLmFtYXpvbmF3cy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1731302175),('dxRfVPdipeHuj9E7BZloYRsfgEC8NLKX9JR68YXV',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidGdIdkpFdTZJWnE0SkwzUTFrcUF6T1hpZUdNd0RoSnQ3TkVqcUVaTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731302379),('ERLDyqh3lvUumeIqzLqH6mASitjpj4Jk9HxNpVSK',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUNhMUVISUE1VTRLVGpUclZ1T0ZwNmR5YWNGak04bEFOcjc5UnJhOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731300904),('GUb8NPOPMJ22Nsn6BBLkVlZdmrVYWI1ggNJu2Tve',NULL,'47.122.56.195','Mozilla/5.0 (Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVcxM1hERW5HcGN0blhMU1ZVTjl0MUttTWJwOTBUQ3JlNGNNYzh2RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731300787),('Icgs9Q4fd5EKCI9Oki0b8tlCFxZag3xXjwJNrQWo',NULL,'47.122.48.75','Mozilla/5.0 (Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjdkUmVaaUZBYkNWNFpWR2VJbW16WWc2SXpBRVlNZDByRnZBZ3QyNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMTMuMjEzLjQyLjEzMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731302731),('Ko913d1OzH0MTutujH1xsjiMwas77lA4WWkVeRZZ',NULL,'47.122.48.75','Mozilla/5.0 (Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHgzUTFVUDViQVdIaG1ZeEUyT3hodFU0Q1NNRGQ1ckRxNzdsS2hwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMTMuMjEzLjQyLjEzMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731302731),('N0xJV3Rbgm6bfJLybIGMgadXnK4QLq7cvBa0nuli',NULL,'206.189.95.232','Go-http-client/1.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzFYcG1NS0RHeUhoSW96Y2wxYWJyTmFGNVVhaElHYmNQQ1d5azJkRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzg6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Lz9yZXN0X3JvdXRlPSUyRndwJTJGdjIlMkZ1c2VycyUyRiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731302426),('Ou1u8jdjIdpLJoJ79HLViy74XM4Kmrc3SRhtMPe3',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXVNbnFFZ2lhOEVjMmI3cXozTDNESE1iNE05UFM3TjZzcHR3ZTA0UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9fQ==',1731299708),('q9kiJYelCk1jYvAIoliwx9FXExX8Ak9mFugBou2i',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHpRNDVOTWkySHVCd2VrcmNBWHZlaHY5WGVkeExxclVQNlJOYTZWayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyL2xvZ2luIjt9fQ==',1731296614),('qFa1K9Y7mwDrC4KqVLgHR0J5w2Ne79Aq4oAXJE24',NULL,'79.61.137.252','Mozilla/5.0 (Linux; U; Android 4.0.3; ko-kr; LG-L160L Build/IML74K) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30','YTozOntzOjY6Il90b2tlbiI7czo0MDoia0JLbVNCbm5tVnRZeXA3TGZZMjIxN3BJVE9yQ2l0UVdvTWlUcGJWdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMjcuMC4wLjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1731303115),('QhGg2TiMvACNsj1MCKRluKrS1N6zTcgzyliAl9B6',NULL,'92.255.57.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGtMQUFUb0lyZjFQZGV3a095Ymk3OEp3NXVmTEpwQW9hMXlpQlRuOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyLz9YREVCVUdfU0VTU0lPTl9TVEFSVD1waHBzdG9ybSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731301808),('SFaomootzXSV7csEvn8LhsUfEpW8ySeMomGux8Gw',NULL,'47.122.56.195','Mozilla/5.0 (Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjYxVTVlandBekhVcG9QNWgzckRqUmNSZFRmazFQd2lkRnV5aTNqWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731300786),('SyNN2IPp1sBkAyzDRG8NYRXUuny2vj2iDZ71831x',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVhOdUd3aEpDZ29IUnZiRVBxRmV3Ukt5NTBJM2c1UzZoSVhIYm5ZRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9lbXB0eS1iYWdzLWZvbGQtYnVzaWx5LmEyNzYuZGNkZy54eXoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1731302282),('TBTnrh5mWA9DjQHDK4Vt2HXT7zcMyTxc7wNMG12M',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUw3RHIwWGhZU3c3cGdJNGV6aEJ3QWxsU2ZCa1RHT2F6NVdFNVRTZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731300875),('TkOpJmHtoksdSWfdkFfLJkk0hUuhXPC8Oxs3Xm79',NULL,'68.235.46.186','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieDF2R094NmRsOHdHa0UyVXdBUVJoZFJ1Qk9YUko1V1lEVm1udXUxciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731302442),('TlIAWpz360tR7EN9tEp1mCepvKegTaV1h3xvfqu6',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUloVDNEbTNQMllNamFMY1RIQXJ4ZVZOQThFbFZ3Zm5FYW9NbWJ0USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731300512),('U4mBPT4q6AMexM2gIVeNVhrX57fckTeQCh7Ipyko',NULL,'47.122.48.75','Mozilla/5.0 (Android 14; Mobile; rv:128.0) Gecko/128.0 Firefox/128.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWV6T0VrMGllYnY1S3VYdnR4OElSYzdPWUJ1elJwMlhjeGZiTnFSOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731298002),('vJLjsWIfHmvG8y69PDKHYDW0f6WuZThq4HqPoOKt',NULL,'182.253.56.67','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDBIYTNKak9ZSkFYcVZXSVBsc29zVkVCZjh5elg1SzU2Q2NZZ09rciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xMy4yMTMuNDIuMTMyIjt9fQ==',1731301824),('WBizoLNwngr4dtyYwFVjHnQ6JTVR3fX9JVSLSDfm',NULL,'59.126.47.187','Mozilla/5.0 (Linux; U; Android 4.0.3; ko-kr; LG-L160L Build/IML74K) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXFUdjNVdVF2NW9PaDNNd3UxNjFLRXZFRjZJeTFYbG50TEdseTRiTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMjcuMC4wLjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1731295151),('XpwQo2mf3mKfdBf5wg7srKWq3kwqTPrpgzpIMXqH',NULL,'104.197.184.171','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/4E423F','YTozOntzOjY6Il90b2tlbiI7czo0MDoic3FLMlVwMzFDeFREeE10QzJ5QWl1Z1Z4VXQzMUtQR29SNkhCMVhscyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZW1wdHktYmFncy1mb2xkLWJ1c2lseS5hMjc2LmRjZGcueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1731302653),('yURfto4XFOqYg71VUZuuAxxQpjRgOAVvfoiAOS8N',NULL,'123.110.12.185','Mozilla/5.0 (Linux; U; Android 4.0.3; ko-kr; LG-L160L Build/IML74K) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1JET0ZIampXa2xqYkJuV0RhNk9aVlBhV2YzMmtFQmg3MDZOam0zOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMjcuMC4wLjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1731301272);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
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
  `role` enum('admin','sales','manager') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sales',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin User','admin@exam.com','admin',NULL,'$2y$12$eT.PJkEKOLGa/ftJZhuYZ.Z9rA/WVQACPUYdqK2rh6mOQz421fG2O',NULL,'2024-11-09 07:59:42','2024-11-09 07:59:42'),(2,'Sales User','sales@exam.com','sales',NULL,'$2y$12$M9Efnox4Hw8xTvccL42/NeOKysdgmXFP488QZCfzvimio1SzGI5pS',NULL,'2024-11-09 07:59:42','2024-11-09 07:59:42'),(3,'Manager User','manager@exam.com','manager',NULL,'$2y$12$N5.YAiVFKaSXLYaws72yx.tDQj4A16ah8I0VMP/ohzqdY9U2YZnVS',NULL,'2024-11-09 07:59:42','2024-11-09 07:59:42'),(4,'aleale','aleale@aleale.com','sales',NULL,'$2y$12$jnLGH6bcvrTgCbXFqxc21uXw9uA1ktoR7PuKu3G/qb7wBo5M4h/x.',NULL,'2024-11-09 08:40:01','2024-11-09 08:40:01'),(5,'rizkijak73','rizkijak73@gmail.com','sales',NULL,'$2y$12$8NDkebxc4MyFPdnGuecBNuZ051s.Ja4IrwMVsVHWPeNeDhLRslTZ.',NULL,'2024-11-09 08:41:29','2024-11-09 08:41:29');
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

-- Dump completed on 2024-11-11 12:39:23
