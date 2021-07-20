set serveroutput on
set autoprint off


--BULK Binding
/*
when use select statement in for loop it will called many times that make the
performence less so oracle introduce something called bulk binding
(Send the SQL statements using bulk)

IF WANT TO USE BULK BINDING YOU HAVE TO USE
--collections
--forall
--sql_statement

%BULK_EXCEPTIONS(i).ERROR
%BULK_EXCEPTIONS(i).ERROR_CODE
$BULK_EXCEPTIONS.COUNT

* The FORALL keyword inserts the PL/SQL engine to bulk bind input
collections before sending them to the SQL engine

FORALL index In lower_bound .. upper_bound
    [SAVE EXCEPTIONS]
    sql_statement;

-- save exceptions the last example 

*/


select * from countries;

create or replace procedure update_without_bulk
IS
    type t_country_table is table of number index by binary_integer;
    t_country t_country_table;
    counter number := 0;

    cursor my_cur is select COUNTRY_NBR from COUNTRIES;
BEGIN

    for i in my_cur loop
        counter := counter + 1;
        t_country(counter) := i.COUNTRY_NBR;
    end loop;

    -- without bulk
    for i in t_country.first .. t_country.last loop
        update COUNTRIES set country_nbr = country_nbr where COUNTRY_NBR = t_country(i);
    end loop;
    commit;

END;

select text from user_errors where name = 'UPDATE_WITHOUT_BULK';

execute update_without_bulk;


create or replace procedure update_with_bulk
IS
    type t_country_table is table of number index by binary_integer;
    t_country t_country_table;
    counter number := 0;

    cursor my_cur is select COUNTRY_NBR from COUNTRIES;
BEGIN

    for i in my_cur loop
        counter := counter + 1;
        t_country(counter) := i.COUNTRY_NBR;
    end loop;

    -- with bulk
    -- it will collect all the update statemt and sent them all once
    forall i in t_country.first .. t_country.last
        update COUNTRIES set country_nbr = country_nbr where COUNTRY_NBR = t_country(i);
    commit;

END;

select text from user_errors where name = 'UPDATE_WITH_BULK';

execute update_with_bulk;


--------------------------------------------------------------------------------------------

drop table cname;

create table cname as select distinct COUNTRY_NAME from COUNTRIES;

select * from cname; --	VARCHAR2(40)

declare
    type country_t is table of varchar2(100);
    country_names country_t := country_t();
    c number := 0;
begin

    for i in (select * from cname) loop
        c := c + 1;
        country_names.extend;
        country_names(c) := i.country_name;
    end loop;

    for i in country_names.first..country_names.last loop
        update cname set COUNTRY_NAME = COUNTRY_NAME || 'more than 40 chars values' --chars
        where country_name = country_names(i);
    end loop;
--United Kingdom of America more than 40 
--United States of America more than 40 char make exception please
EXCEPTION
    when others then
        null;

end;


--------------------------------------------------------------------------------------------

drop table cname;

create table cname as select distinct COUNTRY_NAME from COUNTRIES;

select * from cname; --	VARCHAR2(40)

declare
    type country_t is table of varchar2(100);
    country_names country_t := country_t();
    c number := 0;
begin

    for i in (select * from cname) loop
        c := c + 1;
        country_names.extend;
        country_names(c) := i.country_name;
    end loop;

    forall i in country_names.first..country_names.last save exceptions
        update cname set COUNTRY_NAME = COUNTRY_NAME || 'more than 40 chars values' --chars
        where country_name = country_names(i);
--United Kingdom of America more than 40 
--United States of America more than 40 char make exception please
EXCEPTION
    when others then
        null;

end;

