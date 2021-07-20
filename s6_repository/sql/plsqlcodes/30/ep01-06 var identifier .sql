SET SERVEROUTPUT ON;

--var identifier [constant] datatype [not null] [ =: | default expresion ]
--when you use not null you should give a value

DECLARE
    v_date date;
    n number default 5;
    b number default 6;
    str varchar2(100) not null := 'khalide';
begin
    dbms_output.put_line('hello world');
    dbms_output.put_line(b|| ' + '|| n );
    dbms_output.put_line(str);
    n := 20;
    v_date := '10-May-2012';
    str := 'new Name';
    dbms_output.put_line(n);
    dbms_output.put_line(v_date);
    dbms_output.put_line(str);
    dbms_output.put_line('End');
    v_date := v_date + 10; --add to date 20-May-2012
    dbms_output.put_line(v_date);
end;
/