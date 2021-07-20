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

--> 2. Nested table

/*
No index in nested table (unlike index by table)
it is valide data type in sql (unlike index by table, only used in PL/SQL)
initialization required
extend required
can be stored in DB

syntax
    TYPE type_name is table of
    {column_type | variable%type | table.column%type}
    [NOT NULL]
    | table.%rowtype
      

*/

DECLARE

type t_array is table of VARCHAR2(100);

v_tab t_array;

BEGIN

    v_tab := t_array('cool', 'nice', 'tito');
    v_tab.extend(3); -- you can use extend for add one place
    v_tab(4) := 'place 4';
    v_tab(5) := 'place 5';
    v_tab(6) := 'place 6';

    for i in 1..v_tab.count() LOOP
        DBMS_OUTPUT.put_line(v_tab(i));
    end loop;
END;
/

--advance
drop table x_customer;
drop type t_tel;

create or replace type t_tel as table of number;
create table x_customer
(
    cust_id number,
    cust_name varchar2(100),
    tel t_tel
)
nested table tel store as t_tel_tbl;

insert into x_customer (cust_id, cust_name, tel)
values (1, 'khalid', t_tel(050121, 0501245, 0589877));
select * from x_customer;