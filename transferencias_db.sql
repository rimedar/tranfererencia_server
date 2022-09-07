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

-- Dump completed on 2022-07-11  9:50:08
