set serveroutput on
set autoprint off

-- IN => you can assigned a default value by (... the_name IN VARCHAR2 := 'ayoub' ...)
-- ep43 procedures in out.png

CREATE OR REPLACE PROCEDURE update_test_table
(the_name IN VARCHAR2, newNbr IN NUMBER) IS
BEGIN

    UPDATE TEST_TAB set NBR = newNbr where name = THE_NAME;

EXCEPTION

when OTHERS then
DBMS_OUTPUT.PUT_LINE(sqlcode);
DBMS_OUTPUT.PUT_LINE(sqlerrm);

END;

--=============================

execute update_test_table('ayoub', 59);
execute update_test_table(&the_name, &nbr);

--=============================

begin
    --update_test_table('ayoub', 40);
    update_test_table(&the_name, &nbr);
end;

select * from TEST_TAB;

--====================================

select * from user_source 
where name = 'UPDATE_TEST_TABLE' 
order by LINE;

--==================================

DROP procedure update_test_table;