set serveroutput on
set autoprint off

--exeption defined by the user
--User-Defined Exception
/*
using raise_application_error
you can use this procedure to issue user-defined error messages from stored subprograms
you can reprot errors to your application and avoid returning unhandled exceptions.
it can be use in the exception section or begin end; section
*/

declare

    e_exception EXCEPTION; -- defined exception

begin
  
    update COUNTRIES set COUNTRY_NBR = 77 where COUNTRY_NBR = 4555;
    DBMS_OUTPUT.PUT_LINE(sql%rowcount);

    DBMS_OUTPUT.PUT_LINE(sqlcode); -- 0
    DBMS_OUTPUT.PUT_LINE(sqlerrm); -- ORA-0000: normal, successful completion

    IF sql%rowcount = 0 then
        RAISE e_exception; -- defined exception
    END IF;

EXCEPTION
    when e_exception then
        DBMS_OUTPUT.PUT_LINE('no country to update found');
        DBMS_OUTPUT.PUT_LINE(sqlcode); -- 1
        DBMS_OUTPUT.PUT_LINE(sqlerrm); -- User-Defined Exception

end;
/


-----------------------------------------------------


begin
    update COUNTRIES set COUNTRY_NBR = 77 where COUNTRY_NBR = 4555;
 
    IF sql%rowcount = 0 then
        raise_application_error(-20000, 'no country to update found');
    END IF;

end;
/


-----------------------------------------------------


declare
    e_exception EXCEPTION; -- defined exception
begin
    update COUNTRIES set COUNTRY_NBR = 77 where COUNTRY_NBR = 4555;
    IF sql%rowcount = 0 then
        RAISE e_exception; -- defined exception
    END IF;
EXCEPTION
    when e_exception then
        raise_application_error(-20000, 'no country to update found');
end;
/