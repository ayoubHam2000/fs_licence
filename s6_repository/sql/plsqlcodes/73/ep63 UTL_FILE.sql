set serveroutput on

--alter session set container=pdborcl;
-- you must use an user as administrator to get privileges
-- xe as sysdba
create directory mydir as 'E:\Documants\mozilla dowload\S6\4-database\plsqlcodes\test';
select * from countries;

declare
    l_file UTL_FILE.file_type;
    l_location VARCHAR2(100) := 'MYDIR';
    l_filename VARCHAR2(100) := 'data.txt';
    l_text VARCHAR2(32767);
BEGIN

    l_file := UTL_FILE.fopen(l_location, l_filename, 'r');

    loop
        UTL_FILE.get_line(l_file, l_text);
        DBMS_OUTPUT.PUT_LINE('line : ' || l_text);
    end loop;

EXCEPTION
    when NO_DATA_FOUND then
        DBMS_OUTPUT.PUT_LINE('end file');
        UTL_FILE.fclose(l_file);
END;
/

declare
    l_file UTL_FILE.file_type;
    l_location VARCHAR2(100) := 'MYDIR';
    l_filename VARCHAR2(100) := 'newdata.txt';
BEGIN

    l_file := UTL_FILE.fopen(l_location, l_filename, 'w');
    for i in 1..200 loop
        UTL_FILE.put_line(l_file, i);
    end loop;

    UTL_FILE.fclose(l_file);

    l_file := UTL_FILE.fopen(l_location, l_filename, 'a');
    UTL_FILE.put_line(l_file, 'Other Line ...');
    UTL_FILE.fclose(l_file);

END;
/