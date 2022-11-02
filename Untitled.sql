-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `bootcamps`
--

DROP TABLE IF EXISTS `bootcamps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootcamps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(500) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootcamps`
--

LOCK TABLES `bootcamps` WRITE;
/*!40000 ALTER TABLE `bootcamps` DISABLE KEYS */;
INSERT INTO `bootcamps` VALUES (1,'learning the basics of the web, and many languages such as Python, MERN, Java, and others, and you will be able to use more than 10 essential tools in the world of software development\n','/images/covers/Software_Develop.gif','Software Development Bootcamp'),(2,'Starting the journey with the basics of Data, Data and Business Intelligence, Analysis, Export and Data Preparation, Statistical Analysis with R and Programming with Python, Exploratory Data Science and Learn, Data Engineering and more.\n','/images/covers/Data_Science.gif\n','Data Science Bootcamp\n'),(3,'The camp includes operating systems fundamentals, system and software development life, container setup with Docker, configuration management with Ansible, seamless integration and delivery, automation of policies, standards, and distributed systems, among others.\n','/images/covers/DevOps.gif\n','Software Operations Bootcamp (DevOps)\n'),(4,'Learning the basics of software testing, software testing process cycle, scrum and agile methodology, manual testing, functional software testing, database testing, and more.\n','/images/covers/QA_engineers.gif\n','Software Quality Bootcamp (QA)\n'),(5,'Master the design thinking skills, initial design tools, visual development, design testing, and more.\n','/images/covers/Mobile_UX.gif\n','UI/UX Development Bootcamp\n');
/*!40000 ALTER TABLE `bootcamps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `champions`
--

DROP TABLE IF EXISTS `champions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `champions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `bootcamp_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKetjj60a8r0m03u8fq9moo9mkr` (`bootcamp_id`),
  CONSTRAINT `FKetjj60a8r0m03u8fq9moo9mkr` FOREIGN KEY (`bootcamp_id`) REFERENCES `bootcamps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champions`
--

LOCK TABLES `champions` WRITE;
/*!40000 ALTER TABLE `champions` DISABLE KEYS */;
INSERT INTO `champions` VALUES (1,'/images/champion/week1.png',1),(2,'/images/champion/week2.png',1),(3,'/images/champion/week3.png',1),(4,'/images/champion/week4.png',1),(5,'/images/champion/week5.png',1),(6,'/images/champion/week6.png',1),(7,'/images/champion/week7.png',1),(8,'/images/champion/week8.png',1),(9,'/images/champion/week9.png',1);
/*!40000 ALTER TABLE `champions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `bootcamp_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5f1uhlooviqsxndt9noypqsnr` (`bootcamp_id`),
  CONSTRAINT `FK5f1uhlooviqsxndt9noypqsnr` FOREIGN KEY (`bootcamp_id`) REFERENCES `bootcamps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (1,'nbell@codingdojo.com','Nathan Bell',1),(2,'aabbad_p@mcit.gov.sa','Alreem Alabbad',1);
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(203) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `bootcamp_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa39ufdtdr3kim3ricmkyux86m` (`bootcamp_id`),
  KEY `FKgotih2cqchnswrqacevuhjp0e` (`student_id`),
  CONSTRAINT `FKa39ufdtdr3kim3ricmkyux86m` FOREIGN KEY (`bootcamp_id`) REFERENCES `bootcamps` (`id`),
  CONSTRAINT `FKgotih2cqchnswrqacevuhjp0e` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'rrererrrr','test1-update','1234567890',1,1),(2,'hjkl;lkjhjklkjklkjkl;lkjkl;','ttttt','45768976756456789',1,1),(4,'Great Project ','Great Project ','12345678903w',1,3),(10,'qwertyu3456789','tw=sgdchdl234567','234567890123423456y7u8',1,4),(12,'tesrt 55','test 55','123456789009876543',1,5),(13,'tessst44','test 6666','1234567890987654321',1,2);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `bootcamp_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4frcou6at292ncudqt10o4du` (`bootcamp_id`),
  CONSTRAINT `FK4frcou6at292ncudqt10o4du` FOREIGN KEY (`bootcamp_id`) REFERENCES `bootcamps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'s@gmail.com','$2a$10$26SQTCIZEjaqmNCeuyjcFewFZOAEPOmoyqd7v.Ih1Tr.FK35lSejy',NULL,'Sara ',1),(2,NULL,'Aziza@gmail.com','$2a$10$B7S6qXI07iWQn9UokznsP.21tHBA.QUbRgzdXoDmG5xUVLboGjUai',NULL,'Aziza',1),(3,NULL,'rx@gmail.com','$2a$10$e/ZHPXLTSjiuXEM5LTkwQuj2wWsEXcMYyWosJQD1hDpweRHscM/uO',NULL,'Roaa',1),(4,NULL,'samia@gmail.com','$2a$10$Dtod4HoAZf2tr9xDzIs7u.MMolVGEMApjD/BW88dn1LgGi/Rh2Ej.',NULL,'Samia Albuqami',1),(5,NULL,'ayman@gmail.com','$2a$10$1dh0jNgQPqjLWboBXNwUlur0vbi.x2cg/Y.qvGzDwIBR1S40c.AVO',NULL,'Ayman Asiri',1);
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

-- Dump completed on 2022-08-11 10:16:42
