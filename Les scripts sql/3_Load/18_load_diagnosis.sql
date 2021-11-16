INSERT INTO dim_diagnosis (primary_diagnosis, secondary_diagnosis, additional_diagnosis)
SELECT DISTINCT diag_1, diag_2, diag_3
FROM zak_DWH.dataset_modified;


SELECT COUNT(*) FROM dim_diagnosis;