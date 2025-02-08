CREATE DATABASE  IF NOT EXISTS `medicalsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `medicalsystem`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: medicalsystem
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` bigint NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `middleName` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userRoleId` tinyint NOT NULL,
  `isBanned` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`userId`),
  KEY `userRoleId2_idx` (`userRoleId`),
  CONSTRAINT `userRoleIdFk` FOREIGN KEY (`userRoleId`) REFERENCES `user_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,'Admin','Admin','Admn','admin@admin.com','$2a$10$tNAL8RsXqu4u.9xlLk3Giu0NXq8G1eFakqTTmob3hAQbk04RcH9.q',5,0),(21,'Doctor','Doctor','Doctor','doctor@doctor.com','$2a$10$.gCCpzvaHdbbSJwGvVwNsuW63/YaDuQaHg5fFb8Fe8Nmsh1cItn/u',2,0),(22,'Nurse','Nurse','Nurse','nurse@nurse.com','$2a$10$sRTHZevswNRZBaAl4N7UcuscTZOLLdE4LM27IAGzVJzU5MrF3rWba',1,0),(23,'Test','Test','Test','fsfks@dfsd.sdf','$2a$10$LTbrFMIlf.xSHl/a3q1n1eZIcU31IgzERkF8N1ZvxbKwMqBJBsYKq',2,1),(24,'dsafa','sdfsdf','sdfsdf','nemantsdasd@gmail.com','$2a$10$Mr6H0j9AJLOktGz0IX/HkuW8bwjnRgKAkdmVnzt84wzeGkat0VYQq',2,1),(25,'dasdasd','asdasdas','sadasd','nemant3adsas8@gmail.com','$2a$10$hiO31j8.TTcG1mzGczdg/uUYyhHTDe99s/R5f7JcYQIdqlr5O2Tdi',2,1),(26,'dadas','asdasd','sadasd','nemantasdasd40@gmail.com','$2a$10$Ix8byF2Lrmn.sfF5Em7UCuBu/o7YDAwxP2eNUP9XWlGp2ilt7CUfy',2,1),(27,'adasd','adas','saddd','a123456@admin.com','$2a$10$Ucz6LCMVsWU8x/SoUAOjEedMQwBE50sDEtejjm6IOF6KwRHtmY8LK',2,1),(28,'asdasd','asdas','asdas','admsadasdasdin@admin.com','$2a$10$WNB6MBsX3ibozkR51rRG8.4pHvUwQODvKIApBcUq7UiuUQ6y.Smn2',2,1),(29,'REG','REG','REG','reg@reg.com','$2a$10$MCBHdG39gWaa1QYGXg0Qhu6Z/3ltlER9APPH0EF957vng0pe8utNu',4,0);
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

-- Dump completed on 2025-02-08 15:01:12
