CREATE OR REPLACE FUNCTION GLISS.testboom (param1 VARCHAR2, param2 VARCHAR2)
   RETURN VARCHAR2
IS
BEGIN
   IF (param1 IS NULL)
   THEN
      raise_application_error (-20000, 'param1 is null');
   END IF;

   --DBMS_OUTPUT.PUT_LINE('param1 - ' || param1);
   raise_application_error (-20000, 'boom');
--DBMS_OUTPUT.PUT_LINE('param2 -  ' || param2);
EXCEPTION
   WHEN OTHERS
   THEN
      RAISE;
      --DBMS_OUTPUT.PUT_LINE(param1 || ', ' || param2);

      RETURN param1 || ', ' || param2;
END;
/
