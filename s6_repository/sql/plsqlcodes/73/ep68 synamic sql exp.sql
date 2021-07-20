set serveroutput on

-- dynamic sql
/*

 begin
 execute immediate 'code pl/sql'
 commit -- commit and rollback
 end;

select * from USER_SYS_PRIVS;
-- conn sys as sysdba, grant create table to xe

*/

-----------------------------------------------------------

create table mouse_table (test number);

insert into mouse_table values (20);
insert into mouse_table values (40);
insert into mouse_table values (10);


-----------------------------------------------------------
create or replace procedure delete_any_table
    (p_table_name varchar2)
    is
    v_number_rows number;
    begin

    execute immediate 'delete from ' || p_table_name;
    v_number_rows := sql%rowcount;
    commit;
    DBMS_OUTPUT.PUT_LINE(v_number_rows || 'record(s) deleted from ' || p_table_name);
end;
-----------------------------------------------------------


execute delete_any_table('mouse_table');

select * from mouse_table;

execute delete_any_table('mouse_ta');
-- table or view does not exist


-----------------------------------------------------------


select * from USER_SYS_PRIVS;



