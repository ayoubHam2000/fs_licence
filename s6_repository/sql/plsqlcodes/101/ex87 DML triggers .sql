set serveroutput on
set autoprint off
/*

DML triggers 

Statement-Level Triggers
    is the default when creating a trigger
    Fires once for the triggering event
    Fires ince even if no rows are affected
Row-Level Triggers
    Use the For EACH Row clausewhen creating a trigger
    Fires ince for each row affected by the triggering event
    event does not affect any rows

syntax

create or replace trigger nameoftrigger
before
insert or update or delete
on DEPARTMENTS
begin

    code...

end;

select * from user_objects
where object_name = 'DEPT_CHECK_TIME';

select * from USER_TRIGGERS 
where trigger_name = 'DEPT_CHECK_TIME';


*/

--##########################################################
--##########################################################


create or replace trigger tr_coutry_insert
before
insert or update or delete
on TEST_TAB
BEGIN
    if inserting then
        DBMS_OUTPUT.PUT_LINE('Inserting');
    elsif deleting then
        DBMS_OUTPUT.PUT_LINE('Deleting');
    elsif updating then
        DBMS_OUTPUT.PUT_LINE('updating');
    end if;

END;

drop trigger tr_coutry_insert;

--##########################################################
--##########################################################

select * from user_objects
where object_name = 'TR_COUTRY_INSERT';

select * from USER_TRIGGERS 
where trigger_name = 'TR_COUTRY_INSERT';

--##########################################################
--##########################################################


begin
    insert into TEST_TAB values ('alae', 255);
    UPDATE TEST_TAB set name='alae' where name='alae';
    delete from TEST_TAB where name = '123';
end;

--##########################################################
--##########################################################
