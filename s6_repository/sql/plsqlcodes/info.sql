p188

DECLARE
BEGIN (obligatoires)
EXCEPTION
END (obligatoires)
/

SET SERVEROUTPUT ON
DBMS_OUTPUT.PUT()
DBMS_OUTPUT.PUT_LINE()

%TYPE
%ROWTYPE


============================================

TYPE nom_record IS RECORD     ( nom_ch 1 type , nom_ch2  type,  ...);

Nom-de-variable [CONSTANT] TYPE [ NOT NULL ] [:= | DEFAULT Expression] ;

;Les collections VARRAY 
TYPE nom_type IS {VARRAY | VARYING ARRAY} (size_limit)  OF typeElements [NOT NULL];
test.COUNT
test.LIMIT give you the exist length not the size_limit
test.extend(5)
test.delete()
TRIM
Removes one element from the end of a collection.
TRIM(n)
DELETE(n)
DELETE(m,n)
FIRST
https://www.tutorialspoint.com/plsql/plsql_collections.htm


TYPE nom_type IS TABLE OF type_des_valeurs INDEX BY type_des_clés ;

=============================================

for i in 1..varray.count() loop
    l_numbers(i) := 's' || i;
end loop;


