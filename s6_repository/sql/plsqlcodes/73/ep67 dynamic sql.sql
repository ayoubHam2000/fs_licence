set serveroutput on

-- Dynamic SQL

-- All Sql statements go through some or all of the following stages:

/*

 * Parse : check the statement syntax, validating the statement,
    ensure all referencing objects are correct, the privileges exists
 * Bind : check the bind variable if the statement contains Bind var
 * Execute : execute the statement (non queries statement)
 * Fetch : retrieve the rows (Queries statement)

use dunamic sql to create a SQL statement whose structures may change during run time.
* is constructed and stored as a character string
* enabkes DDL, DCL, or session-control statements to be written and execute from PL/SQL
* Is executed with Native Dynamic SQL statement or te DBMS_SQL package.
* The full text of dynamic SQL statement might be unknown until run time, therefore,
its syntax is ckecked at run time rather than at compile time.
* You can use dynamic sql statement to make your PL/SQL programs more general and
flexible.


- when do you need dynamic sql?
* sql whose full text is unknown at compile time sush as table name or column name

*/
 

 /*
 
 begin
 execute immediate 'code pl/sql'
 commit -- commit and rollback
 end;

ep 68
select * from USER_SYS_PRIVS;
-- conn sys as sysdba, grant create table to xe

ep 69
INTO
USING 
EXECUTE immediate 'INSERT INTO ' || p_table_name || ' VALUES(:1) ' USING P_VALUE;

ep 70
BEGIN
    v_query := 'select * from countries where country_nbr = :1';
    execute immediate v_query into v_coutry_rec using p_id;
    return v_coutry_rec;
END;

ep 71
type c_coutry_rows is ref cursor;
is a cursor that you can open it many time with deferent queries;

ep72
 -- you can execute the whole block by execute immediate
 -- alter procedure print_countries compile

ep73
 v_cur_id := dbms_sql.open_cursor; NUMBER(38)
dbms_sql.parse(v_cur_id, 'delete from ' || p_table_name, dbms_sql.native);
v_no_rec := dbms_sql.execute(v_cur_id);

 */
