-- Step: 01
-- Goal: Create a new database mvc-2209c-P4
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            04-04-2023      Arjan de Ruijter            New
-- **********************************************************************************/

-- Check if the database exists
DROP DATABASE IF EXISTS `Mvc-2209c-P4`;

-- Create a new Database
CREATE DATABASE IF NOT EXISTS `Mvc-2209c-P4`;

-- Use database Mvc-2209a-P4
Use `Mvc-2209c-P4`;

-- Step: 02
-- Goal: Create a new table Instructeur
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            04-04-2023      Arjan de Ruijter            New
-- 02            13-04-2023      Arjan de Ruijter            Improved version
-- **********************************************************************************/

-- Drop table Instructeur
-- Step: 02
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
    Id                   TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,Voornaam             VARCHAR(50)                     NOT NULL
   ,Tussenvoegsel        VARCHAR(50)                     
   ,Achternaam           VARCHAR(50)                     NOT NULL
   ,Mobiel               VARCHAR(20)                     NOT NULL
   ,DatumAangemaakt      DateTime(6)                     NOT NULL
   ,DatumGewijzigd       DateTime(6)                     NOT NULL

   ,CONSTRAINT  PK_Examinator_Id   PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;

-- Insert data into Examinator table
INSERT INTO Examinator
(
     Id
    ,Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Mobiel
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
     (1, 'Manuel', 'Van', 'Meekeren', '06-28493823', SYSDATE(6), SYSDATE(6))
    ,(2, 'Lissette', 'den', 'Dongen', '06-24383299', SYSDATE(6), SYSDATE(6))
    ,(3, 'jurswaily', '', 'Luciano', '06-48293846', SYSDATE(6), SYSDATE(6))
    ,(4, 'Naswha', '', 'Salawi', '06-34291219', SYSDATE(6), SYSDATE(6));

-- Step: 03
-- Goal: Fill table Instructeur with data
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            04-04-2023      Arjan de Ruijter            New
-- 02            04-04-2023      Arjan de Ruijter            Added more records
-- **********************************************************************************/

-- Insert data into Examen table
INSERT INTO Examen
(
     Id
    ,StudentId
    ,Rijschool
    ,Stad
    ,Rijbewijscategorie
    ,Datum
    ,Uitslag
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
     (1, 100234, 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd', SYSDATE(6), SYSDATE(6))
    ,(2, 123432, 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd', SYSDATE(6), SYSDATE(6))
    ,(3, 103234, 'linksomRechtsom', 'Dorderecht', 'D', '2023-05-15', 'Geslaagd', SYSDATE(6), SYSDATE(6))
    ,(4, 106452, 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Geslaagd', SYSDATE(6), SYSDATE(6))
    ,(5, 104546, 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt', SYSDATE(6), SYSDATE(6))
    ,(6, 100333, 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Gezakt', SYSDATE(6), SYSDATE(6))
    ,(7, 124444, 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd', SYSDATE(6), SYSDATE(6));

-- Step: 04
-- Goal: Create a new table Examen
-- **********************************************************************************
-- Version       Date:           Author:                     Description:
-- *******       **********      ****************            ******************
-- 01            02-06-2023      [Jouw naam]                 New
-- **********************************************************************************/

ql
Copy code
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
   ,DatumAangemaakt      DateTime(6)                     NOT NULL
   ,DatumGewijzigd       DateTime(6)                     NOT NULL

   ,CONSTRAINT      PK_Examen_Id   PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;



-- Drop table ExamenPerExaminator
DROP TABLE IF EXISTS ExamenPerExaminator;

-- Create table ExamenPerExaminator
CREATE TABLE IF NOT EXISTS ExamenPerExaminator
(
    Id                   INT             UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,ExamenId             INT             UNSIGNED        NOT NULL
   ,ExaminatorId         INT             UNSIGNED        NOT NULL
   ,DatumAangemaakt      DateTime(6)                     NOT NULL
   ,DatumGewijzigd       DateTime(6)                     NOT NULL

   ,CONSTRAINT  PK_ExamenPerExaminator_Id   PRIMARY KEY CLUSTERED(Id)
   ,CONSTRAINT  FK_ExamenPerExaminator_ExamenId_Examen_Id  FOREIGN KEY (ExamenId) REFERENCES Examen(Id)
   ,CONSTRAINT  FK_ExamenPerExaminator_ExaminatorId_Examinator_Id  FOREIGN KEY (ExaminatorId) REFERENCES Examinator(Id)
) ENGINE=InnoDB;

-- Insert data into ExamenPerExaminator table
INSERT INTO ExamenPerExaminator
(
     Id
    ,ExamenId
    ,ExaminatorId
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
     (1, 1, 3, SYSDATE(6), SYSDATE(6))
    ,(2, 3, 3, SYSDATE(6), SYSDATE(6))
    ,(3, 2, 2, SYSDATE(6), SYSDATE(6))
    ,(4, 4, 1, SYSDATE(6), SYSDATE(6))
    ,(5, 7, 3, SYSDATE(6), SYSDATE(6))
    ,(6, 6, 4, SYSDATE(6), SYSDATE(6))
    ,(7, 5, 2, SYSDATE(6), SYSDATE(6));

