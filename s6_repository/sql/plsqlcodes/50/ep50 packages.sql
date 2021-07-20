set serveroutput on
set autoprint off


-- create packge

create or replace function ft_squre
(nbr number)
return number
is
begin
  return nbr * nbr;
end;

-------------------

create or replace function ft_quabe
(nbr number)
return number
is
begin
  return nbr * nbr * nbr;
end;

-------------------

create or replace PACKAGE area
is

    function ft_squre (nbr number) return number;
    function ft_quabe (nbr number) return number;

end;


create or replace PACKAGE body area
is

    function ft_squre
    (nbr number)
    return number
    is
    begin
    return nbr * nbr;
    end;

    -------------------

    function ft_quabe
    (nbr number)
    return number
    is
    begin
    return nbr * nbr * nbr;
    end;


end;

drop function ft_squre;
drop function ft_quabe;

BEGIN
    DBMS_OUTPUT.PUT_LINE("A"  => area.ft_squre(5));
    DBMS_OUTPUT.PUT_LINE("A"  => area.ft_quabe(50));
END;
