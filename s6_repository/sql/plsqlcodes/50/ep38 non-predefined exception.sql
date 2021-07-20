set serveroutput on
set autoprint off

--ep38 non-predefined exceptions
--ORA-01400

DECLARE

e_exception Exception;
PRAGMA exception_init(e_exception, -01400);

begin
    insert into COUNTRIES(COUNTRY_NBR) values (null);

EXCEPTION
    when e_exception then
        DBMS_OUTPUT.PUT_LINE('Insert faild');
        DBMS_OUTPUT.PUT_LINE(sqlcode);
        DBMS_OUTPUT.PUT_LINE(sqlerrm);
    when others THEN
        DBMS_OUTPUT.PUT_LINE('other errors');
    

end;
/