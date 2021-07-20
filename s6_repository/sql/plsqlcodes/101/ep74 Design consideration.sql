set serveroutput on
set autoprint off

-- Design consideration standardizing (This help you in programming by PL/SQL)

-- EP-74 
/*

--> ERRORS

* Create a standardized error handling package that include all defined exceptions to
be used in application (Use a package to store your custom errors)
* Display errors based on SQLCODE and SQLERRM values for exceptions
* Display errors messages
-- -20001 -> -29999 RAISE_PPLICATION_ERROR(-20001, 'My first error', TRUE);


--> CONSTANTS

* Create one central package specification and place all contants in it
* for the variables whose values unchangeables make them CONTANT for reduce maintenance and debugging 

--> LOCAL Subprograms

* subprograms like procedures and functions
* reduction of repetitive code
* code readability
* easy maintenance

*/



-- EP-75

/*



*/