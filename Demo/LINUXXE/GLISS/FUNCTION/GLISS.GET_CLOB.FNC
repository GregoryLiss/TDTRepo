CREATE OR REPLACE FUNCTION GLISS.get_clob( p_ptr clob )
return varchar2
is
begin 
    return dbms_lob.substr( p_ptr, dbms_lob.getlength(p_ptr), 1 );
end;
/
