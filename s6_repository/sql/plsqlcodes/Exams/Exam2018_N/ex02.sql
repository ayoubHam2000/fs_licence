set serveroutput on
set autoprint off



DECLARE

    TYPE T_Exams IS VARRAY(10) OF NUMBER;

    vt_exams T_Exams := T_Exams(10.5, 15, 13);

    m NUMBER(10) := 0;

BEGIN
    vt_exams.extend(7);

    vt_exams(4) := 10;
    vt_exams(5) := 10;
    vt_exams(6) := 12.33;
    vt_exams(7) := 10;
    vt_exams(8) := 10;
    vt_exams(9) := 10;
    vt_exams(10) := 10;

    for i in 1..vt_exams.count loop
        m := m + vt_exams(i);
    end loop;

    m := m / vt_exams.count;
    DBMS_OUTPUT.put_line('Moyeen : ' || m);

END;