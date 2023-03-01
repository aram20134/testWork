-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.32

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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `secondName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'aboba',NULL,'$2b$04$0ozTbJa4qbxszbsASKf3zu.7v1tc0q31U58sJ6MH6Q5LHF6dXeMGe','asd@mail.ru',NULL,NULL,'2023-03-01 06:54:41','2023-03-01 06:54:41'),(2,'abobij','Vard','$2b$04$bV5M3tYcen05qcC40rBsder.nYokNKEDj9eRpkDEpceR0AOr7N5ZK','aboba@mail.ru','Мужчина','e524a3f7-ca86-423b-9289-12cfb70feecf.jpg','2023-03-01 07:24:30','2023-03-01 08:20:45'),(3,'test',NULL,'$2b$04$MoCnUH.esIeTClOTArm5zerbefJ0xQt3kZKFCpRaEXsa5xtjnyk/y','test@mail.ru',NULL,NULL,'2023-03-01 08:09:48','2023-03-01 08:09:48'),(4,'test1',NULL,'$2b$04$yK3lfFf7u4BPw0.i3Bw2CuUuJ5p1kmmKEaItJO4JRU/WTzHRRTzQ.','test@mail.ru',NULL,NULL,'2023-03-01 08:09:51','2023-03-01 08:09:51'),(5,'test12',NULL,'$2b$04$VWTeyePdGQL3pnqIVgpQ4.omoFL8vnOpbTLKlMdqRss5Zksvd0H7K','test@mail.ru',NULL,NULL,'2023-03-01 08:09:52','2023-03-01 08:09:52'),(6,'test2',NULL,'$2b$04$au7h/rWXnlAVbuSWb5yfP./rCXBkYz5QF/idRcn3I/.96CztUcRua','test@mail.ru',NULL,NULL,'2023-03-01 08:09:54','2023-03-01 08:09:54'),(7,'test3',NULL,'$2b$04$2hzouSjd9JBipksIT6wN.OJDhwI8uSLh.mLbe0WnlGB0JeV9i4DLK','test@mail.ru',NULL,NULL,'2023-03-01 08:09:56','2023-03-01 08:09:56'),(8,'test4',NULL,'$2b$04$2ijTAmLNGswIlohCCc70R.gZm6Prz3l7EpRsuL/O0nZnuu8QBGpd.','test@mail.ru',NULL,NULL,'2023-03-01 08:09:58','2023-03-01 08:09:58'),(9,'test5',NULL,'$2b$04$bDWLBzU1.66EH714HnO6e.oJBYq6CBx9gP7.cQkrkO4bzeA7B4Fiq','test@mail.ru',NULL,NULL,'2023-03-01 08:10:00','2023-03-01 08:10:00'),(10,'test6',NULL,'$2b$04$Gx6sTvqRZJGdr7q0IA/9VeouUsBln3SmQs5WcOCzu4FuQqCsv9cEW','test@mail.ru',NULL,NULL,'2023-03-01 08:10:02','2023-03-01 08:10:02'),(11,'test7',NULL,'$2b$04$xpVxHSYdWtUb3vFLGU/jb.qyqElIA5zAxqrHiIsid5s5/hinfnwue','test@mail.ru',NULL,NULL,'2023-03-01 08:10:04','2023-03-01 08:10:04'),(12,'test8',NULL,'$2b$04$C5zbhnBxkROurcDrI5zS3.NomlY53QoJi0soEsK/0ugr2Bfoi7Aqe','test@mail.ru',NULL,NULL,'2023-03-01 08:10:05','2023-03-01 08:10:05'),(13,'test9',NULL,'$2b$04$km0YVPkyrf95c8bvtlQLueUDUwE/WVdoaHaC4i9oC5BvumxwT1ry.','test@mail.ru',NULL,NULL,'2023-03-01 08:10:08','2023-03-01 08:10:08'),(14,'test10',NULL,'$2b$04$p5vHQuXyK46Za50cr/LIweOVqjWmq4lDw/CqrOhih/lNY18cgrOhO','test@mail.ru',NULL,NULL,'2023-03-01 08:10:10','2023-03-01 08:10:10');
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

-- Dump completed on 2023-03-01 11:23:50
