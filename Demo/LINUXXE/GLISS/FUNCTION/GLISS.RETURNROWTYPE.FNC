CREATE OR REPLACE FUNCTION GLISS.returnrowtype RETURN scott.emp%ROWTYPE as
tmpVar scott.emp%ROWTYPE;
/******************************************************************************
   NAME:       returnrowtype
   PURPOSE:    To calculate the desired information.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        4/16/2001          1. Created this function.

   PARAMETERS:
   INPUT:
   OUTPUT:
   RETURNED VALUE:  NUMBER
   CALLED BY:
   CALLS:
   EXAMPLE USE:     NUMBER := returnrowtype();
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:
******************************************************************************/
BEGIN
  tmpvar.empno   := 1;
  tmpvar.ename := 'DAVID';
  tmpvar.sal  := 100;

   RETURN tmpvar;
END returnrowtype;
/
