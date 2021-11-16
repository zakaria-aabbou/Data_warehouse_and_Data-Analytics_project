
CREATE TABLE  fact_admission (
  encounter_id NUMBER(10) ,
  patient_sk NUMBER(10),
  test_sk NUMBER(10),
  medication_sk NUMBER(10),
  diagnosis_sk NUMBER(10),
  admissionDetail_sk NUMBER(10) ,
  discharge_sk NUMBER(10) ,
  time_in_hospital VARCHAR(45)  ,
  num_lab_procedure NUMBER(10)  ,
  num_procedures NUMBER(10)  ,
  num_medication NUMBER(10)  ,
  number_outpatient NUMBER(10)  ,
  number_emergency NUMBER(10)  ,
  number_inpatient NUMBER(10)  ,
  number_diagnoses NUMBER(10)
);

ALTER TABLE fact_admission ADD (
    CONSTRAINT encounter_id_pk2 PRIMARY KEY (encounter_id),
    CONSTRAINT patient_sk_FK FOREIGN KEY (patient_sk)	REFERENCES dim_patient (patient_sk) , 
    CONSTRAINT test_sk_FK FOREIGN KEY (test_sk) REFERENCES dim_test_results (test_results_sk),
    CONSTRAINT medication_sk_FK FOREIGN KEY (medication_sk)	REFERENCES dim_medication (medication_sk) , 
    CONSTRAINT diagnosis_sk_FK FOREIGN KEY (diagnosis_sk) REFERENCES dim_diagnosis (diagnosis_sk),
    CONSTRAINT admissionDetail_sk_FK FOREIGN KEY (admissionDetail_sk) REFERENCES dim_admissionDetails (admissionDetail_sk),
    CONSTRAINT discharge_sk_FK FOREIGN KEY (discharge_sk) REFERENCES dim_discharge (discharge_sk)
);
CREATE UNIQUE INDEX medication_sk_UNIQUE2 ON fact_admission (medication_sk);
CREATE UNIQUE INDEX diagnosis_sk_UNIQUE2 ON fact_admission (diagnosis_sk);
CREATE UNIQUE INDEX admissionDetail_sk_UNIQUE2 ON fact_admission (admissionDetail_sk);
CREATE UNIQUE INDEX discharge_sk_UNIQUE2 ON fact_admission (discharge_sk);

-- SEQUENCE
CREATE SEQUENCE fact_admission_seq START WITH 1;

-- TRIGGER
CREATE OR REPLACE TRIGGER fact_admission_bir 
BEFORE INSERT ON fact_admission 
FOR EACH ROW

BEGIN
  SELECT fact_admission_seq.NEXTVAL
  INTO   :new.encounter_id
  FROM   dual;
END;
/
