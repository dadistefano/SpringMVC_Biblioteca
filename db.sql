-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bdtpi_grupo8
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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `aut_id` int NOT NULL AUTO_INCREMENT,
  `aut_apellido` varchar(255) DEFAULT NULL,
  `aut_email` varchar(255) DEFAULT NULL,
  `aut_nombre` varchar(255) DEFAULT NULL,
  `nac_id` int DEFAULT NULL,
  PRIMARY KEY (`aut_id`),
  KEY `FK_9eae2hgjc85sdw7taopuh40di` (`nac_id`),
  CONSTRAINT `FK_9eae2hgjc85sdw7taopuh40di` FOREIGN KEY (`nac_id`) REFERENCES `nacionalidades` (`nac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Borges','jlborges@gmail.com','Jorge Luis',1),(2,'Garcia Lorca','fgarcialorca@gmail.com','Federico',10),(3,'Neruda','pneruda@gmail.com','Pablo',2),(4,'Garcia Marquez','ggmarquez@gmail.com','Gabriel',8);
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca` (
  `bib_id` int NOT NULL AUTO_INCREMENT,
  `bib_estado` bit(1) DEFAULT NULL,
  `bib_fecha` varchar(255) DEFAULT NULL,
  `lib_isbn` int DEFAULT NULL,
  PRIMARY KEY (`bib_id`),
  KEY `FK_o3ry1kyhq3307jh3r2w1s5avi` (`lib_isbn`),
  CONSTRAINT `FK_o3ry1kyhq3307jh3r2w1s5avi` FOREIGN KEY (`lib_isbn`) REFERENCES `libros` (`lib_isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca`
--

LOCK TABLES `biblioteca` WRITE;
/*!40000 ALTER TABLE `biblioteca` DISABLE KEYS */;
INSERT INTO `biblioteca` VALUES (1,_binary '','2022-08-04',12323),(2,_binary '','2022-08-04',43545);
/*!40000 ALTER TABLE `biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Dni` int NOT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `FechaNacimiento` datetime DEFAULT NULL,
  `Localidad` varchar(255) DEFAULT NULL,
  `nacionalidad` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Sexo` int DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  PRIMARY KEY (`Dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (34234234,'Perez','paope@outlook.com','San Carlos 829','2008-01-30 00:00:00','Moreno','argentina','Paola',2,45345345),(38950448,'Sanchez','marisan@gmail.com','San José 6662','2000-05-02 00:00:00','San Miguel','Argentina','Maria',2,45234423),(41976003,'Lopez','carlosp@gmail.com','Medellín 342','1999-03-01 00:00:00','Moreno','Argentina','Carlos',1,3234234);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `gen_id` int NOT NULL AUTO_INCREMENT,
  `gen_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Ficción'),(2,'Novela'),(3,'Aventuras'),(4,'Fantastico'),(5,'Policial');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos_x_libro`
--

DROP TABLE IF EXISTS `generos_x_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos_x_libro` (
  `lib_isbn` int NOT NULL,
  `gen_id` int NOT NULL,
  PRIMARY KEY (`lib_isbn`,`gen_id`),
  KEY `FK_a52cyvmguiqbf6seyfvnqwkx2` (`gen_id`),
  CONSTRAINT `FK_a52cyvmguiqbf6seyfvnqwkx2` FOREIGN KEY (`gen_id`) REFERENCES `genero` (`gen_id`),
  CONSTRAINT `FK_gkqnqnwr766x8e2h4njng48ct` FOREIGN KEY (`lib_isbn`) REFERENCES `libros` (`lib_isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos_x_libro`
--

LOCK TABLES `generos_x_libro` WRITE;
/*!40000 ALTER TABLE `generos_x_libro` DISABLE KEYS */;
INSERT INTO `generos_x_libro` VALUES (12323,1),(43545,2);
/*!40000 ALTER TABLE `generos_x_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `lib_isbn` int NOT NULL,
  `lib_cantidad_paginas` int DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `lib_fecha_lanzamiento` datetime DEFAULT NULL,
  `lib_dioma` varchar(255) DEFAULT NULL,
  `lib_titulo` varchar(255) DEFAULT NULL,
  `aut_id` int DEFAULT NULL,
  PRIMARY KEY (`lib_isbn`),
  KEY `FK_ra0vuu683bnvb2jwx3qkahp0w` (`aut_id`),
  CONSTRAINT `FK_ra0vuu683bnvb2jwx3qkahp0w` FOREIGN KEY (`aut_id`) REFERENCES `autores` (`aut_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (12323,146,'Cuento del escritor argentino Jorge Luis Borges publicado en la revista Sur en 1945.','1945-12-31 00:00:00','Español','El Aleph',1),(43545,490,'El amor en los tiempos del cólera es una novela del escritor colombiano Gabriel García Márquez, publicada en 1985. Es una novela dedicada al verdadero amor que perdura y supera las adversidades toda una vida','1985-12-31 00:00:00','Español','El amor en los tiempos del cólera',4);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalidades`
--

DROP TABLE IF EXISTS `nacionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacionalidades` (
  `nac_id` int NOT NULL AUTO_INCREMENT,
  `nac_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidades`
--

LOCK TABLES `nacionalidades` WRITE;
/*!40000 ALTER TABLE `nacionalidades` DISABLE KEYS */;
INSERT INTO `nacionalidades` VALUES (1,'Argentina'),(2,'Chile'),(3,'Estados Unidos'),(4,'Inglaterra'),(5,'Brasil'),(6,'Japón'),(7,'Mexico'),(8,'Colombia'),(9,'Francia'),(10,'España'),(11,'Uruguay');
/*!40000 ALTER TABLE `nacionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CantidadDias` int DEFAULT NULL,
  `FechaPrestamo` varchar(255) DEFAULT NULL,
  `biblioteca` int DEFAULT NULL,
  `Dni` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_7rorthwr5yft7e735yla4va2p` (`biblioteca`),
  KEY `FK_dcuq3sgf4ag8qk6triwcae6q9` (`Dni`),
  CONSTRAINT `FK_7rorthwr5yft7e735yla4va2p` FOREIGN KEY (`biblioteca`) REFERENCES `biblioteca` (`bib_id`),
  CONSTRAINT `FK_dcuq3sgf4ag8qk6triwcae6q9` FOREIGN KEY (`Dni`) REFERENCES `clientes` (`Dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CantidadDias` int DEFAULT NULL,
  `FechaPrestamo` varchar(255) DEFAULT NULL,
  `biblioteca` int DEFAULT NULL,
  `Dni` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_1b2dtyielh6ygfo5kgy79jgh3` (`biblioteca`),
  KEY `FK_6mynue0uc7d50h0ooh9tn81d4` (`Dni`),
  CONSTRAINT `FK_1b2dtyielh6ygfo5kgy79jgh3` FOREIGN KEY (`biblioteca`) REFERENCES `biblioteca` (`bib_id`),
  CONSTRAINT `FK_6mynue0uc7d50h0ooh9tn81d4` FOREIGN KEY (`Dni`) REFERENCES `clientes` (`Dni`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (2,3,'2022-08-06',1,41976003);
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreU` varchar(255) DEFAULT NULL,
  `passU` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-06  4:47:04
