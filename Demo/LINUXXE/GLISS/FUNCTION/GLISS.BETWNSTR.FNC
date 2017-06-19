CREATE OR REPLACE FUNCTION GLISS.betwnstr
(
   string_in      IN     VARCHAR2,
   start_in       IN     PLS_INTEGER,
   end_in         IN     PLS_INTEGER,
   inclusive_in   IN     BOOLEAN
)
   RETURN VARCHAR2
   DETERMINISTIC
   AUTHID CURRENT_USER
IS
BEGIN
   RETURN (SUBSTR (string_in, start_in, end_in - start_in + 1));
END;
/
