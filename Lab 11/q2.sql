-- create table old_data_instructor
-- 	(ID			varchar(5), 
-- 	 name			varchar(20) not null, 
-- 	 dept_name		varchar(20), 
-- 	 salary	numeric(8,2)
-- 	 );

create or replace trigger ques2
before update of salary 
on instructor
for each row
begin
insert into old_data_instructor values (
:old.id,
:old.name,
:old.dept_name,
:old.salary
);

end;
/