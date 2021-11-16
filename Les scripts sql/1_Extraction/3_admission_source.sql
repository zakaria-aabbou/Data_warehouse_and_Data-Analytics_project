BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE zak_DWH.admission_source cascade constraints';
EXCEPTION
  WHEN OTHERS THEN
    IF sqlcode != -0942 THEN RAISE; END IF;
END;
/
CREATE OR REPLACE DIRECTORY admission_sourceSrc
AS 'C:/Users/Zakaria/Desktop/DWH_projet_FINAL/dataset';
CREATE OR REPLACE DIRECTORY admission_sourceLog
AS 'C:/Users/Zakaria/Desktop/DWH_projet_FINAL/Log';
/
CREATE TABLE zak_DWH.admission_source (
  id NUMBER(10) NULL ,
  description VARCHAR2(255) NULL
)
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY admission_sourceSrc
ACCESS PARAMETERS
(
RECORDS DELIMITED BY '\r\n'
SKIP 1
CHARACTERSET UTF8
BADFILE admission_sourceLog:'admission_sourceBad.bad'
LOGFILE admission_sourceLog:'admission_sourceLog.log'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
)
LOCATION ('IDs_mapping_admission_source.csv'))
REJECT LIMIT UNLIMITED;



-- Vérifiez si tous les enregistrements sont bien importés en exécutant la requête ci-dessous.
SELECT COUNT(*) FROM admission_source;