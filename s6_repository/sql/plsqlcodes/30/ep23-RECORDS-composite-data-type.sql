set serveroutput on
set autoprint off

-- composite data type
--CREATE TABLE TEST_TAB(name VARCHAR(30), nbr INT);
--insert into test_tab values('ayoub', 25);
--insert into test_tab values('alae', 30);



/*
Are two types
    Pl/SQL records
    PL/SQL collections
        - INDEX BY tables or association array
        - Nested table
        - VARRAY
*/

/*
Declaring a Pl/SQL Record
1-programmer defined records
2-table-based record %ROWtype
3-cursor-based record 
*/

/*
Programmer defined records

DECLARE
TYPE record_name IS RECORD
(...);

--after
v_emp record_name;
BEGIN

you can use default

*/

DECLARE
    TYPE t_EMP IS record
    (
        name VARCHAR(30),
        nbr INT
    );

    v_emp t_EMP;
BEGIN
    select name, nbr into v_emp from test_tab where nbr = 30;
    
    dbms_output.put_line(v_emp.name);
    dbms_output.put_line(v_emp.nbr);
  
END;
/