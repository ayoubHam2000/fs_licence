set serveroutput on
set autoprint off

-- Definer and invoker right

/*
Definer's right:
* Used prior to Oracle8i;
* User does not require privileges on underlying objects that the procedure 
accesses. User requires privilege only to execute a procedure


Invoker's right
* Introduced in Oracle8i
* User requires privileges on the underlying objects(tables ...) that the procedure accesses
* Calls to other packages,  functions, and procedures are resolved in the definer's schema
-- it mean that you can access to the subprogramms inside but you have to possess the access inside them

*/


drop table xe_table


create table xe_table
(id number, name varchar2(100));

select * from xe_table;

--------------------------------------------------------
-- Definer's right
create or replace procedure add_to_xe_table
(p_id number, p_name varchar2)
is
begin

    insert into xe_table values (p_id, p_name);

end;

-- new conn as sys sysdba and and create an other user 
-- grant create session, connect to 'user name'; this is a command 


-- this user in my case 'xe'
-- xe will give 'user' permission to execute add_to_xe_table procedure

grant execute on add_to_xe_table to ae;
-- Grant succeeded.

-- you can now open a new session from the user ae and execute this function
-- by => execute xe.add_to_xe_table(1, 'ayoub');
-- select * from xe.xe_table;
-- will produce : table or view does not exist
-- because this user hasn't the permession to this table but it has the permession
-- to the procedure
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Invoker's right
create or replace procedure add_to_xe_table
(p_id number, p_name varchar2) authid current_user
is
begin

    insert into xe_table values (p_id, p_name);

end;

-- from user : ae
-- execute xe.add_to_xe_table(1, 'ayoub');
-- it will know produce an error because the user ae has to have a permession on xe_table
