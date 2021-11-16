CREATE TABLE  dim_time_in_hospital (
  time_in_hospital_id NUMBER(10) ,
  date_hos VARCHAR(10)   ,
  week NUMBER(10)  ,
  month_hos NUMBER(10) ,
  year_hos NUMBER(10),
  weekday VARCHAR(16)
);

ALTER TABLE dim_time_in_hospital ADD (
  CONSTRAINT time_in_hospital_id_pk PRIMARY KEY (time_in_hospital_id));

-- SEQUENCE
CREATE SEQUENCE dim_time_in_hospital_seq START WITH 1;

-- TRIGGER
CREATE OR REPLACE TRIGGER dim_time_in_hospital_bir 
BEFORE INSERT ON dim_time_in_hospital 
FOR EACH ROW

BEGIN
  SELECT dim_time_in_hospital_seq.NEXTVAL
  INTO   :new.time_in_hospital_id
  FROM   dual;
END;
/