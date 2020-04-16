-- MySQL dump 10.16  Distrib 10.2.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u771501729_ia
-- ------------------------------------------------------
-- Server version	10.2.16-MariaDB

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
-- Table structure for table `gulosa`
--

DROP TABLE IF EXISTS `gulosa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gulosa` (
  `id` int(11) NOT NULL,
  `json` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gulosa`
--

/*!40000 ALTER TABLE `gulosa` DISABLE KEYS */;
INSERT INTO `gulosa` VALUES (1,'{\"nodes\":[{\"id\":0,\"group\":1},{\"id\":1,\"group\":1},{\"id\":2,\"group\":2},{\"id\":3,\"group\":1},{\"id\":4,\"group\":2}],\"links\":[{\"source\":0,\"target\":1,\"value\":1},{\"source\":0,\"target\":2,\"value\":1},{\"source\":1,\"target\":0,\"value\":1},{\"source\":1,\"target\":3,\"value\":1},{\"source\":1,\"target\":2,\"value\":1},{\"source\":2,\"target\":1,\"value\":1},{\"source\":2,\"target\":3,\"value\":1},{\"source\":2,\"target\":0,\"value\":1},{\"source\":2,\"target\":4,\"value\":1},{\"source\":3,\"target\":1,\"value\":1},{\"source\":3,\"target\":2,\"value\":1},{\"source\":3,\"target\":4,\"value\":1},{\"source\":4,\"target\":2,\"value\":1},{\"source\":4,\"target\":3,\"value\":1}]}');
/*!40000 ALTER TABLE `gulosa` ENABLE KEYS */;

--
-- Table structure for table `iris`
--

DROP TABLE IF EXISTS `iris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iris` (
  `sepal_length` varchar(12) DEFAULT NULL,
  `sepal_width` varchar(11) DEFAULT NULL,
  `petal_length` varchar(12) DEFAULT NULL,
  `petal_width` varchar(11) DEFAULT NULL,
  `species` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iris`
--

/*!40000 ALTER TABLE `iris` DISABLE KEYS */;
INSERT INTO `iris` VALUES ('5.1','3.5','1.4','0.2','Iris-setosa'),('4.9','3.0','1.4','0.2','Iris-setosa'),('4.7','3.2','1.3','0.2','Iris-setosa'),('4.6','3.1','1.5','0.2','Iris-setosa'),('5.0','3.6','1.4','0.2','Iris-setosa'),('5.4','3.9','1.7','0.4','Iris-setosa'),('4.6','3.4','1.4','0.3','Iris-setosa'),('5.0','3.4','1.5','0.2','Iris-setosa'),('4.4','2.9','1.4','0.2','Iris-setosa'),('4.9','3.1','1.5','0.1','Iris-setosa'),('5.4','3.7','1.5','0.2','Iris-setosa'),('4.8','3.4','1.6','0.2','Iris-setosa'),('4.8','3.0','1.4','0.1','Iris-setosa'),('4.3','3.0','1.1','0.1','Iris-setosa'),('5.8','4.0','1.2','0.2','Iris-setosa'),('5.7','4.4','1.5','0.4','Iris-setosa'),('5.4','3.9','1.3','0.4','Iris-setosa'),('5.1','3.5','1.4','0.3','Iris-setosa'),('5.7','3.8','1.7','0.3','Iris-setosa'),('5.1','3.8','1.5','0.3','Iris-setosa'),('5.4','3.4','1.7','0.2','Iris-setosa'),('5.1','3.7','1.5','0.4','Iris-setosa'),('4.6','3.6','1.0','0.2','Iris-setosa'),('5.1','3.3','1.7','0.5','Iris-setosa'),('4.8','3.4','1.9','0.2','Iris-setosa'),('5.0','3.0','1.6','0.2','Iris-setosa'),('5.0','3.4','1.6','0.4','Iris-setosa'),('5.2','3.5','1.5','0.2','Iris-setosa'),('5.2','3.4','1.4','0.2','Iris-setosa'),('4.7','3.2','1.6','0.2','Iris-setosa'),('4.8','3.1','1.6','0.2','Iris-setosa'),('5.4','3.4','1.5','0.4','Iris-setosa'),('5.2','4.1','1.5','0.1','Iris-setosa'),('5.5','4.2','1.4','0.2','Iris-setosa'),('4.9','3.1','1.5','0.1','Iris-setosa'),('5.0','3.2','1.2','0.2','Iris-setosa'),('5.5','3.5','1.3','0.2','Iris-setosa'),('4.9','3.1','1.5','0.1','Iris-setosa'),('4.4','3.0','1.3','0.2','Iris-setosa'),('5.1','3.4','1.5','0.2','Iris-setosa'),('5.0','3.5','1.3','0.3','Iris-setosa'),('4.5','2.3','1.3','0.3','Iris-setosa'),('4.4','3.2','1.3','0.2','Iris-setosa'),('5.0','3.5','1.6','0.6','Iris-setosa'),('5.1','3.8','1.9','0.4','Iris-setosa'),('4.8','3.0','1.4','0.3','Iris-setosa'),('5.1','3.8','1.6','0.2','Iris-setosa'),('4.6','3.2','1.4','0.2','Iris-setosa'),('5.3','3.7','1.5','0.2','Iris-setosa'),('5.0','3.3','1.4','0.2','Iris-setosa'),('7.0','3.2','4.7','1.4','Iris-versicolor'),('6.4','3.2','4.5','1.5','Iris-versicolor'),('6.9','3.1','4.9','1.5','Iris-versicolor'),('5.5','2.3','4.0','1.3','Iris-versicolor'),('6.5','2.8','4.6','1.5','Iris-versicolor'),('5.7','2.8','4.5','1.3','Iris-versicolor'),('6.3','3.3','4.7','1.6','Iris-versicolor'),('4.9','2.4','3.3','1.0','Iris-versicolor'),('6.6','2.9','4.6','1.3','Iris-versicolor'),('5.2','2.7','3.9','1.4','Iris-versicolor'),('5.0','2.0','3.5','1.0','Iris-versicolor'),('5.9','3.0','4.2','1.5','Iris-versicolor'),('6.0','2.2','4.0','1.0','Iris-versicolor'),('6.1','2.9','4.7','1.4','Iris-versicolor'),('5.6','2.9','3.6','1.3','Iris-versicolor'),('6.7','3.1','4.4','1.4','Iris-versicolor'),('5.6','3.0','4.5','1.5','Iris-versicolor'),('5.8','2.7','4.1','1.0','Iris-versicolor'),('6.2','2.2','4.5','1.5','Iris-versicolor'),('5.6','2.5','3.9','1.1','Iris-versicolor'),('5.9','3.2','4.8','1.8','Iris-versicolor'),('6.1','2.8','4.0','1.3','Iris-versicolor'),('6.3','2.5','4.9','1.5','Iris-versicolor'),('6.1','2.8','4.7','1.2','Iris-versicolor'),('6.4','2.9','4.3','1.3','Iris-versicolor'),('6.6','3.0','4.4','1.4','Iris-versicolor'),('6.8','2.8','4.8','1.4','Iris-versicolor'),('6.7','3.0','5.0','1.7','Iris-versicolor'),('6.0','2.9','4.5','1.5','Iris-versicolor'),('5.7','2.6','3.5','1.0','Iris-versicolor'),('5.5','2.4','3.8','1.1','Iris-versicolor'),('5.5','2.4','3.7','1.0','Iris-versicolor'),('5.8','2.7','3.9','1.2','Iris-versicolor'),('6.0','2.7','5.1','1.6','Iris-versicolor'),('5.4','3.0','4.5','1.5','Iris-versicolor'),('6.0','3.4','4.5','1.6','Iris-versicolor'),('6.7','3.1','4.7','1.5','Iris-versicolor'),('6.3','2.3','4.4','1.3','Iris-versicolor'),('5.6','3.0','4.1','1.3','Iris-versicolor'),('5.5','2.5','4.0','1.3','Iris-versicolor'),('5.5','2.6','4.4','1.2','Iris-versicolor'),('6.1','3.0','4.6','1.4','Iris-versicolor'),('5.8','2.6','4.0','1.2','Iris-versicolor'),('5.0','2.3','3.3','1.0','Iris-versicolor'),('5.6','2.7','4.2','1.3','Iris-versicolor'),('5.7','3.0','4.2','1.2','Iris-versicolor'),('5.7','2.9','4.2','1.3','Iris-versicolor'),('6.2','2.9','4.3','1.3','Iris-versicolor'),('5.1','2.5','3.0','1.1','Iris-versicolor'),('5.7','2.8','4.1','1.3','Iris-versicolor'),('6.3','3.3','6.0','2.5','Iris-virginica'),('5.8','2.7','5.1','1.9','Iris-virginica'),('7.1','3.0','5.9','2.1','Iris-virginica'),('6.3','2.9','5.6','1.8','Iris-virginica'),('6.5','3.0','5.8','2.2','Iris-virginica'),('7.6','3.0','6.6','2.1','Iris-virginica'),('4.9','2.5','4.5','1.7','Iris-virginica'),('7.3','2.9','6.3','1.8','Iris-virginica'),('6.7','2.5','5.8','1.8','Iris-virginica'),('7.2','3.6','6.1','2.5','Iris-virginica'),('6.5','3.2','5.1','2.0','Iris-virginica'),('6.4','2.7','5.3','1.9','Iris-virginica'),('6.8','3.0','5.5','2.1','Iris-virginica'),('5.7','2.5','5.0','2.0','Iris-virginica'),('5.8','2.8','5.1','2.4','Iris-virginica'),('6.4','3.2','5.3','2.3','Iris-virginica'),('6.5','3.0','5.5','1.8','Iris-virginica'),('7.7','3.8','6.7','2.2','Iris-virginica'),('7.7','2.6','6.9','2.3','Iris-virginica'),('6.0','2.2','5.0','1.5','Iris-virginica'),('6.9','3.2','5.7','2.3','Iris-virginica'),('5.6','2.8','4.9','2.0','Iris-virginica'),('7.7','2.8','6.7','2.0','Iris-virginica'),('6.3','2.7','4.9','1.8','Iris-virginica'),('6.7','3.3','5.7','2.1','Iris-virginica'),('7.2','3.2','6.0','1.8','Iris-virginica'),('6.2','2.8','4.8','1.8','Iris-virginica'),('6.1','3.0','4.9','1.8','Iris-virginica'),('6.4','2.8','5.6','2.1','Iris-virginica'),('7.2','3.0','5.8','1.6','Iris-virginica'),('7.4','2.8','6.1','1.9','Iris-virginica'),('7.9','3.8','6.4','2.0','Iris-virginica'),('6.4','2.8','5.6','2.2','Iris-virginica'),('6.3','2.8','5.1','1.5','Iris-virginica'),('6.1','2.6','5.6','1.4','Iris-virginica'),('7.7','3.0','6.1','2.3','Iris-virginica'),('6.3','3.4','5.6','2.4','Iris-virginica'),('6.4','3.1','5.5','1.8','Iris-virginica'),('6.0','3.0','4.8','1.8','Iris-virginica'),('6.9','3.1','5.4','2.1','Iris-virginica'),('6.7','3.1','5.6','2.4','Iris-virginica'),('6.9','3.1','5.1','2.3','Iris-virginica'),('5.8','2.7','5.1','1.9','Iris-virginica'),('6.8','3.2','5.9','2.3','Iris-virginica'),('6.7','3.3','5.7','2.5','Iris-virginica'),('6.7','3.0','5.2','2.3','Iris-virginica'),('6.3','2.5','5.0','1.9','Iris-virginica'),('6.5','3.0','5.2','2.0','Iris-virginica'),('6.2','3.4','5.4','2.3','Iris-virginica'),('5.9','3.0','5.1','1.8','Iris-virginica');
/*!40000 ALTER TABLE `iris` ENABLE KEYS */;

--
-- Table structure for table `iris2`
--

DROP TABLE IF EXISTS `iris2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iris2` (
  `sepal_length` varchar(12) DEFAULT NULL,
  `sepal_width` varchar(11) DEFAULT NULL,
  `petal_length` varchar(12) DEFAULT NULL,
  `petal_width` varchar(11) DEFAULT NULL,
  `species` varchar(15) DEFAULT NULL,
  `d` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iris2`
--

/*!40000 ALTER TABLE `iris2` DISABLE KEYS */;
INSERT INTO `iris2` VALUES ('5.1','3.5','1.4','0.2','Iris-setosa',1),('4.9','3.0','1.4','0.2','Iris-setosa',1),('4.7','3.2','1.3','0.2','Iris-setosa',1),('4.6','3.1','1.5','0.2','Iris-setosa',1),('5.0','3.6','1.4','0.2','Iris-setosa',1),('5.4','3.9','1.7','0.4','Iris-setosa',1),('4.6','3.4','1.4','0.3','Iris-setosa',1),('5.0','3.4','1.5','0.2','Iris-setosa',1),('4.4','2.9','1.4','0.2','Iris-setosa',1),('4.9','3.1','1.5','0.1','Iris-setosa',1),('5.4','3.7','1.5','0.2','Iris-setosa',1),('4.8','3.4','1.6','0.2','Iris-setosa',1),('4.8','3.0','1.4','0.1','Iris-setosa',1),('4.3','3.0','1.1','0.1','Iris-setosa',1),('5.8','4.0','1.2','0.2','Iris-setosa',1),('5.7','4.4','1.5','0.4','Iris-setosa',1),('5.4','3.9','1.3','0.4','Iris-setosa',1),('5.1','3.5','1.4','0.3','Iris-setosa',1),('5.7','3.8','1.7','0.3','Iris-setosa',1),('5.1','3.8','1.5','0.3','Iris-setosa',1),('5.4','3.4','1.7','0.2','Iris-setosa',1),('5.1','3.7','1.5','0.4','Iris-setosa',1),('4.6','3.6','1.0','0.2','Iris-setosa',1),('5.1','3.3','1.7','0.5','Iris-setosa',1),('4.8','3.4','1.9','0.2','Iris-setosa',1),('5.0','3.0','1.6','0.2','Iris-setosa',1),('5.0','3.4','1.6','0.4','Iris-setosa',1),('5.2','3.5','1.5','0.2','Iris-setosa',1),('5.2','3.4','1.4','0.2','Iris-setosa',1),('4.7','3.2','1.6','0.2','Iris-setosa',1),('4.8','3.1','1.6','0.2','Iris-setosa',1),('5.4','3.4','1.5','0.4','Iris-setosa',1),('5.2','4.1','1.5','0.1','Iris-setosa',1),('5.5','4.2','1.4','0.2','Iris-setosa',1),('4.9','3.1','1.5','0.1','Iris-setosa',1),('5.0','3.2','1.2','0.2','Iris-setosa',1),('5.5','3.5','1.3','0.2','Iris-setosa',1),('4.9','3.1','1.5','0.1','Iris-setosa',1),('4.4','3.0','1.3','0.2','Iris-setosa',1),('5.1','3.4','1.5','0.2','Iris-setosa',1),('5.0','3.5','1.3','0.3','Iris-setosa',1),('4.5','2.3','1.3','0.3','Iris-setosa',1),('4.4','3.2','1.3','0.2','Iris-setosa',1),('5.0','3.5','1.6','0.6','Iris-setosa',1),('5.1','3.8','1.9','0.4','Iris-setosa',1),('4.8','3.0','1.4','0.3','Iris-setosa',1),('5.1','3.8','1.6','0.2','Iris-setosa',1),('4.6','3.2','1.4','0.2','Iris-setosa',1),('5.3','3.7','1.5','0.2','Iris-setosa',1),('5.0','3.3','1.4','0.2','Iris-setosa',1),('6.3','3.3','6.0','2.5','Iris-virginica',-1),('5.8','2.7','5.1','1.9','Iris-virginica',-1),('7.1','3.0','5.9','2.1','Iris-virginica',-1),('6.3','2.9','5.6','1.8','Iris-virginica',-1),('6.5','3.0','5.8','2.2','Iris-virginica',-1),('7.6','3.0','6.6','2.1','Iris-virginica',-1),('4.9','2.5','4.5','1.7','Iris-virginica',-1),('7.3','2.9','6.3','1.8','Iris-virginica',-1),('6.7','2.5','5.8','1.8','Iris-virginica',-1),('7.2','3.6','6.1','2.5','Iris-virginica',-1),('6.5','3.2','5.1','2.0','Iris-virginica',-1),('6.4','2.7','5.3','1.9','Iris-virginica',-1),('6.8','3.0','5.5','2.1','Iris-virginica',-1),('5.7','2.5','5.0','2.0','Iris-virginica',-1),('5.8','2.8','5.1','2.4','Iris-virginica',-1),('6.4','3.2','5.3','2.3','Iris-virginica',-1),('6.5','3.0','5.5','1.8','Iris-virginica',-1),('7.7','3.8','6.7','2.2','Iris-virginica',-1),('7.7','2.6','6.9','2.3','Iris-virginica',-1),('6.0','2.2','5.0','1.5','Iris-virginica',-1),('6.9','3.2','5.7','2.3','Iris-virginica',-1),('5.6','2.8','4.9','2.0','Iris-virginica',-1),('7.7','2.8','6.7','2.0','Iris-virginica',-1),('6.3','2.7','4.9','1.8','Iris-virginica',-1),('6.7','3.3','5.7','2.1','Iris-virginica',-1),('7.2','3.2','6.0','1.8','Iris-virginica',-1),('6.2','2.8','4.8','1.8','Iris-virginica',-1),('6.1','3.0','4.9','1.8','Iris-virginica',-1),('6.4','2.8','5.6','2.1','Iris-virginica',-1),('7.2','3.0','5.8','1.6','Iris-virginica',-1),('7.4','2.8','6.1','1.9','Iris-virginica',-1),('7.9','3.8','6.4','2.0','Iris-virginica',-1),('6.4','2.8','5.6','2.2','Iris-virginica',-1),('6.3','2.8','5.1','1.5','Iris-virginica',-1),('6.1','2.6','5.6','1.4','Iris-virginica',-1),('7.7','3.0','6.1','2.3','Iris-virginica',-1),('6.3','3.4','5.6','2.4','Iris-virginica',-1),('6.4','3.1','5.5','1.8','Iris-virginica',-1),('6.0','3.0','4.8','1.8','Iris-virginica',-1),('6.9','3.1','5.4','2.1','Iris-virginica',-1),('6.7','3.1','5.6','2.4','Iris-virginica',-1),('6.9','3.1','5.1','2.3','Iris-virginica',-1),('5.8','2.7','5.1','1.9','Iris-virginica',-1),('6.8','3.2','5.9','2.3','Iris-virginica',-1),('6.7','3.3','5.7','2.5','Iris-virginica',-1),('6.7','3.0','5.2','2.3','Iris-virginica',-1),('6.3','2.5','5.0','1.9','Iris-virginica',-1),('6.5','3.0','5.2','2.0','Iris-virginica',-1),('6.2','3.4','5.4','2.3','Iris-virginica',-1),('5.9','3.0','5.1','1.8','Iris-virginica',-1);
/*!40000 ALTER TABLE `iris2` ENABLE KEYS */;

--
-- Table structure for table `iris_teste`
--

DROP TABLE IF EXISTS `iris_teste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iris_teste` (
  `sepal_length` varchar(12) DEFAULT NULL,
  `sepal_width` varchar(11) DEFAULT NULL,
  `petal_length` varchar(12) DEFAULT NULL,
  `petal_width` varchar(11) DEFAULT NULL,
  `species` varchar(15) DEFAULT NULL,
  `d` int(11) NOT NULL,
  `limiar` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iris_teste`
--

/*!40000 ALTER TABLE `iris_teste` DISABLE KEYS */;
INSERT INTO `iris_teste` VALUES ('4.8','3.0','1.4','0.3','Iris-setosa',1,-1),('5.1','3.8','1.6','0.2','Iris-setosa',1,-1),('4.6','3.2','1.4','0.2','Iris-setosa',1,-1),('5.3','3.7','1.5','0.2','Iris-setosa',1,-1),('5.0','3.3','1.4','0.2','Iris-setosa',1,-1),('6.7','3.0','5.2','2.3','Iris-virginica',-1,-1),('6.3','2.5','5.0','1.9','Iris-virginica',-1,-1),('6.5','3.0','5.2','2.0','Iris-virginica',-1,-1),('6.2','3.4','5.4','2.3','Iris-virginica',-1,-1),('5.9','3.0','5.1','1.8','Iris-virginica',-1,-1);
/*!40000 ALTER TABLE `iris_teste` ENABLE KEYS */;

--
-- Table structure for table `iris_treino`
--

DROP TABLE IF EXISTS `iris_treino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iris_treino` (
  `sepal_length` varchar(12) DEFAULT NULL,
  `sepal_width` varchar(11) DEFAULT NULL,
  `petal_length` varchar(12) DEFAULT NULL,
  `petal_width` varchar(11) DEFAULT NULL,
  `species` varchar(15) DEFAULT NULL,
  `d` int(11) NOT NULL,
  `limiar` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iris_treino`
--

/*!40000 ALTER TABLE `iris_treino` DISABLE KEYS */;
INSERT INTO `iris_treino` VALUES ('5.1','3.5','1.4','0.2','Iris-setosa',1,-1),('4.9','3.0','1.4','0.2','Iris-setosa',1,-1),('4.7','3.2','1.3','0.2','Iris-setosa',1,-1),('4.6','3.1','1.5','0.2','Iris-setosa',1,-1),('5.0','3.6','1.4','0.2','Iris-setosa',1,-1),('5.4','3.9','1.7','0.4','Iris-setosa',1,-1),('4.6','3.4','1.4','0.3','Iris-setosa',1,-1),('5.0','3.4','1.5','0.2','Iris-setosa',1,-1),('4.4','2.9','1.4','0.2','Iris-setosa',1,-1),('4.9','3.1','1.5','0.1','Iris-setosa',1,-1),('5.4','3.7','1.5','0.2','Iris-setosa',1,-1),('4.8','3.4','1.6','0.2','Iris-setosa',1,-1),('4.8','3.0','1.4','0.1','Iris-setosa',1,-1),('4.3','3.0','1.1','0.1','Iris-setosa',1,-1),('5.8','4.0','1.2','0.2','Iris-setosa',1,-1),('5.7','4.4','1.5','0.4','Iris-setosa',1,-1),('5.4','3.9','1.3','0.4','Iris-setosa',1,-1),('5.1','3.5','1.4','0.3','Iris-setosa',1,-1),('5.7','3.8','1.7','0.3','Iris-setosa',1,-1),('5.1','3.8','1.5','0.3','Iris-setosa',1,-1),('5.4','3.4','1.7','0.2','Iris-setosa',1,-1),('5.1','3.7','1.5','0.4','Iris-setosa',1,-1),('4.6','3.6','1.0','0.2','Iris-setosa',1,-1),('5.1','3.3','1.7','0.5','Iris-setosa',1,-1),('4.8','3.4','1.9','0.2','Iris-setosa',1,-1),('5.0','3.0','1.6','0.2','Iris-setosa',1,-1),('5.0','3.4','1.6','0.4','Iris-setosa',1,-1),('5.2','3.5','1.5','0.2','Iris-setosa',1,-1),('5.2','3.4','1.4','0.2','Iris-setosa',1,-1),('4.7','3.2','1.6','0.2','Iris-setosa',1,-1),('4.8','3.1','1.6','0.2','Iris-setosa',1,-1),('5.4','3.4','1.5','0.4','Iris-setosa',1,-1),('5.2','4.1','1.5','0.1','Iris-setosa',1,-1),('5.5','4.2','1.4','0.2','Iris-setosa',1,-1),('4.9','3.1','1.5','0.1','Iris-setosa',1,-1),('5.0','3.2','1.2','0.2','Iris-setosa',1,-1),('5.5','3.5','1.3','0.2','Iris-setosa',1,-1),('4.9','3.1','1.5','0.1','Iris-setosa',1,-1),('4.4','3.0','1.3','0.2','Iris-setosa',1,-1),('5.1','3.4','1.5','0.2','Iris-setosa',1,-1),('5.0','3.5','1.3','0.3','Iris-setosa',1,-1),('4.5','2.3','1.3','0.3','Iris-setosa',1,-1),('4.4','3.2','1.3','0.2','Iris-setosa',1,-1),('5.0','3.5','1.6','0.6','Iris-setosa',1,-1),('5.1','3.8','1.9','0.4','Iris-setosa',1,-1),('6.3','3.3','6.0','2.5','Iris-virginica',-1,-1),('5.8','2.7','5.1','1.9','Iris-virginica',-1,-1),('7.1','3.0','5.9','2.1','Iris-virginica',-1,-1),('6.3','2.9','5.6','1.8','Iris-virginica',-1,-1),('6.5','3.0','5.8','2.2','Iris-virginica',-1,-1),('7.6','3.0','6.6','2.1','Iris-virginica',-1,-1),('4.9','2.5','4.5','1.7','Iris-virginica',-1,-1),('7.3','2.9','6.3','1.8','Iris-virginica',-1,-1),('6.7','2.5','5.8','1.8','Iris-virginica',-1,-1),('7.2','3.6','6.1','2.5','Iris-virginica',-1,-1),('6.5','3.2','5.1','2.0','Iris-virginica',-1,-1),('6.4','2.7','5.3','1.9','Iris-virginica',-1,-1),('6.8','3.0','5.5','2.1','Iris-virginica',-1,-1),('5.7','2.5','5.0','2.0','Iris-virginica',-1,-1),('5.8','2.8','5.1','2.4','Iris-virginica',-1,-1),('6.4','3.2','5.3','2.3','Iris-virginica',-1,-1),('6.5','3.0','5.5','1.8','Iris-virginica',-1,-1),('7.7','3.8','6.7','2.2','Iris-virginica',-1,-1),('7.7','2.6','6.9','2.3','Iris-virginica',-1,-1),('6.0','2.2','5.0','1.5','Iris-virginica',-1,-1),('6.9','3.2','5.7','2.3','Iris-virginica',-1,-1),('5.6','2.8','4.9','2.0','Iris-virginica',-1,-1),('7.7','2.8','6.7','2.0','Iris-virginica',-1,-1),('6.3','2.7','4.9','1.8','Iris-virginica',-1,-1),('6.7','3.3','5.7','2.1','Iris-virginica',-1,-1),('7.2','3.2','6.0','1.8','Iris-virginica',-1,-1),('6.2','2.8','4.8','1.8','Iris-virginica',-1,-1),('6.1','3.0','4.9','1.8','Iris-virginica',-1,-1),('6.4','2.8','5.6','2.1','Iris-virginica',-1,-1),('7.2','3.0','5.8','1.6','Iris-virginica',-1,-1),('7.4','2.8','6.1','1.9','Iris-virginica',-1,-1),('7.9','3.8','6.4','2.0','Iris-virginica',-1,-1),('6.4','2.8','5.6','2.2','Iris-virginica',-1,-1),('6.3','2.8','5.1','1.5','Iris-virginica',-1,-1),('6.1','2.6','5.6','1.4','Iris-virginica',-1,-1),('7.7','3.0','6.1','2.3','Iris-virginica',-1,-1),('6.3','3.4','5.6','2.4','Iris-virginica',-1,-1),('6.4','3.1','5.5','1.8','Iris-virginica',-1,-1),('6.0','3.0','4.8','1.8','Iris-virginica',-1,-1),('6.9','3.1','5.4','2.1','Iris-virginica',-1,-1),('6.7','3.1','5.6','2.4','Iris-virginica',-1,-1),('6.9','3.1','5.1','2.3','Iris-virginica',-1,-1),('5.8','2.7','5.1','1.9','Iris-virginica',-1,-1),('6.8','3.2','5.9','2.3','Iris-virginica',-1,-1),('6.7','3.3','5.7','2.5','Iris-virginica',-1,-1);
/*!40000 ALTER TABLE `iris_treino` ENABLE KEYS */;

--
-- Dumping routines for database 'u771501729_ia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-06 14:44:06
