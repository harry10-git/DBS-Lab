-- create table log_change_takes
-- 	(ID			varchar(5), 
-- 	 course_id		varchar(8),
-- 	 sec_id		varchar(8), 
-- 	 semester		varchar(6),
-- 	 year			numeric(4,0),
-- 	 grade		varchar(2),
--     change_data date
-- 	);

create or replace trigger ques1
before update on takes 
for each row 
begin 
insert into log_change_takes values(
:old.id,
:old.course_id,
:old.sec_id,
:old.semester,
:old.year,
:old.grade,
current_date
);
end;
/
