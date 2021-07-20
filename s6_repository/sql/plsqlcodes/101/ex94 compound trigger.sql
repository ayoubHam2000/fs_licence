/*

compound trigger
we can compound all type of triggers(before before row, after row  after row) into on trigger

syntax 

create or replace trigger trigger_name
for dml_event
on table_name
compound trigger
-- Initial section
    -- declarations
    -- subprograms
-- optional section;
before statement is ....;
-- optional section;
before each row  is ....;
-- optional section;
after each row  is ....;
-- optional section;
after statement is ....;

** you have to write them in order

*/


CREATE TABLE TEST_TRIGGER_2 (
    NAME VARCHAR2(30)
);

CREATE TABLE TRACE_TEST_TRIGGER_2 (
    seq NUMBER,
    trigger_type varchar2(100)
);

create sequence s;



drop table TEST_TRIGGER_2;
drop table TRACE_TEST_TRIGGER_2;
drop sequence s;

--#####################################################
--#####################################################

create or replace trigger compound_trigger
for insert
on TEST_TRIGGER_2
compound trigger
--we can define variables here
    before statement is
    begin 
        insert into TRACE_TEST_TRIGGER_2 values (s.nextval, 'before_insert_start');
    end before statement;

    before each row is
    begin
        insert into TRACE_TEST_TRIGGER_2 values (s.nextval, 'before_insert_row_start');
    end before each row;

    after each row is
    begin
        insert into TRACE_TEST_TRIGGER_2 values (s.nextval, 'after_insert_row_start');
    end after each row;

    after statement is
    begin
        insert into TRACE_TEST_TRIGGER_2 values (s.nextval, 'after_insert_start');
    end after statement;
end;

select text from user_errors where name = 'COMPOUND_TRIGGER';

--#####################################################
--#####################################################

insert into TEST_TRIGGER_2 values('ayoub');

select * from TEST_TRIGGER_2;

select * from TRACE_TEST_TRIGGER_2;