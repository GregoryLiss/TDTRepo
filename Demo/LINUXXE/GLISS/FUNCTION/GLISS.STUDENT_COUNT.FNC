CREATE OR REPLACE FUNCTION GLISS.STUDENT_COUNT RETURN NUMBER IS
tmpVar NUMBER;
/******************************************************************************
   NAME:       STUDENT_COUNT
   PURPOSE:    To return the number of students
******************************************************************************/
BEGIN
   tmpVar := 0;
   SELECT COUNT(*) INTO TMPVAR FROM TKD_STUDENTS;
   RETURN tmpVar;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       RETURN 0;
     WHEN OTHERS THEN
       RETURN -1;
END STUDENT_COUNT;
/
