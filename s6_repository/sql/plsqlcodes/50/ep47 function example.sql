set serveroutput on
set autoprint off


-- FUNCTION EXAMPLES

-- select can handle NO DATA FOUND ERROR raised from the functions
-- it replace the error with null

CREATE OR REPLACE FUNCTION get_country_name
(v_country_nbr COUNTRIES.COUNTRY_NBR%TYPE)
RETURN VARCHAR2
IS
    v_result varchar2(30);
BEGIN

    select COUNTRY_NAME into v_result  from COUNTRIES where COUNTRY_NBR = v_country_nbr;
    return v_result;

END;


BEGIN
    DBMS_OUTPUT.PUT_LINE("A"  => get_country_name(2));
END;

---------------------------------------------------------


select * from user_objects
where object_name = 'GET_COUNTRY_NAME';

-- GET TEXT OF THE FUNCTION FROM THE DATABASE
SELECT LINE, TEXT
FROM USER_SOURCE
WHERE NAME = 'GET_COUNTRY_NAME';