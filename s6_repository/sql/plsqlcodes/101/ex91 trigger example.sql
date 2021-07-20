/*

use before
set a value by trigger


*/


CREATE TABLE TEST_TRIGGER (
    NAME VARCHAR2(30),
    status CHAR(1)
);

drop table TEST_TRIGGER;

--/////////////////////////////////

create or replace trigger trigger_add_status
before insert 
on TEST_TRIGGER
for each row
begin

    if (:new.name like 'A%') then
        :new.status := 'A';
    end if;

    if (:new.name like 'K%') then
        :new.status := 'K';
    end if;

end;

--##########################################
--##########################################

insert into TEST_TRIGGER values ('Ayoub', '');
insert into TEST_TRIGGER values ('Klae', '');

select * from TEST_TRIGGER;

