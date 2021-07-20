set serveroutput on
set autoprint off

-- procedure in out varibales
--=========================================

CREATE OR REPLACE PROCEDURE get_country
(
v_country_nbr NUMBER, 
v_country_id out COUNTRIES.COUNTRY_ID%type, 
v_country_name out COUNTRIES.COUNTRY_NAME%type
)
IS
BEGIN

    select COUNTRY_ID, COUNTRY_NAME into 
    v_country_id, v_country_name from COUNTRIES
    where COUNTRY_NBR = v_country_nbr;

EXCEPTION
    WHEN others THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
        DBMS_OUTPUT.PUT_LINE(SQLCODE);

END;


--========================================= FIRST METHOD


variable country_id VARCHAR2(100);
variable country_name VARCHAR2(100);

execute get_country(200, :country_id, :country_name); --ORA-01403: no data found
execute get_country(2, :country_id, :country_name);

print country_id;
print country_name;


--========================================= SECOND METHOD


DECLARE

    V_ID COUNTRIES.COUNTRY_ID%type;
    V_NAME COUNTRIES.COUNTRY_NAME%type;

BEGIN
    get_country(2, V_ID, V_NAME);
    DBMS_OUTPUT.PUT_LINE(V_ID);
    DBMS_OUTPUT.PUT_LINE(V_NAME);
END;
