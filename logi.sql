declare
nCount NUMBER;
v_sql LONG;

begin
SELECT count(*) into nCount FROM dba_tables 
where table_name = 'LOGI' and owner = (select user from dual);
IF(nCount <= 0)
THEN
v_sql:='CREATE TABLE LOGI(
  id number(4) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  tabela varchar2(50),
  uzytkownik varchar2(30),
  data date,
  operacja varchar2(6)
)';
execute immediate v_sql;

END IF;
end;
