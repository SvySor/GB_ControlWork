CREATE DATABASE  IF NOT EXISTS `humanfriends` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `humanfriends`;
-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: humanfriends
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `AllAnimals`
--

DROP TABLE IF EXISTS `AllAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AllAnimals` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllAnimals`
--

LOCK TABLES `AllAnimals` WRITE;
/*!40000 ALTER TABLE `AllAnimals` DISABLE KEYS */;
INSERT INTO `AllAnimals` VALUES (4,'Cat01','MYAU','2021-02-22','Cat'),(5,'Cat02','MURR','2022-01-22','Cat'),(6,'Cat03','FRRR','2021-02-12','Cat'),(7,'Dog01','GAV','2021-01-11','Dog'),(8,'Dog02','CACH','2023-12-11','Dog'),(9,'Dog03','FAS','2021-11-11','Dog'),(10,'Dondey1','IA','2022-10-02','Donkey'),(11,'Dondey2','GO','2023-09-25','Donkey'),(12,'Dondey3','GO','2022-09-12','Donkey'),(13,'Horse1','RYS','2023-01-11','Horse'),(14,'Horse2','GALOP','2022-01-11','Horse'),(15,'Horse3','SHAG','2021-02-10','Horse'),(16,'Horse1','RUN','2020-01-12','Humpster'),(17,'Humpster2','SLEEP','2021-08-11','Humpster'),(18,'Humpster3','WAKE UP','2022-09-14','Humpster');
/*!40000 ALTER TABLE `AllAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camels`
--

DROP TABLE IF EXISTS `Camels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camels` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camels`
--

