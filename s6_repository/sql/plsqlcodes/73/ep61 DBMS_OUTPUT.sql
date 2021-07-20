set serveroutput on;


-- Supplied packages : DBMS_OUTPUT

-------------------------------------------------------

BEGIN
    for i in 1..50000 loop
        DBMS_OUTPUT.PUT_LINE("A"  => lpad(i, 7, 0));
    end loop;
END;
/
-------------------------------------------------------


-------------------------------------------------------
BEGIN

    DBMS_OUTPUT.PUT_LINE('will not printed');
    DBMS_OUTPUT.disable;
    DBMS_OUTPUT.PUT_LINE('will not printed');
    DBMS_OUTPUT.enable;
    DBMS_OUTPUT.PUT_LINE('will  printed');

END;
-------------------------------------------------------


-------------------------------------------------------
BEGIN

    DBMS_OUTPUT.PUT_LINE("A"  =>  'Welcome ayoub');
    DBMS_OUTPUT.PUT("A"  =>  'Welcome');
    DBMS_OUTPUT.PUT("A"  =>  ' ayoub');
    DBMS_OUTPUT.new_line; -- you should use this after put

END;

-------------------------------------------------------


DECLARE

    buffers VARCHAR2(100);
    status INTEGER;
    V VARCHAR2(3000);

BEGIN

    DBMS_OUTPUT.PUT_LINE('LINE 1');
    DBMS_OUTPUT.PUT_LINE('LINE 2');
    DBMS_OUTPUT.PUT_LINE('LINE 3');
    FOR i in 1..3 loop

        DBMS_OUTPUT.get_line(buffers, status);
        v := v || buffers || chr(10);

    end loop;
    DBMS_OUTPUT.PUT_LINE("A"  => v);

END;



-------------------------------------------------------

DECLARE

buffer DBMS_OUTPUT.CHARARR;
v_line INTEGER;

BEGIN
v_line := 10;
dbms_output.PUT_LINE("A"  => 'line 1');
dbms_output.PUT_LINE("A"  => 'line 2');
dbms_output.PUT_LINE("A"  => 'line 3');


dbms_output.GET_LINES(BUFFER, v_line);

dbms_output.PUT_LINE("A"  => BUFFER(1));
dbms_output.PUT_LINE("A"  => BUFFER(2));
dbms_output.PUT_LINE("A"  => BUFFER(3));


END;
