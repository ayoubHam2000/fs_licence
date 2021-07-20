set serveroutput on
set autoprint off

declare

v_country countries%rowtype;

begin
  
--select * into v_country from countries where country_nbr = 120;--NO_DATA_FOUND
--select * into v_country from countries;--TOO_MANY_ROWS
select * into v_country from countries where COUNTRY_NAME = 1;--OTHER (INVALIDE NUMBER)


EXCEPTION

WHEN NO_DATA_FOUND then
    DBMS_OUTPUT.put_line('The query does not give any out put');

WHEN TOO_MANY_ROWS then
    DBMS_OUTPUT.put_line('The query return many rows');

WHEN OTHERS then
    DBMS_OUTPUT.put_line('Other error');

end;
/

----------------------------------------------------------
-- exeption in a loop


DECLARE

    type nbr is table of number;

    v_country countries%rowtype;
    v_nbr nbr := nbr(1, 120, 30, 12, 8, 60, 2);

BEGIN

    for i in 1..v_nbr.count loop
        
        BEGIN
            select * into v_country from COUNTRIES where COUNTRY_NBR = v_nbr(i);
            DBMS_OUTPUT.put_line(v_nbr(i));
        EXCEPTION
            WHEN NO_DATA_FOUND then
                --NULL;
                DBMS_OUTPUT.put_line('NO_DATA_FOUND in : ' || v_nbr(i));
            WHEN OTHERS then
                DBMS_OUTPUT.put_line('Other error l ' || v_nbr(i));
        END;
        
    end loop;

END;