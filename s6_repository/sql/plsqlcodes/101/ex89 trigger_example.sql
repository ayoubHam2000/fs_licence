/*

example


*/

--##########################################################################
--##########################################################################

create TABLE EMPLOYEE_TABLE(
    id NUMBER, 
    name VARCHAR2(30), 
    salary NUMBER
);

create TABLE TRACE_TABLE_EMPLOYEE(
    id NUMBER, 
    operation VARCHAR2(30), 
    oldvalue NUMBER, 
    newvalue NUMBER, 
    date_time DATE, 
    the_user VARCHAR2(100)
);

--##########################################################################
--##########################################################################

create or replace trigger TRACE_EMPLOYEE_TABLE
after insert or update of salary or delete
on EMPLOYEE_TABLE
for each row
begin

    if inserting then
        insert into TRACE_TABLE_EMPLOYEE values (:new.id, 'INSERTING', null, :new.salary, sysdate, user);
    elsif updating then
        insert into TRACE_TABLE_EMPLOYEE values (:new.id, 'UPDATING', :old.salary, :new.salary, sysdate, user);
    elsif deleting then
        insert into TRACE_TABLE_EMPLOYEE values (:new.id, 'DELETING', :old.salary, null, sysdate, user);
    end if;

end;

select text from USER_ERRORS where name = 'TRACE_EMPLOYEE_TABLE';


--##########################################################################
--##########################################################################


select * from TRACE_TABLE_EMPLOYEE;
select * from EMPLOYEE_TABLE;

--##########################################################################
--##########################################################################



insert into EMPLOYEE_TABLE values (0, 'ayoub', 300);
insert into EMPLOYEE_TABLE values (0, 'alae', 400);

update EMPLOYEE_TABLE set salary = salary + 100;

delete from EMPLOYEE_TABLE where name = 'ayoub';