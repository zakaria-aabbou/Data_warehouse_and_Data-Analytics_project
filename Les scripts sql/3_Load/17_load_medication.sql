INSERT INTO dim_medication (
    change_of_medication, diabetes_medicatin, metformin, repaglinide,
    nateglinide, chlorpropamide, glimepiride, acetohexamide, glipizide,
    tolbutamide, pioglitazone, rosiglitazone, acarbose, miglitol,
    troglitazone, tolazamide, examide, citoglipton, insulin,
    glyburide_metformin, glipizide_metformin, glimepiride_pioglitazone,
    metformin_rosiglitazone, metformin_pioglitazone
)
SELECT DISTINCT change, diabetesMed, metformin,
    repaglinide, nateglinide, chlorpropamide, glimepiride, acetohexamide,
    glipizide, tolbutamide, pioglitazone, rosiglitazone, acarbose,
    miglitol, troglitazone, tolazamide, examide, citoglipton, insulin,
    glyburide_metformin, glipizide_metformin, glimepiride_pioglitazone,
    metformin_rosiglitazone, metformin_pioglitazone
FROM zak_DWH.dataset_modified;

SELECT COUNT(*) FROM dim_medication;