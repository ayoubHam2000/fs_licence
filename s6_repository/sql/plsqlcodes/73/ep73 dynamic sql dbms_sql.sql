set serveroutput on
set autoprint off

-- USING DBMS_SQL RATHER THAN EXECUTE IMMEDIATE

create or replace procedure delete_any_table2
(p_table_nmae varchar2)
is
    v_no_rec number;
    v_cur_id number;
begin
    v_cur_id := dbms_sql.open_cursor;
    dbms_sql.parse(v_cur_id, 'delete from ' || p_table_nmae, dbms_sql.native);
    v_no_rec := dbms_sql.execute(v_cur_id);
    DBMS_OUTPUT.PUT_LINE(v_no_rec || ' record(s) deleted from ' || p_table_nmae);
    commit;
    dbms_sql.CLOSE_CURSOR(v_cur_id);
end;

execute delete_any_table2('MOUSE_TABLE');


-------------------------------------------------------------------------

create or replace procedure insert_to_table
(p_table_name varchar2, p_value number)
is
    c_cur_id number;
    c_sql varchar2(1000) := 'insert into ' || p_table_name || ' values (:NBR)';
    v_nbr_rec number;
BEGIN

    c_cur_id := dbms_sql.OPEN_CURSOR();
    DBMS_SQL.parse(c_cur_id, c_sql, dbms_sql.native);
    dbms_sql.bind_variable(c_cur_id, ':NBR', p_value);
    v_nbr_rec := dbms_sql.EXECUTE("C"  => c_cur_id /*IN NUMBER(38)*/);
    dbms_sql.CLOSE_CURSOR("C"  => c_cur_id /*IN OUT NUMBER(38)*/);
    DBMS_OUTPUT.PUT_LINE(v_nbr_rec || ' record(s) inserted to ' || p_table_name);
    commit;
END; 

execute insert_to_table('MOUSE_TABLE', 90);

SELECT * FROM MOUSE_TABLE;

select text from USER_ERRORS where name = 'INSERT_TO_TABLE';