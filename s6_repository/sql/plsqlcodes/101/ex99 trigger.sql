/*

DDL statement with trigger

vars

ora_sysevent -> CREATE, DROP, ALTER
ora_dict_obj_owner -> hr, XE
ora_dict_obj_name -> table_name
USER
SYSDATE

*/

1    CREATE [OR REPLACE] TRIGGER trigger name
2    {BEFORE | AFTER } { DDL event} ON {DATABASE | SCHEMA}
3    [WHEN (...)]
4    DECLARE
5    Variable declarations
6    BEGIN
7    ...some code...
8    END;

CREATE OR REPLACE TRIGGER trigger_name
after DDL -- create, alter, drop
on SCHEMA -- LIKE XE OR HR
BEGIN   
-- CODE
END;
