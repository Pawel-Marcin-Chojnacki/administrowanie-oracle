-- This trigger logs on INSERT, DELETE and UPDATE events.
-- It saves information about a table name, user and operation type that has triggered logger.
create or replace trigger logger 
after insert or update or delete 
on hr.jobs
declare 
    v_username varchar2(10);
    v_currentdate date;

begin
   SELECT user INTO v_username FROM dual;
   select systimestamp into v_currentdate from dual;

if deleting then
    insert into logi (tabela, uzytkownik, data, operacja) 
    values ('jobs', v_username, v_currentdate, 'delete');
end if;

if inserting then
    insert into logi (tabela, uzytkownik, data, operacja) 
    values ('jobs', v_username, v_currentdate, 'insert');
end if;

if updating then
    insert into logi (tabela, uzytkownik, data, operacja) 
    values ('jobs', v_username, v_currentdate, 'update');
end if;

-- wspólny kod
end;
