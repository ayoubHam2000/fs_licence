SET SERVEROUTPUT ON;



--CREATE TABLE TEST_TAB(name VARCHAR(30), nbr INT);
--insert into test_tab values('ayoub', 20);
--insert into test_tab values('alae', 30);


-- nested block
-- a nested block can be exist in to places inside (begin ... end) or inside exception
-- programming guidelines

-- in case of the same variable name in bouth the outer and the inner scope 
-- the value of the inner varible will be active one wich means that it will replace the outer variable
-- example

declare 
    name VARCHAR(30) := 'outer';
begin
    declare
        name VARCHAR(30) := 'inner';
    begin
        dbms_output.put_line(name);
    end;
end;
/

begin <<outer>>
    declare 
        name VARCHAR(30) := 'outer';
    begin
        declare
            name VARCHAR(30) := 'inner';
        begin
            dbms_output.put_line(outer.name);
            dbms_output.put_line(name);
        end;
    end;
end outer;
/