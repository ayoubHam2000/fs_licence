set serveroutput on
set autoprint off

-- for update clause
/*
syntax
SELECT ...
FROM ...
FOR UPDATE [OF column_reference][NOWAIT | WAIT n];

ALWAYS last statement in select

NOWAIT : this will return for you eror if someone catching these records
WAIT n : what for some of time (s);

Use explicit locking to deny access to other sessions for the duration of a transaction
Lock the rows befoew the update or delete

--if you use for update with cursor you can use `where current of cursor_name`

*/

--use it to test
update countries set country_name = 'Brazil' where COUNTRY_NBR = 4;

select * from countries
where country_nbr = 4
order by 1
for update;

-- the for update will lock the session until we hit commit
commit;


-----------------------------------------------------------------------

--use it to test
update countries set country_name = 'Brazil' where COUNTRY_NBR = 4;

select * from countries
where country_nbr = 4
order by 1
for update
NOWAIT;

-- the for update will lock the session until we hit commit
commit;


-----------------------------------------------------------------------

--use it to test
update countries set country_name = 'Brazil' where COUNTRY_NBR = 4;

select * from countries
where country_nbr = 4
order by 1
for update
wait 5;

-- the for update will lock the session until we hit commit
commit;


-----------------------------------------------------------------------

DECLARE

    CURSOR c_emp is
    select * from countries
    for update; 

BEGIN

    FOR I IN c_emp
    LOOP

        update countries set
        country_nbr = country_nbr + 0
        where current of c_emp;

    END LOOP;
    COMMIT;

END;
/