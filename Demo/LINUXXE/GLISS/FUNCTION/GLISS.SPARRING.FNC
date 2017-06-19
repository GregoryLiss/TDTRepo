CREATE OR REPLACE FUNCTION GLISS.SPARRING(STUDENT_ID NUMBER) RETURN NUMBER IS
TMPVAR NUMBER;
/******************************************************************************
   NAME:       SPARRING
   PURPOSE:    TO DETERMINE WHETHER A STUDENT IS ALLOWED TO SPAR.
******************************************************************************/
BEGIN
   TMPVAR := 0;
   SELECT COUNT(*) INTO TMPVAR FROM SPARRING_STUDENTS WHERE ID = STUDENT_ID;
   RETURN TMPVAR;
   EXCEPTION
     WHEN OTHERS THEN
	 	  RETURN -1;
END SPARRING;
/
