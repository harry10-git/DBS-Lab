declare
cursor c1 is select * from department;
m_budget department.budget%type :=0;
m_name department.dept_name%type;
begin
    for dept in c1
    loop
    if dept.budget > m_budget then
    m_budget := dept.budget;
    m_name := dept.dept_name;
    end if;
    end loop;

    dbms_output.put_line('Max Budget: '|| m_budget
    ||' Dept: '||m_name);
end;
/