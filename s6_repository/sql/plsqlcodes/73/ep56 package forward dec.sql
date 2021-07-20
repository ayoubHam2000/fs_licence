set serveroutput on;

-- forward declaration
/*

    if a subprogram1 call othe subprogram2 the later sould be above the first;
    otherwise you should declare the prototype above the subprogram1


*/

create or replace package pk_1
is

    procedure test;
    

end;

--above
-------------------------------------------------------------
create or replace package body pk_1
is

    function test2 return varchar2; 

    procedure test
    is
    begin
      dbms_output.put_line(test2);
    end;

    function test2
    return varchar2
    is
    begin
        return 'test';
    end;

end;
-------------------------------------------------------------

--prototype
-------------------------------------------------------------
create or replace package body pk_1
is

    function test2
    return varchar2
    is
    begin
        return 'test';
    end;
 

    procedure test
    is
    begin
      dbms_output.put_line(test2);
    end;
end;
-------------------------------------------------------------

select text from user_errors where name = 'PK_1';

execute pk_1.test;

