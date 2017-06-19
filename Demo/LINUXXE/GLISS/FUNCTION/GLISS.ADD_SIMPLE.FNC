CREATE OR REPLACE FUNCTION GLISS.add_simple (a_in   IN SIMPLE_INTEGER,
                                       b_in   IN SIMPLE_FLOAT)
   RETURN SIMPLE_DOUBLE
IS
   va   SIMPLE_DOUBLE NOT NULL DEFAULT 0;
BEGIN
   va := (a_in + b_in);
   DBMS_OUTPUT.put_line (va);
   RETURN va;
END add_simple;
/
