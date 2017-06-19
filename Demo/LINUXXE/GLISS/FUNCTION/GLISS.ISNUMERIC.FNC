CREATE OR REPLACE FUNCTION GLISS.isnumeric (p_string IN VARCHAR2)
    RETURN BOOLEAN
AS
    l_number   NUMBER;
BEGIN
    l_number   := p_string;
    RETURN TRUE;
EXCEPTION
    WHEN OTHERS THEN
        RETURN FALSE;
END;
/
