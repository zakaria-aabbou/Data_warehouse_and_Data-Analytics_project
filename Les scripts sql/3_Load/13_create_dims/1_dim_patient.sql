CREATE TABLE dim_patient (
  patient_sk NUMBER(10) ,
  patient_number VARCHAR(45),
  race VARCHAR(45)  ,
  gender VARCHAR(45)  ,
  age VARCHAR(45) 

);

CREATE UNIQUE INDEX patient_sk_UNIQU ON dim_patient (patient_sk);

ALTER TABLE dim_patient ADD (
  CONSTRAINT patient_sk_pk PRIMARY KEY (patient_sk),
  CONSTRAINT gender_type CHECK (gender in ('Male','Female'))
  );

-- SEQUENCE
CREATE SEQUENCE patient_seq START WITH 1;

-- TRIGGER
CREATE OR REPLACE TRIGGER patient_bir 
BEFORE INSERT ON dim_patient 
FOR EACH ROW

BEGIN
  SELECT patient_seq.NEXTVAL
  INTO   :new.patient_sk
  FROM   dual;
END;
/