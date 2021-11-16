CREATE TABLE zak_DWH.dataset_modified (
  encounter_id NUMBER(10) NULL ,
  patient_nbr NUMBER(10) NULL ,
  race VARCHAR2(45) NULL ,
  gender VARCHAR2(45) NULL ,
  age VARCHAR2(45) NULL ,
  weight VARCHAR2(45) NULL ,
  admission_type_id NUMBER(10) NULL ,
  discharge_disposition_id NUMBER(10) NULL ,
  admission_source_id NUMBER(10) NULL ,
  time_in_hospital NUMBER(10) NULL ,
  payer_code VARCHAR2(45) NULL ,
  medical_specialty VARCHAR2(45) NULL ,
  num_lab_procedures NUMBER(10) NULL ,
  num_procedures NUMBER(10) NULL ,
  num_medications NUMBER(10) NULL ,
  number_outpatient NUMBER(10) NULL ,
  number_emergency NUMBER(10) NULL ,
  number_inpatient NUMBER(10) NULL ,
  diag_1 VARCHAR2(200) NULL ,
  diag_2 VARCHAR2(200) NULL ,
  diag_3 VARCHAR2(200) NULL ,
  number_diagnoses NUMBER(10) NULL ,
  max_glu_serum VARCHAR2(45) NULL ,
  A1Cresult VARCHAR2(45) NULL ,
  metformin VARCHAR2(45) NULL ,
  repaglinide VARCHAR2(45) NULL ,
  nateglinide VARCHAR2(45) NULL ,
  chlorpropamide VARCHAR2(45) NULL ,
  glimepiride VARCHAR2(45) NULL ,
  acetohexamide VARCHAR2(45) NULL ,
  glipizide VARCHAR2(45) NULL ,
  glyburide VARCHAR2(45) NULL ,
  tolbutamide VARCHAR2(45) NULL ,
  pioglitazone VARCHAR2(45) NULL ,
  rosiglitazone VARCHAR2(45) NULL ,
  acarbose VARCHAR2(45) NULL ,
  miglitol VARCHAR2(45) NULL ,
  troglitazone VARCHAR2(45) NULL ,
  tolazamide VARCHAR2(45) NULL ,
  examide VARCHAR2(45) NULL ,
  citoglipton VARCHAR2(45) NULL ,
  insulin VARCHAR2(45) NULL ,
  glyburide_metformin VARCHAR2(45) NULL ,
  glipizide_metformin VARCHAR2(45) NULL ,
  glimepiride_pioglitazone VARCHAR2(45) NULL ,
  metformin_rosiglitazone VARCHAR2(45) NULL ,
  metformin_pioglitazone VARCHAR2(45) NULL ,
  change VARCHAR2(45) NULL ,
  diabetesMed VARCHAR2(45) NULL ,
  readmitted VARCHAR2(45) NULL )
 ;


INSERT INTO zak_DWH.dataset_modified
SELECT * FROM zak_DWH.dataset;