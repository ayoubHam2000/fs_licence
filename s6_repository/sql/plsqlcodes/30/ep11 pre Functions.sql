SET SERVEROUTPUT ON;



--CREATE TABLE TEST_TAB(name VARCHAR(30), nbr INT);
--insert into test_tab values('ayoub', 20);
--insert into test_tab values('alae', 30);


--Functions
/*
substr(var, 1, 5)
lenth(var)
nvl(var, 0)
add_months(hiredate, 3)

Not available in procedural statements
DECODE
Group functions
but you can use it in SQL statement inside PL/SQL 
*/

-- Conversion
/*
TO_CHAR
TO_DATE
TO_NUMBER
TO_TIMESTAMP
*/


declare
name test_tab.name%type;
nbr test_tab.nbr%type;

begin

select * into name, nbr from test_tab where name = 'ayoub';
dbms_output.put_line(name);
dbms_output.put_line(nbr);
dbms_output.put_line('name : '|| name || '-> age : ' || nbr);
dbms_output.put_line('name length: ' || length(name));
dbms_output.put_line('substr(name, 0, 3) : ' || substr(name, 0, 3));

end;
/


declare
v_date date := sysdate;
v_sal number := 12345;
begin

dbms_output.put_line(v_date);
dbms_output.put_line(v_date + 8);
dbms_output.put_line(TO_CHAR(v_date, 'dd-mm-yyyy hh:mi:ss am'));
dbms_output.put_line(add_months(v_date, 3));
dbms_output.put_line(TO_CHAR(v_sal, '$999,999'));

end;
/

--ep11-Delimiters and compounds symbols.png
