SET SERVEROUTPUT ON;

declare
    roll student.rollno%type;
    score student.gpa%type;
begin
for i in 1..5 
loop
select gpa into score from student where rollno=i;
if score between 1 and 5 then 
dbms_output.put_line('f');
elsif score between 6 and 7 then
dbms_output.put_line('B'); 
else 
dbms_output.put_line('A');
end if;
end loop;
end;
/