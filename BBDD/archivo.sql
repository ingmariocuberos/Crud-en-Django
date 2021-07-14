-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: cursos_storage
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(500) NOT NULL,
  `clasesVistas` int NOT NULL,
  `cursoMatriculado_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alumnos_cursoMatriculado_id_65b792c3_fk_curso_id` (`cursoMatriculado_id`),
  CONSTRAINT `alumnos_cursoMatriculado_id_65b792c3_fk_curso_id` FOREIGN KEY (`cursoMatriculado_id`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (3216545,'Rafit','Duque','radu@gmail.com',3,103),(3245485,'Sandra','Hernandez','saner@gmail.com',3,104),(3541654,'Victor','Nossa','vicnoss@gmail.com',3,106),(4567842,'Felipe','Estepa','feliexte@gmail.com',4,105),(5467896,'Vladimir','Quiroz','quiroz@gmail.com',1,101),(6545628,'Simon','Rakchin','rackchin@gmail.com',2,103),(6548945,'Patricio','Almanda','almanda@gmail.com',6,108),(6548952,'Hector','Yañez','yanez@gmail.com',3,105),(9875463,'Miguel','Savedra','migas@gmail.com',4,104),(9875466,'Tatiana','Sanchez','tatisanch@gmail.com',4,101),(11111111,'Andrea','Nuñez','annu@gmail.com',4,102),(12457896,'Gabriel','Alvarado','alvarado@gmail.com',3,107),(13456485,'Astrid','Malpica','Malpica@gmail.com',2,106),(23415846,'Mario','Sepulveda','sepulv@gmail.com',2,108),(32156481,'Alejandro','Barniz','barniz@gmail.com',5,102),(32157486,'Nubia','Pacheco','nubpa@gmail.com',3,101),(32415641,'Mari','Contreras','macan@gmail.com',4,103),(32415848,'Katrina','Vallejo','katriva@gmail.com',3,104),(65484541,'Adriana','Cuello','adricua@gmail.com',2,105),(65498732,'Roberto','Meritano','robermer@gmail.com',4,107),(65984741,'Sandra','Salamanca','salama@gmail.com',2,107),(489512125,'Andre','Noriega','adn@gmail.com',1,106),(657498456,'Karina','Pacheco','karipa@gmail.com',6,108),(1094555222,'Alberto','Lizarazo','alberliz@gmail.com',2,102);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add clase',7,'add_clase'),(26,'Can change clase',7,'change_clase'),(27,'Can delete clase',7,'delete_clase'),(28,'Can view clase',7,'view_clase'),(29,'Can add Curso',8,'add_curso'),(30,'Can change Curso',8,'change_curso'),(31,'Can delete Curso',8,'delete_curso'),(32,'Can view Curso',8,'view_curso'),(33,'Can add Alumno',9,'add_alumnos'),(34,'Can change Alumno',9,'change_alumnos'),(35,'Can delete Alumno',9,'delete_alumnos'),(36,'Can view Alumno',9,'view_alumnos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$QpH79vgUR9uhGoB0eKxysU$f6uK+tr3wlUfTz8Jp/Ounex6LeUH9L4AyVRFGjWqw8A=','2021-07-14 03:28:22.465870',1,'mario','','','ing.mariocuberos@gmail.com',1,1,'2021-07-14 03:24:40.867833');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `perfil` varchar(500) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `duracion` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (101,'Estudio Matemático','Matemático','Aprendizaje general de la materia',40),(102,'Aprendiendo A Emprender','Emprendedores','Curso con las bases para convertirse en un emprendedor de éxito',50),(103,'Venta Directa','Asesor Comercial','Enseña el arte de la venta en frio',40),(104,'Tutor Deportivo','Deportistas, aficionados al deporte','Capacita para ser tutor en deporte',200),(105,'Introducción al Marketing Digital','Interesados en Venta por Internet','Se enseñan las bases para iniciar en el Marketing Digital',50),(106,'Programación Web','Técnicos en áreas Tech','Se enseñan las bases de la programación Web',80),(107,'Desarrollo Móvil','Técnicos en áreas Tech','Se enseñan las bases de la programación Móvil',80),(108,'Programación Full Stack','Programador Jr','Se aprende a programar tanto en Front-End como en Back-End',800);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_clases`
--

DROP TABLE IF EXISTS `curso_clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_clases` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `curso_id` int NOT NULL,
  `clase_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `curso_clases_curso_id_clase_id_0b2f10f0_uniq` (`curso_id`,`clase_id`),
  KEY `curso_clases_clase_id_e5a5a8d9_fk_Principal_clase_id` (`clase_id`),
  CONSTRAINT `curso_clases_clase_id_e5a5a8d9_fk_Principal_clase_id` FOREIGN KEY (`clase_id`) REFERENCES `principal_clase` (`id`),
  CONSTRAINT `curso_clases_curso_id_1dda060e_fk_curso_id` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_clases`
--

LOCK TABLES `curso_clases` WRITE;
/*!40000 ALTER TABLE `curso_clases` DISABLE KEYS */;
INSERT INTO `curso_clases` VALUES (1,101,1002),(2,101,1003),(3,101,1005),(4,101,1009),(5,101,1011),(6,102,1002),(7,102,1004),(8,102,1005),(9,102,1006),(10,102,1007),(11,102,1009),(12,103,1002),(13,103,1005),(14,103,1006),(15,103,1007),(16,103,1009),(17,103,1010),(18,104,1003),(19,104,1005),(20,104,1009),(21,104,1011),(22,104,1012),(23,105,1002),(25,105,1006),(26,105,1007),(24,105,1010),(28,106,1001),(29,106,1002),(27,106,1008),(30,106,1014),(32,107,1001),(33,107,1002),(31,107,1008),(34,107,1015),(35,108,1001),(36,108,1002),(37,108,1003),(38,108,1004),(39,108,1006),(40,108,1009),(41,108,1010),(42,108,1014),(43,108,1015);
/*!40000 ALTER TABLE `curso_clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-07-14 05:18:39.848096','1018','1018. Eliminar',1,'[{\"added\": {}}]',7,1),(2,'2021-07-14 13:36:07.641226','101','101. Estudio Matemático',1,'[{\"added\": {}}]',8,1),(3,'2021-07-14 13:37:09.987609','102','102. Aprendiendo A Emprender',1,'[{\"added\": {}}]',8,1),(4,'2021-07-14 13:38:15.755287','103','103. Venta Directa',1,'[{\"added\": {}}]',8,1),(5,'2021-07-14 13:39:23.871484','104','104. Tutor Deportivo',1,'[{\"added\": {}}]',8,1),(6,'2021-07-14 13:40:44.518763','105','105. Introducción al Marketing Digital',1,'[{\"added\": {}}]',8,1),(7,'2021-07-14 13:42:04.054804','106','106. Programación Web',1,'[{\"added\": {}}]',8,1),(8,'2021-07-14 13:43:06.887760','107','107. Desarrollo Móvil',1,'[{\"added\": {}}]',8,1),(9,'2021-07-14 13:44:21.855417','108','108. Programación Full Stack',1,'[{\"added\": {}}]',8,1),(10,'2021-07-14 13:47:01.995083','1094555222','1094555222. Alberto 102. Aprendiendo A Emprender',1,'[{\"added\": {}}]',9,1),(11,'2021-07-14 13:48:33.299052','11111111','11111111. Andrea 102. Aprendiendo A Emprender',1,'[{\"added\": {}}]',9,1),(12,'2021-07-14 13:49:00.812718','32156481','32156481. Alejandro 102. Aprendiendo A Emprender',1,'[{\"added\": {}}]',9,1),(13,'2021-07-14 13:49:46.787017','65498732','65498732. Roberto 107. Desarrollo Móvil',1,'[{\"added\": {}}]',9,1),(14,'2021-07-14 13:50:26.486834','12457896','12457896. Gabriel 107. Desarrollo Móvil',1,'[{\"added\": {}}]',9,1),(15,'2021-07-14 13:50:51.440639','65984741','65984741. Sandra 107. Desarrollo Móvil',1,'[{\"added\": {}}]',9,1),(16,'2021-07-14 13:51:38.941956','32157486','32157486. Nubia 101. Estudio Matemático',1,'[{\"added\": {}}]',9,1),(17,'2021-07-14 13:52:33.036275','9875466','9875466. Tatiana 101. Estudio Matemático',1,'[{\"added\": {}}]',9,1),(18,'2021-07-14 13:52:59.511531','5467896','5467896. Vladimir 101. Estudio Matemático',1,'[{\"added\": {}}]',9,1),(19,'2021-07-14 13:53:49.628927','4567842','4567842. Felipe 105. Introducción al Marketing Digital',1,'[{\"added\": {}}]',9,1),(20,'2021-07-14 13:54:24.736664','6548952','6548952. Hector 105. Introducción al Marketing Digital',1,'[{\"added\": {}}]',9,1),(21,'2021-07-14 13:54:54.370957','65484541','65484541. Adriana 105. Introducción al Marketing Digital',1,'[{\"added\": {}}]',9,1),(22,'2021-07-14 13:55:37.456544','6548945','6548945. Patricio 108. Programación Full Stack',1,'[{\"added\": {}}]',9,1),(23,'2021-07-14 13:56:28.776549','23415846','23415846. Mario 108. Programación Full Stack',1,'[{\"added\": {}}]',9,1),(24,'2021-07-14 13:56:51.551933','657498456','657498456. Karina 108. Programación Full Stack',1,'[{\"added\": {}}]',9,1),(25,'2021-07-14 13:57:29.843783','3541654','3541654. Victor 106. Programación Web',1,'[{\"added\": {}}]',9,1),(26,'2021-07-14 13:58:04.706585','489512125','489512125. Andre 106. Programación Web',1,'[{\"added\": {}}]',9,1),(27,'2021-07-14 13:58:40.688750','13456485','13456485. Astrid 106. Programación Web',1,'[{\"added\": {}}]',9,1),(28,'2021-07-14 13:59:09.835028','3245485','3245485. Sandra 104. Tutor Deportivo',1,'[{\"added\": {}}]',9,1),(29,'2021-07-14 13:59:49.798747','32415848','32415848. Katrina 104. Tutor Deportivo',1,'[{\"added\": {}}]',9,1),(30,'2021-07-14 14:00:13.928810','9875463','9875463. Miguel 104. Tutor Deportivo',1,'[{\"added\": {}}]',9,1),(31,'2021-07-14 14:01:07.876884','6545628','6545628. Simon 103. Venta Directa',1,'[{\"added\": {}}]',9,1),(32,'2021-07-14 14:01:30.868823','3216545','3216545. Rafit 103. Venta Directa',1,'[{\"added\": {}}]',9,1),(33,'2021-07-14 14:02:33.761212','32415641','32415641. Mari 103. Venta Directa',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'Principal','alumnos'),(7,'Principal','clase'),(8,'Principal','curso'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-07-14 01:06:25.002536'),(2,'auth','0001_initial','2021-07-14 01:06:28.594384'),(3,'admin','0001_initial','2021-07-14 01:06:30.040185'),(4,'admin','0002_logentry_remove_auto_add','2021-07-14 01:06:30.064629'),(5,'admin','0003_logentry_add_action_flag_choices','2021-07-14 01:06:30.122643'),(6,'contenttypes','0002_remove_content_type_name','2021-07-14 01:06:30.667864'),(7,'auth','0002_alter_permission_name_max_length','2021-07-14 01:06:30.877145'),(8,'auth','0003_alter_user_email_max_length','2021-07-14 01:06:31.056182'),(9,'auth','0004_alter_user_username_opts','2021-07-14 01:06:31.077148'),(10,'auth','0005_alter_user_last_login_null','2021-07-14 01:06:31.631930'),(11,'auth','0006_require_contenttypes_0002','2021-07-14 01:06:31.641691'),(12,'auth','0007_alter_validators_add_error_messages','2021-07-14 01:06:31.721681'),(13,'auth','0008_alter_user_username_max_length','2021-07-14 01:06:32.023426'),(14,'auth','0009_alter_user_last_name_max_length','2021-07-14 01:06:33.867658'),(15,'auth','0010_alter_group_name_max_length','2021-07-14 01:06:34.007459'),(16,'auth','0011_update_proxy_permissions','2021-07-14 01:06:34.046293'),(17,'auth','0012_alter_user_first_name_max_length','2021-07-14 01:06:34.588614'),(18,'sessions','0001_initial','2021-07-14 01:06:34.791729'),(19,'Principal','0001_initial','2021-07-14 01:23:53.456572'),(20,'Principal','0002_curso','2021-07-14 04:52:49.642802'),(21,'Principal','0003_auto_20210714_0807','2021-07-14 13:07:32.540866'),(22,'Principal','0004_alumnos','2021-07-14 13:32:34.450130');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('givgsqribe1e9q4rrduvzarhd2busbl7','.eJxVjMEOwiAQRP-FsyEUlyX16N1vILssSNVAUtqT8d9tkx40c5v3Zt4q0LqUsPY0h0nURQ3q9NsxxWeqO5AH1XvTsdVlnljvij5o17cm6XU93L-DQr1sawsIyChG0KA1SOydbEFIPtMYQQAsRyAUH8-ZgCCzGyxkO7IDpz5f1qw3yQ:1m3VZO:jsRbFPPQG6H1NQO9awBW_Bx9_OTNjEwvgBjz3ElAKbY','2021-07-28 03:28:22.724173');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_clase`
--

DROP TABLE IF EXISTS `principal_clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_clase` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `creditos` smallint unsigned NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `modalidad` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `principal_clase_chk_1` CHECK ((`creditos` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_clase`
--

LOCK TABLES `principal_clase` WRITE;
/*!40000 ALTER TABLE `principal_clase` DISABLE KEYS */;
INSERT INTO `principal_clase` VALUES (1001,'Programación Básica',2,'programacionbas@gmail.com','Tech','Virtual'),(1002,'Matemáticas',3,'math@gmail.com','Básica','Presencial'),(1003,'Ciencias',1,'ciencs@gmail.com','Básica','Presencial'),(1004,'Emprendimiento',2,'emp@gmail.com','Desarrollo','Presencial'),(1005,'Comunicación',1,'comu@gmail.com','Desarrollo','Presencial'),(1006,'Ventas',2,'vent@gmail.com','Desarrollo','Presencial'),(1007,'Office 2010',2,'microsoft@gmail.com','Tech','Virtual'),(1008,'Hardware',1,'hw@gmail.com','Tech','Presencial'),(1009,'Liderazgo',3,'liderazgo@gmail.com','Desarrollo','Presencial'),(1010,'Marketing Digital',2,'marketingd@gmail.com','Tech','Virtual'),(1011,'Deportes',1,'sports@gmail.com','Básica','Presencial'),(1012,'Nutrición',1,'nutri@gmail.com','Básica','Presencial'),(1013,'Música',1,'music@gmail.com','Básica','Presencial'),(1014,'Desarrollo Web',3,'desweb@gmail.com','Tech','Presencial'),(1015,'Desarrollo Móvil',3,'desmobil@gmail.com','Tech','Presencial');
/*!40000 ALTER TABLE `principal_clase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-14 15:31:24
