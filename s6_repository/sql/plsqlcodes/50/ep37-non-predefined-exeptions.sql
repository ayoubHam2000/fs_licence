set serveroutput on
set autoprint off

-- non-predefined exeptions error

/*
name EXCEPTION;
PRAGMA EXCEPTION_INIT(name, exception_code);
when name then

-SQLCODE: return the numeric calue for the error code
-SQLERRM: return the message associated with the error number

-image : ep37-exception-non-predefined.png
- it's a rare case : it will almost handled in the application

*/