CREATE OR REPLACE FUNCTION GLISS.f_test_minute_result_cache (
   i_today IN DATE DEFAULT TRUNC (SYSDATE, 'MI'))
   RETURN DATE
   RESULT_CACHE
AS
BEGIN
   RETURN SYSDATE;
END f_test_minute_result_cache;
/
