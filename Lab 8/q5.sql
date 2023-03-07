SET SERVEROUTPUT ON;

declare 
    roll student.rollno%type;
    score student.gpa%type;
    n numeric(2);
    i numeric(2);
begin
    i :=1;
    select count(roll) into n  from student ;
    while i < n+1
    loop
    select gpa into score from student where i=rollno;
    if score between 1 and 5 then
        update student set LetterGrade='F'
        where rollno=i;
    elsif score between 5 and 7 then
        update student set LetterGrade='B'
        where rollno=i;
    else
        update student set LetterGrade='A'
        where rollno=i;
    end if;
    i := i+1;
    end loop;
end;
/

