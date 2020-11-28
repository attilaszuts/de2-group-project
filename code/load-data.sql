DROP SCHEMA IF EXISTS murder;

-- create schema and use it
CREATE SCHEMA IF NOT EXISTS murder;
USE murder;

-- create table murders
CREATE TABLE IF NOT EXISTS murders(
`Record ID` INTEGER NOT NULL, 
`Agency Code` VARCHAR(20) NOT NULL,
`Agency Name` VARCHAR(100) NOT NULL,
`Agency TYPE` VARCHAR(50) NOT NULL,
`City` VARCHAR(50) NOT NULL,
`State` VARCHAR(50) NOT NULL,
`YEAR` YEAR NOT NULL,
`MONTH` VARCHAR(50) NOT NULL,
`Incident` INTEGER NOT NULL,
`Crime TYPE` VARCHAR(50) NOT NULL,
`Crime Solved` VARCHAR(50) NOT NULL,
`Victim Sex` VARCHAR(50) NOT NULL,
`Victim Age` INTEGER NOT NULL,
`Victim Race` VARCHAR(50) NOT NULL,
`Victim Ethnicity` VARCHAR(50) NOT NULL,
`Perpetrator Sex` VARCHAR(50) NOT NULL,
`Perpetrator Age` VARCHAR(20) NOT NULL,
`Perpetrator Race` VARCHAR(50) NOT NULL,
`Perpetrator Ethnicity` VARCHAR(50) NOT NULL,
`Relationship` VARCHAR(50) NOT NULL,
`Weapon` VARCHAR(50) NOT NULL,
`Victim Count` INTEGER NOT NULL,
`Perpetrator Count` INTEGER NOT NULL,
`Record Source` VARCHAR(50) NOT NULL,
PRIMARY KEY (`Record ID`));


-- load table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/murders.csv'
INTO TABLE murders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES 
(`Record ID`, `Agency Code`, `Agency Name`, `Agency TYPE`, `City`, `State`, `YEAR`, `MONTH`, `Incident`, 
`Crime TYPE`, `Crime Solved`, `Victim Sex`, `Victim Age`, `Victim Race`, `Victim Ethnicity`, `Perpetrator Sex`, 
`Perpetrator Age`, `Perpetrator Race`, `Perpetrator Ethnicity`, `Relationship`, `Weapon`, `Victim Count`, `Perpetrator Count`, `Record Source`);




CREATE TABLE opoioid_deaths(
`State` VARCHAR(50) NOT NULL,
`YEAR` YEAR NOT NULL,
`Deaths` VARCHAR(50) NOT NULL,
`Population` INTEGER NOT NULL,
`Crude Rate` VARCHAR(50) NOT NULL,
 `Crude Rate Lower 95% Confidence Interval` VARCHAR(50) NOT NULL,
 `Crude Rate Upper 95% Confidence Interval` VARCHAR(50) NOT NULL,
 `Prescriptions Dispensed by US Retailers in that year (millions)` INTEGER NOT NULL,
PRIMARY KEY(`State`, `YEAR`)); 


-- load table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/opioideaths.csv'
INTO TABLE opoioid_deaths
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;


 
