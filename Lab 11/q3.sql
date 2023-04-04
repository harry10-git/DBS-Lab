-- create table tableCheck(
--     check_name varchar(10),
--     check_salary varchar(10)
-- );

create or replace trigger ques3 
before insert on instructor
for each row
begin
   if :new.salary > 0 and :new.name like '[A-Za-z]%' then
    insert into tableCheck values ('correct');
    else 
         insert into tableCheck values ('wrong');
   end if;

end;
/
