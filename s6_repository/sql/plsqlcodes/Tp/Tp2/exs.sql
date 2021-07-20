set serveroutput on
set autoprint off

-- ex01

declare 
    a number(1) := 5;
    b number(1) := 2;
    c number(1);
begin
    c := a;
    a := b;
    b := c;
    DBMS_OUTPUT.PUT_LINE(a);
    DBMS_OUTPUT.PUT_LINE(b);
end;

-- ex02

declare
    a number(2) := 10;
    r number(9) := 1;
begin
    loop
        exit when a = 0;
        r := r * a;
        a := a - 1;
    end loop;
    DBMS_OUTPUT.PUT_LINE(r);
end;

-- ex03

DECLARE
    a number(2) := 84;
    b number(2) := 48;
    pgcd number(2);
begin

    loop
        pgcd := mod(a, b);
        exit when pgcd = 0;
        a := b;
        b := pgcd;
    end loop;
    DBMS_OUTPUT.PUT_LINE(b);

end;


-- ex04


declare
    type tab is varray(50) of number;

    t tab;
    tmp number(4);
    demi number(4);

begin

    t := tab();
    t.extend(20);
    

    for i in 1..20 loop
        t(i) := i * i;
    end loop;

    if mod(t.count, 2) = 1 then
        demi := t.count / 2 - 1;
    else
        demi := t.count / 2;
    end if;

    for i in 1..demi LOOP
        tmp := t(i);
        t(i) := t(t.count - i + 1);
        t(t.count - i + 1) := tmp;
    end loop;

    for i in 1..t.count loop
        DBMS_OUTPUT.PUT_LINE(t(i));
    end loop;
    

end;


-- ex05

DECLARE 
TYPE Cli IS RECORD 
(
numcli client.NC%type,
nomcli client.Nom%type,
prenomcli client.Prenom%type,
DNcli client.DN%type,
CPcli client.CP%type,
Villecli client.Ville%type 
);
v_Cli  Cli;
BEGIN
select NC,Nom,Prenom,DN,CP,Ville 
into
v_Cli.numcli,v_Cli.nomcli,v_Cli.prenomcli,v_Cli.DNcli,v_Cli.CPcli,v_Cli.Villecli 
from Client
where DN='12-OCT-1978';
 DBMS_OUTPUT.PUT_LINE(' le Client '||v_Cli.numcli||' avec le Nom '||v_Cli.nomcli||' et le Prenom '||v_Cli.prenomcli ||' N en '||v_Cli.DNcli||'  '|| v_Cli.Villecli||' avec Un code Postal '||v_Cli.CPcli) ;
END; 


--ex06


create or replace function calcule_ttc(client number)
return number
is
    result number := 0;
begin

    for item in
    (select PU, QTE from client c, produit p, commande
    where commande.NP = p.NP and c.NC = client and desig='Portable')
    loop
        result := result + item.PU * item.QTE;
    end loop;
    return result * 1.2;
end;

--- cursor

create or replace function calcule_ttc(client number)
return number
is
    result number := 0;

    cursor PT(cl number) is (select PU, QTE from client c, produit p, commande
    where commande.NP = p.NP and c.NC = cl and desig='Portable');

begin

    for item in PT(1) loop
        result := result + item.PU * item.QTE;
    end loop;
    return result * 1.2;
end;
