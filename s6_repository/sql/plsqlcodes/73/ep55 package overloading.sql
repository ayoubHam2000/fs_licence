set serveroutput on;

-- package overloading examples
/*

    -- you can use subprograms with the same name of built in pl/sql subprograms inside package
    -- if it is the case you should use standard package to refer to the built in package


*/

create or replace package overrride
is
    function to_char(p1 number, p2 date) return varchar2;
    procedure print;
end;

create or replace package body overrride
is

    function to_char(p1 number, p2 date) return varchar2
    is
    begin

        return p1||p2;

    end;

    procedure print
    is
    begin
        dbms_output.put_line(to_char(1, '1-jan-81'));
        dbms_output.put_line(standard.to_char(10));
    end;

end;


execute overrride.print();

