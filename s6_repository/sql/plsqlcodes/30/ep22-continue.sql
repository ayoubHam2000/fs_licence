set serveroutput on
set autoprint off

--continue statement

declare
    var varchar2(100);
begin
    for i in 1..10 loop
        continue when i > 5 and i < 7;
        dbms_output.put_line(i);
    end loop;
end;
/