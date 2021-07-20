set serveroutput on
set autoprint off


/*
USER-DEFINED functions that are callable from SQL
expressions must:
- Be stored in the database
- Accept only IN prameters with valid SQL data typesm not PL/SQL specific types
(RECORD, TABLE, BOOLEAN)

* When calling functions in SQL statement:
    Parameters must be specified with positional notation *This befor 11g only
    You must own the function or have the EXECUTE privilege


* Controlling side effects when calling functions from SQL Expressions
Functions called from:
    - A select statement cannot contain DDL, commit or rollback inside a query or DML
    - An UPDATE or DELETE statement on a table T 
    cannot query or contain DML on the sqme table T
     when a function is called from update/ delete, then the functio can not
    Query or modify database tables modified by that statement 
    Error : mutating table

    - SQL statements cammot end transactions (that is, 
    cannot execute COMMIT or ROLLBACK operations)

image : ep48 SQL-Commands.png
https://www.w3schools.in/mysql/ddl-dml-dcl/

*/