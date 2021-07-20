set serveroutput on
set autoprint off

drop table EMP;
drop table DEPT;

------------------------------------------------------------------
--================================================================

create table EMP(
    nom VARCHAR2(30), 
    num NUMBER(10), 
    fonction varchar2(30), 
    n_sup NUMBER(10), 
    embauche NUMBER(10), 
    salaire NUMBER(10), 
    commission NUMBER(10), 
    n_dept NUMBER(10)
);

create table DEPT(
    n_dept NUMBER(10),
    nom VARCHAR2(30),
    lieu VARCHAR2(30)
);

insert into EMP values('ayoub', 1, 'fun1', 10, 10, 10, 10, 1);

select * from EMP;


------------------------------------------------------------------
--================================================================

CREATE OR REPLACE FUNCTION Calcul_Revenue_Annuel (nbr NUMBER)
return NUMBER
IS

    total NUMBER := 0;

begin

    for item in (select salaire, commission from EMP WHERE num = nbr) loop
        total := item.salaire + item.commission;
    end loop;

    return total;
end;

------------------

begin
    DBMS_OUTPUT.PUT_LINE(Calcul_Revenue_Annuel(1));
end;

------------------------------------------------------------------
--================================================================

CREATE OR REPLACE PROCEDURE display(ID NUMBER)
IS

    item EMP%ROWTYPE;

BEGIN

    select * into item from EMP where num = ID;
    DBMS_OUTPUT.PUT_LINE(item.nom || ' ' || item.fonction); 

END;


BEGIN
    display(1);
END;

------------------------------------------------------------------
--================================================================

CREATE OR REPLACE PROCEDURE N_EMP(n integer)
is

    fonction EMP.FONCTION%type;
    nom EMP.NOM%type;

BEGIN

    select * from EMP order by SALAIRE;
    if n = 0 or n > sql%rowcount then
        DBMS_OUTPUT.PUT_LINE('ERROR');
    

EXCEPTION

    

END;

BEGIN
    N_EMP(1);
END;

