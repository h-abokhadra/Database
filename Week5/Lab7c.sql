--nested blocks
set serveroutput on;
DECLARE
v_number NUMBER;
BEGIN
v_number := 10;
--below is the nested block
/
DECLARE
v_number NUMBER;
BEGIN
v_number := 20;
dbms_output.put_line('number is : ' || v_number);
END;



dbms_output.put_line('number is : ' || v_number);
END;
/