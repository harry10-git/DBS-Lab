set serveroutput on;

create or replace function square(x number)
return number as
tot number;
begin
    tot := x * x;
return tot;
end;
/

declare
    num number(2);
begin 
    dbms_output.put_line('Enter a number ');
    num := &d1;
    dbms_output.put_line('Square is  ' || square(num));
end;
/