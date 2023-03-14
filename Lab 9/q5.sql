declare
cursor c1 is select * from studenttable;
stu studenttable%rowtype;

begin
open c1;
    loop
    fetch c1 into stu;
    exit when c1%NOTFOUND;
    if stu.gpa > 9 then update studenttable set grade='A' where rollno= stu.rollno;
    elsif stu.gpa > 7 then update studenttable set grade='B' where rollno= stu.rollno;
    elsif stu.gpa > 5 then update studenttable set grade='C' where rollno= stu.rollno;
    else update studenttable set grade='F' where rollno= stu.rollno;
    
    end if;
    end loop;
close c1;

end;
/