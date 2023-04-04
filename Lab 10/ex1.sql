set serveroutput on;

create or replace function sum_number(a number, b number)
return number as
tot number;
begin
    tot := a+b;
return tot;
end;
/

declare
begin 
    dbms_output.put_line(sum_number(5,4));
end;
/