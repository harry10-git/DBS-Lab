declare
 dname constant instructor.dept_name%type := 'Comp. Sci.';
  cursor c1 is select * from instructor;
  inst instructor%rowtype;
  increment instructor.salary%type;
  d_current_date DATE;

begin
open c1;
    loop
    fetch c1 into inst;
    exit when c1%NOTFOUND;

    d_current_date := SYSDATE;
    if inst.dept_name = dname then
    increment := inst.salary * 0.05;
    update instructor set salary = salary + increment where instructor.id= inst.id;
    insert into salary_raise values (inst.id,d_current_date ,increment); 
    end if;
    end loop;
close c1;
end;
/