SET HEADING OFF
SET FEEDBACK OFF
SET ECHO OFF
SET PAGESIZE 0
SPOOL C:/Users/Zakaria/Desktop/DWH_projet_FINAL/out.csv
SELECT '"' || race || '";"' || gender || '";"' || age_int || '";"' || admission_type || '";"' ||
	discharge_disposition || '";"' || admission_source || '";"' || time_in_hospital || '";"' || payer_code || '";"' ||
    medical_specialty || '";"' || num_lab_procedures || '";"' || num_procedures || '";"' || num_medications || '";"' ||
    number_outpatient || '";"' || number_emergency || '";"' || number_inpatient || '";"' || diag_1 || '";"' || diag_2 || '";"' ||
    diag_3 || '";"' || number_diagnoses || '";"' || max_glu_serum || '";"' || A1Cresult || '";"' || metformin || '";"' || repaglinide || '";"' ||
    nateglinide || '";"' || chlorpropamide || '";"' || glimepiride || '";"' || acetohexamide || '";"' || glipizide || '";"' ||
    glyburide || '";"' || tolbutamide || '";"' || pioglitazone || '";"' || rosiglitazone || '";"' || acarbose || '";"' || miglitol || '";"' ||
    troglitazone || '";"' || tolazamide || '";"' || examide || '";"' || citoglipton || '";"' || insulin || '";"' || glyburide_metformin || '";"' ||
    glipizide_metformin || '";"' || glimepiride_pioglitazone || '";"' || metformin_rosiglitazone || '";"' ||
    metformin_pioglitazone || '";"' || change || '";"' || diabetesMed || '";"' || readmitted || '"'
FROM dataset_modified;
SPOOL OFF
