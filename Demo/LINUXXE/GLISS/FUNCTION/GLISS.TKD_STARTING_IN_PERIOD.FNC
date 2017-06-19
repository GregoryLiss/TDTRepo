CREATE OR REPLACE FUNCTION GLISS.TKD_STARTING_IN_PERIOD (BEGIN_DATE IN DATE, END_DATE IN DATE)
RETURN NUMBER IS
tmpVar NUMBER;
/******************************************************************************
   NAME:       TKD_SCHOOL.TKD_STARTING_IN_PERIOD
   PURPOSE:    To count the number of students starting Tae Kwon Do
   within a given period of time.?????
******************************************************************************/
BEGIN
   SELECT COUNT(*) INTO TMPVAR FROM TKD_STUDENTS
   WHERE START_DATE >= TRUNC(BEGIN_DATE)
   AND START_DATE <= TRUNC(END_DATE) + 1;
   RETURN tmpVar;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       RETURN 0;
     WHEN OTHERS THEN
       RETURN -1;
END TKD_STARTING_IN_PERIOD;
/
