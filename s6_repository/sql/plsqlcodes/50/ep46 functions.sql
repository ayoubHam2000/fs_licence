set serveroutput on
set autoprint off

/*
--host variables (:bind_variables) and & not allowed

--Syntax

CREATE [OR REPLACE] FUNCTION function_name
(parameter1 [mode1] datatype1, ...)
RETURN datatype
[IS|AS]
BEGIN
    --CODE
    RETURN expression;
    [exception]
END [function_name];


Creating and running functions : overview
* view errors/warnings in SQL Developer
* Use SHOW ERRORS command in SQL*Plus
* Use User/All/DBA_ERRORS views

-- image : ep46 deffrence between procedure and functions.png

-- select can handle NO DATA FOUND ERROR raised from the functions
-- it replace the error with null

*/