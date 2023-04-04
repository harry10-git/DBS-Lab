-- create view advisor_student as 
-- select * from advisor natural join (select id s_id, name s_name, dept_name s_dept_name, tot_cred from student) natural join (select id i_id, name i_name, dept_name i_dept_name, salary from instructor);


create or replace trigger ques5
instead of delete on advisor_student 
for each row 
begin 
    delete from advisor where i_id = :old.i_id or s_id = :old.s_id;
end;
/