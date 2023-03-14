declare

cursor c1 is select * from department for update;

begin
    for dept in c1
    loop
    if dept.budget <= 7000 then
    update department set budget = budget*1.2 where current of c1;
    elsif dept.budget >70000 and dept.budget < 100000 then
    update department set budget = budget*1.5 where current of c1;
    else
    update department set budget = budget*1.1 where current of c1;
    end if;
    end loop;
end;
/