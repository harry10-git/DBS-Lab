-- create table client_master(
--     client_no varchar(5) primary key,
--     name varchar(20) not null,
--     address varchar(25),
--     bal_due numeric(8,2)
-- );

-- create table auditclient(
--     client_no varchar(5),
--     name varchar(20) not null,
--     bal_due numeric(8,2),
--     operation varchar(10), 
--     userid varchar(10),
--     opdate date
-- );

-- insert into client_master values(101,'Harry','Ranchi',500);
-- insert into client_master values(102,'Ankit','Jsr',900);
-- insert into client_master values(103,'Nehal','Singapore',1500);


create or replace trigger ques4 
before update or delete on client_master
for each row
begin
    case 
        when updating then 
            insert into auditclient values(
                :old.client_no, :old.name, :old.bal_due, 'Update', user, current_date);
        when deleting then 
            insert into auditclient values(
                :old.client_no, :old.name, :old.bal_due, 'delete', user, current_date);
    end case;
end;
/