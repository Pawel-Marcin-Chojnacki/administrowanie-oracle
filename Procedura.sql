-- Procedure to raise salary of an given department by a selected percentage.
-- Operations are performed on standard HR scheme in oracle database.
create or replace procedure ChristmasBonus(department in INT, percentageOfSalary in INT)
is
cSalary number;
cEmployeeId number(6,0);

cursor employee is
select salary, employee_id
from employees
where department_id = department;

begin
    open employee;
    loop
        fetch employee into cSalary, cEmployeeId;
        exit when employee%NOTFOUND;
        begin
            update employees 
            set salary = cSalary * ((100+percentageOfSalary) / 100))
            where  cEmployeeId = employee_id;
        end;
    end loop;
    close employee;
end ChristmasBonus;
/