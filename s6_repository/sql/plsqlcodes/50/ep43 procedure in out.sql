set serveroutput on
set autoprint off

-- procedure in out variable
-- 971505914988 -> 971(50)5914988

CREATE OR REPLACE PROCEDURE format_tel
(
    v_TEL in out VARCHAR2
)
IS
BEGIN

    v_tel := substr(v_tel, 1, 3) || '(' || substr(v_tel, 4, 2) || ')' || substr(v_tel, 6);

END;


variable b_number VARCHAR2(20);

execute :b_number := '971505914988';
print b_number;

execute format_tel(:b_number);

print b_number;