-- Procedure to raise salary of an given department by a selected percentage.
-- Operations are performed on standard HR scheme in oracle database.
create or replace procedure BonusSwiateczny ( oddzial in INT, procent in INT)
is
cSalary number;
cEmployeeId number(6,0);

cursor kursor is
select salary, employee_id
from employees
where department_id = oddzial;

begin

open kursor;
fetch kursor into cSalary, cEmployeeId;

update employees 
set salary = (cSalary * (100+procent) / 100)
where  cEmployeeId = employee_id;
end;