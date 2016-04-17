CREATE DATABASE  IF NOT EXISTS `roampa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `roampa`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: roampa
-- ------------------------------------------------------
-- Server version	5.5.38

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
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('0','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.0-create-schema.xml','2016-04-15 12:11:42',1,'EXECUTED','7:672ae7e51135b928da385e17e53211d9','sql','',NULL,'3.4.1',NULL,NULL),('1.0.0','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.xml','2016-04-15 12:11:42',2,'EXECUTED','7:96a18b7b1807f334ea204127021bec68','tagDatabase','','1.0.0','3.4.1',NULL,NULL),('1','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.1-load-data.xml','2016-04-15 12:11:42',3,'EXECUTED','7:5701c7abf1c8e750fe025feef998e762','sql','',NULL,'3.4.1',NULL,NULL),('2','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.1-load-data.xml','2016-04-15 12:11:42',4,'EXECUTED','7:ce3f2b4acbccfe1552dd2bb58ff0aac3','sql','',NULL,'3.4.1',NULL,NULL),('3','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.1-load-data.xml','2016-04-15 12:11:42',5,'EXECUTED','7:c253e587a4d09dc1c3d067f304a319a3','sql','',NULL,'3.4.1',NULL,NULL),('4','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.1-load-data.xml','2016-04-15 12:11:42',6,'EXECUTED','7:dd7ee95a538d9f7a3195f7c28d7413d7','sql','',NULL,'3.4.1',NULL,NULL),('1.0.1','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.xml','2016-04-15 12:11:42',7,'EXECUTED','7:f949a2af30a38ea0fc448b5cfe82e09f','tagDatabase','','1.0.1','3.4.1',NULL,NULL),('5','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.2-load-data.xml','2016-04-15 12:11:42',8,'EXECUTED','7:2cfb28c3cf1c4cd5d40dd8cbda4d6c3c','sql','',NULL,'3.4.1',NULL,NULL),('1.0.2','skistapur','src/main/resources/liquibase/1.x/1.0/db.changelog-1.0.xml','2016-04-15 12:11:42',9,'EXECUTED','7:54b38c99607de1d2388004a3c2e7c6bb','tagDatabase','','1.0.2','3.4.1',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  `address_line_1` varchar(100) DEFAULT NULL,
  `address_line_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `zipcode` varchar(15) DEFAULT NULL,
  `country_id` char(2) NOT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_country_id_idx` (`country_id`),
  CONSTRAINT `address_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_config`
--

DROP TABLE IF EXISTS `app_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `value` varchar(256) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` varchar(256) NOT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_config`
--

