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

--> 3. VARRAY
/*
is like nested table but it has a fix size
you can delete from the end by using trim
you can extend until it size
you can use it in sql
*/

-- image defrence between tables ep29-characteristic of collectios.png

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


--advance
drop table x_customer;
drop type t_tel;

create or replace type t_tel as varray(10) of number;
create table x_customer
(
    cust_id number,
    cust_name varchar2(100),
    tel t_tel
);
--nested table tel store as t_tel_tbl;

insert into x_customer (cust_id, cust_name, tel)
values (1, 'khalid', t_tel(050121, 0501245, 0589877));
select * from x_customer;