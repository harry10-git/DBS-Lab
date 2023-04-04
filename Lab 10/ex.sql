set serveroutput on;

create or replace procedure print_hello is
    begin
    dbms_output.put_line('Hello World');
    end;
/

declare
    begin
    print_hello;
    end;
/