SET SERVEROUTPUT ON;

declare
    roll student.rollno%type;
    score student.gpa%type;
begin
for i in 1..5 
loop
select gpa into score from student where rollno=i;
if score between 1 and 5 then 
goto F;
elsif score between 6 and 7 then
goto B;
else 
goto A;
end if;
<<F>>
    dbms_output.put_line('F');

<<B>>
    dbms_output.put_line('B');
<<A>>
    dbms_output.put_line('A');
end loop;




end;
/