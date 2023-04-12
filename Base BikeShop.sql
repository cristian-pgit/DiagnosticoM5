CREATE DATABASE  IF NOT EXISTS `bikeshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bikeshop`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bikeshop
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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL,
  `brand_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip_code` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alex','Troncoso',123444555,'alex.troncoso@gmail.com','Simepre Viva N° 102','NY','NY',10001),(2,'Barbara','Mori',NULL,'barbara.mori@yahoocom','Simepre Viva N° 103','NY','NY',10001),(3,'Winston','Churchill',123444557,'w.church@gmail.com','Simepre Viva N° 104','NY','NY',10001),(4,'Pedro','Madrigal',NULL,'p.madrigal@yahoo.com','Simepre Viva N° 105','NY','NY',10001),(5,'Isabel','Pantoja',123444559,'isa.pantoja@gmail.com','Simepre Viva N° 106','NY','NY',10001),(6,'Tulio','Triviño',NULL,'tulio.tiviño@yahoo.com','Simepre Viva N° 107','NY','NY',10001),(7,'Maria','Mercedez',123444561,'maria.mercedez@gmail.com','Simepre Viva N° 108','NY','NY',10001),(8,'Marimar','Perez',123444562,'la_costeñita@gmail.com','Simepre Viva N° 109','NY','NY',10001),(9,'Maria','Hernandez',123444555,'la_del_barrio@gmail.com','Simepre Viva N° 110','NY','NY',10001),(10,'Alphonse','Elric',222222111,'haganenorenjustushi@gmail.com','Beverlly Hills N° 102','LA','CA',10001),(11,'Edward','Elric',222333111,'livingarmor@yahoocom','Beverlly Hills N° 103','LA','CA',10001),(12,'Troy','Bolton',222111333,'cantanteamateur@gmail.com','Beverlly Hills N° 104','LA','CA',10001),(13,'Ginna','Davis',22111222,'mesono@yahoo.com','Beverlly Hills','LA','CA',10001),(14,'Grace','Vinsel',222121223,'inventada@gmail.com','Beverlly Hills N° 110','LA','CA',10001),(15,'Bianca','Lepin',222444111,'queseyo@gmail.com','Beverlly Hills N° 121','LA','CA',10001),(16,'Chuck','Norris',333111222,'walkingtexasranger@gmail.com','Noshooting Here St N° 110','Rowlett','TX',10012),(17,'Bob','Wilson',333111223,'bobelconstructor@gmail.com','Noshooting Here St N° 110','Rowlett','TX',10012),(18,'Meredith','Grey',333111224,'greysanathomy@gmail.com','Noshooting Here St N° 110','Rowlett','TX',10012),(19,'Pio','Nono',333111225,'pasteleronono@gmail.com','Noshooting Here St N° 110','Rowlett','TX',10012);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_id` int NOT NULL,
  `item_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `list_price` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  PRIMARY KEY (`order_id`,`item_id`),
  KEY `orderItems_products_idx` (`item_id`),
  CONSTRAINT `orderItems_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `orderItems_products` FOREIGN KEY (`item_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_status` varchar(45) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `required_date` date DEFAULT NULL,
  `shipped_date` date DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order_store_idx` (`store_id`),
  KEY `order_customer_idx` (`customer_id`),
  CONSTRAINT `order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `order_store` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'activo','2023-02-18','2023-03-01','2023-03-05',1,1),(2,2,'activo','2023-02-18','2023-03-01','2023-03-05',1,2),(3,7,'activo','2023-02-19','2023-03-01','2023-03-05',1,3),(4,8,'activo','2023-02-20','2023-03-02','2023-03-06',1,1),(5,5,'activo','2023-02-20','2023-03-02','2023-03-06',1,2),(6,3,'activo','2023-02-20','2023-03-02','2023-03-06',1,1),(7,2,'activo','2023-02-21','2023-03-03','2023-03-07',1,2),(8,1,'activo','2023-02-21','2023-03-03','2023-03-07',1,1),(9,4,'activo','2023-02-21','2023-03-03','2023-03-07',1,3),(10,11,'activo','2023-02-18','2023-03-01','2023-03-05',2,4),(11,12,'activo','2023-02-18','2023-03-01','2023-03-05',2,4),(12,13,'activo','2023-02-19','2023-03-01','2023-03-05',2,5),(13,14,'activo','2023-02-20','2023-03-02','2023-03-06',2,5),(14,15,'activo','2023-02-20','2023-03-02','2023-03-06',2,6),(15,12,'activo','2023-02-20','2023-03-02','2023-03-06',2,6),(16,16,'activo','2023-02-18','2023-03-01','2023-03-05',3,6),(17,16,'activo','2023-02-18','2023-03-01','2023-03-05',3,6),(18,16,'activo','2023-02-19','2023-03-01','2023-03-05',3,7),(19,18,'activo','2023-02-20','2023-03-02','2023-03-06',3,8),(20,19,'activo','2023-02-20','2023-03-02','2023-03-06',3,9);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `model_year` int DEFAULT NULL,
  `list_price` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `product_stock_fk` FOREIGN KEY (`product_id`) REFERENCES `stocks` (`product_id`),
  CONSTRAINT `products_brand` FOREIGN KEY (`product_id`) REFERENCES `brands` (`brand_id`),
  CONSTRAINT `products_category` FOREIGN KEY (`product_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffs` (
  `staff_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `active` varchar(45) DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `staff_manager_idx` (`manager_id`),
  KEY `store_staff_idx` (`store_id`),
  CONSTRAINT `staff_manager` FOREIGN KEY (`manager_id`) REFERENCES `staffs` (`staff_id`),
  CONSTRAINT `store_staff` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES (1,'Rowan','Jeffs','rowan@bikestore.com',12341234,'activo',1,1),(2,'Peter','Pan','ppan@bikestore.com',12341234,'activo',1,1),(3,'Lily','Evans','lievans@bikestore.com',12341234,'activo',1,1),(4,'Peter','Pettigrew','therat@bikestore.com',12341245,'activo',2,4),(5,'Remus','Lupin','licanteacher@bikestore.com',12341245,'activo',2,4),(6,'Tyra','Banks','supermodel@bikestore.com',12341245,'activo',2,4),(7,'Lisa','Lane','whoneedsuperman@bikestore.com',12341678,'activo',3,7),(8,'Gilderoy','Lockhart','cheater@bikestore.com',12341678,'activo',3,7),(9,'Tadeus','Mort','dontknow@bikestore.com',12341678,'activo',3,7);
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `store_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`store_id`,`product_id`),
  KEY `INDEX` (`product_id`),
  CONSTRAINT `stocks_store` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `store_id` int NOT NULL,
  `store_name` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip_code` int DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Baldwin Bikes',12341234,'baldwinst@bikestore.com','Baldwin St. 303','NY','NY',11223),(2,'Santa Cruz Bikes',12341245,'stcruzbikes@bikestore.cl','Sta. Cruz 102','Santa Cruz','CA',95060),(3,'Rowlett Bikes',12341678,'rowlettbikes@bikestore.cl','Rowlett 402','Rowlett','TX',10000);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 20:50:17
