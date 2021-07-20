/*
THE trigger event types

you can write trrigers that fire whennever one of the following operations occurs
in the database:

* A database manipulation (DML) statement (DELETE, INSERT, UPDATE)
* A database definition (DDL) statement (CREATE, ALTER or DROP)
* A database operation such as SERVERERROR, LOGIN, LOGOFF, STARTUP, SHUTDOWN.

- The size of trigger cannot be grater than 32KB

87 
    -> DML triggers and row trigger systax
    -> user_objects, USER_TRIGGERS tables
88 old new
89 inserting updating deleting
90 
    -> BEFORE STATEMENT TRIGGER
    -> BEFORE ROW TRIGGER
    -> AFTER ROW TRIGGER
    -> AFTER STATEMENT TRIGGER
    -> enable, disable trigger
91 set a value by trigger
92 view and trigger -> instead OF
93 which trigger fire first -> follows trigger_name
94 compound trigger
95 extra info for compound trigger
96 extra info fo compound trigger (mutating table) using variables
97 extra info fo compound trigger (mutating table) using table
98 other example on mutating table USING DLETE CASCADE
99 DDL statement with trigger
100 creating database-event trigger
101  procedure with trigger

101
SYSTEM Privilegers required to managge triggers

the following system privileges are required to manage triggers:
* The CREATE/ALTER/DROP (ANY) TRIGGER privilege that enables you to create a trigger in any schema
* The ADMINISTER DATABASE TRIGGER privilege that enables you to create a trigger on DATABASE
* The EXECUTE privilege (if your trigger refers to any objects that are not in your schema)

*/