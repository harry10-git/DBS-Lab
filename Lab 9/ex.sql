declare

dname constant student.dept_name%TYPE := 'History';

begin
    delete from student where dept_name = dname;

    if sql%found then
    dbms_output.put_line ('Delete succeeded for dept:' || dname);
    else
    dbms_output.put_line ('NO student of dept: '|| dname);
    end if;

end;
/