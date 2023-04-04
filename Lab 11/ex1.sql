create or replace trigger emp_trigger
before delete on employee
for each row
begin
insert into emp_delete values (:OLD.emp_no,
:old.emp_name, 
:old.gender,
:old.salary,
:old.address,
:old.Dno);
end;
/