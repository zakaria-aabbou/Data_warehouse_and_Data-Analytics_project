CREATE TABLE  dim_medication (
  medication_sk NUMBER(10) ,
  change_of_medication VARCHAR(45)  ,
  diabetes_medicatin VARCHAR(45)  ,
  metformin VARCHAR(45)  ,
  repaglinide VARCHAR(45)  ,
  nateglinide VARCHAR(45)  ,
  chlorpropamide VARCHAR(45)  ,
  glimepiride VARCHAR(45)  ,
  acetohexamide VARCHAR(45)  ,
  glipizide VARCHAR(45)  ,
  tolbutamide VARCHAR(45)  ,
  pioglitazone VARCHAR(45)  ,
  rosiglitazone VARCHAR(45)  ,
  acarbose VARCHAR(45)  ,
  miglitol VARCHAR(45)  ,
  troglitazone VARCHAR(45)  ,
  tolazamide VARCHAR(45)  ,
  examide VARCHAR(45)  ,
  citoglipton VARCHAR(45)  ,
  insulin VARCHAR(45)  ,
  glyburide_metformin VARCHAR(45)  ,
  glipizide_metformin VARCHAR(45)  ,
  glimepiride_pioglitazone VARCHAR(45)  ,
  metformin_rosiglitazone VARCHAR(45)  ,
  metformin_pioglitazone VARCHAR(45) 
);

ALTER TABLE dim_medication ADD (
  CONSTRAINT medication_sk_pk PRIMARY KEY (medication_sk));

-- SEQUENCE
CREATE SEQUENCE dim_medication_seq START WITH 1;

-- TRIGGER
CREATE OR REPLACE TRIGGER dim_medication_bir 
BEFORE INSERT ON dim_medication 
FOR EACH ROW

BEGIN
  SELECT dim_medication_seq.NEXTVAL
  INTO   :new.medication_sk
  FROM   dual;
END;
/