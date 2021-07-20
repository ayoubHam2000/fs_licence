set SERVEROUTPUT on;
/*

* A package usually have two parts:
 - A specifications
 - A body

* The specification is the interface to the package. it
declares the types, variables, constants, exceptions, cursors,
and  subprograms that can be referenced from outside the package.

* The body defines the queries for the cursors and the code for the suubprograms
* Enable the Oracle server to read multiple objects into memory at once (make execution fast)

*Easier maintenance

- Hiding inforamation:
 * Only the declarations in the package specification are visible and accessible to applications
 * Private constructs in the package body are hidden and inaccessible
 * All coding is hidden in the package body 
 * if you write procedure or function inside package specification 
   you should also write it inside package body and if add them you should recompile the body

 * if you add somme code into the package specifation you don't have to recompile the package body 
   if the chage does't affect the body. this is form oracle 11g 

 - Create package
Create [OR REPLACE] PACKAGE package_name IS|AS
    public type and variable declarations
    subprogram specifications
END [package_name];

- Create package body
Create [OR REPLACE] PACKAGE BODY package_name IS|AS
    private type and variable declareations
    subprogram bodies
[BEGIN initialization statements] -- like init or constructor
END [PACKAGE_NAME];

- Guidelines for Writing Packages
 * THE package specification should contain only those constructs that you
   want to be public
 * the package specification shpuld contain as few constructs as posiible.


drop package P-test; -- to drop package specification and body
drop package body p_test; -- to drop only package body

-- Errors
SELECT text FROM USER_ERRORS WHERE NAME = 'P_TEST';

*/


create or replace package p_test
is

    c_var1 constant number := 10;
    c_var2 constant varchar2(100) := 'welcome';
    procedure print;

end;

create or replace package body p_test
is
    c_var3 varchar2(100) := 'hi there';
    procedure print
    is
        c_var4 varchar2(30) := 'hi';
    begin
        dbms_output.put_line('this from package spec : '|| c_var2);
        dbms_output.put_line('this from package body : '|| c_var3);
        dbms_output.put_line('this from package proc : '|| c_var4);
    end;
end;

execute p_test.print;


SELECT text FROM USER_ERRORS WHERE NAME = 'P_TEST';


drop package p_test;


-----------------------------------------------------------------------------


create or replace package body p_test
is
    c_var3 varchar2(100) := 'hi there';
    procedure print
    is
        c_var4 varchar2(30) := 'hi';
    begin
        dbms_output.put_line('this from package spec : '|| c_var2);
        dbms_output.put_line('this from package body : '|| c_var3);
        dbms_output.put_line('this from package proc : '|| c_var4);
    end;

BEGIN

    dbms_output.put_line('start'); --IT WILL alwase executed when we calling the package
    
END;

execute p_test.print;


--------------------------------------------------------------------

SELECT * FROM USER_SOURCE
WHERE NAME = 'P_TEST'
AND TYPE = 'PACKAGE';

SELECT * FROM USER_SOURCE
WHERE NAME = 'P_TEST'
AND TYPE = 'PACKAGE BODY';

SELECT * FROM USER_ERRORS WHERE NAME = 'P_TEST';

DROP package p_test;
DROP package body p_test; 