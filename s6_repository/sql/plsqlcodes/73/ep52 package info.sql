set serveroutput on
set autoprint off


-- you can declare package with out body for defined gloabal variables
-- you can define a function in the declare section

create or replace package p_const
is
    c_mile_to_km constant number := 1.6093;
    c_kilo_to_mile constant number := 0.6214;
end;


execute dbms_output.put_line('60mil = ' || 60 * p_const.c_mile_to_km || 'km');


declare
    function ft_test_get_name
    return VARCHAR2
    is
    begin
        return 'test';
    end;
BEGIN
    dbms_output.put_line(ft_test_get_name());
END;

