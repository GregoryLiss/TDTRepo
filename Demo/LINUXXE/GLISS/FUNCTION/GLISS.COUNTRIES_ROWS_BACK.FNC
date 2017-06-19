CREATE OR REPLACE FUNCTION GLISS.COUNTRIES_ROWS_bACK

   RETURN sys_refcursor

IS

   l_curvar   sys_refcursor;

BEGIN

   OPEN l_curvar FOR 'SELECT * FROM hr.COUNTRIES';

 

   RETURN l_curvar;

END COUNTRIES_ROWS_bACK;
/
