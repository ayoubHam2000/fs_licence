set serveroutput on

-- Persistent state of packages
/*

Initialized when the package is first loaded
Persistent (by default) for the life of the session
 - Stored in the User Global Area (UGA MEMOTY)
 - Unique to each session
 - Subject to change when package subprograms are called or public variables are modified
Not persistent for the session but persistent for the life (SGA memory)
of a subprogram call when using 
PRAGMA SERIALLY_REUSABLE in the package specification 


*/

------------------------------------------------------
CREATE OR REPLACE PACKAGE Persistent_state
is
    
    g_var number := 10;

    procedure update_g_var (p_no number);


end;


CREATE OR REPLACE PACKAGE BODY Persistent_state
is

    procedure update_g_var (p_no number)
    is
    begin
        g_var := p_no;
    end;

end;

SELECT TEXT FROM USER_ERRORS WHERE NAME = 'PERSISTENT_STATE';

------------------------------------------------------
-- the value change in the session level if you open an other session 
-- you will notice that the value is like in the declaration

EXECUTE Persistent_state.update_g_var(90);

variable test number;
execute :test := Persistent_state.g_var;
print test






------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------


CREATE OR REPLACE PACKAGE Persistent_state
is
    PRAGMA SERIALLY_REUSABLE;
    g_var number := 10;

    procedure update_g_var (p_no number);


end;


CREATE OR REPLACE PACKAGE BODY Persistent_state
is
    PRAGMA SERIALLY_REUSABLE;
    procedure update_g_var (p_no number)
    is
    begin
        g_var := p_no;
    end;

end;

SELECT TEXT FROM USER_ERRORS WHERE NAME = 'PERSISTENT_STATE';

------------------------------------------------------
-- like in the declaration by using PRAGMA SERIALLY_REUSABLE; even if we change its value in print function

EXECUTE Persistent_state.update_g_var(90);

variable test number;
execute :test := Persistent_state.g_var;
print test



