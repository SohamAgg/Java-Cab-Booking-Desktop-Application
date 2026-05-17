-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: cabbooking
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('harman@gmail.com','5678'),('soham@gmail.com','1236');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `car_id` int NOT NULL,
  `price_per_day` int NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `no_of_days` int NOT NULL,
  `total_rent` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `booking_status` varchar(100) NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `car_id_idx` (`car_id`),
  CONSTRAINT `car_id` FOREIGN KEY (`car_id`) REFERENCES `car_details` (`Car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,1800,'12-8-2025','13-8-2025',2,3600,'Soham','9876567556','abcd','s@gmail.com','success','success'),(2,2,2200,'12-8-2025','13-8-2025',2,4400,'User2','7366377373','dfgh','aa@gmail.com','success','success'),(3,2,2200,'14-8-2025','14-8-2025',1,2200,'Soham','9876567556','abcd','s@gmail.com','success','success'),(4,1,3100,'14-8-2025','14-8-2025',1,3100,'Soham','9876567556','abcd','s@gmail.com','success','success'),(5,5,3200,'15-8-2025','17-8-2025',3,9600,'User2','7366377373','dfgh','aa@gmail.com','success','success'),(6,6,2300,'17-8-2025','18-8-2025',2,4600,'User6','8465774646','y6rt','u6@gmail.com','success','success'),(7,8,5600,'17-8-2025','21-8-2025',5,28000,'User3','9866354467','kkiy','u3@gmail.com','success','success'),(8,6,2300,'17-8-2025','17-8-2025',1,2300,'User6','8465774646','y6rt','u6@gmail.com','success','success'),(9,7,2860,'18-8-2025','20-8-2025',3,8580,'User4','9734332456','wasd','u4@gmail.com','success','success'),(10,7,2860,'20-8-2025','21-8-2025',2,5720,'User4','9734332456','wasd','u4@gmail.com','success','success'),(11,8,5600,'21-8-2025','24-8-2025',4,22400,'Soham','9876567556','abcd','s@gmail.com','success','success'),(12,2,2200,'30-8-2025','30-8-2025',1,2200,'User5','9534325534','fghjk','u5@gmail.com','success','success');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_details`
--

DROP TABLE IF EXISTS `car_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_details` (
  `Car_id` int NOT NULL AUTO_INCREMENT,
  `Car_Name` varchar(100) NOT NULL,
  `Brand` varchar(100) NOT NULL,
  `Car_Type` varchar(100) NOT NULL,
  `Fuel_Type` varchar(100) NOT NULL,
  `Price_per_day_without_driver` int NOT NULL,
  `Price_per_day_with_driver` int NOT NULL,
  `Security` int NOT NULL,
  `Numberplate` varchar(100) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  PRIMARY KEY (`Car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_details`
--

LOCK TABLES `car_details` WRITE;
/*!40000 ALTER TABLE `car_details` DISABLE KEYS */;
INSERT INTO `car_details` VALUES (1,'Swift','Maruti Suzuki','Passenger','Petrol',3100,1850,3100,'PB02-GH-4784','Swift is a stylish and sporty premium hatchback known for its vibrant design and peppy performance. It features a 1.2L petrol engine with 80.46 bhp power, 5-seater capacity, and excellent mileage up to 25.75 kmpl. Key features include a 9-inch touchscreen with wireless Android Auto and Apple CarPlay, cruise control, and 6 airbags for safety. Its compact dimensions and 163 mm ground clearance make it well-suited for city driving. ','src\\myuploads\\swift.jpg'),(2,'Creta','Hyundai','Passenger','Hybrid',2200,2800,2200,'PB02-HJ-3872','The Hyundai Creta is one of India’s best-selling compact SUVs, known for its bold design and feature-packed interiors. It comes with multiple engine options including petrol, diesel, and turbo petrol variants. The car seats 5, offers 190 mm ground clearance, and includes advanced features such as dual-zone automatic climate control, traction control modes (snow, mud, sand), ADAS (Advanced Driver Assistance Systems), a 360-degree camera, and premium seating. The Creta balances urban usability with SUV ruggedness.','src\\myuploads\\creta.jpg'),(4,'G Wagon AMG G 63','Mercedes-Benz AMG','Passenger','Petrol',5677,3467,5677,'PB08-FH-2247','The Mercedes-AMG G 63 is the ultimate fusion of rugged off-road capability and uncompromising high-end luxury, making it a statement vehicle for executive and VIP transport services. With its iconic boxy design, Handcrafted V8 biturbo engine, and opulent Nappa leather interior, the G 63 offers both a commanding road presence and supreme comfort. It is perfectly suited for high-profile airport transfers, corporate bookings, and special events where making a powerful impression is paramount.','src\\myuploads\\car1.png'),(5,'Innova Crysta','Toyota','MiniVan','Deisel',3200,2320,3200,'PB06-HJ-2837','The Toyota Innova Crysta is the undisputed leader in comfortable, reliable, and high-capacity cab services, perfect for family trips, outstation travel, and corporate group transfers. Renowned for its spacious, comfortable, and durable cabin, it offers ample legroom and generous luggage space, ensuring passenger satisfaction on long journeys. Its robust engine and excellent safety features make it the primary choice for any cab service prioritizing reliability and group comfort.','src\\myuploads\\toyata.jfif'),(6,'Nexon','Tata','Passenger','Hybrid',3400,2300,3400,'PB08-PB-8487','The Tata Nexon is a market-leading compact SUV, designed to be the backbone of any reliable city or intercity cab fleet, perfectly balancing rugged capability with passenger comfort. As the first Indian car to achieve a 5-Star Global NCAP safety rating, it offers unmatched protection for both the driver and passengers. With its high ground clearance (208 mm), the Nexon effortlessly handles varied Indian road conditions, from urban potholes to rough rural terrains. Available with highly efficient turbocharged petrol and diesel engines, and offering multi-drive modes (Eco, City, Sport), it ensures optimal performance and fuel efficiency, making it an economically smart and supremely safe choice for daily commutes and long-distance rental trips.','src\\myuploads\\nexon.jpeg'),(7,'Maruti Suzuki Eeco','Maruti Suzuki','Minivan','Hybrid',3800,2860,3800,'PB04-JK-9438','The Eeco is the most economical and versatile van for commercial cab services, designed for maximum passenger and luggage capacity with minimal running costs. Its robust, rear-wheel-drive architecture and fuel-efficient 1.2-litre K12N engine (available with a high-mileage factory-fitted CNG option) ensure reliability. With seating options for up to 7 passengers and large sliding doors for easy access, the Eeco is the preferred choice for group transfers, school runs, and urban cargo/utility services.','src\\myuploads\\eco.jfif'),(8,'Mahindra Bolero Pik-Up','Mahindra','Truck','Diesel',5600,3200,5600,'PB07-KJ-9384','The Bolero Pik-Up is a highly reliable and robust commercial vehicle designed for extreme loading and transportation needs. Known for its strong body-on-frame chassis and powerful engine (typically the m2DiCR 2.5L Diesel), it offers a high payload capacity and is widely trusted for carrying goods in diverse urban and rural conditions.','src\\myuploads\\tru.jfif');
/*!40000 ALTER TABLE `car_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_user`
--

DROP TABLE IF EXISTS `current_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current_user` (
  `User` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_user`
--

LOCK TABLES `current_user` WRITE;
/*!40000 ALTER TABLE `current_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuser`
--

DROP TABLE IF EXISTS `cuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuser` (
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuser`
--

LOCK TABLES `cuser` WRITE;
/*!40000 ALTER TABLE `cuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('User2','aa@gmail.com','12345','986376363','Male'),('soham','s@gmail.com','1234','8545245885','Male'),('User3','u3@gmail.com','123','9273744827','Female'),('User4','u4@gmail.com','1234','9374747234','Male'),('User5','u5@gmail.com','12345','8464737467','Male'),('User6','u6@gmail.com','123456','9836362736','Female');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-17 10:20:51
