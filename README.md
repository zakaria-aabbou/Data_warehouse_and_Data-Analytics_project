# Data-Warehouse_Data-Analytics_project

The purpose of this project is to build an ETL pipeline that will be able to extract diabetic patients data and transform that data to make it suitable for analysis.

The data warehouse is to be primarily used by data analysts and scientsts. Example queries might ask the following questions:

* In the previous year, how many diabetic patients visited the hospital?
* What patients are referred to another medical facility or sent home with health services?
* How many patients have had an A1C test based on the secondary diagnosis?
* What is the correlation between the age and gender for a given a medicine in a given diagnosis?

As part of the course (DataWarehouse) taught by our dear teacher Guénaël Cabanes, and as part of End of Course Project, we have to design and develop a decision-making system (DataWarehouse) on diabetes in order to predict patient readmissions diabetics and support decision-making in the health sector.

Diabetes mellitus (DS) is a chronic disease where the blood has high sugar levels. This can happen when the pancreas does not produce enough insulin or when the body cannot effectively use the insulin it produces (WHO). Diabetes is a progressive disease that can lead to a significant number of health complications and drastically reduce the quality of life. While many diabetic patients manage the health complication with diet and exercise, some require medication to control their blood sugar. As published by a research article titled "The Relationship Between Diabetes Mellitus and 30-Day Readmission Rates" an estimated 9.3% of the population in the United States has diabetes mellitus (DM), including 28 % are not diagnosed. In recent years, government agencies and health systems have increasingly focused on 30-day readmission rates to determine the complexity of their patient populations and improve quality. The 30-day readmission rates for inpatients with DM are between 14.4% and 22.7%, much higher than the rate for all inpatients (8.5% to 13.5%).

Readmission to hospital is an indicator of the quality of care and a factor in the increase in the cost of health care. Like other chronic diseases, diabetes is associated with a higher risk of hospital readmission. In this research, we will build a DataWarehouse from transactional data provided by "Center for Clinical and Translational Research". Next, we evaluate several machine learning approaches to predict the likelihood of diabetic patients re-admission to hospital. The dataset used for this study contains more than 100,000 diabetic patient data and 55 variables, including length of stay, insulin, and inpatient visits to US hospitals. We use several pre-processing techniques and study the performance of different models. Important variables that contribute to the analysis are number of hospital patients, length of stay, number of medications, number of diagnoses, and age. The results demonstrate the viability of techniques to better understand the factors influencing readmission to hospital.

**Tools and technologies used:**

* DataWarhouse: Oracle, PL/SQL
* IDE: SQL developer, Jupyter Notebook
* Visualisation: Python (Matplotlib and Seaborn)
* Modèles: Logistic Regression, Decision Tree, Random Forest, SVM
* Biblios: Numpy, Pandas, Seaborn, Matplotlib, Scikit-learn

**Screens:**
<div align="left">
  <h2>Work summary:</h2>
  <img alt="Demo" src="https://github.com/zakaria-aabbou/DataWarehouse_project/blob/main/screens/1.png" />
  <h2>Normalized E/A data model:</h2>
  <img alt="Demo" src="https://github.com/zakaria-aabbou/DataWarehouse_project/blob/main/screens/2.png" />
  <h2>Data Warehouse dimensional model: </h2>
  <img alt="Demo" src="https://github.com/zakaria-aabbou/DataWarehouse_project/blob/main/screens/3.png" />
  <h2>Univariate diagrams: race, sex, diabetes: </h2>
  <img alt="Demo" src="https://github.com/zakaria-aabbou/DataWarehouse_project/blob/main/screens/4.png" />
  <h2>Univariate charts: age, max_glu_serum, a1cresult:</h2>
  <img alt="Demo" src="https://github.com/zakaria-aabbou/DataWarehouse_project/blob/main/screens/5.png" />
  <h2>Primary and secondary diagnosis:</h2>
  <img alt="Demo" src="https://github.com/zakaria-aabbou/DataWarehouse_project/blob/main/screens/6.jpg" />
  <h2>Important drugs against readmission:</h2>
  <img alt="Demo" src="https://github.com/zakaria-aabbou/DataWarehouse_project/blob/main/screens/7.png" />
</div>
