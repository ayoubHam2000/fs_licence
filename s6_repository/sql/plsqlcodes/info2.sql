TYPE nom_record IS RECORD     ( nom_ch 1 type , nom_ch2  type,  ...);

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


----------------------------------------------
--Les collections VARRAY

TYPE nom_type is VARRAY(30) OF typeElement[NOT NULL];

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


declare
    type t_tab is varray(10) of varchar2(20);

    v_tab t_tab;

begin

    v_tab := t_tab('item 1', 'item 2', 'item 3');
    v_tab(1) := 'item 1_';

    v_tab.extend;
    v_tab(4) := 'item 4_';
    dbms_output.put_line(v_tab(1));
    dbms_output.put_line(v_tab(4));
  
    v_tab.trim(2); --delete the last two elements
    dbms_output.put_line(v_tab.count());
  
end;
/



---------------------------------------------------------------

-- Les collections TABLE

--sys
TYPE nom_type IS TABLE OF type_des_valeurs INDEX BY type_des_clés ;
-- INDEX BY tables or association array
declare

    type tab_no is table of varchar2(100)
    index by PLS_INTEGER;

    v tab_no;
    i NUMBER;
begin

    v(1) := 'Index1';
    v(2) := 'Index2';
    v(3) := 'Index3';
    v(101) := 'Index101';
    --DBMS_OUTPUT.put_line(v(101));

    i := v.first;
    while i is not NULL LOOP
        DBMS_OUTPUT.PUT_LINE(v(i));
        i := v.next(i);
    end loop;
end;
/


--------------------------------------------


declare 
    exception_name EXCEPTION;
begin
    raise exception_name;
exception
    when exception_name then
        DBMS_OUTPUT.PUT_LINE('Error : ' || sqlcode || ' error name : ' || sqlerrm);
end;


