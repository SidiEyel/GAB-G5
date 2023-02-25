-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: gabdatabase
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_user`
--

DROP TABLE IF EXISTS `_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_user` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullusername` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','USER') DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_user`
--

LOCK TABLES `_user` WRITE;
/*!40000 ALTER TABLE `_user` DISABLE KEYS */;
INSERT INTO `_user` VALUES (1,'em@gmail.com',NULL,'$2a$10$YcIjcyWxHnHKjvkVZehOm.ob2jbq9V3pZkCqelNhje24lmN3irSxq','USER',NULL,NULL),(2,'em@gmail.com',NULL,'$2a$10$79.VD4zHO9ppoIxqTtAeq.mXKcXgo2khpK8py9cAHQhE1vm2lHs7m','USER',NULL,'ab'),(3,'em@gmail.com',NULL,'$2a$10$pza7Tsuf7cW2WzJvfONHMOEldldkQXMRwXRqwrLkS.M8piVJuVfDa','USER',NULL,'ab'),(52,'sidi@gmail.com',NULL,'$2a$10$MKYr8Ghd98fKE5t.IIuE6.n2XYYrZ/RT35d6g0hM1c7rJFn9IADH.','USER','sidi','eyel'),(102,'sidi@gmail.com',NULL,'$2a$10$DTGKNiKsrhu6M.l34XFb4emNKDj6LLlNbpngvWyXOPY.QKCmtLR0y','USER','sidi abdellah','eyel'),(152,'sidi@gmail.com',NULL,'$2a$10$e5NF8MDTnR51DbERw3SEtutTg6pMFXZVnD4vcq4omWpJm72TOMjbK','USER','sidi abdellah','eyel'),(202,'sidi.eyel@gmail.com',NULL,'$2a$10$yc41xxjN0xPW6FkBW0nm5.rjuW749LH6.jj6eU.sxZSjQ5UEUnhJW',NULL,'sidi','eyel'),(203,'sidi.eyel@gmail.com',NULL,'$2a$10$F3ezaKtTLtGuwR0mHWpK4OGD.whXtEQpgD0d86SdhOz0/1e8cxwby',NULL,'sidi','eyel'),(252,'sidi.eyel@gmail.com',NULL,'$2a$10$DSilI.bsbRZDqduZfGkk2ebfTwWqRUvltZwj2mHfaI0HhR4pxb83G',NULL,'sidi','eyel'),(302,'fati@gmail.com',NULL,'$2a$10$vxU/zAM/CurraZIeuaaTg.zuT5Nq7Ax.ZA/iDJPnxjr/jdUElsrhK',NULL,'sidi','eyel'),(303,'fati@gmail.com',NULL,'$2a$10$zZoZjOKbJCE9d4YTEH97ceKu9B83D8K3BE40LG2sN8swgstjnC/rK',NULL,'fati','ft'),(352,'fati@gmail.com',NULL,'$2a$10$uDaK4dwTQEoXVWfic/ZzfOGQknxdXAk43Hd3hO5X6dKocpd53lN1K','USER','fati','ft'),(353,'fati@gmail.com',NULL,'$2a$10$poq.emReFpIGxjKvIBsnKuNso2CSbUTcgH5kuPSqAFHsMprO8SSZO','USER','fati','ft'),(402,'fati@gmail.com',NULL,'$2a$10$29/VOMTAisoHrH/xxiIPMujO4t57uowNU4Dn/xTZnzb09NsV8dcc6','USER','fati','ft'),(452,'fati@gmail.com',NULL,'$2a$10$E4PLT5dbJAVxgIhrImClEOFzlKylItqOS/OEBjhxH5IFn.Jockeem','USER','fati','ft'),(453,'bdn@gmail.com',NULL,'$2a$10$9VBEz/uBlhLYv96XuG.MZ.6xEY7IFudi4BkbzIpFmswvhQ.NICypa','USER','cheick','bdn'),(502,'bob@gmail.com',NULL,'$2a$10$lJk9VWT2NIigxXIztyK3Bej.JTAyVgOhThOogqX2jL91vhQfNbM1W','USER','bob','pop'),(552,'ey@gmail.com',NULL,'$2a$10$wdQ.i5/rV0NE/oYTG2paluYT/ToqgJCeMD01Ydi.S3tN0Y722rr3.','USER','sidiEyel','ey'),(553,'ey@gmail.com',NULL,'$2a$10$Diyd/Hb9W3FY4OnHBxiwg.Yz4tEjZeyIow/tc/OTaa5xsvfBl.7GS','USER','sidiEyel','ey'),(554,'abd@gmail.com',NULL,'$2a$10$sakKEHHQtn1366pbZvBG8e.mor0WITA29M.Y9/V4HK62NWN0rqbL2','USER','abd','ey'),(602,'abd@gmail.com',NULL,'$2a$10$iue4VR/nCO0.HJ78.D66ruaLz8QigdLrfJjVnrs5SEh1NCvshmMKe','USER','abd','ey'),(652,'abd@gmail.com',NULL,'$2a$10$H53xlfua7rup4sJ4s3UAVeKGhZ/k2hnpOVTBf6QtAHckUESsgZ6Ce','USER','abd','ey'),(702,'abdallahi@gmail.com',NULL,'$2a$10$4bWx.eVRJQ7oC4rCzDr8OeO9o2b9RhKQBTR0OQBaegQnXYrYXywLK','USER','abdallahi','ey'),(752,'abdallahi@gmail.com',NULL,'$2a$10$re4cA77S2m4L.WPdp11u0OsnMrk5mm7yHp/odV.4Yuo4BWQ6YJlOC','USER','abdallahi','ey'),(802,'abdallahi@gmail.com',NULL,'$2a$10$xbn/EF96nuuFtzYYYhA/uezmwpDCMALyIkSw/q89ppGAy.cTRgK2S','USER','abdallahi','ey'),(803,'abdallahi@gmail.com',NULL,'$2a$10$srYNcIeBOMuFTN22e6y8zePj4c9bi9ZfSb29fyFH/AoQtRfaYZagS','USER','abdallahi','ey'),(852,'abdallahi@gmail.com',NULL,'$2a$10$xva85U8WsyjeIez.t7hRweQeUG5A1tAMBd75AxzDDJJcvxhvJ51rm','USER','abdallahi','ey'),(902,'abdallahi@gmail.com',NULL,'$2a$10$/218B/Oy/zrN2kMuD2FWbOuJewUd1rJPrrgB973sENtwvas3FXCTi','USER','abdallahi','ey'),(903,'abdall@gmail.com',NULL,'$2a$10$QSXDTvozGlxlGoGVm2gC..Lx6RkNy2puYrOT2V2eaVcPE34AlWf.G','USER','abdallah','ey'),(904,'abdall@gmail.com',NULL,'$2a$10$HcmdXQ6ujzsHgsqQ2dNeh.6z2pHgWLxv2cuko08ZJbfYah3G.abfi','USER','abdallah','ey'),(952,'abdall@gmail.com',NULL,'$2a$10$cFKmK2azFTLUIxqf4FbqJO2TL913dGbXkAQQbbkCW.SDdQBjj2OWu','USER','abdallah','ey'),(1002,'abdallhy@gmail.com',NULL,'$2a$10$iJN8gLeJCYJVQ/1jQyGd.ODLLjAg6UNHD/7kEeQsv4EpPa0PB0K5S','USER','abdallahy','ey'),(1052,'abdallhy@gmail.com',NULL,'$2a$10$E4IrwJLrHHDNphveb70KBeMRexY4cuJvK6XDB22NIC64kjKwjy876','USER','abdallahy','ey'),(1102,'abdallhy@gmail.com',NULL,'$2a$10$85jgxA1EAGHIft8sGF5i/OlH/2Z2S5WqmWAZRJUZmGUWA1/VJThmK','USER','abdallahy','ey'),(1152,'abdallhy@gmail.com',NULL,'$2a$10$3ZpZ2jg7ApBg1JlMM6eqAuxMIFWuGospwcnSV6wwGIoCcJhY5V8Yy','USER','abdallahy','ey'),(1202,'B@gmail.com',NULL,'$2a$10$tx9hgzG4CanPj.xySz.7VuxQQqnJhRxbvQP9mS/Fs1.cPF5CgZ0L6','USER','B','ey'),(1252,'c@gmail.com',NULL,'$2a$10$iORmvKYSUJRCoAvxrnZI7eAQEeegmIdCXFOBO7WUD2TFnvLsPE8Vi','USER','c','ey'),(1302,'d@gmail.com',NULL,'$2a$10$Kwgba4jnw4bq2.GCYBtIgOyI4aWMhTJeIRqepNiG83lKNZ.CBBEXe','USER','d','ey');
/*!40000 ALTER TABLE `_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-25  4:57:34
