DELETE FROM zak_DWH.dataset_modified
WHERE payer_code = '?';

DELETE FROM zak_DWH.dataset_modified
WHERE medical_specialty = '?';

DELETE FROM zak_DWH.dataset_modified
WHERE race = '?';

DELETE FROM zak_DWH.dataset_modified
WHERE diag_1 = '?';

DELETE FROM zak_DWH.dataset_modified
WHERE diag_2 = '?';

DELETE FROM zak_DWH.dataset_modified
WHERE diag_3 = '?';

SELECT COUNT(*) FROM zak_DWH.dataset_modified;