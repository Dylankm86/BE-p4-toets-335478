-- Step: 01
-- Goal: Create a new database mvc-2209c-P4
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            04-04-2023      Arjan de Ruijter            New
-- **********************************************************************************/

-- Check if the database exists
DROP DATABASE IF EXISTS `Mvc-p4-toets`;

-- Create a new Database
CREATE DATABASE IF NOT EXISTS `Mvc-p4-toets`;

-- Use database Mvc-2209a-P4
USE `Mvc-p4-toets`;

-- Step: 02
-- Goal: Create a new table Examen
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            02-06-2023      [Jouw naam]                 New
-- **********************************************************************************/

-- Drop table Examen
DROP TABLE IF EXISTS Examen;

-- Create table Examen
CREATE TABLE IF NOT EXISTS Examen
(
    Id                   INT             UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,StudentId            INT             UNSIGNED        NOT NULL
   ,Rijschool            VARCHAR(50)                     NOT NULL
   ,Stad                 VARCHAR(50)                     NOT NULL
   ,Rijbewijscategorie   VARCHAR(10)                     NOT NULL
   ,Datum                DATE                            NOT NULL
   ,Uitslag              VARCHAR(10)                     NOT NULL
   ,DatumAangemaakt      DATETIME(6)                     NOT NULL
   ,DatumGewijzigd       DATETIME(6)                     NOT NULL

   ,CONSTRAINT  PK_Examen_Id   PRIMARY KEY (Id)
) ENGINE=InnoDB;

-- Step: 03
-- Goal: Create a new table Examinator
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            02-06-2023      [Jouw naam]                 New
-- **********************************************************************************/

-- Drop table Examinator
DROP TABLE IF EXISTS Examinator;

-- Create table Examinator
CREATE TABLE IF NOT EXISTS Examinator
(
    Id                   INT             UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,Voornaam             VARCHAR(50)                     NOT NULL
   ,Tussenvoegsel        VARCHAR(50)                     
   ,Achternaam           VARCHAR(50)                     NOT NULL
   ,Mobiel               VARCHAR(20)                     NOT NULL
   ,DatumAangemaakt      DATETIME(6)                     NOT NULL
   ,DatumGewijzigd       DATETIME(6)                     NOT NULL

   ,CONSTRAINT  PK_Examinator_Id   PRIMARY KEY (Id)
) ENGINE=InnoDB;

-- Step: 04
-- Goal: Create a new table ExamenPerExaminator
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            02-06-2023      [Jouw naam]                 New
-- **********************************************************************************/

-- Drop table ExamenPerExaminator
DROP TABLE IF EXISTS ExamenPerExaminator;

-- Create table ExamenPerExaminator
CREATE TABLE IF NOT EXISTS ExamenPerExaminator
(
    Id                   INT             UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,ExamenId             INT             UNSIGNED        NOT NULL
   ,ExaminatorId         INT             UNSIGNED        NOT NULL
   ,DatumAangemaakt      DATETIME(6)                     NOT NULL
   ,DatumGewijzigd       DATETIME(6)                     NOT NULL

   ,CONSTRAINT  PK_ExamenPerExaminator_Id   PRIMARY KEY (Id)
   ,CONSTRAINT  FK_ExamenPerExaminator_ExamenId_Examen_Id  FOREIGN KEY (ExamenId) REFERENCES Examen(Id)
   ,CONSTRAINT  FK_ExamenPerExaminator_ExaminatorId_Examinator_Id  FOREIGN KEY (ExaminatorId) REFERENCES Examinator(Id)
) ENGINE=InnoDB;

-- Insert data into Examen table
INSERT INTO Examen (Id, StudentId, Rijschool, Stad, Rijbewijscategorie, Datum, Uitslag, DatumAangemaakt, DatumGewijzigd)
VALUES
    (1, 100234, 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd', NOW(6), NOW(6)),
    (2, 123432, 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd', NOW(6), NOW(6)),
    (3, 103234, 'linksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd', NOW(6), NOW(6)),
    (4, 106452, 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Geslaagd', NOW(6), NOW(6)),
    (5, 104546, 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt', NOW(6), NOW(6)),
    (6, 100333, 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Gezakt', NOW(6), NOW(6)),
    (7, 124444, 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd', NOW(6), NOW(6));

-- Insert data into Examinator table
INSERT INTO Examinator (Id, Voornaam, Tussenvoegsel, Achternaam, Mobiel, DatumAangemaakt, DatumGewijzigd)
VALUES
    (1, 'Jan', '', 'de Vries', '0612345678', NOW(6), NOW(6)),
    (2, 'Pieter', '', 'Janssen', '0611111111', NOW(6), NOW(6)),
    (3, 'Linda', '', 'Smit', '0622222222', NOW(6), NOW(6)),
    (4, 'Erik', 'van', 'Dijk', '0633333333', NOW(6), NOW(6)),
    (5, 'Marieke', '', 'Bakker', '0644444444', NOW(6), NOW(6));
