SET SERVEROUTPUT ON;

declare
    issue date;
    give date;
    diff numeric(5);
    penalty numeric(5);
begin
    issue := &d1;
    give := &d2;
    dbms_output.put_line(issue);
    dbms_output.put_line(give);
    diff := to_date(give,'dd-mm-yyyy')-
    to_date(give,'dd-mm-yyyy');
    dbms_output.put_line(diff);

    IF diff between 0 and 7 then
		penalty := 0;
		DBMS_OUTPUT.PUT_LINE('NIL');
	ELSIF diff between 8 and 15 then
		penalty:=(diff-7)*0+(diff-8)*1;
		DBMS_OUTPUT.PUT_LINE(penalty);
	ELSIF diff between 16 and 30 then
		penalty:=(diff-7)*0+(diff-8)*1+(diff-15)*2;
		DBMS_OUTPUT.PUT_LINE(penalty);
	ELSE
		penalty:=(diff-7)*0+(diff-8)*1+(diff-15)*2+(diff-30)*5;
		DBMS_OUTPUT.PUT_LINE(penalty);
	END IF;		
end;
/
