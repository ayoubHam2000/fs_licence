/*

trigger with VIEW

when we use trigger with view, the value inserted into the view it will not be inserted
to the original table.
-> insert the value manualy in the trigger
-> in general the DML statements will not be executed in the orignal table

*/

CREATE TABLE TEST_TRIGGER (
    NAME VARCHAR2(30),
    status CHAR(1),
    salary NUMBER
);

drop table TEST_TRIGGER;

--##########################################
--##########################################

CREATE OR replace view  view_trigger_test 
as select * from TEST_TRIGGER;

insert into view_trigger_test values ('ayoub', 'a', 20);

-- it will be inserted also in the original table
select * from TEST_TRIGGER;
select * from view_trigger_test;

--##########################################
--##########################################

create or replace trigger update_test_table_trigger
instead OF
insert
on view_trigger_test
begin

    DBMS_OUTPUT.PUT_LINE('trigger');

end;

-- see the view for more information

