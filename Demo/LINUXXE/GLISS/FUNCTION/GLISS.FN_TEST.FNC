CREATE OR REPLACE FUNCTION GLISS.fn_test(strTest VARCHAR2) RETURN VARCHAR2 IS
tmpVarChar VARCHAR2(255);
/******************************************************************************
   NAME:       fn_test
   PURPOSE:    

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/03/2009          1. Created this function.
   1.1        05/01/2012          1. Added dbms_output.put_line statement.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     fn_test
      Sysdate:         12/03/2009
      Date and Time:   12/03/2009, 15:32:04, and 12/03/2009 15:32:04
      Username:        (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

******************************************************************************/
BEGIN
  tmpVarChar := strTest;
  BEGIN
    SELECT 'Testing'
    INTO tmpVarChar
    FROM DUAL
    WHERE (1 = 1);
        
    EXCEPTION
    WHEN OTHERS THEN
      NULL;
  END;
  
  dbms_output.put_line('This text should appear in the DBMS Output window when this function exits');

  RETURN tmpVarChar;
END fn_test;
/
