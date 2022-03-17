-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: comunidadealerta
-- ------------------------------------------------------
-- Server version	8.0.28

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add bairro',7,'add_bairro'),(26,'Can change bairro',7,'change_bairro'),(27,'Can delete bairro',7,'delete_bairro'),(28,'Can view bairro',7,'view_bairro'),(29,'Can add cidade',8,'add_cidade'),(30,'Can change cidade',8,'change_cidade'),(31,'Can delete cidade',8,'delete_cidade'),(32,'Can view cidade',8,'view_cidade'),(33,'Can add especialidade',9,'add_especialidade'),(34,'Can change especialidade',9,'change_especialidade'),(35,'Can delete especialidade',9,'delete_especialidade'),(36,'Can view especialidade',9,'view_especialidade'),(37,'Can add estado',10,'add_estado'),(38,'Can change estado',10,'change_estado'),(39,'Can delete estado',10,'delete_estado'),(40,'Can view estado',10,'view_estado'),(41,'Can add medico',11,'add_medico'),(42,'Can change medico',11,'change_medico'),(43,'Can delete medico',11,'delete_medico'),(44,'Can view medico',11,'view_medico'),(45,'Can add posto de saude',12,'add_postodesaude'),(46,'Can change posto de saude',12,'change_postodesaude'),(47,'Can delete posto de saude',12,'delete_postodesaude'),(48,'Can view posto de saude',12,'view_postodesaude'),(49,'Can add trabalha',13,'add_trabalha'),(50,'Can change trabalha',13,'change_trabalha'),(51,'Can delete trabalha',13,'delete_trabalha'),(52,'Can view trabalha',13,'view_trabalha');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$SZKlNrpoQYsY0LBJ4MOAt1$+FsgMq4I1HWo1uSGEoA+k6Ygy7JYIfv9FdFA8Bp69B4=','2022-03-17 16:55:14.226493',1,'root','','','',1,1,'2022-03-17 16:02:40.760921'),(2,'pbkdf2_sha256$320000$co61TdN7nk84SeKbz4FTCI$e9RPhwhexY3fIKIQcPWNjY5gWewPW+ECcrnhPJrelwY=',NULL,1,'gabriel','','','',1,1,'2022-03-17 16:18:42.758497');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-03-17 17:02:47.528249','Santa Catarina','Santa Catarina',1,'[{\"added\": {}}]',10,1),(2,'2022-03-17 17:02:54.754196','Pomerode','Pomerode',1,'[{\"added\": {}}]',8,1),(3,'2022-03-17 17:03:15.751431','1','Testo Central',1,'[{\"added\": {}}]',7,1),(4,'2022-03-17 17:03:22.584576','2','Centro',1,'[{\"added\": {}}]',7,1),(5,'2022-03-17 17:03:33.319639','1','Clinico Geral',1,'[{\"added\": {}}]',9,1),(6,'2022-03-17 17:03:38.637711','2','Cardiologista',1,'[{\"added\": {}}]',9,1),(7,'2022-03-17 17:04:04.083167','45842','Jose da silva de Azevedo, saude.Especialidade.None',1,'[{\"added\": {}}]',11,1),(8,'2022-03-17 17:04:20.102998','45842','Jose da silva de Azevedo, saude.Especialidade.None',2,'[]',11,1),(9,'2022-03-17 17:07:20.253357','1','Posto testo central',1,'[{\"added\": {}}]',12,1),(10,'2022-03-17 17:07:54.817401','1','Trabalha object (1)',1,'[{\"added\": {}}]',13,1),(11,'2022-03-17 17:14:30.040202','45842','Jose da silva de Azevedo',2,'[{\"changed\": {\"fields\": [\"Trabalha\"]}}]',11,1),(12,'2022-03-17 17:19:22.829335','2','Posto do centro',1,'[{\"added\": {}}]',12,1),(13,'2022-03-17 17:19:32.153082','45842','Jose da silva de Azevedo',2,'[{\"changed\": {\"fields\": [\"Trabalha\"]}}]',11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'saude','bairro'),(8,'saude','cidade'),(9,'saude','especialidade'),(10,'saude','estado'),(11,'saude','medico'),(12,'saude','postodesaude'),(13,'saude','trabalha'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-17 16:01:50.704109'),(2,'auth','0001_initial','2022-03-17 16:01:51.879837'),(3,'admin','0001_initial','2022-03-17 16:01:52.136156'),(4,'admin','0002_logentry_remove_auto_add','2022-03-17 16:01:52.147022'),(5,'admin','0003_logentry_add_action_flag_choices','2022-03-17 16:01:52.158405'),(6,'contenttypes','0002_remove_content_type_name','2022-03-17 16:01:52.313443'),(7,'auth','0002_alter_permission_name_max_length','2022-03-17 16:01:52.413427'),(8,'auth','0003_alter_user_email_max_length','2022-03-17 16:01:52.446732'),(9,'auth','0004_alter_user_username_opts','2022-03-17 16:01:52.457836'),(10,'auth','0005_alter_user_last_login_null','2022-03-17 16:01:52.542955'),(11,'auth','0006_require_contenttypes_0002','2022-03-17 16:01:52.551467'),(12,'auth','0007_alter_validators_add_error_messages','2022-03-17 16:01:52.564245'),(13,'auth','0008_alter_user_username_max_length','2022-03-17 16:01:52.659203'),(14,'auth','0009_alter_user_last_name_max_length','2022-03-17 16:01:52.758589'),(15,'auth','0010_alter_group_name_max_length','2022-03-17 16:01:52.787642'),(16,'auth','0011_update_proxy_permissions','2022-03-17 16:01:52.798882'),(17,'auth','0012_alter_user_first_name_max_length','2022-03-17 16:01:52.895977'),(18,'saude','0001_initial','2022-03-17 16:01:54.046861'),(19,'sessions','0001_initial','2022-03-17 16:01:54.119685'),(20,'saude','0002_remove_postodesaude_medico_trabalha','2022-03-17 17:01:33.727337'),(21,'saude','0003_medico_trabalha_delete_trabalha','2022-03-17 17:14:17.006612');
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
INSERT INTO `django_session` VALUES ('q5a1s1h5gyqmrwkjueqb80lsj1ixqfmn','.eJxVjDsOwjAQBe_iGlmOSRwvJX3OYK33QwLIlvKpEHeHSCmgfTPzXibhto5pW2ROE5uLaczpd8tIDyk74DuWW7VUyzpP2e6KPehih8ryvB7u38GIy_itJUSQDjqMwNB78CwuN-KpBQVS9sQeqdfQxwacIw1RokZt4awUMpj3B_BVOHA:1nUtP8:vOC-bHEzh0B7fhQW5xOt75hsGpbl23P8nKUfVpMlbhk','2022-03-31 16:55:14.234285');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude_bairro`
--

DROP TABLE IF EXISTS `saude_bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude_bairro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cidade_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `saude_bairro_cidade_id_99f71f64_fk_saude_cidade_nome` (`cidade_id`),
  CONSTRAINT `saude_bairro_cidade_id_99f71f64_fk_saude_cidade_nome` FOREIGN KEY (`cidade_id`) REFERENCES `saude_cidade` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude_bairro`
--

LOCK TABLES `saude_bairro` WRITE;
/*!40000 ALTER TABLE `saude_bairro` DISABLE KEYS */;
INSERT INTO `saude_bairro` VALUES (1,'Testo Central','Pomerode'),(2,'Centro','Pomerode');
/*!40000 ALTER TABLE `saude_bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude_cidade`
--

DROP TABLE IF EXISTS `saude_cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude_cidade` (
  `nome` varchar(200) NOT NULL,
  `estado_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`nome`),
  KEY `saude_cidade_estado_id_c21ce5be_fk_saude_estado_nome` (`estado_id`),
  CONSTRAINT `saude_cidade_estado_id_c21ce5be_fk_saude_estado_nome` FOREIGN KEY (`estado_id`) REFERENCES `saude_estado` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude_cidade`
--

LOCK TABLES `saude_cidade` WRITE;
/*!40000 ALTER TABLE `saude_cidade` DISABLE KEYS */;
INSERT INTO `saude_cidade` VALUES ('Pomerode','Santa Catarina');
/*!40000 ALTER TABLE `saude_cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude_especialidade`
--

DROP TABLE IF EXISTS `saude_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude_especialidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude_especialidade`
--

LOCK TABLES `saude_especialidade` WRITE;
/*!40000 ALTER TABLE `saude_especialidade` DISABLE KEYS */;
INSERT INTO `saude_especialidade` VALUES (1,'Clinico Geral'),(2,'Cardiologista');
/*!40000 ALTER TABLE `saude_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude_estado`
--

DROP TABLE IF EXISTS `saude_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude_estado` (
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude_estado`
--

LOCK TABLES `saude_estado` WRITE;
/*!40000 ALTER TABLE `saude_estado` DISABLE KEYS */;
INSERT INTO `saude_estado` VALUES ('Santa Catarina');
/*!40000 ALTER TABLE `saude_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude_medico`
--

DROP TABLE IF EXISTS `saude_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude_medico` (
  `crm` varchar(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude_medico`
--

LOCK TABLES `saude_medico` WRITE;
/*!40000 ALTER TABLE `saude_medico` DISABLE KEYS */;
INSERT INTO `saude_medico` VALUES ('45842','Jose da silva de Azevedo');
/*!40000 ALTER TABLE `saude_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude_medico_especialidade`
--

DROP TABLE IF EXISTS `saude_medico_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude_medico_especialidade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `medico_id` varchar(20) NOT NULL,
  `especialidade_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `saude_medico_especialida_medico_id_especialidade__fc71e6bd_uniq` (`medico_id`,`especialidade_id`),
  KEY `saude_medico_especia_especialidade_id_7224bd39_fk_saude_esp` (`especialidade_id`),
  CONSTRAINT `saude_medico_especia_especialidade_id_7224bd39_fk_saude_esp` FOREIGN KEY (`especialidade_id`) REFERENCES `saude_especialidade` (`id`),
  CONSTRAINT `saude_medico_especia_medico_id_b0997527_fk_saude_med` FOREIGN KEY (`medico_id`) REFERENCES `saude_medico` (`crm`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude_medico_especialidade`
--

LOCK TABLES `saude_medico_especialidade` WRITE;
/*!40000 ALTER TABLE `saude_medico_especialidade` DISABLE KEYS */;
INSERT INTO `saude_medico_especialidade` VALUES (1,'45842',1);
/*!40000 ALTER TABLE `saude_medico_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude_medico_trabalha`
--

DROP TABLE IF EXISTS `saude_medico_trabalha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude_medico_trabalha` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `medico_id` varchar(20) NOT NULL,
  `postodesaude_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `saude_medico_trabalha_medico_id_postodesaude_id_5dfb5f3a_uniq` (`medico_id`,`postodesaude_id`),
  KEY `saude_medico_trabalh_postodesaude_id_98852be0_fk_saude_pos` (`postodesaude_id`),
  CONSTRAINT `saude_medico_trabalh_postodesaude_id_98852be0_fk_saude_pos` FOREIGN KEY (`postodesaude_id`) REFERENCES `saude_postodesaude` (`id`),
  CONSTRAINT `saude_medico_trabalha_medico_id_31eb16d7_fk_saude_medico_crm` FOREIGN KEY (`medico_id`) REFERENCES `saude_medico` (`crm`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude_medico_trabalha`
--

LOCK TABLES `saude_medico_trabalha` WRITE;
/*!40000 ALTER TABLE `saude_medico_trabalha` DISABLE KEYS */;
INSERT INTO `saude_medico_trabalha` VALUES (1,'45842',1),(2,'45842',2);
/*!40000 ALTER TABLE `saude_medico_trabalha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saude_postodesaude`
--

DROP TABLE IF EXISTS `saude_postodesaude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saude_postodesaude` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `rua` varchar(200) NOT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `bairro_id` int DEFAULT NULL,
  `cidade_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `saude_postodesaude_bairro_id_939eff30_fk_saude_bairro_id` (`bairro_id`),
  KEY `saude_postodesaude_cidade_id_aaaed1da_fk_saude_cidade_nome` (`cidade_id`),
  CONSTRAINT `saude_postodesaude_bairro_id_939eff30_fk_saude_bairro_id` FOREIGN KEY (`bairro_id`) REFERENCES `saude_bairro` (`id`),
  CONSTRAINT `saude_postodesaude_cidade_id_aaaed1da_fk_saude_cidade_nome` FOREIGN KEY (`cidade_id`) REFERENCES `saude_cidade` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saude_postodesaude`
--

LOCK TABLES `saude_postodesaude` WRITE;
/*!40000 ALTER TABLE `saude_postodesaude` DISABLE KEYS */;
INSERT INTO `saude_postodesaude` VALUES (1,'Posto testo central','Rua n sei qual','2313512',1,'Pomerode'),(2,'Posto do centro','rua nj sei','213412412',2,'Pomerode');
/*!40000 ALTER TABLE `saude_postodesaude` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-17 17:57:05
