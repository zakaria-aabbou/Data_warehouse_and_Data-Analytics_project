INSERT INTO dim_patient (patient_number, race, gender, age)
SELECT DISTINCT patient_nbr, race, gender, age
FROM zak_DWH.dataset_modified
ORDER BY patient_nbr, age;

SELECT COUNT(*) FROM dim_patient;

SELECT *
FROM dim_patient
WHERE patient_sk = 62;