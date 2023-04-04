set serveroutput on;

create or replace procedure ques2(dname2 instructor.dept_name%type) as
    begin
    declare
    dname constant instructor.dept_name%type := dname2;
    cursor c1 is select name from instructor where dept_name = dname;
    iname instructor.name%type; 

    cursor c2 is select title from course where dept_name = dname;
    ctitle course.title%type;

    begin
    dbms_output.put_line('-------------------Instructor Names-------------------');
    open c1;
        loop
        fetch c1 into iname;
        exit when c1%NOTFOUND;
        dbms_output.put_line(iname);
        end loop;
        
    close c1;

     dbms_output.put_line('-------------------Course Titles-------------------');
    open c2;
        loop
        fetch c2 into ctitle;
        exit when c2%NOTFOUND;
        dbms_output.put_line(ctitle);
        end loop;
        
    close c2;
    end;

end;
/

declare 
d instructor.dept_name%type;
begin
    d := 'Comp. Sci.';
    ques2(d);
end;
/
