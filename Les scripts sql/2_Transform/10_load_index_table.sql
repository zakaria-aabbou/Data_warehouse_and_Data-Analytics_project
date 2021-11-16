BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE zak_DWH.icd9_index cascade constraints';
EXCEPTION
  WHEN OTHERS THEN
    IF sqlcode != -0942 THEN RAISE; END IF;
END;
/
CREATE OR REPLACE DIRECTORY icd9_indexSrc
AS 'C:/Users/Zakaria/Desktop/DWH_projet_FINAL/dataset';
CREATE OR REPLACE DIRECTORY icd9_indexLog
AS 'C:/Users/Zakaria/Desktop/DWH_projet_FINAL/Log';
/
CREATE TABLE zak_DWH.icd9_index (
  id NUMBER(10),
  disease VARCHAR2(200),
  code_letter VARCHAR2(10),
  code_from NUMBER(10),
  code_to NUMBER(10)
)
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY icd9_indexSrc
ACCESS PARAMETERS
(
RECORDS DELIMITED BY '\r\n'
SKIP 1
CHARACTERSET UTF8
BADFILE icd9_indexLog:'icd9_indexBad.bad'
LOGFILE icd9_indexLog:'icd9_indexLog.log'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
)
LOCATION ('diseases_and_injuries_tabular_index.csv'))
REJECT LIMIT UNLIMITED;



-- Vérifiez si tous les enregistrements sont bien importés en exécutant la requête ci-dessous.
SELECT COUNT(*) FROM zak_DWH.icd9_index;














