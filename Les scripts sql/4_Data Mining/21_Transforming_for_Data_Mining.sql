
ALTER TABLE zak_DWH.dataset_modified
ADD age_int NUMBER(10);


CREATE OR REPLACE PROCEDURE zak_DWH.transform_for_datamining
IS

 i NUMBER(10) DEFAULT 0;
 age_str VARCHAR2(10);
 age_str_int NUMBER(10);
BEGIN

WHILE i < 10 LOOP
	age_str := '[' || i * 10 || '-' || (i+1) * 10 || ')';
    age_str_int := i * 10 + 5;
    
    UPDATE zak_DWH.dataset_modified
    SET age_int = age_str_int
    WHERE age = age_str;
    
    i := i+1;
END LOOP;

END;
/

--BEGIN
--zak_DWH.transform_for_datamining();
--rollback; 
--END;


SELECT DISTINCT age, age_int
FROM zak_DWH.dataset_modified;