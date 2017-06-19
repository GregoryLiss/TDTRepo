CREATE OR REPLACE FUNCTION GLISS.scott_hierarchy
   RETURN sys_refcursor
AS
   crsr                     sys_refcursor;
   v_unused                 NUMBER;
BEGIN
   OPEN crsr FOR
      SELECT /*
             */
             CONNECT_BY_ROOT ename mgrname,
             CONNECT_BY_ROOT job mgrjob,
             mgr,
             ename,
             empno,
             job,
                deptno
             || 'runtime literal con'
             || ' cat'
                dep
        FROM scott.emp e
       WHERE LEVEL > 1
      CONNECT BY PRIOR empno = mgr
      ORDER BY deptno,
               empno;

   RETURN crsr;
   RETURN crsr;
END;
/
