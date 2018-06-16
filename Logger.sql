create or replace trigger logger 
after insert or update or delete 
on hr.jobs
declare 
— deklaracje zmiennych

begin
if deleting then

end if;

if inserting then
end if;

if updating then
end if;

—wspólny kod
end;
