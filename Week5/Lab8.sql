---the difference between put, new_line put_line, chr(10),chr(32),chr(9)



set serveroutput on;
DECLARE

BEGIN

dbms_output.put_line('line1 ' || (chr(10)) || 'extra');
dbms_output.put_line('line2' || (chr(32)) || 'extra');
dbms_output.put_line('line3' || (chr(9)) || 'extra');
dbms_output.put_line('line4');
dbms_output.new_line();
dbms_output.put_line('line5 ');
END;