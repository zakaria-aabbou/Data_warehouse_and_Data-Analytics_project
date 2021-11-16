BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE zak_DWH.admission_type cascade constraints';
EXCEPTION
  WHEN OTHERS THEN
    IF sqlcode != -0942 THEN RAISE; END IF;
END;
/
CREATE OR REPLACE DIRECTORY admission_typeSrc
AS 'C:/Users/Zakaria/Desktop/DWH_projet_FINAL/dataset';
CREATE OR REPLACE DIRECTORY admission_typeLog
AS 'C:/Users/Zakaria/Desktop/DWH_projet_FINAL/Log';
/
CREATE TABLE zak_DWH.admission_type (
  id NUMBER(10) NULL ,
  description VARCHAR2(255) NULL
)
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY admission_typeSrc
ACCESS PARAMETERS
(
RECORDS DELIMITED BY '\r\n'
SKIP 1
CHARACTERSET UTF8
BADFILE admission_typeLog:'admission_typeBad.bad'
LOGFILE admission_typeLog:'admission_typeLog.log'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
)
LOCATION ('IDs_mapping_admission_type.csv'))
REJECT LIMIT UNLIMITED;



-- Vérifiez si tous les enregistrements sont bien importés en exécutant la requête ci-dessous.
SELECT COUNT(*) FROM admission_type;