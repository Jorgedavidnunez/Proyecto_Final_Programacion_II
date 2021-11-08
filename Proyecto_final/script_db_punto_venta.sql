-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: db_punto_venta
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(60) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `NIT` varchar(12) NOT NULL,
  `Genero` bit(1) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `Correo_electronico` varchar(45) NOT NULL,
  `Fecha_ingreso` datetime NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Alberto Alfredo','Molina Hernandez','789544-1',_binary '','+512 12345678','albert88@gmail.com','2021-11-06 15:44:36'),(3,'Claudia Pamela','Santos Morales','456687-1',_binary '\0','+512 88882345','claupdf@gmail.com','2021-11-06 15:45:51'),(4,'Roberto','Gomez Flores','898989-9',_binary '','+512 22000000','gomrob@gmail.com','2021-11-06 15:46:56'),(5,'Josue Alejandro','Cardamomo Mendez','121213-1',_binary '','+513 13131313','correo@gmail.com','2021-11-06 15:48:01'),(6,'Mary Guadalupe ','Garcia Perez','774556-2',_binary '\0','+512 17301730','lupitam@gmail.com','2021-11-06 15:49:10'),(7,'Susan Gabriela','Ramos Rosales','411111-3',_binary '\0','+512 4521963','susgaby@gmail.com','2021-11-06 15:49:58'),(8,'Emerson Ronaldo','Tunche Gomez','744456-2',_binary '','+512 45633178','ronaldo777@gmail.com','2021-11-06 15:50:59'),(9,'Raul Humberto','Santizo Navas','785561-5',_binary '','+512 87466322','ruhmberto12@gmail.com','2021-11-06 15:52:59'),(10,'Peter Benjamin','Parker Paredes','616234-2',_binary '','+512 54387945','peterbparker@gmail.com','2021-11-06 15:54:41'),(11,'Alison Yohana','Elias Tojin','756779-5',_binary '\0','+512 72346635','alyohana@gmail.com','2021-11-06 15:56:11'),(12,'Jonathan Alexander','Xiloj Rosal','755262-5',_binary '','+512 48862478','alexabc123@gmail.com','2021-11-06 15:57:29'),(13,'Jose Giovani ','Chamale Flores ','785623-5',_binary '','+512 79251378','geoxddx@gmail.com','2021-11-06 15:58:39'),(14,'Elizabeth','Merida Leiva','756325-5',_binary '\0','+512 61654622','elileiv@gmail.com','2021-11-06 15:59:41'),(15,'Ernesto Maximiliano ','Dillon Gonzalez','784545-5',_binary '','+512 21654863','maxdillon@gmail.com','2021-11-06 16:00:45'),(16,'Pedro Rafael','Dominguez Flores','732646-2',_binary '','+512 54762641','pedraf@gmail.com','2021-11-06 16:02:04'),(17,'Adriana Abigail','Lemus Tomas','744563-5',_binary '\0','+512 46213168','aalemus@gmail.com','2021-11-06 16:03:32'),(18,'Diego Samuel','Paniagua Martinez','576164-6',_binary '','+512 56465132','paniaguam@gmail.com','2021-11-06 16:04:36'),(19,'Karina Yessica','Mendez Borrayo','463132-2',_binary '\0','+512 46138357','yessik@gmail.com','2021-11-06 16:06:18'),(20,'Henry Adrian','Garcia Gomez','545645-8',_binary '','+512 54879627','hhelsi@gmail.com','2021-11-06 16:07:18'),(21,'Pablo Daniel ','Perez Perez','465535-7',_binary '','+512 46333333','danielp2021@gmail.com','2021-11-06 16:08:23'),(22,'Walter Orlando','Monge Farfan','193636-5',_binary '','+512 12345678','waltermongee81@gmail.com','2021-11-07 11:08:32'),(24,'Selvin Abelador','Figueroa Godinez','123456-7',_binary '','+512 1234568','sfigueroa@gmail.com','2021-11-07 18:31:53');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `idCompra` int NOT NULL AUTO_INCREMENT,
  `No_orden_compra` int NOT NULL,
  `idproveedor` int NOT NULL,
  `Fecha_orden` date NOT NULL,
  `Fecha_ingreso` datetime NOT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `id_Proveedor_Proveedores_idproveedor_idx` (`idproveedor`),
  CONSTRAINT `id_Proveedor_Proveedores_idproveedor` FOREIGN KEY (`idproveedor`) REFERENCES `proveedores` (`idProveedore`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (2,2,2,'2021-11-06','2021-11-06 19:36:59'),(3,3,11,'2021-11-07','2021-11-07 09:05:58'),(4,4,7,'2021-11-07','2021-11-07 09:14:22'),(5,5,11,'2021-11-07','2021-11-07 09:23:08'),(6,6,11,'2021-11-07','2021-11-07 09:24:20'),(7,7,11,'2021-11-07','2021-11-07 09:54:57'),(8,8,11,'2021-11-07','2021-11-07 09:57:34'),(9,9,11,'2021-11-07','2021-11-07 10:24:33'),(11,11,10,'2021-11-07','2021-11-07 13:48:19'),(12,12,11,'2021-11-07','2021-11-07 13:50:31'),(13,13,11,'2021-11-07','2021-11-07 13:51:25'),(14,14,11,'2021-11-07','2021-11-07 13:55:44'),(15,15,4,'2021-11-07','2021-11-07 14:42:24'),(16,16,6,'2021-11-07','2021-11-07 16:45:44'),(17,17,11,'2021-11-07','2021-11-07 16:46:55'),(18,18,11,'2021-11-07','2021-11-07 17:58:30'),(19,19,3,'2021-11-07','2021-11-07 18:35:16'),(20,20,13,'2021-11-07','2021-11-07 19:17:20'),(21,21,14,'2021-11-07','2021-11-07 19:43:07');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras_detalle`
--

DROP TABLE IF EXISTS `compras_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras_detalle` (
  `idCompra_detalle` int NOT NULL AUTO_INCREMENT,
  `idcompra` int NOT NULL,
  `idproducto` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio_costo_unitario` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idCompra_detalle`),
  KEY `id_producto_Productos_id_producto_idx` (`idproducto`),
  KEY `id_compras_Compras_id_producto_idx` (`idcompra`),
  CONSTRAINT `id_compras_Compras_id_compras` FOREIGN KEY (`idcompra`) REFERENCES `compras` (`idCompra`) ON UPDATE CASCADE,
  CONSTRAINT `id_producto_Productos_idproducto` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idProducto`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_detalle`
--

LOCK TABLES `compras_detalle` WRITE;
/*!40000 ALTER TABLE `compras_detalle` DISABLE KEYS */;
INSERT INTO `compras_detalle` VALUES (3,2,34,5,10300.00),(4,2,36,3,10000.00),(5,2,38,10,50.00),(6,2,37,5,1500.00),(7,3,40,10,5000.00),(9,3,35,15,6000.00),(12,4,33,5,5000.00),(13,4,32,3,2000.00),(15,5,32,50,2000.00),(16,6,32,10,2000.00),(17,6,33,10,5000.00),(18,6,36,10,0.00),(19,7,32,2,2000.00),(22,8,32,5,2000.00),(23,9,33,25,5000.00),(25,11,32,5,2000.00),(26,12,39,3,1000.00),(27,13,41,45,25.00),(28,14,32,5,2500.00),(29,15,41,5,60.00),(31,16,32,1,2000.00),(32,16,38,1,75.00),(33,16,40,1,5000.00),(34,17,32,10,2000.00),(35,18,32,25,2000.00),(37,18,40,34,5000.00),(38,19,31,20,1500.00),(39,19,32,100,2000.00),(40,20,31,10,1600.00),(41,20,47,10,20.00),(43,21,31,15,1000.00);
/*!40000 ALTER TABLE `compras_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(60) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `Direccion` varchar(80) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `DPI` varchar(25) NOT NULL,
  `Genero` bit(1) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `id_Puesto` smallint NOT NULL,
  `Fecha_inicio_laborales` date NOT NULL,
  `Fecha_ingreso` datetime NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `id_puestos_Empleados_id_puesto_idx` (`id_Puesto`),
  CONSTRAINT `id_puestos_Empleados_id_puesto` FOREIGN KEY (`id_Puesto`) REFERENCES `puestos` (`Idpuesto`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (2,'Mariela Magaly','Alonzo Roman','Antigua Guatemala','+512 36363636','1234 12345 1234',_binary '\0','1995-06-15',8,'2020-02-04','2021-11-06 16:19:13'),(3,'Jeffrey Jose','Pineda Mancilla','Ciudad Vieja','+512 5464866','8888 88888 8888',_binary '','2002-08-12',21,'2021-10-12','2021-11-06 16:21:56'),(5,'Rudy Guillermo','Amezquita Morales','Ciudad de Guatemala ','+512 65649886','1212 12121 1212',_binary '','1998-06-01',11,'2020-09-17','2021-11-06 16:23:56'),(6,'Rodrigo Otoniel','Orellana Lozano','Santiago Sacatepequez','+512 97894624','5555 55555 5555',_binary '','2000-02-16',10,'2021-01-08','2021-11-06 16:25:31'),(7,'Keila Adriana','Lorenzana Heuber','Antigua Guatemala','+512 98796526','9999 99999 9999',_binary '\0','1999-09-14',20,'2021-01-04','2021-11-06 16:27:43'),(8,'Mario Federico','Flores Rosales','San Lucas Sacatepequez','+512 79875354','5252 52525 5252',_binary '','1997-03-26',12,'2021-05-20','2021-11-06 16:29:58'),(9,'Sandra Lisseth','Sandoval Dieguez','Ciudad de Guatemala','+512 79864562','8975 64321 5462',_binary '\0','2001-03-14',14,'2021-02-17','2021-11-06 16:32:30'),(10,'Cintia Gissele','Castillo Armas','Ciudad Vieja','+512 6546588','7654 24642 6456',_binary '\0','1992-08-26',14,'2021-11-05','2021-11-06 16:34:54'),(11,'Jackeline Stephany','Gomez Perez','Antigua Guatemala','+512 8795412','7851 31548 6763',_binary '\0','1998-05-05',23,'2020-10-28','2021-11-06 16:36:34'),(12,'Mynor Augusto','Toquer Salux','Antigua Guatemala','+512 56465313','7564 13587 6566',_binary '','1985-01-01',18,'2020-03-09','2021-11-06 16:38:54'),(14,'Juan Alonzo','Orellana Hernandez ','Chimaltenango Guatemala','+512 6454111','7445 36459 4564',_binary '','2000-02-09',13,'2020-08-20','2021-11-06 16:42:10'),(15,'Candy Andrea','Solares Paredes','Ciudad de Guatemala ','+512 67642358','7747 77755 5555',_binary '\0','1993-09-15',25,'2020-07-03','2021-11-06 16:42:39'),(16,'Antonio Adonis','Pedrales Canales','Ciudad Vieja','+512 64138632','5454 54545 5454',_binary '','1996-05-15',15,'2020-12-28','2021-11-06 16:44:19'),(17,'Hugo Adrian','Santos Satix','Ciudad de Guatemala','+512 5641656','8941 65463 5544',_binary '','1995-02-14',24,'2021-01-13','2021-11-06 16:46:30'),(18,'Eduardo Estuardo','Astundia Chock','San Pedro Sacatepequez','+512 46455555','4641 34544 1111',_binary '','1998-09-07',17,'2021-10-13','2021-11-06 16:49:28'),(19,'Walter Orlamdo','Monge Farfan','Antigua Guatemala','+512 12345678','1234 12345 1234',_binary '','2002-02-03',14,'2021-11-07','2021-11-07 16:45:03'),(20,'Marlon','Paxel Sian ','Antigua Guatemala','+512 12345678','1234 12345 1234',_binary '','2002-03-15',10,'2021-11-05','2021-11-07 18:31:05'),(21,'Joel Mario','Urizar Sotos','Antigua Guatemala','+512 12345678','1234 12345 1234',_binary '','2002-03-15',29,'2021-11-04','2021-11-07 19:14:42'),(22,'Marlon Alexander','Morales Godoy','Guatemala Antigua','+502 56895866','1277 12345 1555',_binary '','1998-02-13',30,'2021-11-07','2021-11-07 19:38:59');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` smallint NOT NULL AUTO_INCREMENT,
  `Marca` varchar(50) NOT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (8,'Apple'),(9,'Samsung'),(10,'DELL'),(11,'ASUS'),(12,'Toshiba'),(13,'Xiaomi'),(14,'Huawei'),(15,'Hewlett Packard'),(16,'Panasonic'),(17,'Sony'),(18,'Lenovo'),(19,'Black and Decker'),(20,'BenQ'),(21,'Motorola'),(22,'EPSON'),(23,'Nokia'),(24,'Amazon'),(25,'Whirpool'),(28,'Microsoft'),(29,'Radeon'),(30,'Casio'),(31,'Canon'),(35,'Oster'),(36,'Frigidaire');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_dinamico`
--

DROP TABLE IF EXISTS `menu_dinamico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_dinamico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `idpadre` int DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idpadre_idx` (`idpadre`),
  CONSTRAINT `idpadre` FOREIGN KEY (`idpadre`) REFERENCES `menu_dinamico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_dinamico`
--

LOCK TABLES `menu_dinamico` WRITE;
/*!40000 ALTER TABLE `menu_dinamico` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_dinamico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `Producto` varchar(50) NOT NULL,
  `idMarca` smallint NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Imagen` varchar(30) NOT NULL,
  `Precio_costo` decimal(8,2) NOT NULL,
  `Precio_venta` decimal(8,2) NOT NULL,
  `Existencia` int NOT NULL,
  `Fecha_ingreso` datetime NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `id_marca_Marcas_id_marca_idx` (`idMarca`),
  CONSTRAINT `id_marca_Marcas_id_marca` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (31,'Impresora',31,'Impresora tinta continua','/Pro_final/i/can.jpg',1000.00,1250.00,45,'2021-11-07 16:15:03'),(32,'Tablet',14,'Tableta ultima generacion','/Pro_final/i/laele.jpg',2000.00,2500.00,100,'2021-11-06 17:15:09'),(33,'MacBook Pro',8,'Color plateado con negro','/Pro_final/i/Macb.jpg',5500.00,6875.00,29,'2021-11-06 17:20:04'),(34,'Smartv',9,'alta resolucion','/Pro_final/i/tv.png',10300.00,12875.00,80,'2021-11-07 16:37:32'),(35,'Smart Watch',9,'Color negro y azul','/Pro_final/i/wtch.png',6000.00,7500.00,30,'2021-11-06 17:23:10'),(36,'Lavadora',25,'Color blanco','/Pro_final/i/lvd.png',10000.00,12500.00,26,'2021-11-07 16:37:58'),(37,'Redmi note 10 S',13,'Liberado','/Pro_final/i/rdmi.jpg',1500.00,1875.00,30,'2021-11-06 17:27:25'),(38,'Estuche',30,'Estuche para telefono','/Pro_final/i/estu.jpg',75.00,93.75,161,'2021-11-06 17:28:20'),(39,'Audifonos Over Ear',17,'Inlaambricos','/Pro_final/i/as.png',1000.00,1250.00,142,'2021-11-06 17:32:12'),(40,'Play Station 5',17,'PS5','/Pro_final/i/PS5.png',5000.00,6250.00,205,'2021-11-06 17:33:48'),(41,'Mouse',10,'Inalambrico','/Pro_final/i/mouses.jpg',60.00,75.00,140,'2021-11-07 11:50:00'),(42,'Ventilador',11,'Ventilador','/Pro_final/i/ven.jfif',175.00,250.00,45,'2021-11-07 12:09:35'),(46,'Freidora',35,'freidora de aire','/Pro_final/i/oster.png',4500.00,6000.00,48,'2021-11-07 19:01:30'),(47,'pez',20,'pez dorado','/Pro_final/i/pez.jpg',20.00,25.00,18,'2021-11-07 19:02:30'),(48,'Videojuego',36,'Call of Duty ','/Pro_final/i/COD.jpg',400.00,520.00,50,'2021-11-07 19:33:14'),(49,'Refrigeradora',36,'Color plateado','/Pro_final/i/refrii.png',6500.00,7250.00,56,'2021-11-07 19:35:28'),(50,'secadora',36,'Secadora industrial','/Pro_final/i/sec.png',5000.00,7800.00,10,'2021-11-07 19:51:02'),(52,'Bocina',24,'Bocina inalambrica','/Pro_final/i/boci.jpg',300.00,500.00,66,'2021-11-07 20:08:03');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedore` int NOT NULL AUTO_INCREMENT,
  `Proveedor` varchar(60) NOT NULL,
  `Nit` varchar(12) NOT NULL,
  `Direccion` varchar(80) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  PRIMARY KEY (`idProveedore`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (2,'Foxconn','121212-1','Taipei Taiwan','+081 5452314884'),(3,'Palmeras SA','151515-5','Puerto Barrios Guatemala','+512 8979889'),(4,'El Nopal SA','123322-5','Tijuana Mexico','+512 54622014'),(5,'Tecnologias Guatemala','202120-2','Ciudad de Guatemala Guatemala','+512 15151515'),(6,'Proveedoras Unidas','451235-5','San Lucas Sacatepequez Guatemala','+512 51215121'),(7,'Industrias MB','888404-4','Antigua Guatemala Guatemala','+512 68785632'),(8,'Fousec','000000-0','San Lucas Sacatepequez Guatemala','+512 12357853'),(9,'Amazon','312423-2','Washington Estados Unidos','+001 784563542'),(10,'Volcanes SA','745621-5','Antigua Guatemala','+512 87222222'),(11,'Proveedora SOL','784543-9','Villa Canales Guatemala','+512 68753333'),(12,'Ester','123475-8','Guatemala El Papelio','+512 1234567'),(13,'Acuarios','123456-8','Guatemala Ciudad','+512 1234567'),(14,'Razor','785565-8','Guatemala','+502 55667788');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puestos`
--

DROP TABLE IF EXISTS `puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puestos` (
  `Idpuesto` smallint NOT NULL AUTO_INCREMENT,
  `Puesto` varchar(50) NOT NULL,
  PRIMARY KEY (`Idpuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;
INSERT INTO `puestos` VALUES (8,'Gerente'),(10,'Tecnico'),(11,'Ingeniero'),(12,'Contador'),(13,'Secretario'),(14,'Vendedor'),(15,'Reparacion'),(16,'Vendedor de campo'),(17,'Conserje'),(18,'Seguridad'),(19,'Administrador'),(20,'Recursos Humanos'),(21,'Bodega'),(22,'Supervisor de Marketing'),(23,'Logistica'),(24,'Comunicaciones'),(25,'Recepcion'),(26,'Tecnico'),(29,'Arquitecto'),(30,'Gerente');
/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuario` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `usuario_generado_automaticamente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('10','Luis Fernando','Paxel Cojolon','prueba','LuiPaxC10@onitech.com'),('15','Marlon','Morales','1234','MarMorC15@onitech.com'),('2','Walter','Monge','123','WalMonC2@onitech.com'),('20','Jorge David','Nunez Laz','hola','JorNunC20@onitech.com'),('30','Walter Orlando','Monge Farfan','prueba123','WalMonC30@onitech.com'),('40','Jose Pablo','Godoy Mendoza','contra','JosGodC40@onitech.com'),('44','Sebastian','Perez','mouse','SebPerC44@onitech.com'),('50','Oliver Jorgen','Kies','compu','OliKieC50@onitech.com'),('99','Adriana Elizabeth','Merida Ley','facil','AdrMerC99@onitech.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idVenta` int NOT NULL AUTO_INCREMENT,
  `No_factura` int NOT NULL,
  `Serie` char(1) NOT NULL,
  `Fecha_factura` date NOT NULL,
  `Idcliente` int NOT NULL,
  `idempleado` int NOT NULL,
  `Fecha_ingreso` datetime NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `id_cliente_Clientes_id_cliente_idx` (`Idcliente`),
  KEY `id_empleado_Empleado_id_empleado_idx` (`idempleado`),
  CONSTRAINT `id_cliente_Clientes_id_cliente` FOREIGN KEY (`Idcliente`) REFERENCES `clientes` (`idCliente`) ON UPDATE CASCADE,
  CONSTRAINT `id_empleado_Empleado_id_empleado` FOREIGN KEY (`idempleado`) REFERENCES `empleados` (`idEmpleado`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (2,2,'A','2021-11-06',8,12,'2021-11-06 19:02:13'),(4,4,'A','2021-11-07',16,11,'2021-11-07 09:53:02'),(5,5,'A','2021-11-07',11,11,'2021-11-07 10:09:22'),(8,6,'A','2021-11-07',11,11,'2021-11-07 10:58:27'),(9,7,'A','2021-11-07',22,16,'2021-11-07 11:09:46'),(10,8,'A','2021-11-07',22,11,'2021-11-07 16:14:46'),(12,10,'A','2021-11-07',11,11,'2021-11-07 16:46:37'),(13,11,'A','2021-11-07',24,19,'2021-11-07 18:34:13'),(14,12,'A','2021-11-07',24,21,'2021-11-07 19:16:00'),(15,13,'A','2021-11-07',21,22,'2021-11-07 19:40:16');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_detalle`
--

DROP TABLE IF EXISTS `ventas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_detalle` (
  `idVentas_detalle` bigint NOT NULL AUTO_INCREMENT,
  `idVenta` int NOT NULL,
  `idProducto` int NOT NULL,
  `Cantidad` varchar(45) NOT NULL,
  `Precio_unitario` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idVentas_detalle`),
  KEY `id_venta_Ventas_id_venta_idx` (`idVenta`),
  KEY `id_producto_Productos_id_producto_idx` (`idProducto`),
  CONSTRAINT `id_producto_Productos_id_producto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON UPDATE CASCADE,
  CONSTRAINT `id_venta_Ventas_id_venta` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVenta`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_detalle`
--

LOCK TABLES `ventas_detalle` WRITE;
/*!40000 ALTER TABLE `ventas_detalle` DISABLE KEYS */;
INSERT INTO `ventas_detalle` VALUES (2,2,33,'2',6250.00),(3,2,37,'1',1500.00),(7,4,39,'1',1000.00),(9,5,36,'5',8000.00),(12,8,40,'40',5000.00),(14,8,32,'20',2000.00),(15,9,32,'10',2000.00),(18,10,32,'70',2000.00),(20,12,32,'20',2000.00),(21,13,31,'5',1500.00),(22,13,32,'10',2000.00),(23,14,47,'2',15.00),(24,14,31,'5',1500.00),(26,15,32,'16',2000.00),(27,15,33,'1',5000.00);
/*!40000 ALTER TABLE `ventas_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-07 20:23:20
