-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: e_commerces_page
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (246,2,3,1,'2024-06-10 11:55:20','2024-06-13 17:48:52'),(247,2,88,1,'2024-06-13 17:48:25',NULL),(262,6,3,1,'2024-06-15 07:41:11',NULL),(264,6,4,1,'2024-06-15 10:00:49',NULL),(269,8,1,1,'2024-06-15 10:51:10',NULL),(270,8,24,1,'2024-06-15 10:59:51',NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_item` mediumtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `order_ibfk_1` (`user_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,2,'\"[{\\\"product_id\\\":4,\\\"name\\\":\\\"Dress\\\",\\\"category\\\":\\\"Clothing\\\",\\\"description\\\":\\\"A beautiful dress for special occasions.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/612\\/612\\/xif0q\\/dress\\/7\\/f\\/c\\/xs-a1204-sheetal-associates-original-imag9xt9czmjmzrz-bb.jpeg?q=70\\\",\\\"price\\\":400,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":false,\\\"quantity\\\":1}]\"','2023-08-07 13:59:25',NULL),(2,2,'\"[{\\\"product_id\\\":6,\\\"name\\\":\\\"Apples\\\",\\\"category\\\":\\\"Grocery\\\",\\\"description\\\":\\\"Fresh and juicy apples.\\\",\\\"img_url\\\":\\\"https:\\/\\/www.bigbasket.com\\/media\\/uploads\\/p\\/l\\/40033824_21-fresho-apple-red-delicious-regular.jpg\\\",\\\"price\\\":100,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":false,\\\"quantity\\\":1}]\"','2023-08-07 13:59:56',NULL),(3,2,'\"[{\\\"product_id\\\":3,\\\"name\\\":\\\"Bananas\\\",\\\"category\\\":\\\"Grocery\\\",\\\"description\\\":\\\"Fresh and delicious bananas.\\\",\\\"img_url\\\":\\\"https:\\/\\/media.cnn.com\\/api\\/v1\\/images\\/stellar\\/prod\\/120604032828-fresh-ripe-bananas.jpg?q=w_3590,h_2774,x_0,y_0,c_fill\\\",\\\"price\\\":51,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":1},{\\\"product_id\\\":5,\\\"name\\\":\\\"Laptop\\\",\\\"category\\\":\\\"Electronics\\\",\\\"description\\\":\\\"A high-performance laptop for work and gaming.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/312\\/312\\/xif0q\\/computer\\/b\\/d\\/i\\/-original-imagzhefhc84rmbf.jpeg?q=70\\\",\\\"price\\\":90000,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":1}]\"','2023-08-07 14:08:06',NULL),(4,3,'\"[{\\\"product_id\\\":1,\\\"name\\\":\\\"T-Shirt\\\",\\\"category\\\":\\\"Clothing\\\",\\\"description\\\":\\\"A comfortable and stylish t-shirt.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/832\\/832\\/xif0q\\/t-shirt\\/7\\/q\\/w\\/s-all-rbc-white-one-nb-nicky-boy-original-imagjz5bgpmhcaea.jpeg?q=70\\\",\\\"price\\\":1901,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":1}]\"','2023-08-07 12:25:31',NULL),(5,2,'\"[{\\\"product_id\\\":4,\\\"name\\\":\\\"Dress\\\",\\\"category\\\":\\\"Clothing\\\",\\\"description\\\":\\\"A beautiful dress for special occasions.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/612\\/612\\/xif0q\\/dress\\/7\\/f\\/c\\/xs-a1204-sheetal-associates-original-imag9xt9czmjmzrz-bb.jpeg?q=70\\\",\\\"price\\\":400,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":1}]\"','2023-08-07 14:23:41',NULL),(6,2,'\"[{\\\"product_id\\\":1,\\\"name\\\":\\\"T-Shirt\\\",\\\"category\\\":\\\"Clothing\\\",\\\"description\\\":\\\"A comfortable and stylish t-shirt.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/832\\/832\\/xif0q\\/t-shirt\\/7\\/q\\/w\\/s-all-rbc-white-one-nb-nicky-boy-original-imagjz5bgpmhcaea.jpeg?q=70\\\",\\\"price\\\":1901,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":2}]\"','2023-08-09 13:53:10',NULL),(7,3,'\"[{\\\"product_id\\\":5,\\\"name\\\":\\\"Laptop\\\",\\\"category\\\":\\\"Electronics\\\",\\\"description\\\":\\\"A high-performance laptop for work and gaming.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/312\\/312\\/xif0q\\/computer\\/b\\/d\\/i\\/-original-imagzhefhc84rmbf.jpeg?q=70\\\",\\\"price\\\":90000,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":1}]\"','2023-08-11 08:12:26',NULL),(8,3,'\"[{\\\"product_id\\\":80,\\\"name\\\":\\\"Eggs \\\",\\\"category\\\":\\\"Grocery\\\",\\\"description\\\":\\\"Eggs for low cost\\\",\\\"img_url\\\":\\\"https:\\/\\/www.licious.in\\/blog\\/wp-content\\/uploads\\/2022\\/01\\/eggs-1-1024x1024.jpg\\\",\\\"price\\\":60,\\\"created_at\\\":\\\"2023-08-09 15:33:19\\\",\\\"updated_at\\\":\\\"2023-08-11 11:07:36\\\",\\\"cartItem\\\":true,\\\"quantity\\\":1},{\\\"product_id\\\":17,\\\"name\\\":\\\"Smart TV\\\",\\\"category\\\":\\\"Electronics\\\",\\\"description\\\":\\\"High-definition smart TV with streaming capabilities.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/312\\/312\\/xif0q\\/television\\/h\\/o\\/h\\/cq4300fhdab-compaq-original-imaggarg46b6vshe.jpeg?q=70\\\",\\\"price\\\":800000,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":10},{\\\"product_id\\\":13,\\\"name\\\":\\\"Sneakers\\\",\\\"category\\\":\\\"Clothing\\\",\\\"description\\\":\\\"Stylish sneakers for everyday comfort.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/612\\/612\\/xif0q\\/shoe\\/j\\/f\\/e\\/-original-imaggcb2zh9kwuga.jpeg?q=70\\\",\\\"price\\\":8000,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":10}]\"','2023-08-11 08:12:51',NULL),(9,2,'\"[{\\\"product_id\\\":2,\\\"name\\\":\\\"Smartphone\\\",\\\"category\\\":\\\"Electronics\\\",\\\"description\\\":\\\"A powerful smartphone with great features.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/312\\/312\\/xif0q\\/mobile\\/c\\/t\\/4\\/-original-imagrqg4ahf36sng.jpeg?q=70\\\",\\\"price\\\":47600,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":\\\"2023-08-11 13:45:47\\\",\\\"cartItem\\\":true,\\\"quantity\\\":4},{\\\"product_id\\\":4,\\\"name\\\":\\\"Dress\\\",\\\"category\\\":\\\"Clothing\\\",\\\"description\\\":\\\"A beautiful dress for special occasions.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/612\\/612\\/xif0q\\/dress\\/7\\/f\\/c\\/xs-a1204-sheetal-associates-original-imag9xt9czmjmzrz-bb.jpeg?q=70\\\",\\\"price\\\":1600,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":4}]\"','2024-01-06 07:29:37',NULL),(10,2,'\"[{\\\"product_id\\\":10,\\\"name\\\":\\\"Sweater\\\",\\\"category\\\":\\\"Clothing\\\",\\\"description\\\":\\\"Cozy sweater for chilly days.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/612\\/612\\/xif0q\\/shrug\\/2\\/z\\/n\\/m-1-lc12171018rl-rigo-original-imaggrfvnhgngkbg.jpeg?q=70\\\",\\\"price\\\":600,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":false,\\\"quantity\\\":1}]\"','2024-01-06 07:36:19',NULL),(11,2,'\"[{\\\"product_id\\\":3,\\\"name\\\":\\\"Bananas\\\",\\\"category\\\":\\\"Grocery\\\",\\\"description\\\":\\\"Fresh and delicious bananas\\\",\\\"img_url\\\":\\\"https:\\/\\/media.cnn.com\\/api\\/v1\\/images\\/stellar\\/prod\\/120604032828-fresh-ripe-bananas.jpg?q=w_3590,h_2774,x_0,y_0,c_fill\\\",\\\"price\\\":336,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":\\\"2023-08-09 17:27:57\\\",\\\"cartItem\\\":true,\\\"quantity\\\":6},{\\\"product_id\\\":4,\\\"name\\\":\\\"Dress\\\",\\\"category\\\":\\\"Clothing\\\",\\\"description\\\":\\\"A beautiful dress for special occasions.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/612\\/612\\/xif0q\\/dress\\/7\\/f\\/c\\/xs-a1204-sheetal-associates-original-imag9xt9czmjmzrz-bb.jpeg?q=70\\\",\\\"price\\\":400,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":1}]\"','2024-01-06 07:38:18',NULL),(12,2,'\"[{\\\"product_id\\\":5,\\\"name\\\":\\\"Laptop\\\",\\\"category\\\":\\\"Electronics\\\",\\\"description\\\":\\\"A high-performance laptop for work and gaming.\\\",\\\"img_url\\\":\\\"https:\\/\\/rukminim2.flixcart.com\\/image\\/312\\/312\\/xif0q\\/computer\\/b\\/d\\/i\\/-original-imagzhefhc84rmbf.jpeg?q=70\\\",\\\"price\\\":180000,\\\"created_at\\\":\\\"2023-08-02 14:49:53\\\",\\\"updated_at\\\":null,\\\"cartItem\\\":true,\\\"quantity\\\":2}]\"','2024-06-10 11:55:43',NULL),(13,6,'[{\"product_id\":3,\"name\":\"Bananas\",\"category\":\"Grocery\",\"description\":\"Fresh and delicious bananas\",\"img_url\":\"https://media.cnn.com/api/v1/images/stellar/prod/120604032828-fresh-ripe-bananas.jpg?q=w_3590,h_2774,x_0,y_0,c_fill\",\"price\":100,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":\"2024-06-14T15:28:54.000Z\",\"cartItem\":true,\"quantity\":2},{\"totalPrice\":\"190.00\"}]','2024-06-14 17:39:17',NULL),(14,6,'[{\"product_id\":3,\"name\":\"Banana\",\"category\":\"Grocery\",\"description\":\"Fresh and delicious bananas\",\"img_url\":\"https://media.cnn.com/api/v1/images/stellar/prod/120604032828-fresh-ripe-bananas.jpg?q=w_3590,h_2774,x_0,y_0,c_fill\",\"price\":50,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":\"2024-06-14T15:37:15.000Z\",\"cartItem\":true,\"quantity\":1},{\"totalPrice\":\"47.50\"}]','2024-06-14 17:41:04',NULL),(15,6,'[{\"product_id\":3,\"name\":\"Banana\",\"category\":\"Grocery\",\"description\":\"Fresh and delicious bananas\",\"img_url\":\"https://media.cnn.com/api/v1/images/stellar/prod/120604032828-fresh-ripe-bananas.jpg?q=w_3590,h_2774,x_0,y_0,c_fill\",\"price\":50,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":\"2024-06-14T15:37:15.000Z\",\"cartItem\":true,\"quantity\":1},{\"totalPrice\":\"47.50\"}]','2024-06-14 17:41:06',NULL),(16,6,'[{\"product_id\":5,\"name\":\"Laptop\",\"category\":\"Electronics\",\"description\":\"A high-performance laptop for work and gaming.\",\"img_url\":\"https://rukminim2.flixcart.com/image/312/312/xif0q/computer/b/d/i/-original-imagzhefhc84rmbf.jpeg?q=70\",\"price\":180000,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":null,\"cartItem\":true,\"quantity\":2},{\"totalPrice\":\"342000.00\"}]','2024-06-14 17:41:21',NULL),(17,6,'[{\"product_id\":5,\"name\":\"Laptop\",\"category\":\"Electronics\",\"description\":\"A high-performance laptop for work and gaming.\",\"img_url\":\"https://rukminim2.flixcart.com/image/312/312/xif0q/computer/b/d/i/-original-imagzhefhc84rmbf.jpeg?q=70\",\"price\":180000,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":null,\"cartItem\":true,\"quantity\":2},{\"totalPrice\":\"342000.00\"}]','2024-06-14 17:41:23',NULL),(18,6,'[{\"product_id\":6,\"name\":\"Apples-red\",\"category\":\"Grocery\",\"description\":\"Fresh and juicy apples.\",\"img_url\":\"https://www.bigbasket.com/media/uploads/p/l/40033824_21-fresho-apple-red-delicious-regular.jpg\",\"price\":100,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":\"2024-06-14T17:41:35.000Z\",\"cartItem\":true,\"quantity\":1},{\"totalPrice\":\"95.00\"}]','2024-06-14 17:43:49',NULL),(19,6,'[{\"product_id\":3,\"name\":\"Banana\",\"category\":\"Grocery\",\"description\":\"Fresh and delicious bananas\",\"img_url\":\"https://media.cnn.com/api/v1/images/stellar/prod/120604032828-fresh-ripe-bananas.jpg?q=w_3590,h_2774,x_0,y_0,c_fill\",\"price\":50,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":\"2024-06-14T15:37:15.000Z\",\"cartItem\":true,\"quantity\":1},{\"totalPrice\":\"47.50\"}]','2024-06-15 07:17:46',NULL),(20,6,'[{\"product_id\":6,\"name\":\"Apples-red\",\"category\":\"Grocery\",\"description\":\"Fresh and juicy apples.\",\"img_url\":\"https://www.bigbasket.com/media/uploads/p/l/40033824_21-fresho-apple-red-delicious-regular.jpg\",\"price\":200,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":\"2024-06-14T17:41:35.000Z\",\"cartItem\":true,\"quantity\":2},{\"totalPrice\":\"380.00\"}]','2024-06-15 10:00:34',NULL),(21,8,'[{\"product_id\":3,\"name\":\"Banana\",\"category\":\"Grocery\",\"description\":\"Fresh and delicious bananas\",\"img_url\":\"https://media.cnn.com/api/v1/images/stellar/prod/120604032828-fresh-ripe-bananas.jpg?q=w_3590,h_2774,x_0,y_0,c_fill\",\"price\":100,\"created_at\":\"2023-08-02T09:19:53.000Z\",\"updated_at\":\"2024-06-14T15:37:15.000Z\",\"cartItem\":true,\"quantity\":2},{\"totalPrice\":\"190.00\"}]','2024-06-15 10:51:04',NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(390) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category` varchar(390) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `img_url` text,
  `price` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'T-Shirt','Clothing','A comfortable and stylish t-shirt.','https://rukminim2.flixcart.com/image/832/832/xif0q/t-shirt/7/q/w/s-all-rbc-white-one-nb-nicky-boy-original-imagjz5bgpmhcaea.jpeg?q=70',1901,'2023-08-02 09:19:53',NULL),(3,'Banana','Grocery','Fresh and delicious bananas','https://media.cnn.com/api/v1/images/stellar/prod/120604032828-fresh-ripe-bananas.jpg?q=w_3590,h_2774,x_0,y_0,c_fill',50,'2023-08-02 09:19:53','2024-06-14 15:37:15'),(4,'Dress','Clothing','A beautiful dress for special occasions.','https://rukminim2.flixcart.com/image/612/612/xif0q/dress/7/f/c/xs-a1204-sheetal-associates-original-imag9xt9czmjmzrz-bb.jpeg?q=70',400,'2023-08-02 09:19:53',NULL),(5,'Laptop','Electronics','A high-performance laptop for work and gaming.','https://rukminim2.flixcart.com/image/312/312/xif0q/computer/b/d/i/-original-imagzhefhc84rmbf.jpeg?q=70',90000,'2023-08-02 09:19:53',NULL),(6,'Apples-red','Grocery','Fresh and juicy apples.','https://www.bigbasket.com/media/uploads/p/l/40033824_21-fresho-apple-red-delicious-regular.jpg',100,'2023-08-02 09:19:53','2024-06-14 17:41:35'),(7,'Jeans','Clothing','Classic denim jeans for everyday wear.','https://rukminim2.flixcart.com/image/612/612/xif0q/jean/l/j/e/-original-imagjcgcwfhbdhjp.jpeg?q=70',550,'2023-08-02 09:19:53',NULL),(8,'Headphones','Electronics','High-quality headphones for immersive sound.','https://rukminim2.flixcart.com/image/612/612/xif0q/headphone/g/y/i/-original-imagr6pfsnrp6mzy.jpeg?q=70',980,'2023-08-02 09:19:53',NULL),(10,'Sweater','Clothing','Cozy sweater for chilly days.','https://rukminim2.flixcart.com/image/612/612/xif0q/shrug/2/z/n/m-1-lc12171018rl-rigo-original-imaggrfvnhgngkbg.jpeg?q=70',600,'2023-08-02 09:19:53',NULL),(11,'Wireless Mouse','Electronics','Ergonomic wireless mouse for smooth control.','https://rukminim2.flixcart.com/image/416/416/kw9krrk0/mouse/v/p/h/toad-13-portronics-original-imag8zbqqkgmb9d6.jpeg?q=70',305,'2023-08-02 09:19:53','2023-08-24 11:31:37'),(13,'Sneakers','Clothing','Stylish sneakers for everyday comfort.','https://rukminim2.flixcart.com/image/612/612/xif0q/shoe/j/f/e/-original-imaggcb2zh9kwuga.jpeg?q=70',800,'2023-08-02 09:19:53',NULL),(16,'Jacket','Clothing','Stylish jacket for cold weather.','https://rukminim2.flixcart.com/image/612/612/xif0q/sweatshirt/w/d/j/m-6017-triptee-original-imaghhsjayqp6vum.jpeg?q=70',705,'2023-08-02 09:19:53','2023-08-09 13:23:41'),(17,'Smart TV','Electronics','High-definition smart TV with streaming capabilities.','https://rukminim2.flixcart.com/image/312/312/xif0q/television/h/o/h/cq4300fhdab-compaq-original-imaggarg46b6vshe.jpeg?q=70',80000,'2023-08-02 09:19:53',NULL),(19,'Sweatshirt','Clothing','Warm and comfortable sweatshirt.','https://rukminim2.flixcart.com/image/612/612/k2gh30w0/sweatshirt/g/w/g/l-hlss000087-highlander-original-imafhsw8yhdfnbcz.jpeg?q=70',400,'2023-08-02 09:19:53',NULL),(21,'Rice','Grocery','Premium quality rice.','https://www.bigbasket.com/media/uploads/p/l/40075897_12-bb-royal-sona-masoori-rice-raw-rice-super-premium.jpg?tr=w-640,q=80',999,'2023-08-02 09:19:53','2023-08-09 10:06:43'),(22,'Summer Dress','Clothing','Light and fashionable summer dress.','https://rukminim2.flixcart.com/image/612/612/xif0q/dress/q/d/c/xl-gr6379-pink-harpa-original-imagmfujbfuyfd5g.jpeg?q=70',355,'2023-08-02 09:19:53','2023-08-09 12:53:30'),(24,'Coffee beans','Grocery','Rich and aromatic coffee beans.','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Roasted_coffee_beans.jpg/640px-Roasted_coffee_beans.jpg',500,'2023-08-02 09:19:53',NULL),(25,'Formal Shirt','Clothing','Elegant formal shirt for business occasions.','https://rukminim2.flixcart.com/image/832/832/xif0q/shirt/5/z/j/3xl-13-lstr-wine-vtexx-original-imagnzbu3hm4uhce.jpeg?q=70',345,'2023-08-02 09:19:53',NULL),(27,'Pasta','Grocery','Delicious and easy-to-cook pasta.','https://www.vegrecipesofindia.com/wp-content/uploads/2017/02/white-sauce-pasta-recipe-9.jpg',201,'2023-08-02 09:19:53',NULL),(28,'Hoodie','Clothing','Casual and stylish hoodie for everyday wear.','https://rukminim2.flixcart.com/image/832/832/xif0q/sweatshirt/g/h/o/xxl-kttwomensweatshirt180-kotty-original-imaghnyptnzhzudw.jpeg?q=70',900,'2023-08-02 09:19:53','2023-08-11 08:15:33'),(29,'Digital Watch','Electronics','Sleek and modern digital watch.','https://rukminim2.flixcart.com/image/612/612/xif0q/watch/7/0/w/3-gl-225-combo-of-3-black-blue-red-hala-girls-original-imagp4gmu4h8ggkq.jpeg?q=70',900,'2023-08-02 09:19:53',NULL),(80,'Eggs ','Grocery','Eggs for low cost','https://www.licious.in/blog/wp-content/uploads/2022/01/eggs-1-1024x1024.jpg',60,'2023-08-09 10:03:19','2023-08-11 05:37:36'),(88,'Green Grams','Grocery','Available in 100g. 250g, 500g, 1000g, Green beans contain many essential vitamins, including folate.','https://keralaspecial.in/wp-content/uploads/2020/03/Green-beans-scaled.jpg',99,'2023-08-09 12:03:57',NULL),(91,'Redmi Smart Band Pro','Electronics','Redmi Smart Band Pro SportsWatch- 3.73 cm (1.47) Large AMOLED Display','https://m.media-amazon.com/images/I/71wkKP7Hj2L._SX679_.jpg',1260,'2023-08-11 04:20:42','2024-06-15 10:54:43');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mobile_number` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(390) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `adderss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'B. Anil ','365987451','battulaanil36@gmail.com','$2y$10$cPXtckWSqoK59Wd8c3jZyuA2WCz5lUu.GdNAAqbJ.6eFydRYoV7KO','madinapadu, dachepalli','2023-08-02 11:28:42','2023-08-09 13:52:47'),(3,'arun kumar','654789321','arunguna2002@gmail.com','$2y$10$kj.Y/XmAysU8ZydPRjfoIOuvZ2qtQeHmP5j64kkv57fJj3MigcV/6','Thillaiyadi, Mayiladuthurai','2023-08-02 11:32:19','2023-08-11 08:11:14'),(4,'anil','12545789','battulaanil365@gmail.com','$2y$10$HwgiX3TmajvsvYxzIqjNNuA2vmKaGPtof0IxXFzE3ZA4ohLiEUxMy','guntur','2023-08-03 11:00:00',NULL),(5,'anil','456879321','battulaanil368@gmail.com','$2y$10$gr6OrvYxbZ1HL3qlwqZ/3Ou0kq8aYjft4wxGLE0B6j6CHG/fhWPSe','jhghfhghih','2023-08-03 11:01:38',NULL),(6,'B anil kumar','6302374495','battulaabil36@gmail.com','$2b$10$7y8LeL4EXKs8/3HvlOjwSe4Q0.bqh8WNy64fLxiWQZV0nNhI3A3XK','undefined','2024-06-13 18:30:50','2024-06-15 10:00:10'),(7,'prabhas','91111111125','anil36@gmail.com','$2b$10$8tCkvGcDSwgDA5XFJTbpCuXYXDBRHH0RWNN/0.qOVDSx3/k6854/.','guntur','2024-06-14 17:47:45',NULL),(8,'anil','215454566','anil@gmail.com','$2b$10$s88HsPn8LI5.KOd17KywaudL10BWi1OXoP7tk0nrPwDnuu0Xtzsq.','dachepalli','2024-06-15 10:22:12',NULL);
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

-- Dump completed on 2024-06-15 17:56:00