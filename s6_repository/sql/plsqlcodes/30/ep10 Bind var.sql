SET SERVEROUTPUT ON;

--Bind var

--CREATE TABLE TEST_TAB(name VARCHAR(30), nbr INT);
--insert into test_tab values('ayoub', 20);
--insert into test_tab values('alae', 30);


set AUTOPRINT ON;
variable v_sal number;
--Exec :v_sal :=  50;
begin
    select nbr into :v_sal from test_tab where name = 'alae';
end;
/

--print v_sal;



-- ep 09
-- see variables types.png
-- see at %type.png

-- ep 10
-- LOB data types.png
-- see composite data types.png