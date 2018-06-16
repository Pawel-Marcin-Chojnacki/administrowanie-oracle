-- This trigger logs on INSERT, DELETE and UPDATE events.
-- It saves information about a table name, user and operation type that has triggered logger.
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
