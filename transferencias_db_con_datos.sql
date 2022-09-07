-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: trasnsactions
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
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `idCuenta` int NOT NULL,
  `numeroCuenta` int NOT NULL,
  `saldoCuenta` int NOT NULL,
  PRIMARY KEY (`idCuenta`),
  UNIQUE KEY `idCuenta_UNIQUE` (`idCuenta`),
  UNIQUE KEY `numeroCuenta_UNIQUE` (`numeroCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (111,123456,2005000),(222,456789,6070000),(333,987654,2480000);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cuentas_usuario`
--

DROP TABLE IF EXISTS `cuentas_usuario`;
/*!50001 DROP VIEW IF EXISTS `cuentas_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cuentas_usuario` AS SELECT 
 1 AS `nit`,
 1 AS `name`,
 1 AS `numeroCuenta`,
 1 AS `saldoCuenta`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transactions_record`
--

DROP TABLE IF EXISTS `transactions_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) NOT NULL,
  `cuentaOrigen` int NOT NULL,
  `cuentaDestino` int NOT NULL,
  `monto` int NOT NULL,
  `nitUsuario` int NOT NULL,
  `idTransaction` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idTransactios_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions_record`
--

LOCK TABLES `transactions_record` WRITE;
/*!40000 ALTER TABLE `transactions_record` DISABLE KEYS */;
INSERT INTO `transactions_record` VALUES (123,'54588',111,222,45000,789456123,''),(124,'54588',111,222,45000,333,''),(125,'2022-07-09 4:33:52PM',123456,5555,800000,123456789,'48b74457-354b-4e9e-8ab0-ad181c167ced'),(126,'2022-07-09 4:37:55PM',123456,5555,800000,123456789,'d4cda846-6ef7-499a-9a20-6543c368423d'),(127,'2022-07-10 4:50:15AM',456789,123456,50000,123456789,'fcc4c96c-bdae-47ba-9a22-4cbd3fb9218a'),(128,'2022-07-10 4:50:59AM',456789,123456,50000,123456789,'9f6d3af6-9525-4bb2-b27a-6ed828b6bb30'),(129,'2022-07-10 5:03:31AM',456789,123456,50000,123456789,'4c9e52fa-1eb8-4961-90d2-006941ef2c8a'),(130,'2022-07-10 5:06:46AM',456789,123456,50000,123456789,'7bfc7a6c-770a-4926-a80c-b1c4f2dcad08'),(131,'2022-07-10 5:08:29AM',456789,123456,50000,123456789,'077c77ad-15f5-49fd-b100-6c73ec542411'),(132,'2022-07-10 5:28:31AM',456789,123456,100000,123456789,'9ee23656-7944-42f6-b76f-b0ac568ffd13'),(133,'2022-07-10 5:30:27AM',456789,123456,100000,123456789,'828091f9-e7fc-4e93-b8ec-f2793664ba60'),(134,'2022-07-10 5:31:40AM',456789,123456,100000,123456789,'5bee2162-8e05-4a8f-a6d8-c4fb1e1e8abd'),(135,'2022-07-10 5:32:29AM',123456,456789,200000,789456123,'71d93c9d-3d5e-4f34-bc13-c01120c55fb9'),(136,'2022-07-10 5:33:32AM',456789,123456,100000,123456789,'5e6c6056-ccab-4cf9-84f0-ed2927de4915'),(137,'2022-07-10 5:33:32AM',456789,123456,100000,123456789,'5e6c6056-ccab-4cf9-84f0-ed2927de4915'),(138,'2022-07-10 5:33:32AM',456789,123456,200000,123456789,'5e6c6056-ccab-4cf9-84f0-ed2927de4915'),(139,'2022-07-10 10:12:24PM',987654,456789,250000,741852,'f2041cee-6bd6-47c6-83cf-da082872f6cc'),(140,'2022-07-11 12:31:21AM',987654,456789,100000,741852,'50902d41-525d-4c4f-99e0-218a4dcd6e7c'),(141,'2022-07-11 1:30:54AM',987654,456789,20000,741852,'883cce55-04b1-4dbf-82ab-e69d0cdf9bec'),(142,'2022-07-11 5:01:55AM',987654,456789,200000,741852,'e3e7ba47-0024-4933-9c4d-36652b2a6343'),(143,'2022-07-11 2:14:50PM',987654,456789,50000,741852,'bcf2a495-90e2-4051-9aec-24f14382e1cf');
/*!40000 ALTER TABLE `transactions_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `nit` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `numeroCuenta` int NOT NULL,
  PRIMARY KEY (`nit`),
  UNIQUE KEY `idusers_UNIQUE` (`nit`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (741852,'Karla',987654),(789456,'Facundo',444),(123456789,'Jose Lopez',456789),(789456123,'Marcos Lopez',123456);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cuentas_usuario`
--

/*!50001 DROP VIEW IF EXISTS `cuentas_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cuentas_usuario` AS select `us`.`nit` AS `nit`,`us`.`name` AS `name`,`cu`.`numeroCuenta` AS `numeroCuenta`,`cu`.`saldoCuenta` AS `saldoCuenta` from (`users` `us` join `cuentas` `cu` on((`us`.`numeroCuenta` = `cu`.`numeroCuenta`))) */;
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

-- Dump completed on 2022-07-11  9:51:37
