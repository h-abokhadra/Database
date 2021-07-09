SET serveroutput on;

DECLARE
    v_num1 NUMBER := &p_num1;
    v_num2 NUMBER := &p_num2;
BEGIN
    IF v_num1 > v_num2 THEN
        DBMS_OUTPUT.PUT_LINE(v_num1 || ' is greater than ' || v_num2);
    ELSIF v_num1 < v_num2 THEN
        DBMS_OUTPUT.PUT_LINE(v_num1 || ' is less than ' || v_num2);
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_num1 || ' is equal ' || v_num2);
    END IF;
END;
/