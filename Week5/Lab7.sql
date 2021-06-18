
set serveroutput on;
Declare  --declaring variables
        v_number Number;
Begin  --Start of the program
        v_number := 10;
        DBMS_OUTPUT.PUT_LINE('number is : ' || v_number);

End;
