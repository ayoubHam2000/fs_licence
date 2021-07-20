set serveroutput on
set autoprint off

--cursor with parameters
--Parameter data type are the same as those for scalar variables, but you do not give them sizes

declare
    cursor c_emp_cursor (s NUMBER, e NUMBER) is
    SELECT * from countries where country_nbr <= e and country_nbr >= s order by COUNTRY_NBR;

    results countries%rowtype;
begin
  open c_emp_cursor(8, 10);

    loop
        fetch c_emp_cursor into results;
        exit when c_emp_cursor%notfound;
        dbms_output.put_line(results.country_nbr);
    end loop;

  close c_emp_cursor;
end;
/


-- do it again using for loop


declare

    cursor c_emp_cursor (s NUMBER, e NUMBER) is
    SELECT * from countries where country_nbr <= e and country_nbr >= s order by COUNTRY_NBR;

begin
    for item in c_emp_cursor(1, 20) loop

        dbms_output.put_line(item.country_nbr);

    end loop;
end;
/