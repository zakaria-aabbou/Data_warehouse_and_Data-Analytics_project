CREATE TABLE  dim_test_results (
  test_results_sk NUMBER(10) ,
  glucose_serum_test_result VARCHAR(45)  ,
  a1c_test_results VARCHAR(45)
);

ALTER TABLE dim_test_results ADD (
  CONSTRAINT test_results_sk_pk PRIMARY KEY (test_results_sk));

-- SEQUENCE
CREATE SEQUENCE dim_test_results_seq START WITH 1;

-- TRIGGER
CREATE OR REPLACE TRIGGER dim_test_results_bir 
BEFORE INSERT ON dim_test_results 
FOR EACH ROW

BEGIN
  SELECT dim_test_results_seq.NEXTVAL
  INTO   :new.test_results_sk
  FROM   dual;
END;
/