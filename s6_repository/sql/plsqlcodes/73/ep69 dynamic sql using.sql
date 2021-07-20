set serveroutput on
set autoprint off


/*
Use the execute immediate statement for NDS or PL/SQL anonymous blocks:
INTO
USING 

into
values(:whatever name) using var;

*/

create or replace procedure add_rows
(p_table_name varchar2, p_value number)
IS
    val1 number := 20;
    val2 number := 30;
begin

    DBMS_OUTPUT.PUT_LINE('INSERT INTO ' || p_table_name || ' VALUES(:1) ');
    EXECUTE immediate 'INSERT INTO ' || p_table_name || ' VALUES(:1) ' USING P_VALUE;
    EXECUTE immediate 'INSERT INTO ' || p_table_name || ' VALUES(:yy) ' USING VAL1;
    EXECUTE immediate 'INSERT INTO ' || p_table_name || ' VALUES(:uuu) ' USING VAL2;
        
END;

EXECUTE add_rows('MOUSE_TABLE', 10);

select * from MOUSE_TABLE;