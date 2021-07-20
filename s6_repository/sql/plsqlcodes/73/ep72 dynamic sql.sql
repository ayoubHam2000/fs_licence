set serveroutput on
set autoprint off


 -- you can execute the whole block by execute immediate
 -- alter procedure print_countries compile


 declare
    v_code varchar2(100) :=
    '
    begin
    DBMS_OUTPUT.PUT_LINE(''welcome'');
    end;
    ';
 begin
   execute immediate v_code;
 end;


create or replace procedure P_COMPILE_SUBP
(p_type varchar2, p_name varchar2, p_option varchar2 default null)

IS
    v_code varchar2(100);
BEGIN
    v_code := 'alter ' || p_type || ' ' || p_name || ' compile ' || p_option;
    DBMS_OUTPUT.PUT_LINE(v_code);
    execute IMMEDIATE v_code;
END;


execute P_COMPILE_SUBP('procedure', 'print_countries');