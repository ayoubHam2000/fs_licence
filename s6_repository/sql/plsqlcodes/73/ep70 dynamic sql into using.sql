set serveroutput on
set autoprint off

-- into using

CREATE OR REPLACE FUNCTION get_the_country
(p_id number)
RETURN countries%rowtype
IS
    v_coutry_rec countries%rowtype;
    v_query varchar2(1000);
BEGIN
    v_query := 'select * from countries where country_nbr = :1';
    execute immediate v_query into v_coutry_rec using p_id;
    return v_coutry_rec;
END;

-------------------------------------

declare
    coutry_rec countries%rowtype;
begin
  
    coutry_rec := get_the_country(2);
    DBMS_OUTPUT.PUT_LINE(coutry_rec.country_id);
    

end;
