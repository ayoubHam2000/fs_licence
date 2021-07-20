set serveroutput on
set autoprint off

select * from countries;

declare
    type t_country_table is table of integer index by binary_integer;
    country_table t_country_table;
begin
  
    country_table(1) := 1;
    country_table(2) := 2;
    country_table(3) := 3;
    country_table(100) := 4;

    -- there is a discountine indexes
    -- so we will 'INDICES OF' use to solve the probelem

    DBMS_OUTPUT.PUT_LINE(country_table.first);
    DBMS_OUTPUT.PUT_LINE(country_table.last);
    forall i in INDICES OF country_table
        update countries set COUNTRY_NBR = COUNTRY_NBR 
        where COUNTRY_NBR = country_table(i);
    commit;

end;