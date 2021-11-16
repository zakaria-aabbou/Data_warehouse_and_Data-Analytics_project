CREATE TABLE  dim_diagnosis (
  diagnosis_sk NUMBER(10) ,
  primary_diagnosis VARCHAR(200)  ,
  secondary_diagnosis VARCHAR(200)  ,
  additional_diagnosis VARCHAR(200)
);

ALTER TABLE dim_diagnosis ADD (
  CONSTRAINT diagnosis_sk_pk PRIMARY KEY (diagnosis_sk));

-- SEQUENCE
CREATE SEQUENCE dim_diagnosis_seq START WITH 1;

-- TRIGGER
CREATE OR REPLACE TRIGGER dim_diagnosis_bir 
BEFORE INSERT ON dim_diagnosis 
FOR EACH ROW

BEGIN
  SELECT dim_diagnosis_seq.NEXTVAL
  INTO   :new.diagnosis_sk
  FROM   dual;
END;
/