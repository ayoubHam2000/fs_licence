set serveroutput on
set autoprint off


--Available Notations for Passing Actual Parameters
/*
Positional
Named
Mixed
*/

CREATE OR REPLACE PROCEDURE add_to_test_table
(
    name TEST_TAB.NAME%type,
    nbr TEST_TAB.NBR%type
)
IS
BEGIN
    insert into TEST_TAB(NAME, NBR) values (name, nbr);
EXCEPTION
    when others then
    DBMS_OUTPUT.put_line(SQLERRM);
    DBMS_OUTPUT.put_line(SQLCODE);
END;


--===========================================

--positional
execute ADD_TO_TEST_TABLE('achraf', 40);

--named
execute ADD_TO_TEST_TABLE(nbr => '49', name => 'rachid');

--mixed
execute ADD_TO_TEST_TABLE('achraf', nbr => 40);

select * from TEST_TAB;