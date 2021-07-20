set serveroutput on
set autoprint off


-- loop
/*
---> BASIC LOOP
LOOP
    statement1;
    ...
    EXIT [WHEN condition];
END LOOP;

---> while loop
WHILE condition LOOP
    statement1
    statement2
    ...
    statementN
END LOOP;

---> FOR LOOP
FOR counter IN [REVERSE] lower_bound..upper_bound LOOP
    statement1
    statement2
    ...
    statementN
END LOOP;


*/

/*
-- Basic Loop

declare
v_var number := 0;

begin

LOOP
    v_var := v_var + 1;
    dbms_output.put_line(v_var);
    exit when v_var = 5;
END LOOP;

dbms_output.put_line('-----');
v_var := 0;
LOOP
    v_var := v_var + 1;
    dbms_output.put_line(v_var);
    IF v_var = 3 then 
        exit;
    END IF;
END LOOP;

end;
/
*/

/*
begin

for i in 1..5 loop
    dbms_output.put_line('i = ' || i);
end loop;

dbms_output.put_line('reverse -----');

for i in reverse 1..5 loop
    dbms_output.put_line('i = ' || i);
end loop;

dbms_output.put_line('9/2 -----');

for i in reverse 1..4.4 loop -- ? if x < ?.5 |||| ? + 1 if x >= ?.5 
    dbms_output.put_line('i = ' || i);
end loop;
end;
/
*/

declare
    v_var varchar2(100);
begin
    for i in  1..6 loop
        for j in  1..i loop
            v_var := v_var || '*';
        end loop;
        dbms_output.put_line(v_var);
        v_var := null;
    end loop;
end;
/






