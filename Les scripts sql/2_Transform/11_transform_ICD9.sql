CREATE OR REPLACE PROCEDURE zak_DWH.TRANSFORM_ICD9
IS

 n NUMBER(10) DEFAULT 0;
 i NUMBER(10) DEFAULT 0;
BEGIN

-- Transform values starts with V and E
-- Transform "diag_1" values
UPDATE zak_DWH.dataset_modified
SET diag_1 = (
	SELECT disease
    FROM zak_DWH.icd9_index
    WHERE code_letter = 'V'
)
WHERE SUBSTR(diag_1, 1, 1) = 'V';

UPDATE zak_DWH.dataset_modified
SET diag_1 = (
	SELECT disease
    FROM zak_DWH.icd9_index
    WHERE code_letter = 'E'
)
WHERE SUBSTR(diag_1, 1, 1) = 'E';

-- Transform "diag_2" values
UPDATE zak_DWH.dataset_modified
SET diag_2 = (
	SELECT disease
    FROM zak_DWH.icd9_index
    WHERE code_letter = 'V'
)
WHERE SUBSTR(diag_2, 1, 1) = 'V';

UPDATE zak_DWH.dataset_modified
SET diag_2 = (
	SELECT disease
    FROM zak_DWH.icd9_index
    WHERE code_letter = 'E'
)
WHERE SUBSTR(diag_2, 1, 1) = 'E';

-- Transform "diag_3" values
UPDATE zak_DWH.dataset_modified
SET diag_3 = (
	SELECT disease
    FROM zak_DWH.icd9_index
    WHERE code_letter = 'V'
)
WHERE SUBSTR(diag_3, 1, 1) = 'V';

UPDATE zak_DWH.dataset_modified
SET diag_3 = (
	SELECT disease
    FROM zak_DWH.icd9_index
    WHERE code_letter = 'E'
)
WHERE SUBSTR(diag_3, 1, 1) = 'E';


-- Transform values with digits only
SELECT COUNT(*)
INTO n
FROM zak_DWH.icd9_index
WHERE code_letter = ''
;

i := 0;
WHILE i < n LOOP 
	-- Transform "diag_1" values
	UPDATE zak_DWH.dataset_modified
    SET diag_1 = (
		SELECT disease
        FROM zak_DWH.icd9_index
        WHERE ROWNUM <= 1
	)
    WHERE regexp_like (diag_1 , '^[0-9]+\\.?[0-9]*$') AND (
		diag_1 >= (
			SELECT code_from
            FROM zak_DWH.icd9_index
            WHERE ROWNUM <= 1
		) AND
		diag_1 <= (
			SELECT code_to
            FROM zak_DWH.icd9_index
            WHERE ROWNUM <= 1
		)
	);
    
	-- Transform "diag_2" values
	UPDATE zak_DWH.dataset_modified SET diag_2 = (
		SELECT disease
        FROM zak_DWH.icd9_index
        WHERE ROWNUM <= 1
	)
    WHERE regexp_like (diag_1 , '^[0-9]+\\.?[0-9]*$') AND (
		diag_2 >= (
			SELECT code_from
            FROM zak_DWH.icd9_index
            WHERE ROWNUM <= 1
		) AND
		diag_2 <= (
			SELECT code_to
            FROM zak_DWH.icd9_index
            WHERE ROWNUM <= 1
		)
	);
    
    -- Transform "diag_3" values
	UPDATE zak_DWH.dataset_modified SET diag_3 = (
		SELECT disease
        FROM zak_DWH.icd9_index
        WHERE ROWNUM <= 1
	)
    WHERE regexp_like (diag_1 , '^[0-9]+\\.?[0-9]*$') AND (
		diag_3 >= (
			SELECT code_from
			FROM zak_DWH.icd9_index
			WHERE ROWNUM <= 1
        ) AND
		diag_3 <= (
			SELECT code_to
			FROM zak_DWH.icd9_index
			WHERE ROWNUM <= 1
        )
	);
  i := i + 1;
END LOOP;

END;
/


BEGIN
  zak_DWH.TRANSFORM_ICD9();
--rollback; 
END;
