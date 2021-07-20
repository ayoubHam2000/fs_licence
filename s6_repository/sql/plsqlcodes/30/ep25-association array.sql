set serveroutput on
set autoprint off

/*
Are two types
    Pl/SQL records
    -> PL/SQL collections
        - INDEX BY tables or association array
        - Nested table
        - VARRAY
*/

--INDEX BY tables or association array
--type typename is table of theType index by indexType;
declare

    type tab_no is table of varchar2(100)
    index by PLS_INTEGER;

    v tab_no;

begin

    v(1) := 'Index1';
    v(2) := 'Index2';
    v(3) := 'Index3';
    v(101) := 'Index101';
    DBMS_OUTPUT.put_line(v(101));

end;
/