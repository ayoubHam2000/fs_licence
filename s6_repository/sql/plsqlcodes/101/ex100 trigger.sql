/*

creating database-event trigger



*/


1    CREATE [OR REPLACE] TRIGGER trigger name
2    {BEFORE | AFTER } { data_base_event } ON {DATABASE | SCHEMA}
3    [WHEN (...)]
4    DECLARE
5    Variable declarations
6    BEGIN
7    ...some code...
8    END;

{ data_base_event }

AFTER SERVERERROR
AFTER LOGON -> can be on schema also
AFTER LOGOFF -> can be on schema also
AFTER STARTUP -> Only database
BEFORE SHUTDOWN -> Only database