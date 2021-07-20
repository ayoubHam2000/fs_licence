set serveroutput on
set autoprint off


--table methods
/*
exists return True if the element exist False if not
prior return the index number that precedes index n in PL/SQL table
next return the index number that succeds index n in PL/SQL table
count return the number of elements
first return the (small) first index | NULL if tabel is empty
last return the last (large) index | NULL if tabel is empty
delete => delete | delete(n) | delete(n, m)
*/

/*
CREATE OR REPLACE FUNCTION BOOLEAN_TO_CHAR(STATUS IN BOOLEAN)
RETURN VARCHAR2 IS
BEGIN
  RETURN
   CASE STATUS
     WHEN TRUE THEN 'TRUE'
     WHEN FALSE THEN 'FALSE'
     ELSE 'NULL'
   END;
END;
*/

DECLARE

    type t_no is table of varchar2(100) index by PLS_INTEGER;

    v t_no;

BEGIN

    v(1) := 'ayoub';
    v(2) := 'alae';
    v(3) := 'omar';

    DBMS_OUTPUT.PUT_LINE( 'count : ' || v.count() );
    DBMS_OUTPUT.PUT_LINE( 'first index : ' || v.first() );
    DBMS_OUTPUT.PUT_LINE( 'last index : ' || v.last() );
    DBMS_OUTPUT.PUT_LINE( 'first element : ' || v(v.first()) );
    DBMS_OUTPUT.PUT_LINE( 'last element : ' || v(v.last()) );

    if v.exists(3) then
        DBMS_OUTPUT.PUT_LINE( 'index 3 exists : True ');
    else
        DBMS_OUTPUT.PUT_LINE( 'index 3 exists : False ');
    end if;

    DBMS_OUTPUT.PUT_LINE( 'prior index of 2  : ' || v.prior(2) );
    DBMS_OUTPUT.PUT_LINE( 'next index of 2 : ' || v.next(2) );
    DBMS_OUTPUT.PUT_LINE( 'prior element of 2  : ' || v(v.prior(2)) );
    DBMS_OUTPUT.PUT_LINE( 'next element of 2 : ' || v(v.next(2)) );

    DBMS_OUTPUT.PUT_LINE( 'delete element 2');
    v.delete(2);


END;
/