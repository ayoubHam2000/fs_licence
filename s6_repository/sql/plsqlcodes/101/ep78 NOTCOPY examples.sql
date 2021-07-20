set serveroutput on
set autoprint off


-- NOTCOPY examples

create or replace procedure pass_by_value
(p_id IN OUT number notcopy )
is
begin

    p_id := p_id * 10;
    if p_id > 100 then
        raise value_error;
    end if;

end;

declare
v number := 20;
-- 20 without notcopy => 20
-- 20 with notcopy => 200
-- v number(20) --> 20 scalar size
-- v number not null -> 20 nullconstrainte
-- also implicite conversion ==> 20
begin
  
  pass_by_value(v);
  DBMS_OUTPUT.PUT_LINE('NO ISSUE '|| v);
exception
  when Others then
    DBMS_OUTPUT.PUT_LINE('EXCEPTION ' || v);

end;



---------------------------------------------------------
-- test the time consumed by the two methods

create or replace package nocopy_test
IS
    type number_t is table of varchar2(32767) index by BINARY_INTEGER;
    procedure pass_by_vale(nums in out number_t);
    procedure pass_by_refernce(nums in out nocopy number_t);
    procedure init;
end;

create or replace package body nocopy_test
IS
    l_numbers number_t;
    c_array_size number := 1000000;
    c_it number := 20;

------------------------

    procedure pass_by_vale
    (nums in out number_t)
    is
        indx pls_integer;
    begin
        indx := nums.count;
    end;

------------------------

    procedure pass_by_refernce(nums in out nocopy number_t)
    is
        indx pls_integer;
    begin
        indx:=nums.count;
    end;

------------------------

    procedure init
    is
    begin

        l_numbers.delete;

        for i in 1..c_array_size loop
            l_numbers(i) := 's' || i;
        end loop;

        dbms_output.put_line('start '||to_char(sysdate,'hh:mi:ss') );
       
        for i in 1..1000 loop
            pass_by_vale(l_numbers);
        end loop;
        
        dbms_output.put_line('end '||to_char(sysdate,'hh:mi:ss') );

        dbms_output.put_line('start '||to_char(sysdate,'hh:mi:ss'));

        for i in 1..1000 loop
            pass_by_refernce(l_numbers);
        end loop;

            dbms_output.put_line('end '||to_char(sysdate,'hh:mi:ss'));
        
    end;

end;

begin
    nocopy_test.init;
end;