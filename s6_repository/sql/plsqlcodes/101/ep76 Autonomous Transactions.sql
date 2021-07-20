set serveroutput on
set autoprint off

-- Autonomous Transactions
/*

PRAGMA AUTONOMOUS_TRANSACTION
* make the transaction independent from the superiour procedure or function

* Are independent of the main transaction
* Do not roll back if the main transaction rolls BACk
* enable the changes to become visible to other transactions upon a commit
* are started and ended by individual subprograms and not by nested or anonymous PL/SQL blocks
(must declare only on functions and procedure not the whole package)
*/

select * from TEST_TAB;

delete from TEST_TAB;

create or replace procedure p_child_procedure
is
-- this will make the transaction of the child independent 
-- so in the end it will be inserted one line
PRAGMA AUTONOMOUS_TRANSACTION;
begin

    insert into TEST_TAB values ('sadasdf', 50);
    DBMS_OUTPUT.PUT_LINE('from child');
    commit;

end;


create or replace procedure p_father_procedure
is
begin

    insert into TEST_TAB values ('dgdfg', 50);
    DBMS_OUTPUT.PUT_LINE('insert from father');
    p_child_procedure();
    ROLLBACK;

end;

execute p_father_procedure;