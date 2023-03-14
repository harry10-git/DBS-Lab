declare

dname constant student.dept_name%type :='Comp. Sci.';

cursor c1 is select name from student where dept_name = dname;
sname student.name%type;

begin

dbms_output.put_line('---------------');

open c1;
    loop
    fetch c1 into sname;
    exit when c1%NOTFOUND;
    dbms_output.put_line('Name: '|| sname);
    end loop;
close c1;
dbms_output.put_line('---------------');
end;
/