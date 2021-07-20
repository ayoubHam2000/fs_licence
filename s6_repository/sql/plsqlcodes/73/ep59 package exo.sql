set serveroutput on


-- exo

create or replace package pkg_country
is
    type tab_country is table of COUNTRIES%ROWTYPE
    index by binary_integer;

    procedure get_countries
    (p_country out tab_country);

end;

create or replace package BODY pkg_country
is
    procedure get_countries
    (p_country out tab_country)
    IS
    BEGIN
       
        for item in (select * from countries) LOOP
            p_country(item.country_nbr) := item;
        end loop;

    END;

END;


declare 
    v_tab_country pkg_country.tab_country;

BEGIN

    pkg_country.get_countries(v_tab_country);
    DBMS_OUTPUT.PUT_LINE("A"  => v_tab_country(2).country_ID);

END;

select text from user_errors where name = 'PKG_COUNTRY';