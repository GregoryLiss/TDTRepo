CREATE OR REPLACE FUNCTION GLISS.NORETURN RETURN NUMBER IS
tmpVar NUMBER;
/******************************************************************************
   NAME:       NORETURN
   PURPOSE:    To calculate the desired information.
******************************************************************************/
BEGIN
   tmpVar := 0;

   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       Null;
     WHEN OTHERS THEN
       Null;

   RETURN tmpVar;
END NORETURN;
/
