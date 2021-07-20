/*
Trigger-Firing Sequence:

-> BEFORE STATEMENT TRIGGER
-> BEFORE ROW TRIGGER
-> AFTER ROW TRIGGER
-> AFTER STATEMENT TRIGGER

-- disable all triggers on a table
alter table test_emp disable all triggers;

-- encable all triggers on a table
alter table test_emp enable all triggers;

-- enable or disable specific trigger
alter trigger trigger_name enbale;
alter trigger trigger_name disable;

*/


CREATE TABLE TEST_TRIGGER (
    NAME VARCHAR2(30)
);

CREATE TABLE TRACE_TEST_TRIGGER (
    seq NUMBER,
    trigger_type varchar2(100)
);

create sequence s;

drop table TEST_TRIGGER;
drop table TRACE_TEST_TRIGGER;
drop sequence s;

--#####################################################
--#####################################################

create or replace trigger before_insert_start
before insert
on TEST_TRIGGER
begin

    insert into TRACE_TEST_TRIGGER values (s.nextval, 'before_insert_start');

end;

--///////////////////////////////////////////

create or replace trigger before_insert_row_start
before insert
on TEST_TRIGGER
for each row
begin

    insert into TRACE_TEST_TRIGGER values (s.nextval, 'before_insert_row_start');

end;

--///////////////////////////////////////////

create or replace trigger after_insert_row_start
after insert
on TEST_TRIGGER
for each row
begin

    insert into TRACE_TEST_TRIGGER values (s.nextval, 'after_insert_row_start');

end;


--///////////////////////////////////////////

create or replace trigger after_insert_start
after insert
on TEST_TRIGGER
begin

    insert into TRACE_TEST_TRIGGER values (s.nextval, 'after_insert_start');

end;


--#####################################################
--#####################################################

insert into TEST_TRIGGER values('ayoub');

select * from TRACE_TEST_TRIGGER;