LOCK TABLES `app_config` WRITE;
/*!40000 ALTER TABLE `app_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignee_relations`
--

DROP TABLE IF EXISTS `assignee_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignee_relations` (
  `assignee_id` bigint(10) NOT NULL,
  `relation_id` bigint(10) NOT NULL,
  KEY `assignee_relations_pk` (`assignee_id`,`relation_id`),
  KEY `assignee_relations_relations_fk_idx` (`relation_id`),
  CONSTRAINT `assignee_relations_assignee_fk` FOREIGN KEY (`assignee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `assignee_relations_relations_fk` FOREIGN KEY (`relation_id`) REFERENCES `relations` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignee_relations`
--

LOCK TABLES `assignee_relations` WRITE;
/*!40000 ALTER TABLE `assignee_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignee_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `country` char(2) NOT NULL,
  `company_id` bigint(10) NOT NULL,
  `assignee_id` bigint(10) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `open_ended` bit(1) DEFAULT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(150) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `job_role` varchar(100) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assignments_company_fk_idx` (`company_id`),
  KEY `assignments_user_fk_idx` (`assignee_id`),
  CONSTRAINT `assignments_company_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `assignments_user_fk` FOREIGN KEY (`assignee_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `address_id` bigint(10) NOT NULL,
  `is_main` bit(1) DEFAULT b'0',
  `parent_company_id` bigint(10) DEFAULT NULL,
  `creator_id` bigint(10) NOT NULL,
  `logo_file_name` varchar(100) DEFAULT NULL,
  `registraion_number` varchar(100) DEFAULT NULL,
  `tax_number` varchar(45) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `vat_number` varchar(45) DEFAULT NULL,
  `main_contact_name` varchar(150) DEFAULT NULL,
  `main_contact_number` varchar(15) DEFAULT NULL,
  `main_contact_company_number` varchar(15) DEFAULT NULL,
  `main_contact_email` varchar(150) DEFAULT NULL,
  `second_contact_name` varchar(150) DEFAULT NULL,
  `second_contact_number` varchar(15) DEFAULT NULL,
  `second_contact_company_number` varchar(15) DEFAULT NULL,
  `second_contact_email` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_name_UNIQUE` (`name`),
  KEY `company_address_id_idx` (`address_id`),
  KEY `company_parent_company_id_fk_idx` (`parent_company_id`),
  KEY `company_user_creator_idx` (`creator_id`),
  CONSTRAINT `company_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `company_parent_company_id_fk` FOREIGN KEY (`parent_company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `company_user_creator` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_license_request`
--

DROP TABLE IF EXISTS `company_license_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_license_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(10) DEFAULT NULL,
  `requested_by` bigint(10) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `license_request_user_by_fk_idx` (`requested_by`),
  CONSTRAINT `license_request_user_by_fk` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_license_request`
--

LOCK TABLES `company_license_request` WRITE;
/*!40000 ALTER TABLE `company_license_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_license_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `iso2` char(2) NOT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`iso2`),
  UNIQUE KEY `iso2_UNIQUE` (`iso2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('AD','Andorra','Principality of Andorra','AND','020','yes','376','.ad','2016-04-15 11:11:42',NULL,NULL,NULL),('AE','United Arab Emirates','United Arab Emirates','ARE','784','yes','971','.ae','2016-04-15 11:11:42',NULL,NULL,NULL),('AF','Afghanistan','Islamic Republic of Afghanistan','AFG','004','yes','93','.af','2016-04-15 11:11:42',NULL,NULL,NULL),('AG','Antigua and Barbuda','Antigua and Barbuda','ATG','028','yes','1+268','.ag','2016-04-15 11:11:42',NULL,NULL,NULL),('AI','Anguilla','Anguilla','AIA','660','no','1+264','.ai','2016-04-15 11:11:42',NULL,NULL,NULL),('AL','Albania','Republic of Albania','ALB','008','yes','355','.al','2016-04-15 11:11:42',NULL,NULL,NULL),('AM','Armenia','Republic of Armenia','ARM','051','yes','374','.am','2016-04-15 11:11:42',NULL,NULL,NULL),('AO','Angola','Republic of Angola','AGO','024','yes','244','.ao','2016-04-15 11:11:42',NULL,NULL,NULL),('AQ','Antarctica','Antarctica','ATA','010','no','672','.aq','2016-04-15 11:11:42',NULL,NULL,NULL),('AR','Argentina','Argentine Republic','ARG','032','yes','54','.ar','2016-04-15 11:11:42',NULL,NULL,NULL),('AS','American Samoa','American Samoa','ASM','016','no','1+684','.as','2016-04-15 11:11:42',NULL,NULL,NULL),('AT','Austria','Republic of Austria','AUT','040','yes','43','.at','2016-04-15 11:11:42',NULL,NULL,NULL),('AU','Australia','Commonwealth of Australia','AUS','036','yes','61','.au','2016-04-15 11:11:42',NULL,NULL,NULL),('AW','Aruba','Aruba','ABW','533','no','297','.aw','2016-04-15 11:11:42',NULL,NULL,NULL),('AX','Aland Islands','Aland Islands','ALA','248','no','358','.ax','2016-04-15 11:11:42',NULL,NULL,NULL),('AZ','Azerbaijan','Republic of Azerbaijan','AZE','031','yes','994','.az','2016-04-15 11:11:42',NULL,NULL,NULL),('BA','Bosnia and Herzegovina','Bosnia and Herzegovina','BIH','070','yes','387','.ba','2016-04-15 11:11:42',NULL,NULL,NULL),('BB','Barbados','Barbados','BRB','052','yes','1+246','.bb','2016-04-15 11:11:42',NULL,NULL,NULL),('BD','Bangladesh','People\'s Republic of Bangladesh','BGD','050','yes','880','.bd','2016-04-15 11:11:42',NULL,NULL,NULL),('BE','Belgium','Kingdom of Belgium','BEL','056','yes','32','.be','2016-04-15 11:11:42',NULL,NULL,NULL),('BF','Burkina Faso','Burkina Faso','BFA','854','yes','226','.bf','2016-04-15 11:11:42',NULL,NULL,NULL),('BG','Bulgaria','Republic of Bulgaria','BGR','100','yes','359','.bg','2016-04-15 11:11:42',NULL,NULL,NULL),('BH','Bahrain','Kingdom of Bahrain','BHR','048','yes','973','.bh','2016-04-15 11:11:42',NULL,NULL,NULL),('BI','Burundi','Republic of Burundi','BDI','108','yes','257','.bi','2016-04-15 11:11:42',NULL,NULL,NULL),('BJ','Benin','Republic of Benin','BEN','204','yes','229','.bj','2016-04-15 11:11:42',NULL,NULL,NULL),('BL','Saint Barthelemy','Saint Barthelemy','BLM','652','no','590','.bl','2016-04-15 11:11:42',NULL,NULL,NULL),('BM','Bermuda','Bermuda Islands','BMU','060','no','1+441','.bm','2016-04-15 11:11:42',NULL,NULL,NULL),('BN','Brunei','Brunei Darussalam','BRN','096','yes','673','.bn','2016-04-15 11:11:42',NULL,NULL,NULL),('BO','Bolivia','Plurinational State of Bolivia','BOL','068','yes','591','.bo','2016-04-15 11:11:42',NULL,NULL,NULL),('BQ','Bonaire, Sint Eustatius and Saba','Bonaire, Sint Eustatius and Saba','BES','535','no','599','.bq','2016-04-15 11:11:42',NULL,NULL,NULL),('BR','Brazil','Federative Republic of Brazil','BRA','076','yes','55','.br','2016-04-15 11:11:42',NULL,NULL,NULL),('BS','Bahamas','Commonwealth of The Bahamas','BHS','044','yes','1+242','.bs','2016-04-15 11:11:42',NULL,NULL,NULL),('BT','Bhutan','Kingdom of Bhutan','BTN','064','yes','975','.bt','2016-04-15 11:11:42',NULL,NULL,NULL),('BV','Bouvet Island','Bouvet Island','BVT','074','no','NONE','.bv','2016-04-15 11:11:42',NULL,NULL,NULL),('BW','Botswana','Republic of Botswana','BWA','072','yes','267','.bw','2016-04-15 11:11:42',NULL,NULL,NULL),('BY','Belarus','Republic of Belarus','BLR','112','yes','375','.by','2016-04-15 11:11:42',NULL,NULL,NULL),('BZ','Belize','Belize','BLZ','084','yes','501','.bz','2016-04-15 11:11:42',NULL,NULL,NULL),('CA','Canada','Canada','CAN','124','yes','1','.ca','2016-04-15 11:11:42',NULL,NULL,NULL),('CC','Cocos (Keeling) Islands','Cocos (Keeling) Islands','CCK','166','no','61','.cc','2016-04-15 11:11:42',NULL,NULL,NULL),('CD','Democratic Republic of the Congo','Democratic Republic of the Congo','COD','180','yes','243','.cd','2016-04-15 11:11:42',NULL,NULL,NULL),('CF','Central African Republic','Central African Republic','CAF','140','yes','236','.cf','2016-04-15 11:11:42',NULL,NULL,NULL),('CG','Congo','Republic of the Congo','COG','178','yes','242','.cg','2016-04-15 11:11:42',NULL,NULL,NULL),('CH','Switzerland','Swiss Confederation','CHE','756','yes','41','.ch','2016-04-15 11:11:42',NULL,NULL,NULL),('CI','Cote d\'ivoire (Ivory Coast)','Republic of Cote D\'Ivoire (Ivory Coast)','CIV','384','yes','225','.ci','2016-04-15 11:11:42',NULL,NULL,NULL),('CK','Cook Islands','Cook Islands','COK','184','some','682','.ck','2016-04-15 11:11:42',NULL,NULL,NULL),('CL','Chile','Republic of Chile','CHL','152','yes','56','.cl','2016-04-15 11:11:42',NULL,NULL,NULL),('CM','Cameroon','Republic of Cameroon','CMR','120','yes','237','.cm','2016-04-15 11:11:42',NULL,NULL,NULL),('CN','China','People\'s Republic of China','CHN','156','yes','86','.cn','2016-04-15 11:11:42',NULL,NULL,NULL),('CO','Colombia','Republic of Colombia','COL','170','yes','57','.co','2016-04-15 11:11:42',NULL,NULL,NULL),('CR','Costa Rica','Republic of Costa Rica','CRI','188','yes','506','.cr','2016-04-15 11:11:42',NULL,NULL,NULL),('CU','Cuba','Republic of Cuba','CUB','192','yes','53','.cu','2016-04-15 11:11:42',NULL,NULL,NULL),('CV','Cape Verde','Republic of Cape Verde','CPV','132','yes','238','.cv','2016-04-15 11:11:42',NULL,NULL,NULL),('CW','Curacao','Curacao','CUW','531','no','599','.cw','2016-04-15 11:11:42',NULL,NULL,NULL),('CX','Christmas Island','Christmas Island','CXR','162','no','61','.cx','2016-04-15 11:11:42',NULL,NULL,NULL),('CY','Cyprus','Republic of Cyprus','CYP','196','yes','357','.cy','2016-04-15 11:11:42',NULL,NULL,NULL),('CZ','Czech Republic','Czech Republic','CZE','203','yes','420','.cz','2016-04-15 11:11:42',NULL,NULL,NULL),('DE','Germany','Federal Republic of Germany','DEU','276','yes','49','.de','2016-04-15 11:11:42',NULL,NULL,NULL),('DJ','Djibouti','Republic of Djibouti','DJI','262','yes','253','.dj','2016-04-15 11:11:42',NULL,NULL,NULL),('DK','Denmark','Kingdom of Denmark','DNK','208','yes','45','.dk','2016-04-15 11:11:42',NULL,NULL,NULL),('DM','Dominica','Commonwealth of Dominica','DMA','212','yes','1+767','.dm','2016-04-15 11:11:42',NULL,NULL,NULL),('DO','Dominican Republic','Dominican Republic','DOM','214','yes','1+809, 8','.do','2016-04-15 11:11:42',NULL,NULL,NULL),('DZ','Algeria','People\'s Democratic Republic of Algeria','DZA','012','yes','213','.dz','2016-04-15 11:11:42',NULL,NULL,NULL),('EC','Ecuador','Republic of Ecuador','ECU','218','yes','593','.ec','2016-04-15 11:11:42',NULL,NULL,NULL),('EE','Estonia','Republic of Estonia','EST','233','yes','372','.ee','2016-04-15 11:11:42',NULL,NULL,NULL),('EG','Egypt','Arab Republic of Egypt','EGY','818','yes','20','.eg','2016-04-15 11:11:42',NULL,NULL,NULL),('EH','Western Sahara','Western Sahara','ESH','732','no','212','.eh','2016-04-15 11:11:42',NULL,NULL,NULL),('ER','Eritrea','State of Eritrea','ERI','232','yes','291','.er','2016-04-15 11:11:42',NULL,NULL,NULL),('ES','Spain','Kingdom of Spain','ESP','724','yes','34','.es','2016-04-15 11:11:42',NULL,NULL,NULL),('ET','Ethiopia','Federal Democratic Republic of Ethiopia','ETH','231','yes','251','.et','2016-04-15 11:11:42',NULL,NULL,NULL),('FI','Finland','Republic of Finland','FIN','246','yes','358','.fi','2016-04-15 11:11:42',NULL,NULL,NULL),('FJ','Fiji','Republic of Fiji','FJI','242','yes','679','.fj','2016-04-15 11:11:42',NULL,NULL,NULL),('FK','Falkland Islands (Malvinas)','The Falkland Islands (Malvinas)','FLK','238','no','500','.fk','2016-04-15 11:11:42',NULL,NULL,NULL),('FM','Micronesia','Federated States of Micronesia','FSM','583','yes','691','.fm','2016-04-15 11:11:42',NULL,NULL,NULL),('FO','Faroe Islands','The Faroe Islands','FRO','234','no','298','.fo','2016-04-15 11:11:42',NULL,NULL,NULL),('FR','France','French Republic','FRA','250','yes','33','.fr','2016-04-15 11:11:42',NULL,NULL,NULL),('GA','Gabon','Gabonese Republic','GAB','266','yes','241','.ga','2016-04-15 11:11:42',NULL,NULL,NULL),('GB','United Kingdom','United Kingdom of Great Britain and Nothern Ireland','GBR','826','yes','44','.uk','2016-04-15 11:11:42',NULL,NULL,NULL),('GD','Grenada','Grenada','GRD','308','yes','1+473','.gd','2016-04-15 11:11:42',NULL,NULL,NULL),('GE','Georgia','Georgia','GEO','268','yes','995','.ge','2016-04-15 11:11:42',NULL,NULL,NULL),('GF','French Guiana','French Guiana','GUF','254','no','594','.gf','2016-04-15 11:11:42',NULL,NULL,NULL),('GG','Guernsey','Guernsey','GGY','831','no','44','.gg','2016-04-15 11:11:42',NULL,NULL,NULL),('GH','Ghana','Republic of Ghana','GHA','288','yes','233','.gh','2016-04-15 11:11:42',NULL,NULL,NULL),('GI','Gibraltar','Gibraltar','GIB','292','no','350','.gi','2016-04-15 11:11:42',NULL,NULL,NULL),('GL','Greenland','Greenland','GRL','304','no','299','.gl','2016-04-15 11:11:42',NULL,NULL,NULL),('GM','Gambia','Republic of The Gambia','GMB','270','yes','220','.gm','2016-04-15 11:11:42',NULL,NULL,NULL),('GN','Guinea','Republic of Guinea','GIN','324','yes','224','.gn','2016-04-15 11:11:42',NULL,NULL,NULL),('GP','Guadaloupe','Guadeloupe','GLP','312','no','590','.gp','2016-04-15 11:11:42',NULL,NULL,NULL),('GQ','Equatorial Guinea','Republic of Equatorial Guinea','GNQ','226','yes','240','.gq','2016-04-15 11:11:42',NULL,NULL,NULL),('GR','Greece','Hellenic Republic','GRC','300','yes','30','.gr','2016-04-15 11:11:42',NULL,NULL,NULL),('GS','South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','SGS','239','no','500','.gs','2016-04-15 11:11:42',NULL,NULL,NULL),('GT','Guatemala','Republic of Guatemala','GTM','320','yes','502','.gt','2016-04-15 11:11:42',NULL,NULL,NULL),('GU','Guam','Guam','GUM','316','no','1+671','.gu','2016-04-15 11:11:42',NULL,NULL,NULL),('GW','Guinea-Bissau','Republic of Guinea-Bissau','GNB','624','yes','245','.gw','2016-04-15 11:11:42',NULL,NULL,NULL),('GY','Guyana','Co-operative Republic of Guyana','GUY','328','yes','592','.gy','2016-04-15 11:11:42',NULL,NULL,NULL),('HK','Hong Kong','Hong Kong','HKG','344','no','852','.hk','2016-04-15 11:11:42',NULL,NULL,NULL),('HM','Heard Island and McDonald Islands','Heard Island and McDonald Islands','HMD','334','no','NONE','.hm','2016-04-15 11:11:42',NULL,NULL,NULL),('HN','Honduras','Republic of Honduras','HND','340','yes','504','.hn','2016-04-15 11:11:42',NULL,NULL,NULL),('HR','Croatia','Republic of Croatia','HRV','191','yes','385','.hr','2016-04-15 11:11:42',NULL,NULL,NULL),('HT','Haiti','Republic of Haiti','HTI','332','yes','509','.ht','2016-04-15 11:11:42',NULL,NULL,NULL),('HU','Hungary','Hungary','HUN','348','yes','36','.hu','2016-04-15 11:11:42',NULL,NULL,NULL),('ID','Indonesia','Republic of Indonesia','IDN','360','yes','62','.id','2016-04-15 11:11:42',NULL,NULL,NULL),('IE','Ireland','Ireland','IRL','372','yes','353','.ie','2016-04-15 11:11:42',NULL,NULL,NULL),('IL','Israel','State of Israel','ISR','376','yes','972','.il','2016-04-15 11:11:42',NULL,NULL,NULL),('IM','Isle of Man','Isle of Man','IMN','833','no','44','.im','2016-04-15 11:11:42',NULL,NULL,NULL),('IN','India','Republic of India','IND','356','yes','91','.in','2016-04-15 11:11:42',NULL,NULL,NULL),('IO','British Indian Ocean Territory','British Indian Ocean Territory','IOT','086','no','246','.io','2016-04-15 11:11:42',NULL,NULL,NULL),('IQ','Iraq','Republic of Iraq','IRQ','368','yes','964','.iq','2016-04-15 11:11:42',NULL,NULL,NULL),('IR','Iran','Islamic Republic of Iran','IRN','364','yes','98','.ir','2016-04-15 11:11:42',NULL,NULL,NULL),('IS','Iceland','Republic of Iceland','ISL','352','yes','354','.is','2016-04-15 11:11:42',NULL,NULL,NULL),('IT','Italy','Italian Republic','ITA','380','yes','39','.jm','2016-04-15 11:11:42',NULL,NULL,NULL),('JE','Jersey','The Bailiwick of Jersey','JEY','832','no','44','.je','2016-04-15 11:11:42',NULL,NULL,NULL),('JM','Jamaica','Jamaica','JAM','388','yes','1+876','.jm','2016-04-15 11:11:42',NULL,NULL,NULL),('JO','Jordan','Hashemite Kingdom of Jordan','JOR','400','yes','962','.jo','2016-04-15 11:11:42',NULL,NULL,NULL),('JP','Japan','Japan','JPN','392','yes','81','.jp','2016-04-15 11:11:42',NULL,NULL,NULL),('KE','Kenya','Republic of Kenya','KEN','404','yes','254','.ke','2016-04-15 11:11:42',NULL,NULL,NULL),('KG','Kyrgyzstan','Kyrgyz Republic','KGZ','417','yes','996','.kg','2016-04-15 11:11:42',NULL,NULL,NULL),('KH','Cambodia','Kingdom of Cambodia','KHM','116','yes','855','.kh','2016-04-15 11:11:42',NULL,NULL,NULL),('KI','Kiribati','Republic of Kiribati','KIR','296','yes','686','.ki','2016-04-15 11:11:42',NULL,NULL,NULL),('KM','Comoros','Union of the Comoros','COM','174','yes','269','.km','2016-04-15 11:11:42',NULL,NULL,NULL),('KN','Saint Kitts and Nevis','Federation of Saint Christopher and Nevis','KNA','659','yes','1+869','.kn','2016-04-15 11:11:42',NULL,NULL,NULL),('KP','North Korea','Democratic People\'s Republic of Korea','PRK','408','yes','850','.kp','2016-04-15 11:11:42',NULL,NULL,NULL),('KR','South Korea','Republic of Korea','KOR','410','yes','82','.kr','2016-04-15 11:11:42',NULL,NULL,NULL),('KW','Kuwait','State of Kuwait','KWT','414','yes','965','.kw','2016-04-15 11:11:42',NULL,NULL,NULL),('KY','Cayman Islands','The Cayman Islands','CYM','136','no','1+345','.ky','2016-04-15 11:11:42',NULL,NULL,NULL),('KZ','Kazakhstan','Republic of Kazakhstan','KAZ','398','yes','7','.kz','2016-04-15 11:11:42',NULL,NULL,NULL),('LA','Laos','Lao People\'s Democratic Republic','LAO','418','yes','856','.la','2016-04-15 11:11:42',NULL,NULL,NULL),('LB','Lebanon','Republic of Lebanon','LBN','422','yes','961','.lb','2016-04-15 11:11:42',NULL,NULL,NULL),('LC','Saint Lucia','Saint Lucia','LCA','662','yes','1+758','.lc','2016-04-15 11:11:42',NULL,NULL,NULL),('LI','Liechtenstein','Principality of Liechtenstein','LIE','438','yes','423','.li','2016-04-15 11:11:42',NULL,NULL,NULL),('LK','Sri Lanka','Democratic Socialist Republic of Sri Lanka','LKA','144','yes','94','.lk','2016-04-15 11:11:42',NULL,NULL,NULL),('LR','Liberia','Republic of Liberia','LBR','430','yes','231','.lr','2016-04-15 11:11:42',NULL,NULL,NULL),('LS','Lesotho','Kingdom of Lesotho','LSO','426','yes','266','.ls','2016-04-15 11:11:42',NULL,NULL,NULL),('LT','Lithuania','Republic of Lithuania','LTU','440','yes','370','.lt','2016-04-15 11:11:42',NULL,NULL,NULL),('LU','Luxembourg','Grand Duchy of Luxembourg','LUX','442','yes','352','.lu','2016-04-15 11:11:42',NULL,NULL,NULL),('LV','Latvia','Republic of Latvia','LVA','428','yes','371','.lv','2016-04-15 11:11:42',NULL,NULL,NULL),('LY','Libya','Libya','LBY','434','yes','218','.ly','2016-04-15 11:11:42',NULL,NULL,NULL),('MA','Morocco','Kingdom of Morocco','MAR','504','yes','212','.ma','2016-04-15 11:11:42',NULL,NULL,NULL),('MC','Monaco','Principality of Monaco','MCO','492','yes','377','.mc','2016-04-15 11:11:42',NULL,NULL,NULL),('MD','Moldava','Republic of Moldova','MDA','498','yes','373','.md','2016-04-15 11:11:42',NULL,NULL,NULL),('ME','Montenegro','Montenegro','MNE','499','yes','382','.me','2016-04-15 11:11:42',NULL,NULL,NULL),('MF','Saint Martin','Saint Martin','MAF','663','no','590','.mf','2016-04-15 11:11:42',NULL,NULL,NULL),('MG','Madagascar','Republic of Madagascar','MDG','450','yes','261','.mg','2016-04-15 11:11:42',NULL,NULL,NULL),('MH','Marshall Islands','Republic of the Marshall Islands','MHL','584','yes','692','.mh','2016-04-15 11:11:42',NULL,NULL,NULL),('MK','Macedonia','The Former Yugoslav Republic of Macedonia','MKD','807','yes','389','.mk','2016-04-15 11:11:42',NULL,NULL,NULL),('ML','Mali','Republic of Mali','MLI','466','yes','223','.ml','2016-04-15 11:11:42',NULL,NULL,NULL),('MM','Myanmar (Burma)','Republic of the Union of Myanmar','MMR','104','yes','95','.mm','2016-04-15 11:11:42',NULL,NULL,NULL),('MN','Mongolia','Mongolia','MNG','496','yes','976','.mn','2016-04-15 11:11:42',NULL,NULL,NULL),('MO','Macao','The Macao Special Administrative Region','MAC','446','no','853','.mo','2016-04-15 11:11:42',NULL,NULL,NULL),('MP','Northern Mariana Islands','Northern Mariana Islands','MNP','580','no','1+670','.mp','2016-04-15 11:11:42',NULL,NULL,NULL),('MQ','Martinique','Martinique','MTQ','474','no','596','.mq','2016-04-15 11:11:42',NULL,NULL,NULL),('MR','Mauritania','Islamic Republic of Mauritania','MRT','478','yes','222','.mr','2016-04-15 11:11:42',NULL,NULL,NULL),('MS','Montserrat','Montserrat','MSR','500','no','1+664','.ms','2016-04-15 11:11:42',NULL,NULL,NULL),('MT','Malta','Republic of Malta','MLT','470','yes','356','.mt','2016-04-15 11:11:42',NULL,NULL,NULL),('MU','Mauritius','Republic of Mauritius','MUS','480','yes','230','.mu','2016-04-15 11:11:42',NULL,NULL,NULL),('MV','Maldives','Republic of Maldives','MDV','462','yes','960','.mv','2016-04-15 11:11:42',NULL,NULL,NULL),('MW','Malawi','Republic of Malawi','MWI','454','yes','265','.mw','2016-04-15 11:11:42',NULL,NULL,NULL),('MX','Mexico','United Mexican States','MEX','484','yes','52','.mx','2016-04-15 11:11:42',NULL,NULL,NULL),('MY','Malaysia','Malaysia','MYS','458','yes','60','.my','2016-04-15 11:11:42',NULL,NULL,NULL),('MZ','Mozambique','Republic of Mozambique','MOZ','508','yes','258','.mz','2016-04-15 11:11:42',NULL,NULL,NULL),('NA','Namibia','Republic of Namibia','NAM','516','yes','264','.na','2016-04-15 11:11:42',NULL,NULL,NULL),('NC','New Caledonia','New Caledonia','NCL','540','no','687','.nc','2016-04-15 11:11:42',NULL,NULL,NULL),('NE','Niger','Republic of Niger','NER','562','yes','227','.ne','2016-04-15 11:11:42',NULL,NULL,NULL),('NF','Norfolk Island','Norfolk Island','NFK','574','no','672','.nf','2016-04-15 11:11:42',NULL,NULL,NULL),('NG','Nigeria','Federal Republic of Nigeria','NGA','566','yes','234','.ng','2016-04-15 11:11:42',NULL,NULL,NULL),('NI','Nicaragua','Republic of Nicaragua','NIC','558','yes','505','.ni','2016-04-15 11:11:42',NULL,NULL,NULL),('NL','Netherlands','Kingdom of the Netherlands','NLD','528','yes','31','.nl','2016-04-15 11:11:42',NULL,NULL,NULL),('NO','Norway','Kingdom of Norway','NOR','578','yes','47','.no','2016-04-15 11:11:42',NULL,NULL,NULL),('NP','Nepal','Federal Democratic Republic of Nepal','NPL','524','yes','977','.np','2016-04-15 11:11:42',NULL,NULL,NULL),('NR','Nauru','Republic of Nauru','NRU','520','yes','674','.nr','2016-04-15 11:11:42',NULL,NULL,NULL),('NU','Niue','Niue','NIU','570','some','683','.nu','2016-04-15 11:11:42',NULL,NULL,NULL),('NZ','New Zealand','New Zealand','NZL','554','yes','64','.nz','2016-04-15 11:11:42',NULL,NULL,NULL),('OM','Oman','Sultanate of Oman','OMN','512','yes','968','.om','2016-04-15 11:11:42',NULL,NULL,NULL),('PA','Panama','Republic of Panama','PAN','591','yes','507','.pa','2016-04-15 11:11:42',NULL,NULL,NULL),('PE','Peru','Republic of Peru','PER','604','yes','51','.pe','2016-04-15 11:11:42',NULL,NULL,NULL),('PF','French Polynesia','French Polynesia','PYF','258','no','689','.pf','2016-04-15 11:11:42',NULL,NULL,NULL),('PG','Papua New Guinea','Independent State of Papua New Guinea','PNG','598','yes','675','.pg','2016-04-15 11:11:42',NULL,NULL,NULL),('PH','Phillipines','Republic of the Philippines','PHL','608','yes','63','.ph','2016-04-15 11:11:42',NULL,NULL,NULL),('PK','Pakistan','Islamic Republic of Pakistan','PAK','586','yes','92','.pk','2016-04-15 11:11:42',NULL,NULL,NULL),('PL','Poland','Republic of Poland','POL','616','yes','48','.pl','2016-04-15 11:11:42',NULL,NULL,NULL),('PM','Saint Pierre and Miquelon','Saint Pierre and Miquelon','SPM','666','no','508','.pm','2016-04-15 11:11:42',NULL,NULL,NULL),('PN','Pitcairn','Pitcairn','PCN','612','no','NONE','.pn','2016-04-15 11:11:42',NULL,NULL,NULL),('PR','Puerto Rico','Commonwealth of Puerto Rico','PRI','630','no','1+939','.pr','2016-04-15 11:11:42',NULL,NULL,NULL),('PS','Palestine','State of Palestine (or Occupied Palestinian Territory)','PSE','275','some','970','.ps','2016-04-15 11:11:42',NULL,NULL,NULL),('PT','Portugal','Portuguese Republic','PRT','620','yes','351','.pt','2016-04-15 11:11:42',NULL,NULL,NULL),('PW','Palau','Republic of Palau','PLW','585','yes','680','.pw','2016-04-15 11:11:42',NULL,NULL,NULL),('PY','Paraguay','Republic of Paraguay','PRY','600','yes','595','.py','2016-04-15 11:11:42',NULL,NULL,NULL),('QA','Qatar','State of Qatar','QAT','634','yes','974','.qa','2016-04-15 11:11:42',NULL,NULL,NULL),('RE','Reunion','Reunion','REU','638','no','262','.re','2016-04-15 11:11:42',NULL,NULL,NULL),('RO','Romania','Romania','ROU','642','yes','40','.ro','2016-04-15 11:11:42',NULL,NULL,NULL),('RS','Serbia','Republic of Serbia','SRB','688','yes','381','.rs','2016-04-15 11:11:42',NULL,NULL,NULL),('RU','Russia','Russian Federation','RUS','643','yes','7','.ru','2016-04-15 11:11:42',NULL,NULL,NULL),('RW','Rwanda','Republic of Rwanda','RWA','646','yes','250','.rw','2016-04-15 11:11:42',NULL,NULL,NULL),('SA','Saudi Arabia','Kingdom of Saudi Arabia','SAU','682','yes','966','.sa','2016-04-15 11:11:42',NULL,NULL,NULL),('SB','Solomon Islands','Solomon Islands','SLB','090','yes','677','.sb','2016-04-15 11:11:42',NULL,NULL,NULL),('SC','Seychelles','Republic of Seychelles','SYC','690','yes','248','.sc','2016-04-15 11:11:42',NULL,NULL,NULL),('SD','Sudan','Republic of the Sudan','SDN','729','yes','249','.sd','2016-04-15 11:11:42',NULL,NULL,NULL),('SE','Sweden','Kingdom of Sweden','SWE','752','yes','46','.se','2016-04-15 11:11:42',NULL,NULL,NULL),('SG','Singapore','Republic of Singapore','SGP','702','yes','65','.sg','2016-04-15 11:11:42',NULL,NULL,NULL),('SH','Saint Helena','Saint Helena, Ascension and Tristan da Cunha','SHN','654','no','290','.sh','2016-04-15 11:11:42',NULL,NULL,NULL),('SI','Slovenia','Republic of Slovenia','SVN','705','yes','386','.si','2016-04-15 11:11:42',NULL,NULL,NULL),('SJ','Svalbard and Jan Mayen','Svalbard and Jan Mayen','SJM','744','no','47','.sj','2016-04-15 11:11:42',NULL,NULL,NULL),('SK','Slovakia','Slovak Republic','SVK','703','yes','421','.sk','2016-04-15 11:11:42',NULL,NULL,NULL),('SL','Sierra Leone','Republic of Sierra Leone','SLE','694','yes','232','.sl','2016-04-15 11:11:42',NULL,NULL,NULL),('SM','San Marino','Republic of San Marino','SMR','674','yes','378','.sm','2016-04-15 11:11:42',NULL,NULL,NULL),('SN','Senegal','Republic of Senegal','SEN','686','yes','221','.sn','2016-04-15 11:11:42',NULL,NULL,NULL),('SO','Somalia','Somali Republic','SOM','706','yes','252','.so','2016-04-15 11:11:42',NULL,NULL,NULL),('SR','Suriname','Republic of Suriname','SUR','740','yes','597','.sr','2016-04-15 11:11:42',NULL,NULL,NULL),('SS','South Sudan','Republic of South Sudan','SSD','728','yes','211','.ss','2016-04-15 11:11:42',NULL,NULL,NULL),('ST','Sao Tome and Principe','Democratic Republic of Sao Tome and Principe','STP','678','yes','239','.st','2016-04-15 11:11:42',NULL,NULL,NULL),('SV','El Salvador','Republic of El Salvador','SLV','222','yes','503','.sv','2016-04-15 11:11:42',NULL,NULL,NULL),('SX','Sint Maarten','Sint Maarten','SXM','534','no','1+721','.sx','2016-04-15 11:11:42',NULL,NULL,NULL),('SY','Syria','Syrian Arab Republic','SYR','760','yes','963','.sy','2016-04-15 11:11:42',NULL,NULL,NULL),('SZ','Swaziland','Kingdom of Swaziland','SWZ','748','yes','268','.sz','2016-04-15 11:11:42',NULL,NULL,NULL),('TC','Turks and Caicos Islands','Turks and Caicos Islands','TCA','796','no','1+649','.tc','2016-04-15 11:11:42',NULL,NULL,NULL),('TD','Chad','Republic of Chad','TCD','148','yes','235','.td','2016-04-15 11:11:42',NULL,NULL,NULL),('TF','French Southern Territories','French Southern Territories','ATF','260','no',NULL,'.tf','2016-04-15 11:11:42',NULL,NULL,NULL),('TG','Togo','Togolese Republic','TGO','768','yes','228','.tg','2016-04-15 11:11:42',NULL,NULL,NULL),('TH','Thailand','Kingdom of Thailand','THA','764','yes','66','.th','2016-04-15 11:11:42',NULL,NULL,NULL),('TJ','Tajikistan','Republic of Tajikistan','TJK','762','yes','992','.tj','2016-04-15 11:11:42',NULL,NULL,NULL),('TK','Tokelau','Tokelau','TKL','772','no','690','.tk','2016-04-15 11:11:42',NULL,NULL,NULL),('TL','Timor-Leste (East Timor)','Democratic Republic of Timor-Leste','TLS','626','yes','670','.tl','2016-04-15 11:11:42',NULL,NULL,NULL),('TM','Turkmenistan','Turkmenistan','TKM','795','yes','993','.tm','2016-04-15 11:11:42',NULL,NULL,NULL),('TN','Tunisia','Republic of Tunisia','TUN','788','yes','216','.tn','2016-04-15 11:11:42',NULL,NULL,NULL),('TO','Tonga','Kingdom of Tonga','TON','776','yes','676','.to','2016-04-15 11:11:42',NULL,NULL,NULL),('TR','Turkey','Republic of Turkey','TUR','792','yes','90','.tr','2016-04-15 11:11:42',NULL,NULL,NULL),('TT','Trinidad and Tobago','Republic of Trinidad and Tobago','TTO','780','yes','1+868','.tt','2016-04-15 11:11:42',NULL,NULL,NULL),('TV','Tuvalu','Tuvalu','TUV','798','yes','688','.tv','2016-04-15 11:11:42',NULL,NULL,NULL),('TW','Taiwan','Republic of China (Taiwan)','TWN','158','former','886','.tw','2016-04-15 11:11:42',NULL,NULL,NULL),('TZ','Tanzania','United Republic of Tanzania','TZA','834','yes','255','.tz','2016-04-15 11:11:42',NULL,NULL,NULL),('UA','Ukraine','Ukraine','UKR','804','yes','380','.ua','2016-04-15 11:11:42',NULL,NULL,NULL),('UG','Uganda','Republic of Uganda','UGA','800','yes','256','.ug','2016-04-15 11:11:42',NULL,NULL,NULL),('UM','United States Minor Outlying Islands','United States Minor Outlying Islands','UMI','581','no','NONE','NONE','2016-04-15 11:11:42',NULL,NULL,NULL),('US','United States','United States of America','USA','840','yes','1','.us','2016-04-15 11:11:42',NULL,NULL,NULL),('UY','Uruguay','Eastern Republic of Uruguay','URY','858','yes','598','.uy','2016-04-15 11:11:42',NULL,NULL,NULL),('UZ','Uzbekistan','Republic of Uzbekistan','UZB','860','yes','998','.uz','2016-04-15 11:11:42',NULL,NULL,NULL),('VA','Vatican City','State of the Vatican City','VAT','336','no','39','.va','2016-04-15 11:11:42',NULL,NULL,NULL),('VC','Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','VCT','670','yes','1+784','.vc','2016-04-15 11:11:42',NULL,NULL,NULL),('VE','Venezuela','Bolivarian Republic of Venezuela','VEN','862','yes','58','.ve','2016-04-15 11:11:42',NULL,NULL,NULL),('VG','Virgin Islands, British','British Virgin Islands','VGB','092','no','1+284','.vg','2016-04-15 11:11:42',NULL,NULL,NULL),('VI','Virgin Islands, US','Virgin Islands of the United States','VIR','850','no','1+340','.vi','2016-04-15 11:11:42',NULL,NULL,NULL),('VN','Vietnam','Socialist Republic of Vietnam','VNM','704','yes','84','.vn','2016-04-15 11:11:42',NULL,NULL,NULL),('VU','Vanuatu','Republic of Vanuatu','VUT','548','yes','678','.vu','2016-04-15 11:11:42',NULL,NULL,NULL),('WF','Wallis and Futuna','Wallis and Futuna','WLF','876','no','681','.wf','2016-04-15 11:11:42',NULL,NULL,NULL),('WS','Samoa','Independent State of Samoa','WSM','882','yes','685','.ws','2016-04-15 11:11:42',NULL,NULL,NULL),('XK','Kosovo','Republic of Kosovo','---','---','some','381','','2016-04-15 11:11:42',NULL,NULL,NULL),('YE','Yemen','Republic of Yemen','YEM','887','yes','967','.ye','2016-04-15 11:11:42',NULL,NULL,NULL),('YT','Mayotte','Mayotte','MYT','175','no','262','.yt','2016-04-15 11:11:42',NULL,NULL,NULL),('ZA','South Africa','Republic of South Africa','ZAF','710','yes','27','.za','2016-04-15 11:11:42',NULL,NULL,NULL),('ZM','Zambia','Republic of Zambia','ZMB','894','yes','260','.zm','2016-04-15 11:11:42',NULL,NULL,NULL),('ZW','Zimbabwe','Republic of Zimbabwe','ZWE','716','yes','263','.zw','2016-04-15 11:11:42',NULL,NULL,NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `license_key` varchar(150) NOT NULL,
  `company_id` bigint(10) NOT NULL,
  `valid_from` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valid_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(100) NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(150) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_key_UNIQUE` (`license_key`),
  KEY `license_company_fk_idx` (`company_id`),
  CONSTRAINT `license_company_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_user`
--

DROP TABLE IF EXISTS `license_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_user` (
  `license_id` bigint(10) NOT NULL,
  `user_id` bigint(10) NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  KEY `license_user_license_fk_idx` (`license_id`),
  KEY `license_user_user_fk_idx` (`user_id`),
  CONSTRAINT `license_user_license_fk` FOREIGN KEY (`license_id`) REFERENCES `license` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `license_user_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_user`
--

LOCK TABLES `license_user` WRITE;
/*!40000 ALTER TABLE `license_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_log`
--

DROP TABLE IF EXISTS `location_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignee_id` bigint(10) NOT NULL,
  `country_id` char(2) NOT NULL,
  `place` varchar(200) DEFAULT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_user` varchar(100) DEFAULT NULL,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `end_timestamp` timestamp NULL DEFAULT NULL,
  `start_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location_assignee_fk_idx` (`assignee_id`),
  KEY `location_country_fk_idx` (`country_id`),
  CONSTRAINT `location_assignee_fk` FOREIGN KEY (`assignee_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `location_country_fk` FOREIGN KEY (`country_id`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_log`
--

LOCK TABLES `location_log` WRITE;
/*!40000 ALTER TABLE `location_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PERMISSIONNAME` (`permission_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'MANAGE_SYSTEM','Permission to manage the system configurations.','2016-04-15 11:11:42',NULL,NULL,NULL),(2,'CREATE_USER','User can create another user.','2016-04-15 11:11:42',NULL,NULL,NULL),(3,'CREATE_COMPANY','User can create a company.','2016-04-15 11:11:42',NULL,NULL,NULL),(4,'CREATE_SECONDAY_USER','User can create a secondary user.','2016-04-15 11:11:42',NULL,NULL,NULL),(5,'VIEW_COMPANY_PROFILE','User can view a company profile.','2016-04-15 11:11:42',NULL,NULL,NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `forename` varchar(150) NOT NULL,
  `surname` varchar(150) NOT NULL,
  `dob` timestamp NULL DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `country_of_birth` char(2) DEFAULT NULL,
  `citizenship` char(2) DEFAULT NULL,
  `dual_citizenship` char(2) DEFAULT NULL,
  `accompanying` bit(1) DEFAULT b'0',
  `relation_type` varchar(100) NOT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `relations_birth_country_fk_idx` (`country_of_birth`),
  KEY `relations_citizenship_country_fk_idx` (`citizenship`),
  KEY `relations_dual_citizenship_country_fk_idx` (`dual_citizenship`),
  CONSTRAINT `relations_dual_citizenship_country_fk` FOREIGN KEY (`dual_citizenship`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `relations_birth_country_fk` FOREIGN KEY (`country_of_birth`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `relations_citizenship_country_fk` FOREIGN KEY (`citizenship`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `role_id` bigint(6) NOT NULL,
  `permission_id` bigint(6) NOT NULL,
  KEY `role_permissions_ibfk_1` (`role_id`),
  KEY `role_permissions_ibfk_2` (`permission_id`),
  CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (1,1),(1,2),(1,3),(2,2),(2,3),(4,3),(4,4),(5,3),(5,4);
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ROLENAME` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'SYS_ADMIN','Super user.','2016-04-15 11:11:42',NULL,NULL,NULL),(2,'ADMIN','RoamPA administrator role.','2016-04-15 11:11:42',NULL,NULL,NULL),(3,'USER','RoamPA User role.','2016-04-15 11:11:42',NULL,NULL,NULL),(4,'PRINCIPAL_USER','Company administrator role.','2016-04-15 11:11:42',NULL,NULL,NULL),(5,'SECONDARY_USER','Company administrator role.','2016-04-15 11:11:42',NULL,NULL,NULL),(6,'HR_USER','Company administrator role.','2016-04-15 11:11:42',NULL,NULL,NULL),(7,'ASSIGNEE_USER','Company administrator role.','2016-04-15 11:11:42',NULL,NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `user_id` bigint(10) NOT NULL,
  `address_id` bigint(10) DEFAULT NULL,
  KEY `user_address_user_id_fk_idx` (`user_id`),
  KEY `user_address_address_id_fk_idx` (`address_id`),
  CONSTRAINT `user_address_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_address_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_company`
--

DROP TABLE IF EXISTS `user_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_company` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) NOT NULL,
  `company_id` bigint(10) NOT NULL,
  `created_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `user_company_uk` (`user_id`,`company_id`),
  KEY `user_company_user_id_fk_idx` (`user_id`),
  KEY `user_compnany_company_id_fk_idx` (`company_id`),
  CONSTRAINT `user_company_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_compnany_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_company`
--

LOCK TABLES `user_company` WRITE;
/*!40000 ALTER TABLE `user_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_health_insurance`
--

DROP TABLE IF EXISTS `user_health_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_health_insurance` (
  `id` bigint(10) NOT NULL,
  `user_id` bigint(10) DEFAULT NULL,
  `policy_number` varchar(50) DEFAULT NULL,
  `policy_provider` varchar(150) DEFAULT NULL,
  `policy_contact` varchar(45) DEFAULT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_health_insurance_user_id_fk_idx` (`user_id`),
  CONSTRAINT `user_health_insurance_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_health_insurance`
--

LOCK TABLES `user_health_insurance` WRITE;
/*!40000 ALTER TABLE `user_health_insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_health_insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(10) NOT NULL,
  `role_id` bigint(10) NOT NULL,
  KEY `USER` (`user_id`),
  KEY `ROLE` (`role_id`),
  CONSTRAINT `USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ROLE` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (21,1),(22,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sessions`
--

DROP TABLE IF EXISTS `user_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_sessions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) NOT NULL,
  `access_token` varchar(100) NOT NULL,
  `device_id` varchar(150) NOT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `user_uuid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_session_user_id_fk_idx` (`user_id`),
  KEY `user_session_user_uuid_fk_idx` (`user_uuid`),
  CONSTRAINT `user_session_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sessions`
--

LOCK TABLES `user_sessions` WRITE;
/*!40000 ALTER TABLE `user_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) NOT NULL,
  `roampa_id` varchar(10) NOT NULL,
  `employee_id` varchar(15) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `alternative_email` varchar(100) DEFAULT NULL,
  `skype_id` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `forename` varchar(100) DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `maiden_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `staff_number` varchar(10) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `mobilenumber` varchar(15) DEFAULT NULL,
  `citizenship` char(2) DEFAULT NULL,
  `dual_citizenship` char(2) DEFAULT NULL,
  `date_of_birth` timestamp NULL DEFAULT NULL,
  `birth_country` char(2) DEFAULT NULL,
  `birth_place` varchar(30) DEFAULT NULL,
  `number_of_dependants` int(20) DEFAULT '0',
  `marital_status` varchar(30) DEFAULT NULL,
  `active` bit(1) DEFAULT b'0',
  `status` varchar(45) DEFAULT NULL,
  `reset_password_key` varchar(100) DEFAULT NULL,
  `reset_password_key_date` timestamp NULL DEFAULT NULL,
  `pass_attempt_counter` int(11) DEFAULT '0',
  `password_last_update` timestamp NULL DEFAULT NULL,
  `active_date` timestamp NULL DEFAULT NULL,
  `activation_key` varchar(100) DEFAULT NULL,
  `business_traveller` bit(1) DEFAULT b'0',
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_timestamp` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  `lastvisited_at` timestamp NULL DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `job_role` varchar(100) DEFAULT NULL,
  `passport_number` varchar(9) DEFAULT NULL,
  `tax_number` varchar(45) DEFAULT NULL,
  `payroll_number` varchar(45) DEFAULT NULL,
  `home_country` char(2) DEFAULT NULL,
  `host_country` char(2) DEFAULT NULL,
  `logo_file_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users.username` (`username`),
  KEY `user_home_country_country_fk_idx` (`home_country`),
  KEY `user_host_country_country_fk_idx` (`host_country`),
  KEY `user_birth_country_fk_idx` (`birth_country`),
  KEY `user_citizen_country_fk_idx` (`citizenship`),
  KEY `user_dual_citizen_countr_fk_idx` (`dual_citizenship`),
  CONSTRAINT `user_birth_country_fk` FOREIGN KEY (`birth_country`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_citizen_country_fk` FOREIGN KEY (`citizenship`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_dual_citizen_countr_fk` FOREIGN KEY (`dual_citizenship`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_home_country_country_fk` FOREIGN KEY (`home_country`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_host_country_country_fk` FOREIGN KEY (`host_country`) REFERENCES `country` (`iso2`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (21,'','AAAAA11111',NULL,'systemAdmin@roampa.com',NULL,NULL,'$2a$13$rcLPHnB0bizi0lK0NvcIh.sVIdhsYxAuJvf1DxQ8mcLYLluhsxXtG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'','ACTIVE',NULL,NULL,0,'2016-04-15 11:11:42',NULL,NULL,'\0','2016-04-15 11:11:42',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'','ASDF1234',NULL,'admin@roampa.com',NULL,NULL,'$2a$13$rcLPHnB0bizi0lK0NvcIh.sVIdhsYxAuJvf1DxQ8mcLYLluhsxXtG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'','ACTIVE',NULL,NULL,0,'2016-04-15 11:11:42',NULL,NULL,'\0','2016-04-15 11:11:42',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'roampa'
--

--
-- Dumping routines for database 'roampa'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-15 12:13:14
