CREATE TABLE  dim_admissionDetails (
  admissionDetail_sk NUMBER(10) ,
  admission_type VARCHAR(200)  ,
  admission_source VARCHAR(200)  ,
  medical_speciality VARCHAR(200) 
);

ALTER TABLE dim_admissionDetails ADD (
  CONSTRAINT admissionDetail_sk_pk PRIMARY KEY (admissionDetail_sk));

-- SEQUENCE
CREATE SEQUENCE admissionDetails_seq START WITH 1;

-- TRIGGER
CREATE OR REPLACE TRIGGER admissionDetails_bir 
BEFORE INSERT ON dim_admissionDetails 
FOR EACH ROW

BEGIN
  SELECT admissionDetails_seq.NEXTVAL
  INTO   :new.admissionDetail_sk
  FROM   dual;
END;
/