-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mvc
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_user` varchar(255) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `pttt` varchar(10) NOT NULL,
  `ptgh` varchar(10) NOT NULL,
  `tongdon` int(11) NOT NULL,
  `ngaydat` datetime NOT NULL,
  `bill_status` int(11) NOT NULL DEFAULT 0 COMMENT '0:chờ duyệt,1:đã duyệt,Đang giao hàng,2:Đã nhận',
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (40,'tran cong minh','0123456789','minasjfwaeqwa','minh@gmail.com','1','1',56000,'2022-06-23 06:33:49',0,33),(41,'tran cong minh','0123456789','minasjfwaeqwa','minh@gmail.com','1','1',720000,'2022-06-23 14:16:48',0,33),(42,'tran cong minh','0123456789','minasjfwaeqwa','minh@gmail.com','1','1',297000,'2022-06-23 14:34:57',0,33),(43,'tran cong minh','0123456789','minasjfwaeqwa','minh@gmail.com','1','1',900000,'2022-06-23 15:13:51',0,33),(44,'tran cong minh','0123456789','An Giang, Châu Phú','minh@gmail.com','1','1',1999998,'2022-06-25 11:42:38',0,33),(45,'ngoc tram','0123456789','Bạc Liêu','tram@gmail.com','1','1',50000,'2022-06-25 20:58:28',0,35),(46,'ngoc tram','0123456789','ádasdasd','tram@gmail.com','1','1',99000,'2022-06-25 20:59:04',0,35),(47,'ngoc tram','0123456789','bạc liêu','tram@gmail.com','1','1',999999,'2022-06-25 20:59:27',0,35),(48,'ngoc tram','0123456789','Bạc Liêu 2','tram@gmail.com','1','1',1000000,'2022-06-25 21:01:07',2,35),(49,'tran cong minh','0123456789','An Giang, Châu Phú 2','minh@gmail.com','1','1',670000,'2022-06-25 21:07:04',2,33),(50,'ngoc tram','0123456789','Bạc Liêu 2','tram@gmail.com','1','1',4000000,'2022-06-25 21:07:30',1,35),(51,'tran cong minh','0123456789','An Giang, Châu Phú ','minh@gmail.com','1','1',1550000,'2022-06-25 21:36:10',2,33),(52,'tran cong minh','0123456789','An Giang, Châu Phú','minh@gmail.com','1','1',8210999,'2022-07-05 22:11:05',0,33),(53,'tran cong minh','0123456789','An Giang, Châu Phú','minh@gmail.com','1','1',8210999,'2022-07-05 22:11:42',0,33),(54,'tran cong minh','0123456789','An Giang, Châu Phú 2','minh@gmail.com','1','1',3999108,'2022-07-05 22:55:03',0,33),(55,'tran cong minh','0123456789','An Giang, Châu Phú 2','minh@gmail.com','1','1',106000,'2022-07-18 20:50:45',1,33),(56,'tran cong minh','0123456789','An Giang, Châu Phú','minh@gmail.com','1','1',1078000,'2022-07-23 11:40:16',0,33),(57,'tran cong minh','0123456789','An Giang, Châu Phú','minh@gmail.com','1','1',50000,'2022-11-03 14:48:32',0,33),(58,'congminh123','123456789','an giang','congminh@gmail.com','1','1',450000,'2022-11-11 14:34:16',0,41);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Áo Nam'),(25,'Quần Nam'),(26,'Túi Xách'),(27,'Giày'),(28,'Áo Nữ'),(29,'Quần Nữ');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `chude` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (15,'tran cong minh','minhb1910259@student.ctu.edu.vn',0,'Khiếu nại','aaaa','2022-06-27 12:45:04',NULL),(16,'ngoc tram','tram@gmail.com',0,'Khiếu nại 2','hàng qua mắc','2022-06-27 12:48:27',NULL),(17,'ngoc tram','minhb1910259@student.ctu.edu.vn',0,'Khiếu nại','adsad','2022-11-11 14:34:49',NULL);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailbill`
--

DROP TABLE IF EXISTS `detailbill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailbill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_pro` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `idbill` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pro` (`id_pro`),
  KEY `id_user` (`id_user`),
  KEY `idbill` (`idbill`),
  CONSTRAINT `detailbill_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `product` (`id`),
  CONSTRAINT `detailbill_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `detailbill_ibfk_3` FOREIGN KEY (`idbill`) REFERENCES `bill` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailbill`
--

