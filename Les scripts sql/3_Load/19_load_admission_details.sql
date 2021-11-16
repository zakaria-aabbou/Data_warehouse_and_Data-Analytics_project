INSERT INTO dim_admissionDetails (admission_type, admission_source, medical_speciality)
SELECT DISTINCT admission_type, admission_source, medical_specialty
FROM zak_DWH.dataset_modified;

SELECT COUNT(*) FROM dim_admissionDetails;