LOCK TABLES `Camels` WRITE;
/*!40000 ALTER TABLE `Camels` DISABLE KEYS */;
/*!40000 ALTER TABLE `Camels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cats`
--

DROP TABLE IF EXISTS `Cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cats` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cats`
--

LOCK TABLES `Cats` WRITE;
/*!40000 ALTER TABLE `Cats` DISABLE KEYS */;
INSERT INTO `Cats` VALUES (4,'Cat01','MYAU','2021-02-22','Cat'),(5,'Cat02','MURR','2022-01-22','Cat'),(6,'Cat03','FRRR','2021-02-12','Cat');
/*!40000 ALTER TABLE `Cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClassAnimals`
--

DROP TABLE IF EXISTS `ClassAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClassAnimals` (
  `id_animal` int NOT NULL,
  `id_class` int DEFAULT NULL,
  `id_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_animal`),
  KEY `id_class` (`id_class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassAnimals`
--

LOCK TABLES `ClassAnimals` WRITE;
/*!40000 ALTER TABLE `ClassAnimals` DISABLE KEYS */;
INSERT INTO `ClassAnimals` VALUES (4,1,'Cat'),(5,2,'Cat'),(6,3,'Cat'),(7,1,'Dog'),(8,2,'Dog'),(9,3,'Dog'),(10,4,'Donkey'),(11,5,'Donkey'),(12,6,'Donkey'),(13,1,'Horse'),(14,2,'Horse'),(15,3,'Horse'),(16,1,'Humpster'),(17,2,'Humpster'),(18,3,'Humpster');
/*!40000 ALTER TABLE `ClassAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClassPackAnimal`
--

DROP TABLE IF EXISTS `ClassPackAnimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClassPackAnimal` (
  `id_animal` int NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id_animal`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassPackAnimal`
--

LOCK TABLES `ClassPackAnimal` WRITE;
/*!40000 ALTER TABLE `ClassPackAnimal` DISABLE KEYS */;
INSERT INTO `ClassPackAnimal` VALUES (10,'Donkey'),(11,'Donkey'),(12,'Donkey'),(13,'Horse'),(14,'Horse'),(15,'Horse');
/*!40000 ALTER TABLE `ClassPackAnimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClassPets`
--

DROP TABLE IF EXISTS `ClassPets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClassPets` (
  `id_pet` int NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pet`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassPets`
--

LOCK TABLES `ClassPets` WRITE;
/*!40000 ALTER TABLE `ClassPets` DISABLE KEYS */;
INSERT INTO `ClassPets` VALUES (4,'Cat'),(5,'Cat'),(6,'Cat'),(7,'Dog'),(8,'Dog'),(9,'Dog'),(16,'Humpster'),(17,'Humpster'),(18,'Humpster');
/*!40000 ALTER TABLE `ClassPets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dogs`
--

DROP TABLE IF EXISTS `Dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dogs` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dogs`
--

LOCK TABLES `Dogs` WRITE;
/*!40000 ALTER TABLE `Dogs` DISABLE KEYS */;
INSERT INTO `Dogs` VALUES (7,'Dog01','GAV','2021-01-11','Dog'),(8,'Dog02','CACH','2023-12-11','Dog'),(9,'Dog03','FAS','2021-11-11','Dog');
/*!40000 ALTER TABLE `Dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donkeys`
--

DROP TABLE IF EXISTS `Donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Donkeys` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donkeys`
--

LOCK TABLES `Donkeys` WRITE;
/*!40000 ALTER TABLE `Donkeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `Donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horses`
--

DROP TABLE IF EXISTS `Horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Horses` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horses`
--

LOCK TABLES `Horses` WRITE;
/*!40000 ALTER TABLE `Horses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Humpsters`
--

DROP TABLE IF EXISTS `Humpsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Humpsters` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Humpsters`
--

LOCK TABLES `Humpsters` WRITE;
/*!40000 ALTER TABLE `Humpsters` DISABLE KEYS */;
INSERT INTO `Humpsters` VALUES (16,'Horse1','RUN','2020-01-12','Humpster'),(17,'Humpster2','SLEEP','2021-08-11','Humpster'),(18,'Humpster3','WAKE UP','2022-09-14','Humpster');
/*!40000 ALTER TABLE `Humpsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YoungAnimals`
--

DROP TABLE IF EXISTS `YoungAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YoungAnimals` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `agemonthes` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YoungAnimals`
--

LOCK TABLES `YoungAnimals` WRITE;
/*!40000 ALTER TABLE `YoungAnimals` DISABLE KEYS */;
INSERT INTO `YoungAnimals` VALUES (4,'Cat01','MYAU','2021-02-22','Cat',31),(5,'Cat02','MURR','2022-01-22','Cat',20),(6,'Cat03','FRRR','2021-02-12','Cat',31),(7,'Dog01','GAV','2021-01-11','Dog',32),(9,'Dog03','FAS','2021-11-11','Dog',22),(12,'Dondey3','GO','2022-09-12','Donkey',12),(14,'Horse2','GALOP','2022-01-11','Horse',20),(15,'Horse3','SHAG','2021-02-10','Horse',31),(17,'Humpster2','SLEEP','2021-08-11','Humpster',25),(18,'Humpster3','WAKE UP','2022-09-14','Humpster',12);
/*!40000 ALTER TABLE `YoungAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horsesanddonkeys`
--

DROP TABLE IF EXISTS `horsesanddonkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horsesanddonkeys` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `command` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horsesanddonkeys`
--

LOCK TABLES `horsesanddonkeys` WRITE;
/*!40000 ALTER TABLE `horsesanddonkeys` DISABLE KEYS */;
INSERT INTO `horsesanddonkeys` VALUES (10,'Dondey1','IA','2022-10-02','Donkey'),(11,'Dondey2','GO','2023-09-25','Donkey'),(12,'Dondey3','GO','2022-09-12','Donkey'),(13,'Horse1','RYS','2023-01-11','Horse'),(14,'Horse2','GALOP','2022-01-11','Horse'),(15,'Horse3','SHAG','2021-02-10','Horse');
/*!40000 ALTER TABLE `horsesanddonkeys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 21:27:46
