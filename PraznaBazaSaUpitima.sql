-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: IS2_2020
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `BonusiZaposlenih`
--

DROP TABLE IF EXISTS `BonusiZaposlenih`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BonusiZaposlenih` (
  `Godina` int(11) NOT NULL,
  `ZaposleniID` int(11) NOT NULL,
  `Kvartal` varchar(45) DEFAULT NULL,
  `Q1` int(11) DEFAULT NULL,
  `Q2` int(11) DEFAULT NULL,
  `Q3` int(11) DEFAULT NULL,
  `Q4` int(11) DEFAULT NULL,
  PRIMARY KEY (`ZaposleniID`,`Godina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BonusiZaposlenih`
--

LOCK TABLES `BonusiZaposlenih` WRITE;
/*!40000 ALTER TABLE `BonusiZaposlenih` DISABLE KEYS */;
/*!40000 ALTER TABLE `BonusiZaposlenih` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Divizije`
--

DROP TABLE IF EXISTS `Divizije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Divizije` (
  `DivID` int(11) NOT NULL,
  `NazivDivizije` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DivID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Divizije`
--

LOCK TABLES `Divizije` WRITE;
/*!40000 ALTER TABLE `Divizije` DISABLE KEYS */;
/*!40000 ALTER TABLE `Divizije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dobavljaci`
--

DROP TABLE IF EXISTS `Dobavljaci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dobavljaci` (
  `Adresa` varchar(45) DEFAULT NULL,
  `Grad` varchar(45) DEFAULT NULL,
  `Naziv` varchar(45) DEFAULT NULL,
  `Kontakt` varchar(45) DEFAULT NULL,
  `Zemlja` varchar(45) DEFAULT NULL,
  `Faks` varchar(45) DEFAULT NULL,
  `Telefon` varchar(45) DEFAULT NULL,
  `PostanskiBroj` varchar(45) DEFAULT NULL,
  `DobavljacID` int(11) NOT NULL,
  `DobavljacGrupaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DobavljacID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dobavljaci`
--

LOCK TABLES `Dobavljaci` WRITE;
/*!40000 ALTER TABLE `Dobavljaci` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dobavljaci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeeTeam`
--

DROP TABLE IF EXISTS `EmployeeTeam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmployeeTeam` (
  `ZaposleniID` int(11) NOT NULL,
  `TimID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ZaposleniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeTeam`
--

LOCK TABLES `EmployeeTeam` WRITE;
/*!40000 ALTER TABLE `EmployeeTeam` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmployeeTeam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Isporuke`
--

DROP TABLE IF EXISTS `Isporuke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Isporuke` (
  `IsporukaID` int(11) NOT NULL,
  `StavkaBr` int(11) NOT NULL,
  `KupacID` int(11) DEFAULT NULL,
  `ZaposleniID` int(11) DEFAULT NULL,
  `PrevoznikID` int(11) DEFAULT NULL,
  `ProizvodID` int(11) DEFAULT NULL,
  `DatumIsporuke` datetime DEFAULT NULL,
  PRIMARY KEY (`IsporukaID`,`StavkaBr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Isporuke`
--

LOCK TABLES `Isporuke` WRITE;
/*!40000 ALTER TABLE `Isporuke` DISABLE KEYS */;
/*!40000 ALTER TABLE `Isporuke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IsporukeDetalji`
--

DROP TABLE IF EXISTS `IsporukeDetalji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IsporukeDetalji` (
  `IsporukaID` int(11) NOT NULL,
  `StavkaBr` int(11) NOT NULL,
  `ProizvodID` int(11) DEFAULT NULL,
  `JedinicnaCena` decimal(65,2) DEFAULT NULL,
  `Kolicina` int(11) DEFAULT NULL,
  `Popust` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`IsporukaID`,`StavkaBr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IsporukeDetalji`
--

LOCK TABLES `IsporukeDetalji` WRITE;
/*!40000 ALTER TABLE `IsporukeDetalji` DISABLE KEYS */;
/*!40000 ALTER TABLE `IsporukeDetalji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kancelarije`
--

DROP TABLE IF EXISTS `Kancelarije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kancelarije` (
  `KancelarijaID` int(11) NOT NULL,
  `Adresa` varchar(45) DEFAULT NULL,
  `Grad` varchar(45) DEFAULT NULL,
  `Zemlja` varchar(45) DEFAULT NULL,
  `Faks` varchar(45) DEFAULT NULL,
  `Telefon` varchar(45) DEFAULT NULL,
  `PostanskiBr` varchar(45) DEFAULT NULL,
  `Provincija` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`KancelarijaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kancelarije`
--

LOCK TABLES `Kancelarije` WRITE;
/*!40000 ALTER TABLE `Kancelarije` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kancelarije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kategorije`
--

DROP TABLE IF EXISTS `Kategorije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kategorije` (
  `KategorijaID` int(11) NOT NULL,
  `NazivKategorije` varchar(45) DEFAULT NULL,
  `Opis` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`KategorijaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kategorije`
--

LOCK TABLES `Kategorije` WRITE;
/*!40000 ALTER TABLE `Kategorije` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kategorije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kupci`
--

DROP TABLE IF EXISTS `Kupci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kupci` (
  `KupacID` int(11) NOT NULL,
  `NazivKompanije` varchar(45) DEFAULT NULL,
  `ImeKontakta` varchar(45) DEFAULT NULL,
  `Grad` varchar(45) DEFAULT NULL,
  `Zemlja` varchar(45) DEFAULT NULL,
  `DivizijaID` int(11) DEFAULT NULL,
  `Adresa` varchar(1000) DEFAULT NULL,
  `Faks` varchar(45) DEFAULT NULL,
  `Telefon` varchar(45) DEFAULT NULL,
  `PostanskiBr` varchar(45) DEFAULT NULL,
  `Provincija` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`KupacID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kupci`
--

LOCK TABLES `Kupci` WRITE;
/*!40000 ALTER TABLE `Kupci` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kupci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kvote`
--

DROP TABLE IF EXISTS `Kvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kvote` (
  `ZaposleniID` int(11) NOT NULL,
  `Prodavac` varchar(45) DEFAULT NULL,
  `Q1` varchar(45) DEFAULT NULL,
  `Q2` varchar(45) DEFAULT NULL,
  `Q3` varchar(45) DEFAULT NULL,
  `Q4` varchar(45) DEFAULT NULL,
  `Year` varchar(45) NOT NULL,
  PRIMARY KEY (`ZaposleniID`,`Year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kvote`
--

LOCK TABLES `Kvote` WRITE;
/*!40000 ALTER TABLE `Kvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrganizacionaStruktura`
--

DROP TABLE IF EXISTS `OrganizacionaStruktura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrganizacionaStruktura` (
  `ZaposleniID` int(11) NOT NULL,
  `MenadzerID` int(11) DEFAULT NULL,
  `DatumPocetka` datetime DEFAULT NULL,
  `DatumKraja` datetime DEFAULT NULL,
  PRIMARY KEY (`ZaposleniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrganizacionaStruktura`
--

LOCK TABLES `OrganizacionaStruktura` WRITE;
/*!40000 ALTER TABLE `OrganizacionaStruktura` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrganizacionaStruktura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Porudzbine`
--

DROP TABLE IF EXISTS `Porudzbine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Porudzbine` (
  `IsporukaID` int(11) NOT NULL,
  `KupacID` int(11) DEFAULT NULL,
  `ZaposleniID` int(11) DEFAULT NULL,
  `PrevoznikID` int(11) DEFAULT NULL,
  `Tezina` decimal(65,2) DEFAULT NULL,
  `DatumPorudzbine` datetime DEFAULT NULL,
  PRIMARY KEY (`IsporukaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Porudzbine`
--

LOCK TABLES `Porudzbine` WRITE;
/*!40000 ALTER TABLE `Porudzbine` DISABLE KEYS */;
/*!40000 ALTER TABLE `Porudzbine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prevoznici`
--

DROP TABLE IF EXISTS `Prevoznici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prevoznici` (
  `PrevoznikID` int(11) NOT NULL,
  `Naziv` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PrevoznikID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prevoznici`
--

LOCK TABLES `Prevoznici` WRITE;
/*!40000 ALTER TABLE `Prevoznici` DISABLE KEYS */;
/*!40000 ALTER TABLE `Prevoznici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProizvodLegalnost`
--

DROP TABLE IF EXISTS `ProizvodLegalnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProizvodLegalnost` (
  `ProizvodID` int(11) NOT NULL,
  `Legalnost` text,
  PRIMARY KEY (`ProizvodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProizvodLegalnost`
--

LOCK TABLES `ProizvodLegalnost` WRITE;
/*!40000 ALTER TABLE `ProizvodLegalnost` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProizvodLegalnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proizvodi`
--

DROP TABLE IF EXISTS `Proizvodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Proizvodi` (
  `KategorijaID` int(11) DEFAULT NULL,
  `ProizvodID` int(11) NOT NULL,
  `NazivProizvoda` varchar(45) DEFAULT NULL,
  `KolicinaPoPakovanju` int(11) DEFAULT NULL,
  `DobavljacID` int(11) DEFAULT NULL,
  `NabavnaCenaJedinicna` decimal(65,2) DEFAULT NULL,
  `ProdajnaCenaJedinicna` decimal(65,2) DEFAULT NULL,
  `BrPakovanjaNaStanju` int(11) DEFAULT NULL,
  `BrPorucenihPakovanja` int(11) DEFAULT NULL,
  `NabavnaCenaPakovanja` decimal(65,2) DEFAULT NULL,
  `ProdajnaCenaPakovanja` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`ProizvodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proizvodi`
--

LOCK TABLES `Proizvodi` WRITE;
/*!40000 ALTER TABLE `Proizvodi` DISABLE KEYS */;
/*!40000 ALTER TABLE `Proizvodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Racuni`
--

DROP TABLE IF EXISTS `Racuni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Racuni` (
  `IsporukaID` int(11) DEFAULT NULL,
  `RacunID` int(11) NOT NULL,
  `DatumPlacanja` datetime DEFAULT NULL,
  `DatumRacuna` datetime DEFAULT NULL,
  `IznosRacuna` decimal(65,2) DEFAULT NULL,
  `ZaposleniID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RacunID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Racuni`
--

LOCK TABLES `Racuni` WRITE;
/*!40000 ALTER TABLE `Racuni` DISABLE KEYS */;
/*!40000 ALTER TABLE `Racuni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `TeamID` int(11) NOT NULL,
  `Team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UpitA`
--

DROP TABLE IF EXISTS `UpitA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UpitA` (
  `ProizvodID` int(11) NOT NULL,
  `IsporukaID` int(11) NOT NULL,
  `StavkaBr` int(11) NOT NULL,
  `Datum` varchar(45) NOT NULL,
  `UkupnaCena` decimal(65,2) DEFAULT NULL,
  `KategorijaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProizvodID`,`IsporukaID`,`StavkaBr`,`Datum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UpitA`
--

LOCK TABLES `UpitA` WRITE;
/*!40000 ALTER TABLE `UpitA` DISABLE KEYS */;
/*!40000 ALTER TABLE `UpitA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UpitB`
--

DROP TABLE IF EXISTS `UpitB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UpitB` (
  `ZaposleniID` int(11) NOT NULL,
  `IsporukaID` int(11) NOT NULL,
  `IznosRacuna` decimal(65,2) DEFAULT NULL,
  `Tezina` decimal(65,2) DEFAULT NULL,
  `KancelarijaID` int(11) DEFAULT NULL,
  `DivizijaID` int(11) DEFAULT NULL,
  `Kvartal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ZaposleniID`,`IsporukaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UpitB`
--

LOCK TABLES `UpitB` WRITE;
/*!40000 ALTER TABLE `UpitB` DISABLE KEYS */;
/*!40000 ALTER TABLE `UpitB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zaposleni`
--

DROP TABLE IF EXISTS `Zaposleni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Zaposleni` (
  `ZaposleniID` int(11) NOT NULL,
  `Ime` varchar(45) DEFAULT NULL,
  `Prezime` varchar(45) DEFAULT NULL,
  `DatumRodjenja` datetime DEFAULT NULL,
  `DatumPocetka` datetime DEFAULT NULL,
  `DatumKraja` datetime DEFAULT NULL,
  `KancelarijaID` int(11) DEFAULT NULL,
  `Pozicija` varchar(45) DEFAULT NULL,
  `Senioritet` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ZaposleniID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zaposleni`
--

LOCK TABLES `Zaposleni` WRITE;
/*!40000 ALTER TABLE `Zaposleni` DISABLE KEYS */;
/*!40000 ALTER TABLE `Zaposleni` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-22 13:06:57
