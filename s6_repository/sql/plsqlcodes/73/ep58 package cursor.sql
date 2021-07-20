set serveroutput on


-- package cursor

create or replace package cur_pkg
is

    cursor c_emp is select * from COUNTRIES;

    procedure p_open;
    procedure p_close;
    procedure p_next_10;

end;

create or replace package body cur_pkg
is
    procedure p_open
    IS
    BEGIN
        if not c_emp%isopen then
            open c_emp;
        end if;
    END;

    PROCEDURE p_close
    IS
    BEGIN
        IF c_emp%isopen then
            close c_emp;
        end if;
    END;

    PROCEDURE p_next_10
    IS
    v_country COUNTRIES%rowtype;
    BEGIN
        for i in 1..20 LOOP
            fetch c_emp into v_country;
            DBMS_OUTPUT.PUT_LINE("A"  => v_country.country_nbr);
            if c_emp%notfound then
                DBMS_OUTPUT.PUT_LINE("A"  => 'no more');
                close c_emp;
                exit;
            end if;

        end loop;
    END;
    
END;

select text from user_errors where name = 'CUR_PKG';


execute cur_pkg.p_open;
execute cur_pkg.p_next_10;
execute cur_pkg.p_close;