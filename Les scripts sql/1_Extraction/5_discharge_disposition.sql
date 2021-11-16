BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE zak_DWH.discharge_disposition cascade constraints';
EXCEPTION
  WHEN OTHERS THEN
    IF sqlcode != -0942 THEN RAISE; END IF;
END;
/
CREATE OR REPLACE DIRECTORY discharge_dispositionSrc
AS 'C:/Users/Zakaria/Desktop/DWH_projet_FINAL/dataset';
CREATE OR REPLACE DIRECTORY discharge_dispositionLog
AS 'C:/Users/Zakaria/Desktop/DWH_projet_FINAL/Log';
/
CREATE TABLE zak_DWH.discharge_disposition (
  id NUMBER(10) NULL ,
  description VARCHAR2(255) NULL
)
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY discharge_dispositionSrc
ACCESS PARAMETERS
(
RECORDS DELIMITED BY '\r\n'
SKIP 1
CHARACTERSET UTF8
BADFILE discharge_dispositionLog:'discharge_dispositionBad.bad'
LOGFILE discharge_dispositionLog:'discharge_dispositionLog.log'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
)
LOCATION ('IDs_mapping_discharge_disposition.csv'))
REJECT LIMIT UNLIMITED;



-- Vérifiez si tous les enregistrements sont bien importés en exécutant la requête ci-dessous.
SELECT COUNT(*) FROM discharge_disposition;