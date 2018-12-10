-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: deliverfy
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Ape_Paterno` varchar(45) DEFAULT NULL,
  `Ape_Materno` varchar(45) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Celular` varchar(12) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `idDireccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`),
  KEY `idDireccion_idx` (`idDireccion`),
  CONSTRAINT `idDireccion` FOREIGN KEY (`idDireccion`) REFERENCES `direccion` (`idDireccion`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Daniela','Martinez','Uzarraga','6144149420','6141200877','danymtzu1198@gmail.com',1),(2,'Clarissa','Lujan','Flores','6144243546','6143254376','clarissa.flores@hotmail.com',2),(3,'Erick','Zuany','Terrazas','6144675432','6142121196','erick33@gmail.com',3),(4,'Alonso','Parra','Espinoza','6142772575','6142672654','alonso.parra@hotmail.com',6),(5,'Mirka ','Andana','Cruz','6142157026','6141617369','mirkaanadana@hotmail.com',7);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `direccion` (
  `idDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_ext` varchar(10) NOT NULL,
  `Numero_int` varchar(10) DEFAULT NULL,
  `Calle` varchar(45) NOT NULL,
  `Colonia` varchar(45) NOT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `CP` varchar(10) DEFAULT NULL,
  `Referencia` varchar(100) DEFAULT NULL,
  `Link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'2904',NULL,'Antonio de Montes','San Felipe','Chihuahua','31203','Casa blanca','http://maps.google.com/maps?hl=es&q=+Antonio de Montes+Chihuahua+2904'),(2,'1321',NULL,'Zafiro','La Joya','Chihuahua','31203','Casa de reja blanca','http://maps.google.com/maps?hl=es&q=+Zafiro+Chihuahua+1321'),(3,'1604',NULL,'13a','Obrera','Chihuahua','31203','Casa de ladrillo','http://maps.google.com/maps?hl=es&q=+13a+Chihuahua+1604'),(4,'4929',NULL,'Calle Arcangel Gabriel','Rincon del arcangel ll','Chihuahua','31203','Casa amarilla','http://maps.google.com/maps?hl=es&q=+Calle Arcangel Gabriel+Chihuahua+4929'),(5,'1301',NULL,'Mina Caldelaria','Villas del Real','Chihuahua','31200','Casa Blanca','http://maps.google.com/maps?hl=es&q=+Mina Caldelaria+Chihuahua+1301'),(6,'508',NULL,'Eucalipto','Las Granjas','Chihuahua','31897','Casa color azul','http://maps.google.com/maps?hl=es&q=+Eucalipto+Chihuahua+508'),(7,'9946','','Valle del Ebro','Caminos del Valle I','Chihuahua','31787','Casa rosa','http://maps.google.com/maps?hl=es&q=+Valle del Ebro+Chihuahua+9946');
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `direccion_BEFORE_INSERT` BEFORE INSERT ON `direccion` FOR EACH ROW BEGIN
 set new.Link= link_maps(new.Calle, new.Numero_ext, new.Ciudad);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `direccion_BEFORE_UPDATE` BEFORE UPDATE ON `direccion` FOR EACH ROW BEGIN
set new.Link= link_maps(new.Calle, new.Numero_ext, new.Ciudad);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Ape_Paterno` varchar(45) DEFAULT NULL,
  `Ape_Materno` varchar(45) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Celular` varchar(12) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `Password` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  UNIQUE KEY `idEmpleado_UNIQUE` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Carlos','Martinez','Caballero','6144149420','6142153899','carlos757575@ymail.com','carlos75','1234'),(2,'Fernanda','Martinez ','Uzarraga','6144149420','6141689006','fermtzu@gmail.com','fermtzu','3332'),(3,'Obed','Andana','Saenz','614747468','6142157026','obed.andana@gmail.com','realizza','1222');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete`
--

DROP TABLE IF EXISTS `paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paquete` (
  `idPaquete` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `Fecha_Entrega` date DEFAULT NULL,
  `idStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPaquete`),
  KEY `idCliente_idx` (`idCliente`),
  KEY `idEmpleado_idx` (`idEmpleado`),
  KEY `idstatus_paquete_idx` (`idStatus`),
  CONSTRAINT `idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `idEmpleado` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete`
--

LOCK TABLES `paquete` WRITE;
/*!40000 ALTER TABLE `paquete` DISABLE KEYS */;
INSERT INTO `paquete` VALUES (7,2,2,'2018-11-12',1),(8,3,3,'2018-12-02',2),(9,4,4,'2018-12-02',3),(10,2,2,'2018-12-03',1),(11,1,1,'2018-12-03',3);
/*!40000 ALTER TABLE `paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_paquete`
--

DROP TABLE IF EXISTS `status_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status_paquete` (
  `idstatus_paquete` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idstatus_paquete`),
  CONSTRAINT `idStatus` FOREIGN KEY (`idstatus_paquete`) REFERENCES `paquete` (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_paquete`
--

LOCK TABLES `status_paquete` WRITE;
/*!40000 ALTER TABLE `status_paquete` DISABLE KEYS */;
INSERT INTO `status_paquete` VALUES (1,'En camino'),(2,'Entregado'),(3,'No entregado');
/*!40000 ALTER TABLE `status_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'deliverfy'
--

--
-- Dumping routines for database 'deliverfy'
--
/*!50003 DROP FUNCTION IF EXISTS `link_maps` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `link_maps`(calle text, mncpio text, num text) RETURNS text CHARSET utf8mb4
BEGIN

declare maps_link text;
declare url1 text;
declare url2 text;
declare url3 text;
declare url text;
declare url4 text;

set maps_link ='http://maps.google.com/maps?hl=es&q=+';
set url1 =concat(maps_link,calle);
set url2=concat('+',num);
set url3 =concat('+',mncpio); 
set url4= concat(url1,url2);
set url= concat(url4,url3);

RETURN url;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_cliente_direccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_cliente_direccion`(nombre text, ape_pat text, ape_mat text, tel text, cel text, correo text,
calle text, num_ext text, num_int text, col text, cp text, cd text, referencia text)
BEGIN
declare idDir int;
declare idCli int;

select max(idDireccion) into idDir
from direccion;

select max(idCliente) into idCli
from cliente;

set idDir= idDir+1;
set idCli= idCli+1;

insert into direccion (idDireccion, Numero_ext, Numero_int, Calle, Colonia, Ciudad, CP, Referencia)
values
(idDir,num_ext, num_int, calle, col, cd, cp, referencia);

insert into cliente (idCliente, Nombre, Ape_Paterno, Ape_Materno, Telefono, Celular, Email, idDireccion)
values
(idCli, nombre, ape_pat, ape_mat, tel, cel, correo, idDir);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_empleado`(nombre text, ape_pat text, ape_mat text, tel text, 
cel text, correo text, usu text, pass text)
BEGIN
insert into empleado(Nombre, Ape_Paterno, Ape_Materno, Telefono,Celular, Email, Usuario, Password)
values
(nombre, ape_pat, ape_mat, tel, cel,correo, usu, pass);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_cliente`(numCliente int)
BEGIN
select a.idCliente, a.Nombre, a.Ape_Paterno, a.Ape_Materno,a.Telefono, a.Celular, a.Email,
b.Calle, b.Numero_ext, b.Colonia, b.CP, b.Ciudad, b.Link
from cliente a
inner join direccion b on a.idDireccion=b.idDireccion
where a.idDireccion= numCliente;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_empleado`(numEmpleado text)
BEGIN
select idEmpleado, Nombre, Ape_Paterno, Ape_Materno, Telefono, Celular, Email, Usuario
from empleado
where idEmpleado= numEmpleado;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_paquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_paquete`(numPaquete int)
BEGIN
select a.Fecha_Entrega, b.Nombre, b.Ape_Paterno, b.Ape_Materno, c.Numero_ext, c.Calle, c.Colonia, c.CP, c.Referencia, c.Link
from paquete a
inner join cliente b on a.idCliente= b.idCliente
inner  join direccion c on b.idDireccion= c.idDireccion
where a.idPaquete= numPaquete; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_paquetes_entregado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_paquetes_entregado`()
BEGIN

select a.idPaquete, b.Nombre, b.Ape_Paterno, b.Ape_Materno, c.status
from paquete a
inner join cliente b on a.idCliente= b.idCliente
inner join status_paquete c on a.idStatus=c.idstatus_paquete
where a.idStatus=2;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_paquetes_no_entregados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_paquetes_no_entregados`()
BEGIN
select a.idPaquete, b.Nombre, b.Ape_Paterno, b.Ape_Materno, c.status
from paquete a
inner join cliente b on a.idCliente= b.idCliente
inner join status_paquete c on a.idStatus=c.idstatus_paquete
where a.idStatus=3;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_paquetes_por_dia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_paquetes_por_dia`()
BEGIN
select a.Fecha_Entrega, b.Nombre, b.Ape_Paterno, b.Ape_Materno, c.Calle, c.Numero_ext, c.Colonia, c.CP, c.Link
from paquete a
inner join cliente b on a.idCliente=b.idCliente
inner join direccion c on c.idDireccion=b.idDireccion
where a.Fecha_Entrega= curdate();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_paquete_en_camino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_paquete_en_camino`()
BEGIN
select a.idPaquete, b.Nombre, b.Ape_Paterno, b.Ape_Materno, c.status
from paquete a
inner join cliente b on a.idCliente= b.idCliente
inner join status_paquete c on a.idStatus=c.idstatus_paquete
where a.idStatus=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-03 19:45:46
