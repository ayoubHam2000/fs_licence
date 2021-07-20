set serveroutput on
set autoprint off

/*
type c_coutry_rows is ref cursor;
is a cursor that you can open it many time with deferent queries;

*/

create or replace procedure print_countries
(p_country_id number default null)
is

    type c_coutry_rows is ref cursor;
    v_cursor c_coutry_rows;
    v_sql varchar2(1000) := 'select * from countries ';
    v_country COUNTRIES%ROWTYPE;

begin

    if p_country_id is null then
        open v_cursor for v_sql;
    ELSE
        v_sql := v_sql || 'where country_nbr = :id';
        open v_cursor for v_sql using p_country_id;
    end if;

    loop
        fetch v_cursor into v_country;
        exit when v_cursor%notfound;        
        DBMS_OUTPUT.PUT_LINE(v_country.country_id);
    end loop;
end;

select text from USER_ERRORS where name = 'PRINT_COUNTRIES';

execute print_countries;
execute print_countries(2);