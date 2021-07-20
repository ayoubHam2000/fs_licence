set serveroutput on
set autoprint off

-- case expression
--CREATE TABLE TEST_TAB(name VARCHAR(30), nbr INT);
--insert into test_tab values('ayoub', 25);
--insert into test_tab values('alae', 30);


/*
CASE selector
    WHEN expression1 THEN result1
    WHEN expression2 THEN result2
    ...
    WHEN expressionN THEN resultN
    [ELSE resultN+1]
END;

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ...
    WHEN conditionN THEN resultN
    [ELSE resultN+1]
END;
*/

select name, CASE nbr
                WHEN 25 then 'cool'
                when 30 then 'nice'
                else 'N/A'
                END tag
            , nbr
 from test_tab;

 select name, CASE 
                WHEN nbr = 25 then 'cool'
                when nbr = 30 then 'nice'
                else 'N/A'
                END tag
            , nbr
 from test_tab;

 /*
 NAME                           TAG         NBR
------------------------------ ---- ----------
ayoub                          cool         25
alae                           nice         30
 */


 declare
 v_var number;
 v_out varchar2(40);
 begin

v_out := case 
         when v_var is null then 'nbr = null'
         when v_var = 20 then 'nbr = 20'
         when v_var = 30 then 'nbr = 30'
         else 'other'
         end;
dbms_output.put_line(v_out);
end;
/