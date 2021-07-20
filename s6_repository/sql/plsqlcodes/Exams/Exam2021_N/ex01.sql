-------------------------------------------------------
----################## Tables

create table PILOTE(
    Matricule varchar2(30),
    Nom varchar2(30),
    Ville varchar2(30),
    Age number,
    Salaire number,
    Primary key (Matricule)
);

create table VOL(
    Numvol number,
    DateV Date,
    Heure_depart Number,
    Heure_arrivee Number,
    Ville_depart varchar2(30),
    Ville_arrivee varchar2(30),
    primary key (Numvol)
);

create table ESCALE(
    Numescale Number,
    NumVol Number,
    Ville_Escale varchar2(30),
    Duree_escale Number,
    primary key (Numescale, NumVol),
    foreign key (Numvol) references VOL(Numvol)
);


-------------------------------------------------------
--q01

insert into PILOTE values('M01', 'Nom01', 'Ville01', 30, 1200);
insert into PILOTE values('M02', 'Nom02', 'Ville02', 40, 1200);
insert into PILOTE values('M03', 'Nom03', 'Ville03', 35, 1200);
insert into PILOTE values('M04', 'Nom04', 'Ville04', 20, 1200);

create or replace function sommeSalaire
return number
IS
    cursor c is (select Salaire from PILOTE where Age >= 30 and Age <= 40);
    som number := 0;
begin

    for item in c loop
        if item.Salaire is not null then
            som := som + item.Salaire;
        end if;
    end loop;

    return som;
end;

-------------------------------------------------------
--q02

declare
    total number;
begin
    select count(*) into total from PILOTE where AGE >= 30 and AGE <= 40;

    if total > 0 then
        DBMS_OUTPUT.PUT_LINE(sommeSalaire() / total);
    end if;
end;

-------------------------------------------------------
--q03

insert into VOL values(1, '21-OCT-2021', 20, 23, 'ville1', 'ville2');
insert into ESCALE values(1, 1, 'ville1', 1);
insert into ESCALE values(2, 1, 'ville3', 1);
insert into ESCALE values(3, 1, 'ville2', 1);

create or replace procedure itineraire
(Nvol number)
IS

    cursor c is (select Ville_Escale from ESCALE where NumVol = Nvol);
    numberOfVol number;
    
BEGIN

    select count(*) into numberOfVol from  ESCALE where NumVol = Nvol;

    for item in c loop
        if item.Ville_Escale is not null then
            DBMS_OUTPUT.PUT(item.Ville_Escale);
            if numberOfVol > 1 then
                DBMS_OUTPUT.PUT(' -> ');
            end if;
            numberOfVol := numberOfVol - 1;
        else
            numberOfVol := numberOfVol - 1;
        end if;
    end loop;
    DBMS_OUTPUT.PUT_LINE('');

END;

-------------------------------------------------------
--q4

insert into VOL values(2, '22-OCT-2021', 20, 23, 'ville1', 'ville2');
insert into VOL values(3, '21-OCT-2021', 10, 15, 'ville2', 'ville3');
insert into VOL values(4, '21-OCT-2021', 12, 17, 'ville5', 'ville6');

create or replace function nombreVolsdate
(laDate Date)
return Number
is

    res number;

BEGIN

    select count(*) into res from VOL where dateV = laDate;
    return res;

END;