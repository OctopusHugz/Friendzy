-- MySQL dump 10.13  Distrib 5.7.8-rc, for Linux (x86_64)
--
-- Host: localhost    Database: friendzy_dev_db
-- ------------------------------------------------------
-- Server version	5.7.8-rc

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
-- Current Database: `friendzy_dev_db`
drop database if exists friendzy_dev_db;
CREATE DATABASE IF NOT EXISTS friendzy_dev_db;
CREATE USER IF NOT EXISTS 'friendzy_dev'@'localhost';
SET PASSWORD FOR 'friendzy_dev'@'localhost' = 'friendzy_pwd';
GRANT ALL ON `friendzy_dev_db`.* TO 'friendzy_dev'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'friendzy_dev'@'localhost';
FLUSH PRIVILEGES;
USE `friendzy_dev_db`;

--
-- Table structure for table `cities`
--

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
  `description` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,'Archery','Archery is the art, sport, practice, or skill of using a bow to shoot arrows. The word comes from the Latin arcus for bow. Historically, archery has been used for hunting and combat. In modern times, it is mainly a competitive sport and recreational activity.'),(2,'Beekeeping','Beekeeping is the maintenance of bee colonies, commonly in man-made hives, by humans. Most such bees are honey bees in the genus Apis, but other honey-producing bees such as Melipona stingless bees are also kept.'),(3,'Camping','Camping is an outdoor activity involving overnight stays away from home in a shelter, such as a tent or a recreational vehicle. Typically participants leave developed areas to spend time outdoors in more natural ones in pursuit of activities providing them enjoyment. The night (or more) spent outdoors distinguishes camping from day-tripping, picnicking, and other similarly short-term recreational activities.'),(4,'Computer Programming','Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result or to perform a specific task. Programming involves tasks such as: analysis, generating algorithms, profiling algorithms accuracy and resource consumption, and the implementation of algorithms in a chosen programming language (commonly referred to as coding).'),(5,'Darts','Darts is a sport in which two or more players throw small missiles, also known as darts, at a circular target, known as a \"dartboard\". Points can be scored by hitting specific marked areas of the board, though, unlike in sports such as archery, these areas are distributed all across the board and do not follow a principle of points increasing towards the centre of the board.'),(6,'Fashion','Fashion is a popular aesthetic expression at a particular time and place and in a specific context, especially in clothing, footwear, lifestyle, accessories, makeup, hairstyle, and body proportions. '),(7,'Gaming','Gaming involves interaction with a user interface or input device -- such as a joystick, controller, keyboard, or motion sensing devices, to generate visual feedback for a player. This is then shown on a two- or three-dimensional video display device such as a TV set, monitor, touchscreen, or virtual reality headset. Video games are augmented with audio feedback from speakers or headphones, and optionally with other types of feedback systems including haptic technology.'),(8,'Gongoozling','A gongoozler is a person who enjoys watching activity on the canals of the United Kingdom. The term is also used more generally to describe those who harbour an interest in canals and canal life, but do not actively participate.'),(9,'Hiking','Hiking is a long, vigorous walk, usually on trails or footpaths in the countryside. \"Hiking\" is the preferred term in Canada and the United States; the term \"walking\" is used in these regions for shorter, particularly urban walks. In the United Kingdom and the Republic of Ireland, the word \"walking\" describes all forms of walking, whether it is a walk in the park or backpacking in the Alps.'),(10,'Hydroponics','Hydroponics is a type of horticulture and a subset of hydroculture, which is a method of growing plants, usually crops, without soil, by using mineral nutrient solutions in an aqueous solvent. Terrestrial plants may be grown with only their roots exposed to the nutritious liquid, or, in addition, the roots may be physically supported by an inert medium such as perlite, gravel, or other substrates.'),(11,'Juggling','Juggling is a physical skill, performed by a juggler, involving the manipulation of objects for recreation, entertainment, art or sport. The most recognizable form of juggling is toss juggling. Juggling can be the manipulation of one object or many objects at the same time, most often using one or two hands but also possible with feet.'),(12,'Kayaking','Kayaking is the use of a kayak for moving across water. It is distinguished from canoeing by the sitting position of the paddler and the number of blades on the paddle. A kayak is a low-to-the-water, canoe-like boat in which the paddler sits facing forward, legs in front, using a double-bladed paddle to pull front-to-back on one side and then the other in rotation.'),(13,'Lockpicking','Lock picking is the practice of unlocking a lock by manipulating the components of the lock device without the original key. Although lock-picking can be associated with criminal intent, it is an essential skill for the legitimate profession of locksmithing, and is also pursued by law-abiding citizens as a useful skill to learn, or simply as a hobby (locksport).'),(14,'Magic','Magic is the practice of beliefs, rituals and/or actions which are said to control and manipulate, either natural or supernatural, beings and forces. Typically, magic is categorised as independent from both religion and science, due to its various beliefs and practices.'),(15,'Marbles','a game in which marbles are rolled at one another, similar to bowls.'),(16,'Mountain Biking','Mountain biking is a sport of riding bicycles off-road, often over rough terrain, using specially designed mountain bikes. Mountain bikes share similarities with other bikes but incorporate features designed to enhance durability and performance in rough terrain.'),(17,'Mushroom Hunting','Mushroom hunting, mushrooming, mushroom picking, mushroom foraging, and similar terms describe the activity of gathering mushrooms in the wild, typically for food.'),(18,'Painting','Painting is the practice of applying paint, pigment, color or other medium to a solid surface. The medium is commonly applied to the base with a brush, but other implements, such as knives, sponges, and airbrushes, can be used. In art, the term painting describes both the act and the result of the action.'),(19,'Parkour','Parkour is a training discipline using movement that developed from military obstacle course training. Practitioners, called tracers or traceurs, aim to get from one point to another in a complex environment, without assistive equipment and in the fastest and most efficient way possible.'),(20,'Rock Climbing','The sport or activity of climbing rock faces, especially with the aid of ropes and special equipment.'),(21,'Roller Derby','Roller derby is a roller skating contact sport played by two teams of fifteen members. Roller derby is played by approximately 1,250 amateur leagues worldwide, mostly inside the United States.'),(22,'Running','Running is the activity of moving fast on foot, especially as a sport.'),(23,'Sailing','Sailing employs the wind—acting on sails, wingsails or kites—to propel a craft on the surface of the water, on ice or on land over a chosen course, which is often part of a larger plan of navigation. A course defined with respect to the true wind direction is called a point of sail.'),(24,'Skiing','the action of traveling over snow on skis, especially as a sport or recreation. Competitive skiing falls into two categories: Nordic (cross-country racing, jumping, and biathlon) and Alpine (downhill or straight racing, and slalom racing around a series of markers).'),(25,'Snowboarding','Snowboarding is a recreational and competitive activity that involves descending a snow-covered slope while standing on a snowboard attached to a rider\'s feet.'),(26,'Speedcubing','Speedcubing is a sport involving solving a variety of combination or twisty puzzles, the most famous being the 3x3x3 puzzle or Rubik\'s Cube, as quickly as possible. For most puzzles, solving entails performing a series of moves that alters a scrambled puzzle into a state in which every face of the puzzle is a single, solid color.'),(27,'Tai Chi','Tai chi is an internal Chinese martial art practiced for both its defense training, its health benefits and meditation. In China, tai chi is categorized under the Wudang grouping of Chinese martial arts—that is, the arts applied with internal power. It is purported that focusing the mind solely on the movements of the form helps to bring about a state of mental calm and clarity.'),(28,'Ultimate Disc','Ultimate, also and originally known as ultimate Frisbee, is a low-contact team sport played with a flying disc. Points are scored by passing the disc to a teammate in the opposing end zone. Other basic rules are that players must not take steps while holding the disc, and interceptions, incomplete passes, and passes out of bounds are turnovers.'),(29,'Whittling','Whittling may refer either to the art of carving shapes out of raw wood using a knife or a time-occupying, non-artistic process of repeatedly shaving slivers from a piece of wood. Casual whittling is typically performed with a light, small-bladed knife, usually a pocket knife. Specialized whittling knives, with fixed single blades, are preferred for sculpting artistic work'),(30,'Yoga','Yoga is a group of physical, mental, and spiritual practices or disciplines which originated in ancient India. The term \"Yoga\" in the Western world often denotes a modern form of hatha yoga and yoga as exercise, consisting largely of the postures or asanas.');
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
INSERT INTO `user_interest` VALUES ('0f211bef-82ed-4b44-891a-943e81960425',1),('19d8c148-9148-432d-8890-dc60c71fead2',1),('a3177f34-0c6e-434d-ab27-d54003043853',1),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',1),('d130880a-3092-4064-9b65-600820616fae',1),('0ed6501f-7f0a-4499-a269-50b2f82021d7',2),('0f211bef-82ed-4b44-891a-943e81960425',2),('1768a468-bcca-4b51-b802-2a61a7f072b6',2),('29c9c2ac-1bce-458d-a66e-7b7832d23022',2),('34ac3690-02e3-409f-b433-38621f71ea7b',2),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',2),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',2),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',2),('794f9c11-b8cb-44ea-8584-e764b6ac9100',2),('bfce10c2-9b78-4265-bceb-4e7026583323',2),('dba20f2b-3b6e-4881-835e-dc979242f7ae',2),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',3),('165cf52c-06b3-44cb-be7b-341989ecd10f',3),('259be2ed-739a-43bd-9957-cc7ceead5ed2',3),('34ac3690-02e3-409f-b433-38621f71ea7b',3),('c95b5264-36bf-422a-ba57-07858809500f',3),('d130880a-3092-4064-9b65-600820616fae',3),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',3),('f79409a4-53a0-44e6-813f-64ee579be1ef',3),('26041d01-3dc5-4146-b59e-155fdd609eec',4),('34dd41bd-4350-4542-ab93-1b92b2950edb',4),('3d652fd5-68c9-45c2-851c-8c4283af4726',4),('a3177f34-0c6e-434d-ab27-d54003043853',4),('c3c304e3-83ec-4634-a6a0-875456008dca',4),('d130880a-3092-4064-9b65-600820616fae',4),('dba20f2b-3b6e-4881-835e-dc979242f7ae',4),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',4),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',4),('f79409a4-53a0-44e6-813f-64ee579be1ef',4),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',5),('26041d01-3dc5-4146-b59e-155fdd609eec',5),('48d1883a-7a29-4778-a8b2-fc764f98db27',5),('587087df-771e-4512-b767-e10cf7301119',5),('5e3d29c9-9998-4325-acb4-0f677bd6863f',5),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',5),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',5),('b23f2734-3a0e-43ce-a38d-1e916288163f',5),('bfce10c2-9b78-4265-bceb-4e7026583323',5),('c95b5264-36bf-422a-ba57-07858809500f',5),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',6),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',6),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',6),('67408bca-3ae6-4655-bdec-69cb8c35be17',6),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',6),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',6),('0ed6501f-7f0a-4499-a269-50b2f82021d7',7),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',7),('29c9c2ac-1bce-458d-a66e-7b7832d23022',7),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',7),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',7),('3d652fd5-68c9-45c2-851c-8c4283af4726',7),('71dd73cb-6ad8-4591-970b-92dad73507af',7),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',7),('fe8be1ca-68df-4310-b14d-80972af9fe9b',7),('26041d01-3dc5-4146-b59e-155fdd609eec',8),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',8),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',8),('bfce10c2-9b78-4265-bceb-4e7026583323',8),('f79409a4-53a0-44e6-813f-64ee579be1ef',8),('10a603f5-868d-4a3d-a98b-182d5fe778f2',9),('165cf52c-06b3-44cb-be7b-341989ecd10f',9),('3d652fd5-68c9-45c2-851c-8c4283af4726',9),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',9),('c95b5264-36bf-422a-ba57-07858809500f',9),('f4e01f8a-15dc-4de9-8c45-b79814228945',9),('fe8be1ca-68df-4310-b14d-80972af9fe9b',9),('10a603f5-868d-4a3d-a98b-182d5fe778f2',10),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',10),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',10),('259be2ed-739a-43bd-9957-cc7ceead5ed2',10),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',10),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',10),('5e3d29c9-9998-4325-acb4-0f677bd6863f',10),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',10),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',10),('b23f2734-3a0e-43ce-a38d-1e916288163f',10),('c95b5264-36bf-422a-ba57-07858809500f',10),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',10),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',11),('587087df-771e-4512-b767-e10cf7301119',11),('5e3d29c9-9998-4325-acb4-0f677bd6863f',11),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',11),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',11),('10a603f5-868d-4a3d-a98b-182d5fe778f2',12),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',12),('34dd41bd-4350-4542-ab93-1b92b2950edb',12),('477d6473-cd7f-4e58-80b1-7c1e10a28036',12),('48d1883a-7a29-4778-a8b2-fc764f98db27',12),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',12),('71dd73cb-6ad8-4591-970b-92dad73507af',12),('b3383ce7-8864-4436-93d9-375573173c6e',12),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',12),('0f211bef-82ed-4b44-891a-943e81960425',13),('2813229b-8f46-441f-934e-7f44282e89ab',13),('29c9c2ac-1bce-458d-a66e-7b7832d23022',13),('587087df-771e-4512-b767-e10cf7301119',13),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',13),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',13),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',13),('865b559d-a1d2-45c4-8776-a46697b04f99',13),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',13),('bfce10c2-9b78-4265-bceb-4e7026583323',13),('c3c304e3-83ec-4634-a6a0-875456008dca',13),('c75eff36-23b3-4950-9983-0b194f60e5d1',13),('dba20f2b-3b6e-4881-835e-dc979242f7ae',13),('f4e01f8a-15dc-4de9-8c45-b79814228945',13),('10a603f5-868d-4a3d-a98b-182d5fe778f2',14),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',14),('71dd73cb-6ad8-4591-970b-92dad73507af',14),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',14),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',14),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',14),('1768a468-bcca-4b51-b802-2a61a7f072b6',15),('259be2ed-739a-43bd-9957-cc7ceead5ed2',15),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',15),('34dd41bd-4350-4542-ab93-1b92b2950edb',15),('477d6473-cd7f-4e58-80b1-7c1e10a28036',15),('70df8023-da73-4d4e-ba48-2a7a0b1ab222',15),('1768a468-bcca-4b51-b802-2a61a7f072b6',16),('29c9c2ac-1bce-458d-a66e-7b7832d23022',16),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',16),('3d652fd5-68c9-45c2-851c-8c4283af4726',16),('48d1883a-7a29-4778-a8b2-fc764f98db27',16),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',16),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',16),('b3383ce7-8864-4436-93d9-375573173c6e',16),('c75eff36-23b3-4950-9983-0b194f60e5d1',16),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',16),('f4e01f8a-15dc-4de9-8c45-b79814228945',16),('2813229b-8f46-441f-934e-7f44282e89ab',17),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',17),('477d6473-cd7f-4e58-80b1-7c1e10a28036',17),('48d1883a-7a29-4778-a8b2-fc764f98db27',17),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',17),('865b559d-a1d2-45c4-8776-a46697b04f99',17),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',17),('f4e01f8a-15dc-4de9-8c45-b79814228945',17),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',18),('34ac3690-02e3-409f-b433-38621f71ea7b',18),('5e3d29c9-9998-4325-acb4-0f677bd6863f',18),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',18),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',18),('794f9c11-b8cb-44ea-8584-e764b6ac9100',18),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',18),('c3c304e3-83ec-4634-a6a0-875456008dca',18),('f4e01f8a-15dc-4de9-8c45-b79814228945',18),('fe8be1ca-68df-4310-b14d-80972af9fe9b',18),('0f211bef-82ed-4b44-891a-943e81960425',19),('34dd41bd-4350-4542-ab93-1b92b2950edb',19),('477d6473-cd7f-4e58-80b1-7c1e10a28036',19),('67408bca-3ae6-4655-bdec-69cb8c35be17',19),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',19),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',19),('a3177f34-0c6e-434d-ab27-d54003043853',19),('b3383ce7-8864-4436-93d9-375573173c6e',19),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',19),('dba20f2b-3b6e-4881-835e-dc979242f7ae',19),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',19),('0ed6501f-7f0a-4499-a269-50b2f82021d7',20),('10a603f5-868d-4a3d-a98b-182d5fe778f2',20),('165cf52c-06b3-44cb-be7b-341989ecd10f',20),('1768a468-bcca-4b51-b802-2a61a7f072b6',20),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',20),('34ac3690-02e3-409f-b433-38621f71ea7b',20),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',20),('48d1883a-7a29-4778-a8b2-fc764f98db27',20),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',21),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',21),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',21),('c75eff36-23b3-4950-9983-0b194f60e5d1',21),('0ed6501f-7f0a-4499-a269-50b2f82021d7',22),('19d8c148-9148-432d-8890-dc60c71fead2',22),('2813229b-8f46-441f-934e-7f44282e89ab',22),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408',22),('67408bca-3ae6-4655-bdec-69cb8c35be17',22),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81',22),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',22),('865b559d-a1d2-45c4-8776-a46697b04f99',22),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',22),('c3c304e3-83ec-4634-a6a0-875456008dca',22),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4',22),('ec4091f8-e01c-4f4a-8204-c396b6eeb664',22),('f79409a4-53a0-44e6-813f-64ee579be1ef',22),('fe8be1ca-68df-4310-b14d-80972af9fe9b',22),('1768a468-bcca-4b51-b802-2a61a7f072b6',23),('67408bca-3ae6-4655-bdec-69cb8c35be17',23),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',23),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',23),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',23),('b3383ce7-8864-4436-93d9-375573173c6e',23),('c75eff36-23b3-4950-9983-0b194f60e5d1',23),('259be2ed-739a-43bd-9957-cc7ceead5ed2',24),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',24),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',24),('865b559d-a1d2-45c4-8776-a46697b04f99',24),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',24),('ae7871d7-6341-4ca9-b445-3f6978e5ee60',24),('b23f2734-3a0e-43ce-a38d-1e916288163f',24),('c3c304e3-83ec-4634-a6a0-875456008dca',24),('c95b5264-36bf-422a-ba57-07858809500f',24),('f79409a4-53a0-44e6-813f-64ee579be1ef',24),('fe8be1ca-68df-4310-b14d-80972af9fe9b',24),('165cf52c-06b3-44cb-be7b-341989ecd10f',25),('19d8c148-9148-432d-8890-dc60c71fead2',25),('26041d01-3dc5-4146-b59e-155fdd609eec',25),('34ac3690-02e3-409f-b433-38621f71ea7b',25),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e',25),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',25),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523',25),('865b559d-a1d2-45c4-8776-a46697b04f99',25),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',25),('b3383ce7-8864-4436-93d9-375573173c6e',25),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7',25),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',25),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0',26),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',26),('26041d01-3dc5-4146-b59e-155fdd609eec',26),('2813229b-8f46-441f-934e-7f44282e89ab',26),('35cb73ec-ec91-4e15-b160-ef757cf6ccac',26),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',26),('587087df-771e-4512-b767-e10cf7301119',26),('67408bca-3ae6-4655-bdec-69cb8c35be17',26),('794f9c11-b8cb-44ea-8584-e764b6ac9100',26),('a3177f34-0c6e-434d-ab27-d54003043853',26),('b23f2734-3a0e-43ce-a38d-1e916288163f',26),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4',27),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',27),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2',27),('794f9c11-b8cb-44ea-8584-e764b6ac9100',27),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34',27),('81250f26-df9c-46d6-87e0-c34ad0a2bb44',27),('d130880a-3092-4064-9b65-600820616fae',27),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',28),('477d6473-cd7f-4e58-80b1-7c1e10a28036',28),('713c1222-18a7-4853-bb2d-3e2b6befd4ab',28),('794f9c11-b8cb-44ea-8584-e764b6ac9100',28),('0ed6501f-7f0a-4499-a269-50b2f82021d7',29),('0f211bef-82ed-4b44-891a-943e81960425',29),('19d8c148-9148-432d-8890-dc60c71fead2',29),('259be2ed-739a-43bd-9957-cc7ceead5ed2',29),('2813229b-8f46-441f-934e-7f44282e89ab',29),('3d652fd5-68c9-45c2-851c-8c4283af4726',29),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a',29),('71dd73cb-6ad8-4591-970b-92dad73507af',29),('adf08e01-f2d2-4ce5-99bc-e65c294fc494',29),('c75eff36-23b3-4950-9983-0b194f60e5d1',29),('d130880a-3092-4064-9b65-600820616fae',29),('dba20f2b-3b6e-4881-835e-dc979242f7ae',29),('dbf7d452-a30d-45d2-a245-6882e21b3d1f',29),('165cf52c-06b3-44cb-be7b-341989ecd10f',30),('19d8c148-9148-432d-8890-dc60c71fead2',30),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e',30),('29c9c2ac-1bce-458d-a66e-7b7832d23022',30),('34dd41bd-4350-4542-ab93-1b92b2950edb',30),('587087df-771e-4512-b767-e10cf7301119',30),('5e3d29c9-9998-4325-acb4-0f677bd6863f',30),('71dd73cb-6ad8-4591-970b-92dad73507af',30),('a3177f34-0c6e-434d-ab27-d54003043853',30),('b23f2734-3a0e-43ce-a38d-1e916288163f',30),('bfce10c2-9b78-4265-bceb-4e7026583323',30);
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
  `team_member` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0ed6501f-7f0a-4499-a269-50b2f82021d7','louella.bradley@example.com','honda1','Louella','Bradley',0),('0f211bef-82ed-4b44-891a-943e81960425','kaylee.fox@example.com','brasil','Kaylee','Fox',0),('10a603f5-868d-4a3d-a98b-182d5fe778f2','theresa.wells@example.com','dolemite','Theresa','Wells',0),('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0','doris.kuhn@example.com','telefon','Doris','Kuhn',0),('165cf52c-06b3-44cb-be7b-341989ecd10f','viet.tran@example.com','pbkdf2:sha256:150000$2cMbJlrt$278f5059967540c979c0be8dbd9c29d0072fa13427a12114aaced35fdd053b1a','Viet','Tran',1),('1768a468-bcca-4b51-b802-2a61a7f072b6','stella.ray@example.com','republic','Stella','Ray',0),('19d8c148-9148-432d-8890-dc60c71fead2','tony.carroll@example.com','groups','Tony','Carroll',0),('1d716791-2535-40f4-92ac-a7b7f9fc5ea4','chester.cole@example.com','power','Chester','Cole',0),('259be2ed-739a-43bd-9957-cc7ceead5ed2','dale.allen@example.com','bondage','Dale','Allen',0),('26041d01-3dc5-4146-b59e-155fdd609eec','alex.hansen@example.com','fright','Alex','Hansen',0),('2813229b-8f46-441f-934e-7f44282e89ab','jason.banks@example.com','nova','Jason','Banks',0),('28328ecf-43d8-4cc1-9405-d288c8f6ef3e','charlotte.lane@example.com','1qaz2wsx','Charlotte','Lane',0),('29c9c2ac-1bce-458d-a66e-7b7832d23022','brooklyn.wade@example.com','postman','Brooklyn','Wade',0),('2fcccdba-23f3-4b53-a2c6-6d2e02edb408','nevaeh.holland@example.com','joker','Nevaeh','Holland',0),('34ac3690-02e3-409f-b433-38621f71ea7b','carl.boyd@example.com','mommy','Carl','Boyd',0),('34dd41bd-4350-4542-ab93-1b92b2950edb','rosa.owens@example.com','mickey1','Rosa','Owens',0),('35cb73ec-ec91-4e15-b160-ef757cf6ccac','paula.peck@example.com','metoo','Paula','Peck',0),('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e','ben.gray@example.com','spank','Ben','Gray',0),('3d652fd5-68c9-45c2-851c-8c4283af4726','ricky.nelson@example.com','naruto','Ricky','Nelson',0),('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a','riley.carroll@example.com','rudy','Riley','Carroll',0),('477d6473-cd7f-4e58-80b1-7c1e10a28036','grace.butler@example.com','carol','Grace','Butler',0),('48d1883a-7a29-4778-a8b2-fc764f98db27','sally.watson@example.com','silly','Sally','Watson',0),('587087df-771e-4512-b767-e10cf7301119','jim.matthews@example.com','lighter','Jim','Matthews',0),('5e3d29c9-9998-4325-acb4-0f677bd6863f','michael.ellis@example.com','aaaaa1','Michael','Ellis',0),('67408bca-3ae6-4655-bdec-69cb8c35be17','tony.washington@example.com','spread','Tony','Washington',0),('6a5cd98b-60c9-4eb7-8f64-466b1035ff81','zack.daniels@example.com','disco','Zack','Daniels',0),('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523','gavin.barnett@example.com','sausages','Gavin','Barnett',0),('70df8023-da73-4d4e-ba48-2a7a0b1ab222','roberta.peters@example.com','darren','Roberta','Peters',0),('713c1222-18a7-4853-bb2d-3e2b6befd4ab','alfred.hopkins@example.com','nt5d27','Alfred','Hopkins',0),('71dd73cb-6ad8-4591-970b-92dad73507af','tracey.silva@example.com','rrrrr','Tracey','Silva',0),('7301879e-2846-42e7-bfb5-8ed8ed5b5be2','lance.butler@example.com','torpedo','Lance','Butler',0),('794f9c11-b8cb-44ea-8584-e764b6ac9100','debbie.fowler@example.com','star','Debbie','Fowler',0),('7a70ebb7-c8de-40ee-b7ba-77531cd71b34','brent.cruz@example.com','vvvvv','Brent','Cruz',0),('7c02ad03-1487-47ef-8398-6194ea20c32e','realdude@chill.com','pbkdf2:sha256:150000$LEKbS2xK$04788c7b87c19dabfd37b7126531698788cf42e01116757b00cf34df8b1f9e2f','Big','Lebowski',0),('81250f26-df9c-46d6-87e0-c34ad0a2bb44','allison.burton@example.com','syracuse','Allison','Burton',0),('8466ee91-f8f6-408d-85ec-383e5894e940','realerdude@chill.com','pbkdf2:sha256:150000$gO4ukXYN$3b591daaa9caa0349295a4336b60626b98fe904f1ef2466c9c752d4c7478e7c7','Bigger','Lebowskiiii',0),('865b559d-a1d2-45c4-8776-a46697b04f99','catherine.baker@example.com','rhythm','Catherine','Baker',0),('a3177f34-0c6e-434d-ab27-d54003043853','cameron.castillo@example.com','weston','Cameron','Castillo',0),('adf08e01-f2d2-4ce5-99bc-e65c294fc494','penny.carlson@example.com','mickey1','Penny','Carlson',0),('ae7871d7-6341-4ca9-b445-3f6978e5ee60','serenity.reyes@example.com','dalejr','Serenity','Reyes',0),('b23f2734-3a0e-43ce-a38d-1e916288163f','mia.watts@example.com','awesome','Mia','Watts',0),('b3383ce7-8864-4436-93d9-375573173c6e','gunterpearson2000@gmail.com','pbkdf2:sha256:150000$hNajNopA$95c68c7efa09b16f25a9fae91324fcb643920806389e090662586b64fa44eae1','Gunter','Pearson',1),('b566fea0-e0c0-4095-9b28-7c0f854c8ce7','timmothy.stanley@example.com','sawyer','Timmothy','Stanley',0),('bfce10c2-9b78-4265-bceb-4e7026583323','alma.burns@example.com','2580','Alma','Burns',0),('c3c304e3-83ec-4634-a6a0-875456008dca','erika.fields@example.com','sierra','Erika','Fields',0),('c75eff36-23b3-4950-9983-0b194f60e5d1','melvin.lawrence@example.com','cadillac','Melvin','Lawrence',0),('c95b5264-36bf-422a-ba57-07858809500f','christine.reid@example.com','freee','Christine','Reid',0),('d130880a-3092-4064-9b65-600820616fae','vera.watson@example.com','kenneth','Vera','Watson',0),('dba20f2b-3b6e-4881-835e-dc979242f7ae','sylvia.jackson@example.com','boob','Sylvia','Jackson',0),('dbf7d452-a30d-45d2-a245-6882e21b3d1f','ernest.griffin@example.com','wrestlin','Ernest','Griffin',0),('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4','noelle.james@example.com','melissa1','Noelle','James',0),('ec4091f8-e01c-4f4a-8204-c396b6eeb664','edna.kuhn@example.com','makaveli','Edna','Kuhn',0),('f4e01f8a-15dc-4de9-8c45-b79814228945','rhonda.fuller@example.com','gabriela','Rhonda','Fuller',0),('f79409a4-53a0-44e6-813f-64ee579be1ef','thedude@chill.com','pbkdf2:sha256:150000$qw0gXlzn$f767b2c192d867de4dcad44511d8a24f358b514b45f123a12a66fde9bbc6f945','Colson','Scott',1),('fe8be1ca-68df-4310-b14d-80972af9fe9b','terry.jacobs@example.com','webber','Terry','Jacobs',0);
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

-- Dump completed on 2020-10-24 19:52:21
