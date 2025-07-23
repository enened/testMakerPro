CREATE DATABASE  IF NOT EXISTS `test_maker_pro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test_maker_pro`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: test_maker_pro
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `answerchoices`
--

DROP TABLE IF EXISTS `answerchoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answerchoices` (
  `answerChoiceId` int NOT NULL AUTO_INCREMENT,
  `questionId` int NOT NULL,
  `answerChoice` varchar(1000) NOT NULL,
  `correctAnswer` tinyint NOT NULL,
  PRIMARY KEY (`answerChoiceId`),
  KEY `questionId_idx` (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answerchoices`
--

LOCK TABLES `answerchoices` WRITE;
/*!40000 ALTER TABLE `answerchoices` DISABLE KEYS */;
INSERT INTO `answerchoices` VALUES (499,129,'26',0),(500,129,'30',1),(501,129,'24',0),(502,129,'42',0),(503,130,'4',1),(504,130,'2',0),(505,130,'8',0),(506,130,'12',0),(507,131,'49',1),(508,131,'36',0),(509,131,'63',0),(510,131,'56',0),(511,132,'6',1),(512,132,'14',0),(513,132,'5',0),(514,132,'8',0),(515,133,'18',0),(516,133,'25',0),(517,133,'24',1),(518,133,'20',0);
/*!40000 ALTER TABLE `answerchoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'username','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `questionId` int NOT NULL AUTO_INCREMENT,
  `testId` int NOT NULL,
  `question` varchar(500) NOT NULL,
  `explanation` varchar(1000) NOT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (129,27,'¿Cuánto es 5x6?','La respuesta correcta es 30, ya que 5x6 es igual a 30. Las otras respuestas son incorrectas porque no son el resultado de multiplicar 5 por 6.'),(130,27,'¿Cuál es el resultado de 16 ÷ 4?','La respuesta correcta es 4, ya que 16 dividido entre 4 es igual a 4. Las otras respuestas son incorrectas porque no son el resultado de dividir 16 entre 4.'),(131,27,'¿Cuánto es 7x7?','La respuesta correcta es 49, ya que 7x7 es igual a 49. Las otras respuestas son incorrectas porque no son el resultado de multiplicar 7 por 7.'),(132,27,'¿Cuál es el resultado de 10 - 4?','La respuesta correcta es 6, ya que restar 4 de 10 es igual a 6. Las otras respuestas son incorrectas porque no son el resultado de restar 4 a 10.'),(133,27,'¿Cuánto es 8x3?','La respuesta correcta es 24, ya que 8x3 es igual a 24. Las otras respuestas son incorrectas porque no son el resultado de multiplicar 8 por 3.');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `testId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `testName` varchar(1000) NOT NULL,
  `gottenCorrect` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`testId`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `login` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (27,1,'spanish math','5/5');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-22 18:35:39
