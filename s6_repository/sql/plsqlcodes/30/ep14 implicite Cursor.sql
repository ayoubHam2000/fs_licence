SET SERVEROUTPUT ON;

-- SQL Cursor
-- implicite Cursor
declare
v_number_of_rows number := 0;
v_is_found boolean;
begin
    update test_tab
    set nbr = 25
    where name = 'ayoub'; -- ayoub5 -> output -> 0 - not found

    v_number_of_rows := sql%rowcount;
    v_is_found := sql%found;

    dbms_output.put_line(v_number_of_rows);
    IF v_is_found = TRUE THEN
        dbms_output.put_line('found');
    ELSE
        dbms_output.put_line('Not found');
    END IF;
end;
/
