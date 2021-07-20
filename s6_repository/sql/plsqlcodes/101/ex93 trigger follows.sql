/*

which trigger fire first

syn
on TEST_TRIGGER
follows trigger_name

*/


create table fire_tracer(
    seq INTEGER,
    triggerName VARCHAR2(100)
);

CREATE TABLE TEST_TRIGGER (
    NAME VARCHAR2(30),
    status CHAR(1),
    salary NUMBER
);

create sequence s1;

drop table TEST_TRIGGER;
drop table fire_tracer;
drop sequence s1;

--######################################
--######################################

create or replace trigger t1
before insert
on TEST_TRIGGER
begin
    insert into fire_tracer values (s1.nextval, 't1');
end;

create or replace trigger T2
before insert
on TEST_TRIGGER
follows t1
BEGIN
    INSERT INTO fire_tracer values (s1.nextval, 't2');
END;

drop trigger t1;
drop trigger t2;

--######################################
--######################################

insert into TEST_TRIGGER values('ayoub', 's', 20);

select * from fire_tracer;