declare

cursor c1 is select * from student order by tot_cred;
 stu student%rowtype;

begin
open c1;
    loop
    fetch c1 into stu;
    exit when c1%rowcount > 10;

    dbms_output.put_line(rpad(stu.name,10) || rpad (stu.dept_name,14) || stu.tot_cred);

    end loop;
close c1;

end;
/