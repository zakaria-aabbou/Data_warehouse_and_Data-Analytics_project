INSERT INTO dim_discharge (discharge_disposition, readmitted, payer_code)
SELECT DISTINCT discharge_disposition, readmitted, payer_code
FROM zak_DWH.dataset_modified;

SELECT COUNT(*) FROM dim_discharge;