-- MySQL dump 10.13  Distrib 5.5.27, for Linux (i686)
--
-- Host: localhost    Database: dbapp
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AuthorizedSC`
--

DROP TABLE IF EXISTS `AuthorizedSC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthorizedSC` (
  `ASCID` int(10) NOT NULL DEFAULT '0',
  `Brand` int(10) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Phone` int(15) DEFAULT NULL,
  PRIMARY KEY (`ASCID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthorizedSC`
--

LOCK TABLES `AuthorizedSC` WRITE;
/*!40000 ALTER TABLE `AuthorizedSC` DISABLE KEYS */;
/*!40000 ALTER TABLE `AuthorizedSC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthorizedService`
--

DROP TABLE IF EXISTS `AuthorizedService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthorizedService` (
  `ASCID` int(10) DEFAULT NULL,
  `ServicesSupported` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthorizedService`
--

LOCK TABLES `AuthorizedService` WRITE;
/*!40000 ALTER TABLE `AuthorizedService` DISABLE KEYS */;
/*!40000 ALTER TABLE `AuthorizedService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brand` (
  `Name` varchar(100) NOT NULL DEFAULT '',
  `Description` varchar(500) DEFAULT NULL,
  `Rating` int(1) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
INSERT INTO `Brand` VALUES ('AMD','Description7',4),('Dell','Description5',3),('Intel','Motherboard D845GVSR',4),('Microsoft','Description2',5),('Seagate','Description6',6),('Sony','Description3',4),('Tp-Link','Description4',4);
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `CustID` int(10) NOT NULL AUTO_INCREMENT,
  `Address` varchar(500) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (5,'OBH','kkiddu@yahoo.com','Ankush Jain','123456'),(6,'Hogwarts','harry@hogwarts.edu','Harry Potter','555555'),(7,'#1304, Delhi','deepesh.jain@idiots.com','Deepesh','90129723'),(8,'#1304, Delhi','deepesh.jain@idiots.com','Deepesh','90129723'),(9,'11213','monkey@jungle.com','Monkey','90129723'),(10,'11213','donkey@in.com','Donkey','90129723'),(11,'11213','jungle@in.com','Jungleq','90129723');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Driver`
--

DROP TABLE IF EXISTS `Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Driver` (
  `EmpID` int(10) NOT NULL DEFAULT '0',
  `LicenseNo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmpID`),
  CONSTRAINT `Driver_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `Employee` (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `EmpID` int(10) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `Salary` int(7) DEFAULT NULL,
  `PAN` char(10) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Engineer`
--

DROP TABLE IF EXISTS `Engineer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Engineer` (
  `EmpID` int(10) NOT NULL DEFAULT '0',
  `Specialization` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmpID`),
  CONSTRAINT `Engineer_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `Employee` (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Engineer`
--

LOCK TABLES `Engineer` WRITE;
/*!40000 ALTER TABLE `Engineer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Engineer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Feedback`
--

DROP TABLE IF EXISTS `Feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Feedback` (
  `OrderID` int(10) DEFAULT NULL,
  `TicketNo` int(10) NOT NULL DEFAULT '0',
  `Feedback` varchar(1000) DEFAULT NULL,
  `Rating` int(5) DEFAULT NULL,
  PRIMARY KEY (`TicketNo`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `Feedback_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `SalesOrder` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feedback`
--

LOCK TABLES `Feedback` WRITE;
/*!40000 ALTER TABLE `Feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `Feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Forwarding`
--

DROP TABLE IF EXISTS `Forwarding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Forwarding` (
  `TicketNo` int(10) NOT NULL DEFAULT '0',
  `ProductName` varchar(100) DEFAULT NULL,
  `ProblemDesc` varchar(1000) DEFAULT NULL,
  `ASCID` int(10) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`TicketNo`),
  KEY `ASCID` (`ASCID`),
  CONSTRAINT `Forwarding_ibfk_1` FOREIGN KEY (`ASCID`) REFERENCES `AuthorizedSC` (`ASCID`),
  CONSTRAINT `Forwarding_ibfk_2` FOREIGN KEY (`TicketNo`) REFERENCES `Ticket` (`TicketNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Forwarding`
--

LOCK TABLES `Forwarding` WRITE;
/*!40000 ALTER TABLE `Forwarding` DISABLE KEYS */;
/*!40000 ALTER TABLE `Forwarding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HDD`
--

DROP TABLE IF EXISTS `HDD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HDD` (
  `ID` int(10) NOT NULL DEFAULT '0',
  `Size` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `HDD_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Items` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HDD`
--

LOCK TABLES `HDD` WRITE;
/*!40000 ALTER TABLE `HDD` DISABLE KEYS */;
/*!40000 ALTER TABLE `HDD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Items` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Description` varchar(1000) DEFAULT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` int(8) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Brand` (`Brand`),
  CONSTRAINT `Items_ibfk_1` FOREIGN KEY (`Brand`) REFERENCES `Brand` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES (1,'Desc1','Intel','8D6DASD4',15000,'Motherboard'),(2,'Desc2','Intel','KD45ASD4',25000,'Motherboard'),(3,'Desc3','AMD','A-15ASD4',17000,'Motherboard');
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manager`
--

DROP TABLE IF EXISTS `Manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Manager` (
  `EmpID` int(10) NOT NULL DEFAULT '0',
  `Department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmpID`),
  CONSTRAINT `Manager_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `Employee` (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manager`
--

LOCK TABLES `Manager` WRITE;
/*!40000 ALTER TABLE `Manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `Manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor`
--

DROP TABLE IF EXISTS `Monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor` (
  `ID` int(10) NOT NULL DEFAULT '0',
  `Resolution` varchar(20) DEFAULT NULL,
  `ScreenSize` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Monitor_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Items` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor`
--

LOCK TABLES `Monitor` WRITE;
/*!40000 ALTER TABLE `Monitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Motherboard`
--

DROP TABLE IF EXISTS `Motherboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Motherboard` (
  `ID` int(10) NOT NULL DEFAULT '0',
  `Chipset` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Motherboard_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Items` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Motherboard`
--

LOCK TABLES `Motherboard` WRITE;
/*!40000 ALTER TABLE `Motherboard` DISABLE KEYS */;
INSERT INTO `Motherboard` VALUES (1,'NCR 53C91'),(2,'NCR 53D92'),(3,'KMC AM-L92');
/*!40000 ALTER TABLE `Motherboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItems`
--

DROP TABLE IF EXISTS `OrderItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderItems` (
  `OrderID` int(10) NOT NULL DEFAULT '0',
  `Item` varchar(100) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  CONSTRAINT `OrderItems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `SalesOrder` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItems`
--

LOCK TABLES `OrderItems` WRITE;
/*!40000 ALTER TABLE `OrderItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Processor`
--

DROP TABLE IF EXISTS `Processor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Processor` (
  `ID` int(10) NOT NULL DEFAULT '0',
  `Frequency` int(5) DEFAULT NULL,
  `Cores` int(3) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Processor_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Items` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Processor`
--

LOCK TABLES `Processor` WRITE;
/*!40000 ALTER TABLE `Processor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Processor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RAM`
--

DROP TABLE IF EXISTS `RAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RAM` (
  `ID` int(10) NOT NULL DEFAULT '0',
  `Frequency` int(5) DEFAULT NULL,
  `Size` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `RAM_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Items` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RAM`
--

LOCK TABLES `RAM` WRITE;
/*!40000 ALTER TABLE `RAM` DISABLE KEYS */;
/*!40000 ALTER TABLE `RAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SalesOrder`
--

DROP TABLE IF EXISTS `SalesOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SalesOrder` (
  `OrderID` int(10) NOT NULL AUTO_INCREMENT,
  `CustID` int(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustID` (`CustID`),
  CONSTRAINT `SalesOrder_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `Customer` (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SalesOrder`
--

LOCK TABLES `SalesOrder` WRITE;
/*!40000 ALTER TABLE `SalesOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `SalesOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SalesPerson`
--

DROP TABLE IF EXISTS `SalesPerson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SalesPerson` (
  `EmpID` int(10) NOT NULL DEFAULT '0',
  `SalesNo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmpID`),
  CONSTRAINT `SalesPerson_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `Employee` (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SalesPerson`
--

LOCK TABLES `SalesPerson` WRITE;
/*!40000 ALTER TABLE `SalesPerson` DISABLE KEYS */;
/*!40000 ALTER TABLE `SalesPerson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shipment`
--

DROP TABLE IF EXISTS `Shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shipment` (
  `OrderID` int(10) NOT NULL DEFAULT '0',
  `PreferredDate` date DEFAULT NULL,
  `PreferredTime` time DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  CONSTRAINT `Shipment_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `SalesOrder` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shipment`
--

LOCK TABLES `Shipment` WRITE;
/*!40000 ALTER TABLE `Shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SupplyItems`
--

DROP TABLE IF EXISTS `SupplyItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupplyItems` (
  `OrderID` int(10) NOT NULL DEFAULT '0',
  `Item` int(10) DEFAULT NULL,
  `Quantity` int(5) DEFAULT NULL,
  `RatePerItem` int(8) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  CONSTRAINT `SupplyItems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `SalesOrder` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SupplyItems`
--

LOCK TABLES `SupplyItems` WRITE;
/*!40000 ALTER TABLE `SupplyItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `SupplyItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SupplyOrder`
--

DROP TABLE IF EXISTS `SupplyOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupplyOrder` (
  `OrderID` int(10) NOT NULL DEFAULT '0',
  `VendID` int(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `VendID` (`VendID`),
  CONSTRAINT `SupplyOrder_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `SalesOrder` (`OrderID`),
  CONSTRAINT `SupplyOrder_ibfk_2` FOREIGN KEY (`VendID`) REFERENCES `Vendor` (`VendID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SupplyOrder`
--

LOCK TABLES `SupplyOrder` WRITE;
/*!40000 ALTER TABLE `SupplyOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `SupplyOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SupplyReceipt`
--

DROP TABLE IF EXISTS `SupplyReceipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupplyReceipt` (
  `VendID` int(10) DEFAULT NULL,
  `OrderID` int(10) NOT NULL DEFAULT '0',
  `Description` varchar(100) DEFAULT NULL,
  `Amount` int(10) DEFAULT NULL,
  `PaymentMethod` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `VendID` (`VendID`),
  CONSTRAINT `SupplyReceipt_ibfk_1` FOREIGN KEY (`VendID`) REFERENCES `Vendor` (`VendID`),
  CONSTRAINT `SupplyReceipt_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `SalesOrder` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SupplyReceipt`
--

LOCK TABLES `SupplyReceipt` WRITE;
/*!40000 ALTER TABLE `SupplyReceipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `SupplyReceipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ticket`
--

DROP TABLE IF EXISTS `Ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ticket` (
  `CustID` int(10) DEFAULT NULL,
  `TicketNo` int(10) NOT NULL AUTO_INCREMENT,
  `Grievance` varchar(200) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`TicketNo`),
  KEY `CustID` (`CustID`),
  CONSTRAINT `Ticket_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `Customer` (`CustID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ticket`
--

LOCK TABLES `Ticket` WRITE;
/*!40000 ALTER TABLE `Ticket` DISABLE KEYS */;
INSERT INTO `Ticket` VALUES (5,4,'My CPU gets too hot','0000-00-00 00:00:00','Unread'),(5,5,'My CPU gets too hot','0000-00-00 00:00:00','Unread'),(5,6,'Foo bar','2012-11-01 15:10:30','Unread'),(5,7,'Boo baa','2012-11-01 15:11:33','Unread'),(5,8,'Test test','2012-11-01 15:12:16','Unread'),(5,9,'Whoosh','2012-11-01 15:22:59','Unread');
/*!40000 ALTER TABLE `Ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Privilege` int(1) DEFAULT '0',
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('deepesh','bf76b73579ee889af881',0),('deepesh2','8e755aa8fc8d51bd2877',0),('donkey','d0763edaa9d9bd2a9516',0),('harry','3b87c97d15e8eb11e51a',0),('jungle','b9c3a255a10d7e0db510',0),('monkey','9443b0fceb8c03b6a514',0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendor`
--

DROP TABLE IF EXISTS `Vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vendor` (
  `VendID` int(10) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Phone` int(15) DEFAULT NULL,
  PRIMARY KEY (`VendID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendor`
--

LOCK TABLES `Vendor` WRITE;
/*!40000 ALTER TABLE `Vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VendorBrands`
--

DROP TABLE IF EXISTS `VendorBrands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VendorBrands` (
  `VendorID` int(10) DEFAULT NULL,
  `Brands` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VendorBrands`
--

LOCK TABLES `VendorBrands` WRITE;
/*!40000 ALTER TABLE `VendorBrands` DISABLE KEYS */;
/*!40000 ALTER TABLE `VendorBrands` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-01 21:03:44
