CREATE OR REPLACE FUNCTION GLISS."F_GET_GORIROL_USERID" (identifier1 VARCHAR2)
        RETURN SYS_REFCURSOR
IS
        get_user_info         SYS_REFCURSOR;
BEGIN
        OPEN get_user_info FOR
                SELECT        username, user_id, account_status
                  FROM        SYS.DBA_USERS
                 WHERE        UPPER (username) LIKE UPPER (identifier1 || '%');

        RETURN (get_user_info);
END;
/
