INSERT INTO fact_admission (encounter_id, patient_sk, test_sk, time_in_hospital , num_lab_procedure)
(SELECT stg.encounter_id,
	patient.patient_sk, test.test_results_sk,
    stg.time_in_hospital, stg.num_lab_procedures
FROM zak_DWH.dataset stg,
	dim_patient patient, 
    dim_test_results test
WHERE stg.patient_nbr = patient.patient_number AND stg.age = patient.age
	AND test.glucose_serum_test_result = stg.max_glu_serum AND test.a1c_test_results = stg.A1Cresult
);

-- 30 606 lignes inséré.
-- à verifier

