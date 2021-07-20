set serveroutput on
set autoprint off

--%NOTFOUND %FOUND %ROWCOUNT %ISOPEN

/*
ROWCOUNT : number of fetched elements
ISOPEN : ewturn True if the cursor is open 
NOTFOUND : return True if the cursor not pointe on a element
FOUND : return True if the cursor pointe on a element

*/

-- for cursor

declare

    CURSOR c_cursor is
    select * from countries
    order by country_nbr;

begin
  
    for i in c_cursor loop
        dbms_output.put_line(i.country_id);
    end loop;

end;
/

--other why

begin
  
    for i in (select * from countries order by country_nbr) loop
        dbms_output.put_line(i.country_id);
        --you can update here of cource
    end loop;

end;
/