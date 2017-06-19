CREATE OR REPLACE FUNCTION GLISS.sf_pos_jgbhyb_string (vfvgbcd   IN STRING,
																 vfvjgno   IN STRING)
	RETURN STRING
IS
	llvbhr		 NUMBER (15) := 0;
	lsv_jgbhyb	 VARCHAR2 (20) := 'a';
	lsvyyyy		 VARCHAR2 (20);
	llvcgnibhr	 NUMBER (15) := 0;
	llvtotbhr	 NUMBER (20) := 0;
	llvcnt		 NUMBER (20) := 0;
BEGIN
	IF vfvgbcd = '1'
	THEN
		BEGIN
        /*
			SELECT DECODE (COUNT (1), 1, 'b', 'a')
			  INTO lsv_jgbhyb
			  FROM junggunbalhang
			 WHERE	  scdate = TO_CHAR (SYSDATE, 'YYYYMMDD')
					 AND bhgy_jgno = TO_NUMBER (vfvjgno)
					 AND jgbhsy_code <> '90'
					 AND jgbh_code != '1'
					 AND crgb != '3';
                     */
                     dbms_output.put_line(vfvgbcd);
                    dbms_output.put_line(vfvjgno);                     
		EXCEPTION
			WHEN OTHERS
			THEN
				--DBG('50 SF_POS_JGBHYB ERROR vfvJGNO['||vfvJGNO||']'||' SQLCODE ['||SQLCODE||']');

				RETURN ('a');
		END;
	END IF;
	RETURN (lsv_jgbhyb);
EXCEPTION
	WHEN OTHERS
	THEN
		--DBG('50 SF_POS_JGBHYB ERROR vfvJGNO['||vfvJGNO||']'||' SQLCODE ['||SQLCODE||']');

		RETURN ('a');
END sf_pos_jgbhyb_string;
/
