declare 
    cursor c is select * from takes natural join student;

begin 
    for stu in c
    loop
        if stu.course_id='CS-101' and stu.tot_cred<30 then
            delete from takes where id=stu.id;
        end if;
    end loop;

end;
/