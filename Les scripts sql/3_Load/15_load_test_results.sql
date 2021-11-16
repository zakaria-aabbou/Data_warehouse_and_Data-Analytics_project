INSERT INTO dim_test_results (glucose_serum_test_result, a1c_test_results)
SELECT DISTINCT max_glu_serum, A1Cresult
FROM zak_DWH.dataset_modified;

SELECT COUNT(*) FROM dim_test_results;

SELECT *
FROM dim_test_results
WHERE test_results_sk = 3;