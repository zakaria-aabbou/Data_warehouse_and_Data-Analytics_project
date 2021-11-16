CREATE TABLE  dim_discharge (
  discharge_sk NUMBER(10) ,
  discharge_disposition VARCHAR(150)  ,
  readmitted VARCHAR(45)  ,
  payer_code VARCHAR(45) 
);

ALTER TABLE dim_discharge ADD (
  CONSTRAINT discharge_sk_pk PRIMARY KEY (discharge_sk));

-- SEQUENCE
CREATE SEQUENCE dim_discharge_seq START WITH 1;

-- TRIGGER
CREATE OR REPLACE TRIGGER dim_discharge_bir 
BEFORE INSERT ON dim_discharge 
FOR EACH ROW

BEGIN
  SELECT dim_discharge_seq.NEXTVAL
  INTO   :new.discharge_sk
  FROM   dual;
END;
/