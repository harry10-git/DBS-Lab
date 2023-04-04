set serveroutput on;

create or replace function dept_count(dept_name varchar)
returns integer
begin
declare d_count integer;
select count(*) into d_count
from instructor
where instructor.dept_name = dept_name
return d_count
end


select dept_name, budget 
from instructor
where dept_count(dept_name) > 12;

