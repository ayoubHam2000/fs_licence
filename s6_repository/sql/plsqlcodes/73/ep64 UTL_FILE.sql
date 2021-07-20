set serveroutput on

create or replace procedure read_any_file
(p_dir in varchar2, p_file_name in varchar2)
is
l_file UTL_FILE.file_type;
l_text VARCHAR2(32767);
begin
  
    l_file := UTL_FILE.fopen(p_dir, p_file_name, 'r');
    loop
        UTL_FILE.get_line(l_file, l_text);
        DBMS_OUTPUT.PUT_LINE(l_text);
    end loop;

EXCEPTION
    WHEN UTL_FILE.invalid_operation then
        DBMS_OUTPUT.PUT_LINE('CAN NOT OPEN THE FILE, INVALIDE FILE NAME ');
    WHEN UTL_FILE.READ_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('CAN NOT read the file ');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('end file ');
        UTL_FILE.fclose(l_file);

end;

execute read_any_file('MYDIR', 'newdata.txt');

select * from all_directories;