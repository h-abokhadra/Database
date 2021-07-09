DECLARE
    a NUMBER := 7;
BEGIN
    CASE a  
        WHEN 1 THEN
            DBMS_OUTPUT.PUT_LINE('value 1');    
        WHEN 2 THEN
            DBMS_OUTPUT.PUT_LINE('value 2');    
        WHEN 3 THEN
            DBMS_OUTPUT.PUT_LINE('value 3');        
        ELSE
            DBMS_OUTPUT.PUT_LINE('no matching CASE found'); 
    END CASE;   
END;
/