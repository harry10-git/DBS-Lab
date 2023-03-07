SET SERVEROUTPUT ON;

DECLARE
	roll_number student.rollno%TYPE;
	score student.gpa%TYPE;
	n number(10);
	temp student.gpa%TYPE;	
BEGIN
	temp:=0;
	roll_number:=1;
	select count(rollno) into n from student;
	FOR i IN 1..n LOOP
		select gpa into score from student where rollno = roll_number;
			IF score>temp THEN
				temp:=score;
			ELSE
				temp:=temp;
			END IF;
			roll_number:=roll_number+1;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(temp);
END;
/