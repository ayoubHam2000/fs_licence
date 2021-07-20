set serveroutput on
set autoprint off


-- examples of using functions with select statement

------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION test_fun
(p_nbr Number)
return number
is
begin
    commit;
    return p_nbr * 10;
end;

select name, test_fun(nbr) from TEST_TAB; 
--error : cannot perform a DDL, commit or rollback inside a query or DML

------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION test_fun
(p_nbr Number)
return number
is
begin
    insert into TEST_TAB(name, nbr) values ('ggg', 56);
    return p_nbr * 10;
end;

select name, test_fun(nbr) from TEST_TAB; 
--error : cannot perform a DML operation inside a query

------------------------------------------------------------------------------

drop function test_fun;