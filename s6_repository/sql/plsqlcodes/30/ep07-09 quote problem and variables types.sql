SET SERVEROUTPUT ON;


BEGIN

-- ep 08
dbms_output.put_line('father''s day'); -- double quote means single quote in output
dbms_output.put_line(q'[father's day]'); -- you can do the same thing with q
-- you can change [ be what ever char, but it should be the same char at the end

END;
/

-- ep 09
-- see variables types.png
-- see at %type.png
