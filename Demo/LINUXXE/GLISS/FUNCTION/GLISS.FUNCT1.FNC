CREATE OR REPLACE FUNCTION GLISS.funct1 return varchar2 is
testvar varchar2(500);
begin
  select ename into testvar from scott.emp where empno = 7369;
  --testvar := 'xxx';
  return testvar ;
end;
/
