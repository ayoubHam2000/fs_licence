set serveroutput on
set autoprint off

-- procedure
/*
subprogramms
compiled only once
stored in the database
can take parameters

* the benefits of using modular program constructs are
- easy maintenance
- improved data security and integrity
- improved performace
- improved code clarity

* what are pl/sql subprograms?
- you can declare and define a subprogram within either a pl/sql block or another subprogram
- a subprogram can be a procedure or a function

*syntax of procedure

CREATE [OR REPLACE] PROCEDURE UPDATE_SAL
(param1 IN type1, params2 IN type2, ..., paramN IN typeN) [optional parameters list]
IS [Or AS]
    {you can declare variables here}
BEGIN

EXCEPTION

END;

- Parameters data types without size
- You should have create procedure privilege(permession from the database administaration)
- Substitution and host variables not allowed in procedures
- you can't use &(input) in procedures 

*/

