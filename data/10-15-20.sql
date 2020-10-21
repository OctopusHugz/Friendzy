-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: friendzy_dev_db
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `cities`
--
use friendzy_dev_db;
DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `state_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,'Archery'),(2,'Beekeeping'),(3,'Camping'),(4,'Computer Programming'),(5,'Darts'),(6,'Fashion'),(7,'Gaming'),(8,'Gongoozling'),(9,'Hiking'),(10,'Hydroponics'),(11,'Juggling'),(12,'Kayaking'),(13,'Lockpicking'),(14,'Magic'),(15,'Marbles'),(16,'Mountain Biking'),(17,'Mushroom Hunting'),(18,'Painting'),(19,'Parkour'),(20,'Rock Climbing'),(21,'Roller Derby'),(22,'Running'),(23,'Sailing'),(24,'Skiing'),(25,'Snowboarding'),(26,'Speedcubing'),(27,'Tai Chi'),(28,'Ultimate Disc'),(29,'Whittling'),(30,'Yoga');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_interest`
--

DROP TABLE IF EXISTS `user_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_interest` (
  `user_id` varchar(60) NOT NULL,
  `interest_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`interest_id`),
  KEY `interest_id` (`interest_id`),
  CONSTRAINT `user_interest_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_interest_ibfk_2` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interest`
--

LOCK TABLES `user_interest` WRITE;
/*!40000 ALTER TABLE `user_interest` DISABLE KEYS */;
INSERT INTO `user_interest` VALUES ('0f211bef-82ed-4b44-891a-943e81960425',1),('19d8c148-9148-432d-8890-dc60c71fead2',1),('34ac3690-02e3-409f-b433-38621f71ea7b',1),('a3177f34-0c6e-434d-ab27-d54003043853',1),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',1),('d130880a-3092-4064-9b65-600820616fae',1),('0ed6501f-7f0a-4499-a269-50b2f82021d7',2),('0f211bef-82ed-4b44-891a-943e81960425',2),('1768a468-bcca-4b51-b802-2a61a7f072b6',2),('29c9c2ac-1bce-458d-a66e-7b7832d23022',2),('34ac3690-02e3-409f-b433-38621f71ea7b',2),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',2),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',2),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',2),('794f9c11-b8cb-44ea-8584-e764b6ac9100',2),('bfce10c2-9b78-4265-bceb-4e7026583323',2),('dba20f2b-3b6e-4881-835e-dc979242f7ae',2),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',3),('259be2ed-739a-43bd-9957-cc7ceead5ed2',3),('34ac3690-02e3-409f-b433-38621f71ea7b',3),('c95b5264-36bf-422a-ba57-07858809500f',3),('d130880a-3092-4064-9b65-600820616fae',3),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',3),('26041d01-3dc5-4146-b59e-155fdd609eec',4),('34dd41bd-4350-4542-ab93-1b92b2950edb',4),('3d652fd5-68c9-45c2-851c-8c4283af4726',4),('a3177f34-0c6e-434d-ab27-d54003043853',4),('c3c304e3-83ec-4634-a6a0-875456008dca',4),('d130880a-3092-4064-9b65-600820616fae',4),('dba20f2b-3b6e-4881-835e-dc979242f7ae',4),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',4),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',4),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',5),('26041d01-3dc5-4146-b59e-155fdd609eec',5),('48d1883a-7a29-4778-a8b2-fc764f98db27',5),('587087df-771e-4512-b767-e10cf7301119',5),('5e3d29c9-9998-4325-acb4-0f677bd6863f',5),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',5),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',5),('b23f2734-3a0e-43ce-a38d-1e916288163f',5),('bfce10c2-9b78-4265-bceb-4e7026583323',5),('c95b5264-36bf-422a-ba57-07858809500f',5),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',6),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',6),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',6),('67408bca-3ae6-4655-bdec-69cb8c35be17',6),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',6),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',6),('0ed6501f-7f0a-4499-a269-50b2f82021d7',7),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',7),('29c9c2ac-1bce-458d-a66e-7b7832d23022',7),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',7),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',7),('3d652fd5-68c9-45c2-851c-8c4283af4726',7),('71dd73cb-6ad8-4591-970b-92dad73507af',7),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',7),('fe8be1ca-68df-4310-b14d-80972af9fe9b',7),('26041d01-3dc5-4146-b59e-155fdd609eec',8),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',8),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',8),('bfce10c2-9b78-4265-bceb-4e7026583323',8),('10a603f5-868d-4a3d-a98b-182d5fe778f2',9),('3d652fd5-68c9-45c2-851c-8c4283af4726',9),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',9),('c95b5264-36bf-422a-ba57-07858809500f',9),('f4e01f8a-15dc-4de9-8c45-b79814228945',9),('fe8be1ca-68df-4310-b14d-80972af9fe9b',9),('10a603f5-868d-4a3d-a98b-182d5fe778f2',10),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',10),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',10),('259be2ed-739a-43bd-9957-cc7ceead5ed2',10),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',10),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',10),('5e3d29c9-9998-4325-acb4-0f677bd6863f',10),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',10),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',10),('b23f2734-3a0e-43ce-a38d-1e916288163f',10),('c95b5264-36bf-422a-ba57-07858809500f',10),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',10),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',11),('587087df-771e-4512-b767-e10cf7301119',11),('5e3d29c9-9998-4325-acb4-0f677bd6863f',11),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',11),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',11),('10a603f5-868d-4a3d-a98b-182d5fe778f2',12),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',12),('34dd41bd-4350-4542-ab93-1b92b2950edb',12),('477d6473-cd7f-4e58-80b1-7c1e10a28036',12),('48d1883a-7a29-4778-a8b2-fc764f98db27',12),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',12),('71dd73cb-6ad8-4591-970b-92dad73507af',12),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',12),('0f211bef-82ed-4b44-891a-943e81960425',13),('2813229b-8f46-441f-934e-7f44282e89ab',13),('29c9c2ac-1bce-458d-a66e-7b7832d23022',13),('587087df-771e-4512-b767-e10cf7301119',13),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',13),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',13),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',13),('865b559d-a1d2-45c4-8776-a46697b04f99',13),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',13),('bfce10c2-9b78-4265-bceb-4e7026583323',13),('c3c304e3-83ec-4634-a6a0-875456008dca',13),('c75eff36-23b3-4950-9983-0b194f60e5d1',13),('dba20f2b-3b6e-4881-835e-dc979242f7ae',13),('f4e01f8a-15dc-4de9-8c45-b79814228945',13),('10a603f5-868d-4a3d-a98b-182d5fe778f2',14),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',14),('71dd73cb-6ad8-4591-970b-92dad73507af',14),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',14),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',14),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',14),('1768a468-bcca-4b51-b802-2a61a7f072b6',15),('259be2ed-739a-43bd-9957-cc7ceead5ed2',15),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',15),('34dd41bd-4350-4542-ab93-1b92b2950edb',15),('477d6473-cd7f-4e58-80b1-7c1e10a28036',15),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',15),('1768a468-bcca-4b51-b802-2a61a7f072b6',16),('29c9c2ac-1bce-458d-a66e-7b7832d23022',16),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',16),('3d652fd5-68c9-45c2-851c-8c4283af4726',16),('48d1883a-7a29-4778-a8b2-fc764f98db27',16),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',16),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',16),('c75eff36-23b3-4950-9983-0b194f60e5d1',16),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',16),('f4e01f8a-15dc-4de9-8c45-b79814228945',16),('2813229b-8f46-441f-934e-7f44282e89ab',17),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',17),('477d6473-cd7f-4e58-80b1-7c1e10a28036',17),('48d1883a-7a29-4778-a8b2-fc764f98db27',17),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',17),('865b559d-a1d2-45c4-8776-a46697b04f99',17),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',17),('f4e01f8a-15dc-4de9-8c45-b79814228945',17),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',18),('34ac3690-02e3-409f-b433-38621f71ea7b',18),('5e3d29c9-9998-4325-acb4-0f677bd6863f',18),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',18),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',18),('794f9c11-b8cb-44ea-8584-e764b6ac9100',18),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',18),('c3c304e3-83ec-4634-a6a0-875456008dca',18),('f4e01f8a-15dc-4de9-8c45-b79814228945',18),('fe8be1ca-68df-4310-b14d-80972af9fe9b',18),('0f211bef-82ed-4b44-891a-943e81960425',19),('34dd41bd-4350-4542-ab93-1b92b2950edb',19),('477d6473-cd7f-4e58-80b1-7c1e10a28036',19),('67408bca-3ae6-4655-bdec-69cb8c35be17',19),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',19),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',19),('a3177f34-0c6e-434d-ab27-d54003043853',19),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',19),('dba20f2b-3b6e-4881-835e-dc979242f7ae',19),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',19),('0ed6501f-7f0a-4499-a269-50b2f82021d7',20),('10a603f5-868d-4a3d-a98b-182d5fe778f2',20),('1768a468-bcca-4b51-b802-2a61a7f072b6',20),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',20),('34ac3690-02e3-409f-b433-38621f71ea7b',20),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',20),('48d1883a-7a29-4778-a8b2-fc764f98db27',20),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',21),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',21),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',21),('c75eff36-23b3-4950-9983-0b194f60e5d1',21),('0ed6501f-7f0a-4499-a269-50b2f82021d7',22),('19d8c148-9148-432d-8890-dc60c71fead2',22),('2813229b-8f46-441f-934e-7f44282e89ab',22),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',22),('67408bca-3ae6-4655-bdec-69cb8c35be17',22),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',22),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',22),('865b559d-a1d2-45c4-8776-a46697b04f99',22),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',22),('c3c304e3-83ec-4634-a6a0-875456008dca',22),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',22),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',22),('fe8be1ca-68df-4310-b14d-80972af9fe9b',22),('1768a468-bcca-4b51-b802-2a61a7f072b6',23),('67408bca-3ae6-4655-bdec-69cb8c35be17',23),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',23),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',23),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',23),('c75eff36-23b3-4950-9983-0b194f60e5d1',23),('259be2ed-739a-43bd-9957-cc7ceead5ed2',24),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',24),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',24),('865b559d-a1d2-45c4-8776-a46697b04f99',24),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',24),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',24),('b23f2734-3a0e-43ce-a38d-1e916288163f',24),('c3c304e3-83ec-4634-a6a0-875456008dca',24),('c95b5264-36bf-422a-ba57-07858809500f',24),('fe8be1ca-68df-4310-b14d-80972af9fe9b',24),('19d8c148-9148-432d-8890-dc60c71fead2',25),('26041d01-3dc5-4146-b59e-155fdd609eec',25),('34ac3690-02e3-409f-b433-38621f71ea7b',25),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',25),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',25),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',25),('865b559d-a1d2-45c4-8776-a46697b04f99',25),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',25),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',25),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',25),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',26),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',26),('26041d01-3dc5-4146-b59e-155fdd609eec',26),('2813229b-8f46-441f-934e-7f44282e89ab',26),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',26),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',26),('587087df-771e-4512-b767-e10cf7301119',26),('67408bca-3ae6-4655-bdec-69cb8c35be17',26),('794f9c11-b8cb-44ea-8584-e764b6ac9100',26),('a3177f34-0c6e-434d-ab27-d54003043853',26),('b23f2734-3a0e-43ce-a38d-1e916288163f',26),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',27),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',27),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',27),('794f9c11-b8cb-44ea-8584-e764b6ac9100',27),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',27),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',27),('d130880a-3092-4064-9b65-600820616fae',27),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',28),('477d6473-cd7f-4e58-80b1-7c1e10a28036',28),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',28),('794f9c11-b8cb-44ea-8584-e764b6ac9100',28),('0ed6501f-7f0a-4499-a269-50b2f82021d7',29),('0f211bef-82ed-4b44-891a-943e81960425',29),('19d8c148-9148-432d-8890-dc60c71fead2',29),('259be2ed-739a-43bd-9957-cc7ceead5ed2',29),('2813229b-8f46-441f-934e-7f44282e89ab',29),('3d652fd5-68c9-45c2-851c-8c4283af4726',29),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',29),('71dd73cb-6ad8-4591-970b-92dad73507af',29),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',29),('c75eff36-23b3-4950-9983-0b194f60e5d1',29),('d130880a-3092-4064-9b65-600820616fae',29),('dba20f2b-3b6e-4881-835e-dc979242f7ae',29),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',29),('19d8c148-9148-432d-8890-dc60c71fead2',30),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',30),('29c9c2ac-1bce-458d-a66e-7b7832d23022',30),('34dd41bd-4350-4542-ab93-1b92b2950edb',30),('587087df-771e-4512-b767-e10cf7301119',30),('5e3d29c9-9998-4325-acb4-0f677bd6863f',30),('71dd73cb-6ad8-4591-970b-92dad73507af',30),('a3177f34-0c6e-434d-ab27-d54003043853',30),('b23f2734-3a0e-43ce-a38d-1e916288163f',30),('bfce10c2-9b78-4265-bceb-4e7026583323',30);
/*!40000 ALTER TABLE `user_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0ed6501f-7f0a-4499-a269-50b2f82021d7','louella.bradley@example.com','honda1','Louella','Bradley'),('0f211bef-82ed-4b44-891a-943e81960425','kaylee.fox@example.com','brasil','Kaylee','Fox'),('10a603f5-868d-4a3d-a98b-182d5fe778f2','theresa.wells@example.com','dolemite','Theresa','Wells'),('11dfac8d-ae7a-4b05-b94b-510a3dbc435d','gunter@mail.com','1234','Gunter',NULL),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0','doris.kuhn@example.com','telefon','Doris','Kuhn'),('16a7e32e-d5b6-4cf1-b5a3-2956e0f8d219','gunter@mail.com','1234','Gunter',NULL),('1768a468-bcca-4b51-b802-2a61a7f072b6','stella.ray@example.com','republic','Stella','Ray'),('19d8c148-9148-432d-8890-dc60c71fead2','tony.carroll@example.com','groups','Tony','Carroll'),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4','chester.cole@example.com','power','Chester','Cole'),('23810359-3b6b-4d5e-8f66-ffa75cba538f','gunter@mail.com','1234','Gunter',NULL),('259be2ed-739a-43bd-9957-cc7ceead5ed2','dale.allen@example.com','bondage','Dale','Allen'),('25a9cfb5-aa43-4b38-816b-b80b70c40f65','gunter@mail.com','1234','Gunter',NULL),('26041d01-3dc5-4146-b59e-155fdd609eec','alex.hansen@example.com','fright','Alex','Hansen'),('2813229b-8f46-441f-934e-7f44282e89ab','jason.banks@example.com','nova','Jason','Banks'),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e','charlotte.lane@example.com','1qaz2wsx','Charlotte','Lane'),('29c9c2ac-1bce-458d-a66e-7b7832d23022','brooklyn.wade@example.com','postman','Brooklyn','Wade'),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408','nevaeh.holland@example.com','joker','Nevaeh','Holland'),('34ac3690-02e3-409f-b433-38621f71ea7b','carl.boyd@example.com','mommy','Carl','Boyd'),('34dd41bd-4350-4542-ab93-1b92b2950edb','rosa.owens@example.com','mickey1','Rosa','Owens'),('35cb73ec-ec91-4e15-b160-ef757cf6ccac','paula.peck@example.com','metoo','Paula','Peck'),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e','ben.gray@example.com','spank','Ben','Gray'),('3d652fd5-68c9-45c2-851c-8c4283af4726','ricky.nelson@example.com','naruto','Ricky','Nelson'),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a','riley.carroll@example.com','rudy','Riley','Carroll'),('477d6473-cd7f-4e58-80b1-7c1e10a28036','grace.butler@example.com','carol','Grace','Butler'),('48d1883a-7a29-4778-a8b2-fc764f98db27','sally.watson@example.com','silly','Sally','Watson'),('541042bb-bc92-48b1-adb9-a0a741c26110','gunter@mail.com','1234','Gunter',NULL),('587087df-771e-4512-b767-e10cf7301119','jim.matthews@example.com','lighter','Jim','Matthews'),('5e3d29c9-9998-4325-acb4-0f677bd6863f','michael.ellis@example.com','aaaaa1','Michael','Ellis'),('67408bca-3ae6-4655-bdec-69cb8c35be17','tony.washington@example.com','spread','Tony','Washington'),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81','zack.daniels@example.com','disco','Zack','Daniels'),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523','gavin.barnett@example.com','sausages','Gavin','Barnett'),('70df8023-da73-4d4e-ba48-2a7a0b1ab222','roberta.peters@example.com','darren','Roberta','Peters'),('713c1222-18a7-4853-bb2d-3e2b6befd4ab','alfred.hopkins@example.com','nt5d27','Alfred','Hopkins'),('71dd73cb-6ad8-4591-970b-92dad73507af','tracey.silva@example.com','rrrrr','Tracey','Silva'),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2','lance.butler@example.com','torpedo','Lance','Butler'),('794f9c11-b8cb-44ea-8584-e764b6ac9100','debbie.fowler@example.com','star','Debbie','Fowler'),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34','brent.cruz@example.com','vvvvv','Brent','Cruz'),('81250f26-df9c-46d6-87e0-c34ad0a2bb44','allison.burton@example.com','syracuse','Allison','Burton'),('865b559d-a1d2-45c4-8776-a46697b04f99','catherine.baker@example.com','rhythm','Catherine','Baker'),('a3177f34-0c6e-434d-ab27-d54003043853','cameron.castillo@example.com','weston','Cameron','Castillo'),('a4e1ed4d-721f-4a5b-a284-232c49c37d7a','gunter@mail.com','1234','Gunter',NULL),('adf08e01-f2d2-4ce5-99bc-e65c294fc494','penny.carlson@example.com','mickey1','Penny','Carlson'),('ae7871d7-6341-4ca9-b445-3f6978e5ee60','serenity.reyes@example.com','dalejr','Serenity','Reyes'),('b23f2734-3a0e-43ce-a38d-1e916288163f','mia.watts@example.com','awesome','Mia','Watts'),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7','timmothy.stanley@example.com','sawyer','Timmothy','Stanley'),('bfce10c2-9b78-4265-bceb-4e7026583323','alma.burns@example.com','2580','Alma','Burns'),('c3c304e3-83ec-4634-a6a0-875456008dca','erika.fields@example.com','sierra','Erika','Fields'),('c75eff36-23b3-4950-9983-0b194f60e5d1','melvin.lawrence@example.com','cadillac','Melvin','Lawrence'),('c95b5264-36bf-422a-ba57-07858809500f','christine.reid@example.com','freee','Christine','Reid'),('d130880a-3092-4064-9b65-600820616fae','vera.watson@example.com','kenneth','Vera','Watson'),('dba20f2b-3b6e-4881-835e-dc979242f7ae','sylvia.jackson@example.com','boob','Sylvia','Jackson'),('dbf7d452-a30d-45d2-a245-6882e21b3d1f','ernest.griffin@example.com','wrestlin','Ernest','Griffin'),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4','noelle.james@example.com','melissa1','Noelle','James'),('de1c7e6c-c0a8-47f2-8d53-742c405beb25','gunter@mail.com','1234','Gunter',NULL),('ec4091f8-e01c-4f4a-8204-c396b6eeb664','edna.kuhn@example.com','makaveli','Edna','Kuhn'),('f4177280-799a-4dc4-9299-a3fc51fa87cf','gunter@mail.com','1234','Gunter',NULL),('f4e01f8a-15dc-4de9-8c45-b79814228945','rhonda.fuller@example.com','gabriela','Rhonda','Fuller'),('fb167f28-b720-4e14-9eed-6409ba9fc3e2','gunter@mail.com','1234','Gunter',NULL),('fe8be1ca-68df-4310-b14d-80972af9fe9b','terry.jacobs@example.com','webber','Terry','Jacobs'),('ff024165-636d-4f72-b192-bd0f8eac27a7','gunter@mail.com','1234','Gunter',NULL);
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

-- Dump completed on 2020-10-15 14:31:16