LOCK TABLES `detailbill` WRITE;
/*!40000 ALTER TABLE `detailbill` DISABLE KEYS */;
INSERT INTO `detailbill` VALUES (74,33,28,'item9.jpg','Áo Hồng',56000,1,56000,40),(75,33,20,'item1.jpg','Giày Da Nâu',50000,1,50000,41),(76,33,26,'item7.jpg','Jecket Nữ',670000,1,670000,41),(77,33,21,'item2.jpg','Áo khoác đen',99000,3,297000,42),(78,33,24,'item5.jpg','Jeans Nữ',450000,2,900000,43),(79,33,25,'item6.jpg','Túi LV',999999,2,1999998,44),(80,35,20,'item1.jpg','Giày Da Nâu',50000,1,50000,45),(81,35,21,'item2.jpg','Áo khoác đen',99000,1,99000,46),(82,35,25,'item6.jpg','Túi LV',999999,1,999999,47),(83,35,23,'item4.jpg','Giày Boot Da',1000000,1,1000000,48),(84,33,26,'item7.jpg','Jecket Nữ',670000,1,670000,49),(85,35,23,'item4.jpg','Giày Boot Da',1000000,4,4000000,50),(86,33,20,'item1.jpg','Giày Da Nâu',50000,4,200000,51),(87,33,24,'item5.jpg','Jeans Nữ',450000,3,1350000,51),(88,33,28,'item9.jpg','Áo Hồng',56000,1,56000,52),(89,33,22,'item3.jpg','Áo Khoác Nâu',78000,2,156000,52),(90,33,21,'item2.jpg','Áo khoác đen',99000,21,2079000,52),(92,33,28,'item9.jpg','Áo Hồng',56000,1,56000,53),(93,33,22,'item3.jpg','Áo Khoác Nâu',78000,2,156000,53),(94,33,21,'item2.jpg','Áo khoác đen',99000,21,2079000,53),(95,33,20,'item1.jpg','Giày Da Nâu',50000,2,100000,53),(96,33,26,'item7.jpg','Jecket Nữ',670000,1,670000,53),(97,33,24,'item5.jpg','Jeans Nữ',450000,7,3150000,53),(98,33,25,'item6.jpg','Túi LV',999999,1,999999,53),(99,33,23,'item4.jpg','Giày Boot Da',1000000,1,1000000,53),(100,33,29,'item10.jpg','Quần Jeans Nữ Mới Nhất',999777,4,3999108,54),(101,33,20,'item1.jpg','Giày Da Nâu',50000,1,50000,55),(102,33,28,'item9.jpg','Áo Hồng',56000,1,56000,55),(103,33,22,'item3.jpg','Áo Khoác Nâu',78000,1,78000,56),(104,33,23,'item4.jpg','Giày Boot Da',1000000,1,1000000,56),(105,33,20,'item1.jpg','Giày Da Nâu',50000,1,50000,57),(106,41,24,'item5.jpg','Jeans Nữ',450000,1,450000,58);
/*!40000 ALTER TABLE `detailbill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `iddm` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sale` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `iddm` (`iddm`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`iddm`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (20,'Giày Da Nâu',50000,'item1.jpg',27,0,'Giày tốt',0),(21,'Áo khoác đen',99000,'item2.jpg',28,0,'aaaa',0),(22,'Áo Khoác Nâu',78000,'item3.jpg',28,0,'aaaa',0),(23,'Giày Boot Da',1000000,'item4.jpg',27,0,'aaaa',0),(24,'Jeans Nữ',450000,'item5.jpg',29,0,'aa',0),(25,'Túi LV',999999,'item6.jpg',26,0,'aaa',0),(26,'Jecket Nữ',670000,'item7.jpg',28,0,'aaa',0),(27,'Túi Gucci',88888,'item8.jpg',26,0,'aa',0),(28,'Áo Hồng',56000,'item9.jpg',28,0,'sadasd',0),(29,'Quần Jeans Nữ Mới Nhất',999777,'item10.jpg',29,0,'aa',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sdt` varchar(10) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `role` tinyint(4) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (33,'tran cong minh','minh@gmail.com','$2y$10$6lSDeQNL4ovSPD.C2YWt.OeRBN3T2vx1UepDY.npyALkDNZWRPTB2','0123456789','An Giang, Châu Phú',1,'z3801640371721_9a31d8f8b8ab0a865c0e555894ceb967.jpg','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate voluptas veritatis minima. Quaerat dolorum minus reprehenderit, impedit magni harum fuga id repudiandae! Eaque laboriosam provident obcaecati sit hic et est.'),(35,'ngoc tram','tram@gmail.com','$2y$10$I5xTjSauBhbrtsLNrQpvl.rF5tlXDF20BMwu91tixRShZwvsLYZGy','0123456789','Bạc Liêu',0,'tram.jpg','không có giới thiệu hahaha'),(41,'congminh','congminh@gmail.com','$2y$10$A8BNjBIfXKw4JZLX8RnWruRSOe47FYSSFgAlYEr0qbak4DzEPcU/m','123456789','an giang\n',0,NULL,NULL);
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

-- Dump completed on 2022-11-11 14:37:24
