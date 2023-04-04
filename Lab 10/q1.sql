set serveroutput on;

create or replace procedure display is  
    begin
    dbms_output.put_line('Good Day to You');
    end;
/

declare
begin
    display;
end;
/