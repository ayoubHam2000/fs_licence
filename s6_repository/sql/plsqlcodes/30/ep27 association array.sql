set serveroutput on
set autoprint off

DECLARE

    type t_country is table of countries%rowtype index by PLS_INTEGER;

    v_country t_country;

BEGIN

    for i in 1..10 LOOP
        select * into v_country(i) from countries where country_nbr = i;
    end loop;

    for i in v_country.first()..v_country.last() LOOP
        DBMS_OUTPUT.PUT_LINE(v_country(i).country_nbr);
        DBMS_OUTPUT.PUT_LINE(v_country(i).country_id);
        DBMS_OUTPUT.PUT_LINE(v_country(i).country_name);
        DBMS_OUTPUT.PUT_LINE(v_country(i).region_id);
        DBMS_OUTPUT.PUT_LINE('---------------');
    end LOOP;

END;
/