SET SERVEROUTPUT ON;
SET AUTOPRINT OFF;

-- IF statment

declare
v_no number := &v;
begin

IF v_no between 10 and 40 then
    dbms_output.put_line('10..40 good');
ELSIF v_no between 40 and 60 then -- v_no > 40
    dbms_output.put_line('40..60 nice'); 
ELSE
    dbms_output.put_line('not in 10..60 other');
END IF;

end;
/