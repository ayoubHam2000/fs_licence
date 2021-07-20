/*
row trigger

update table set name = 'name' where name = 'oldname';
new => reference name
old => reference oldname

:old.name
:new.name

look example below

*/
--#################################################
--#################################################


create or replace trigger check_test_table_rows
before insert or update of nbr
on TEST_TAB
for each row
begin
    if :new.nbr>200 then
        raise_application_error(-20030, 'nbr greater than 200');
    end if;
end;


--#################################################
--#################################################

begin
    insert into test_tab values('alae', 20);
    --insert into test_tab values('alae', 220); --error
end;