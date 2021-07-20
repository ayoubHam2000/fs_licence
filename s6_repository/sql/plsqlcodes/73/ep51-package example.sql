set serveroutput on
set autoprint off

drop table student;

create table student(
    student_id number,
    first_name varchar2(100),
    birthday date,
    constraint student_pk primary key (student_id)
)

drop squence student_seq

create sequence student_seq;

create or replace package General_student
is
    procedure insert_student
    (p_first_name varchar2, p_birthday date);

    procedure delete_student
    (p_student_id number);

    function get_name
    (p_student_id number)
    return varchar2;

end;

create or replace package body General_student
IS

    procedure insert_student
    (p_first_name varchar2, p_birthday date)
    IS
    BEGIN
        insert into student
        values (student_seq.nextval, p_first_name, p_birthday);
        commit;
    Exception
        when others then
            dbms_output.put_line(sqlcode);
            dbms_output.put_line(sqlerrm);
    END;

    procedure delete_student
    (p_student_id number)
    is
    BEGIN
        delete from student where student_id = p_student_id;
        commit;
    END;

    Function  get_name
    (p_student_id number)
    return varchar2
    IS
    v_name student.first_name%type;
    BEGIN

        select FIRST_NAME into v_name from student where student_id = p_student_id;
        return v_name;

    Exception
        when others then
            return null;

    END;

END;


-------------------------------------------------------------

select * from student;

execute General_student.insert_student('ayoub', '10-may-2000');
execute General_student.insert_student('samer', '11-may-2000');

execute General_student.delete_student(2);

select General_student.get_name(2) from DUAL;