set serveroutput on;

--woking with pages

/*
Overloading Subprograms in PL/SQL

- Enable you to create two subprogramms with the same name
- they differ in number, order, data type familly of parameters
- you can make overloading with tow fucntions and procedures with the same and same number of parametter
with same orther and familly type, only you have to make two deferent name of the parameter and call the
subprogram with namaed call see example below;


*/

drop table customer;

create table customer(
    cust_id number,
    cust_name varchar2(100),
    cust_birthday date 
);

-----------------------------------------------------------------------
create or replace package overload_pac
is
  procedure add_cust(p_id number, p_name varchar2, p_birthday date);
  procedure add_cust(p_id number, p_name varchar2);
end;

create or replace package body overload_pac
is
    procedure add_cust
    (p_id number, p_name varchar2, p_birthday date)
    is
    begin
        insert into customer(cust_id, cust_name, cust_birthday)
        values(p_id, p_name, p_birthday);
        commit;
    end;

    procedure add_cust
    (p_id number, p_name varchar2)
    is
    begin
        insert into customer(cust_id, cust_name) 
        values(p_id, p_name);
        commit;
    end;


end;

select text from user_errors where name = 'OVERLOAD_PAC';
-----------------------------------------------------------------------

select * from customer;

execute overload_pac.add_cust(1, 'ayoub');
execute overload_pac.add_cust(2, 'omar', '05-may-2000');


-----------------------------------------------------------------------
create or replace package overload_pac
is
  function getname(p_id1 number) return varchar2;
  function getname(p_id2 number) return varchar2;
end;

create or replace package body overload_pac
IS

    function getname
    (p_id1 number)
    return varchar2
    is
    begin
        return '(f1) this number = ' || p_id1;
    end;

    function getname
    (p_id2 number)
    return varchar2
    is
    begin
        return '(f2) this number = ' || p_id2;
    end;


end;

select text from user_errors where name = 'OVERLOAD_PAC';

select overload_pac.getname(p_id2 => 20) from dual;
-----------------------------------------------------------------------
