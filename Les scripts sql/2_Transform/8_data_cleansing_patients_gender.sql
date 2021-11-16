SELECT DISTINCT gender
FROM zak_DWH.dataset_modified;

CREATE OR REPLACE VIEW zak_DWH.dirty_patient_gender AS
SELECT *
FROM zak_DWH.dataset_modified
WHERE patient_nbr in (
	SELECT patient_nbr
	FROM zak_DWH.dataset_modified
	WHERE gender = 'Female'
) AND patient_nbr in (
	SELECT patient_nbr
	FROM zak_DWH.dataset_modified
	WHERE gender = 'Male'
);

SELECT encounter_id, patient_nbr, race, gender
FROM zak_DWH.dirty_patient_gender;

UPDATE zak_DWH.dataset_modified
SET gender = 'Male'
WHERE patient_nbr = 109210482;