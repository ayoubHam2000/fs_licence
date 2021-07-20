set serveroutput on
set autoprint off

--using explicit cursor
/*
you declare explicit cursors in pl/sql when have a select statemnt that returns multiple rows.
you can process each row returned by the selected statement.

declare->open->fetch->close.

information can obtained by cursor %NOTFOUND %FOUND %ROWCOUNT %ISOPEN

* Hints when declaring a cursor
do not incude the INTO clause in the cursor declaration because it appears later in the FETCH statement
it processing rows in a specific sequence is required use the order by clause in the query
the cursor can be anu valid SELECT, INCLUDING JOINS, SUBQUERIES, and so on.

* declare a cursor
CURSOR cursor_name is
query
[order by];

* open a cursor
open cursor_name; it should be write in begin section
image -> ep30-open cursor detail.png 

* fetching data from a cursor
the fetch statement performs the following operations:
1.reads the data for the current row into the output pl/sql variables
2.advances the pointer to the next row in the active set
image -> ep30-fetching data from cursor.png

* closing the cursor
you can reopen the cursor if required
you can't reopen the cursor if it is alredy opened
it is possible to terminate the pl/sql block without closing cursors
there is a maximum limit on the number of open cursor per session OPEN_CURSORS = 50 by default

*/

declare 
    CURSOR c_cursor IS
    select * from COUNTRIES
    order by COUNTRY_NBR;

    v_col COUNTRIES%ROWTYPE;
    --v_col c_cursor%ROWTYPE; --also

BEGIN
    open c_cursor;

    loop
        fetch c_cursor into v_col;
        exit when c_cursor%notfound;
        DBMS_OUTPUT.put_line(v_col.country_ID);
    end loop;

    close c_cursor;

END;
/