set serveroutput on;


-- supplied packages
/*
    some Oracle-supplied packages:
    DBMS_OUTPUT
    UTL_FILE
    UTL_MAIL
    DBMS_ALERT
    DBMS_LOCK
    DBMS_SESSION
    HTP
    DBMS_SCHEDULER
    ...
*/ 

/*
DBMS_OUTPUT package enable you to send messages from stored subprograms and triggers

* PUT, PUT_LINE
* GET_LINE, GET_LINES
* messages are not sent until the sending subprogram or trigger completes
* use set serveroutput on; to display messages.

*/


