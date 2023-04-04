set serveroutput on;

create or replace function department_highest(dname instructor.dept_name%type)
return instructor.name%type as
cursor c1 is select * from instructor where dept_name = dname;
    maxsal instructor.salary%type;
    maxname instructor.name%type;
    temp instructor%rowtype;
     
begin
    maxsal := 0;
    
    open c1;
   
    loop
    fetch c1 into temp;
        exit when c1%NOTFOUND;
        if temp.salary > maxsal then
            maxsal := temp.salary;
            maxname := temp.name;
        end if;
    end loop;

    close c1;

    return maxname;
end;
/

declare 
d instructor.dept_name%type;
begin
    d := 'Physics';
    dbms_output.put_line(department_highest(d));
end;
/