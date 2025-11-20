-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: 2400016055_sbd2024
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dosen` (
  `id_dosen` int NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES (1,'suprihatin,S.Si.,M.Kom'),(2,'Tawar,S.Si.,M.Kom'),(3,'Farid Suryanto,S.Pd.,MT.'),(4,'Sri Handayaningsih,ST.,MT.'),(5,'Safika Maranti,S.H.I.,M.E.');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal_kelas`
--

DROP TABLE IF EXISTS `jadwal_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jadwal_kelas` (
  `id_jadwal` int NOT NULL AUTO_INCREMENT,
  `id_mahasiswa` int DEFAULT NULL,
  `id_dosen` int DEFAULT NULL,
  `id_matakuliah` int DEFAULT NULL,
  `id_ruang` int DEFAULT NULL,
  `waktu` enum('''1-2'', ''3-4'', ''5-6'', ''7-8'', ''9-10'', ''11-12'', ''13-14''') DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `id_mahasiswa` (`id_mahasiswa`),
  KEY `id_dosen` (`id_dosen`),
  KEY `id_matakuliah` (`id_matakuliah`),
  KEY `id_ruang` (`id_ruang`),
  CONSTRAINT `id_dosen` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  CONSTRAINT `id_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `id_matakuliah` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`),
  CONSTRAINT `id_ruang` FOREIGN KEY (`id_ruang`) REFERENCES `ruang_kelas` (`id_ruang`)
) ENGINE=InnoDB AUTO_INCREMENT=1236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal_kelas`
--

LOCK TABLES `jadwal_kelas` WRITE;
/*!40000 ALTER TABLE `jadwal_kelas` DISABLE KEYS */;
INSERT INTO `jadwal_kelas` VALUES (331,221,1,23,12,'\'1-2\', \'3-4\', \'5-6\', \'7-8\', \'9-10\', \'11-12\', \'13-14\'','senin'),(332,223,2,24,13,'\'1-2\', \'3-4\', \'5-6\', \'7-8\', \'9-10\', \'11-12\', \'13-14\'','selasa'),(333,224,3,25,14,'\'1-2\', \'3-4\', \'5-6\', \'7-8\', \'9-10\', \'11-12\', \'13-14\'','rabu'),(334,225,4,26,15,'\'1-2\', \'3-4\', \'5-6\', \'7-8\', \'9-10\', \'11-12\', \'13-14\'','kamis'),(335,226,5,27,16,'\'1-2\', \'3-4\', \'5-6\', \'7-8\', \'9-10\', \'11-12\', \'13-14\'','jumat');
/*!40000 ALTER TABLE `jadwal_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int NOT NULL AUTO_INCREMENT,
  `nama_mahasiswa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (221,'fatir'),(223,'zacky'),(224,'lora'),(225,'aldi'),(226,NULL);
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matakuliah` (
  `id_matakuliah` int NOT NULL AUTO_INCREMENT,
  `nama_matakuliah` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_matakuliah`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES (23,'matdas'),(24,'dasprog'),(25,'PPL'),(26,'alquran hadist'),(27,'KBD');
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruang_kelas`
--

DROP TABLE IF EXISTS `ruang_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruang_kelas` (
  `id_ruang` int NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(100) DEFAULT NULL,
  `id_lokasi` int DEFAULT NULL,
  PRIMARY KEY (`id_ruang`),
  KEY `id_lokasi` (`id_lokasi`),
  CONSTRAINT `id_lokasi` FOREIGN KEY (`id_lokasi`) REFERENCES `table lokasi_kampus` (`id_lokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruang_kelas`
--

LOCK TABLES `ruang_kelas` WRITE;
/*!40000 ALTER TABLE `ruang_kelas` DISABLE KEYS */;
INSERT INTO `ruang_kelas` VALUES (12,'kelas 01',11),(13,'kelas 02',22),(14,'kelas 03',33),(15,'kelas 04',44),(16,'kelas 05',55);
/*!40000 ALTER TABLE `ruang_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table lokasi_kampus`
--

DROP TABLE IF EXISTS `table lokasi_kampus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table lokasi_kampus` (
  `id_lokasi` int NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_lokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table lokasi_kampus`
--

LOCK TABLES `table lokasi_kampus` WRITE;
/*!40000 ALTER TABLE `table lokasi_kampus` DISABLE KEYS */;
INSERT INTO `table lokasi_kampus` VALUES (11,'kampus I'),(22,'kampus II'),(33,'kampus III'),(44,'kampus IV'),(55,NULL);
/*!40000 ALTER TABLE `table lokasi_kampus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_jadwal_kelas`
--

DROP TABLE IF EXISTS `v_jadwal_kelas`;
/*!50001 DROP VIEW IF EXISTS `v_jadwal_kelas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_jadwal_kelas` AS SELECT 
 1 AS `id_jadwal`,
 1 AS `nama_matakuliah`,
 1 AS `nama_dosen`,
 1 AS `hari`,
 1 AS `waktu`,
 1 AS `nama_ruang`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_mahasiswa_dosen_matakuliah`
--

DROP TABLE IF EXISTS `v_mahasiswa_dosen_matakuliah`;
/*!50001 DROP VIEW IF EXISTS `v_mahasiswa_dosen_matakuliah`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_mahasiswa_dosen_matakuliah` AS SELECT 
 1 AS `nama_mahasiswa`,
 1 AS `nama_dosen`,
 1 AS `nama_matakuliah`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_jadwal_kelas`
--

/*!50001 DROP VIEW IF EXISTS `v_jadwal_kelas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_jadwal_kelas` AS select `jk`.`id_jadwal` AS `id_jadwal`,`mk`.`nama_matakuliah` AS `nama_matakuliah`,`d`.`nama_dosen` AS `nama_dosen`,`jk`.`hari` AS `hari`,`jk`.`waktu` AS `waktu`,`r`.`nama_ruang` AS `nama_ruang` from (((`jadwal_kelas` `jk` join `matakuliah` `mk` on((`jk`.`id_matakuliah` = `mk`.`id_matakuliah`))) join `dosen` `d` on((`jk`.`id_dosen` = `d`.`id_dosen`))) join `ruang_kelas` `r` on((`jk`.`id_ruang` = `r`.`id_ruang`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_mahasiswa_dosen_matakuliah`
--

/*!50001 DROP VIEW IF EXISTS `v_mahasiswa_dosen_matakuliah`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_mahasiswa_dosen_matakuliah` AS select `m`.`nama_mahasiswa` AS `nama_mahasiswa`,`d`.`nama_dosen` AS `nama_dosen`,`mk`.`nama_matakuliah` AS `nama_matakuliah` from (((`jadwal_kelas` `jk` join `mahasiswa` `m` on((`jk`.`id_mahasiswa` = `m`.`id_mahasiswa`))) join `dosen` `d` on((`jk`.`id_dosen` = `d`.`id_dosen`))) join `matakuliah` `mk` on((`jk`.`id_matakuliah` = `mk`.`id_matakuliah`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-05  9:37:41
