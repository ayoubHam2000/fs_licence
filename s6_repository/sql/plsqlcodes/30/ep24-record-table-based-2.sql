set serveroutput on
set autoprint off

/*
Declaring a Pl/SQL Record
1-programmer defined records
2-table-based record %ROWtype
3-cursor-based record 
*/

--2-table-based record %ROWtype
--record using rowtype;
--prefic %rowtype with the database table or view
--you can do insert, update by it;

--create table copy_test as select * from TEST_TAB;
--select * from copy_test;

declare

v TEST_TAB%rowtype;

begin

select * into v from TEST_TAB where nbr = 30;
dbms_output.PUT_LINE(v.nbr);
dbms_output.PUT_LINE(v.name);


end;
/