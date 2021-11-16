
-- Admission Type

-- Add the column
ALTER TABLE zak_DWH.dataset_modified
ADD admission_type VARCHAR(150);

-- PROCEDURE
CREATE OR REPLACE PROCEDURE zak_DWH.TRANSFORM_ADMISSION_TYPE
IS

 n NUMBER(10) DEFAULT 0;
 i NUMBER(10) DEFAULT 1;
BEGIN

SELECT COUNT(*) INTO n FROM zak_DWH.admission_type;

WHILE i <= n LOOP
    UPDATE zak_DWH.dataset_modified
    SET admission_type = (
        SELECT description FROM zak_DWH.admission_type WHERE id = i
    )
    WHERE admission_type_id = i;
    i := i + 1;
END LOOP;
END;
/


--##################################################################################

-- Admission Source

-- Add the column
ALTER TABLE zak_DWH.dataset_modified
ADD admission_source VARCHAR(150);

CREATE OR REPLACE PROCEDURE zak_DWH.TRANSFORM_ADMISSION_SOURCE
IS

 n NUMBER(10) DEFAULT 0;
 i NUMBER(10) DEFAULT 1;
BEGIN

SELECT COUNT(*) INTO n FROM zak_DWH.admission_source;

WHILE i <= n LOOP
	UPDATE zak_DWH.dataset_modified
    SET admission_source = (
		SELECT description FROM zak_DWH.admission_source WHERE id = i
    )
    WHERE admission_source_id = i;
    i := i + 1;
END LOOP;


END;
/


--##################################################################################

-- Add the column
ALTER TABLE zak_DWH.dataset_modified
ADD discharge_disposition VARCHAR(150);


-- Discharge Disposition
CREATE OR REPLACE PROCEDURE zak_DWH.TRANSFORM_DISCHARGE_DISP
IS

 n NUMBER(10) DEFAULT 0;
 i NUMBER(10) DEFAULT 1;
BEGIN

SELECT COUNT(*) INTO n FROM zak_DWH.discharge_disposition;


WHILE i <= n LOOP
	UPDATE zak_DWH.dataset_modified
    SET discharge_disposition = (
		SELECT description FROM zak_DWH.discharge_disposition WHERE id = i
    )
    WHERE discharge_disposition_id = i;
    i := i + 1;
END LOOP;
END;
/



/*
BEGIN
    zak_DWH.TRANSFORM_ADMISSION_TYPE();
    zak_DWH.TRANSFORM_ADMISSION_SOURCE();
    zak_DWH.TRANSFORM_DISCHARGE_DISP();
--rollback; 
END;
*/


ALTER TABLE zak_DWH.dataset_modified
DROP COLUMN admission_type_id;

ALTER TABLE zak_DWH.dataset_modified
DROP COLUMN admission_source_id;

ALTER TABLE zak_DWH.dataset_modified
DROP COLUMN discharge_disposition_id;