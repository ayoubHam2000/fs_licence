-------------------------------------------------------
----################## Tables

drop table reservations;
drop table Client;
drop table Etape;
drop table LieuAvisiter;
drop table Circuit;

create table Circuit(
    identifiant integer,
    descriptif varchar2(30),
    villeDepart varchar2(30),
    paysDepart varchar2(30),
    villeArrivee varchar2(30),
    paysArrivee varchar2(30),
    dateDepart Date,
    nbPlaceDisponible integer,
    duree integer,
    prixInscription integer,
    primary key (identifiant) 
);

create table LieuAvisiter(
    numLieu integer,
    nomLieu varchar2(30),
    ville varchar2(30),
    pays varchar2(30),
    descriptif varchar2(30),
    prix integer,
    primary key (numLieu)
);

create table Etape(
    identifiant integer,
    ordre integer,
    numLieu integer,
    dateEtape date,
    duree integer,
    primary key (identifiant, ordre),
    foreign key (identifiant) references Circuit(identifiant),
    foreign key (numLieu) references LieuAvisiter(numLieu)
);


create table Client(
    numcli  integer,
    nom varchar2(30),
    primary key (numcli)
);


create table reservations(
    numcli integer,
    identifiant integer,
    nombrePlaces integer,
    primary key (numcli, identifiant),
    foreign key (numcli) references Client(numcli),
    foreign key (identifiant) references Circuit(identifiant)
);




-------------------------------------------------------
--q1

insert into CIRCUIT values(1, 'des1', 'ville1', 'maroc', 'ville5', 'maroc', '21-OCT-2021', 30, 5, 1200);

insert into LieuAvisiter values(1, 'lieu1', 'ville1', 'maroc', 'des1', 1200);
insert into LieuAvisiter values(2, 'lieu2', 'ville2', 'maroc', 'des1', 1200);
insert into LieuAvisiter values(3, 'lieu3', 'ville3', 'maroc', 'des1', 1200);
insert into LieuAvisiter values(4, 'lieu4', 'ville4', 'maroc', 'des1', 1200);
insert into LieuAvisiter values(5, 'lieu5', 'ville5', 'maroc', 'des1', 1200);

insert into Etape values(1, 1, 1, '21-OCT-2021', 5);
insert into Etape values(1, 2, 2, '22-OCT-2021', 5);
insert into Etape values(1, 3, 3, '23-OCT-2021', 5);
insert into Etape values(1, 4, 4, '24-OCT-2021', 5);
insert into Etape values(1, 5, 5, '25-OCT-2021', 5);

----

create or replace procedure infoCircuit
(identifiantC number)
is
    ville_depart varchar2(30);
    ville_darrivee varchar2(30);
    nombreEtape number;
begin
  
    select villeDepart, villeArrivee 
    into ville_depart, ville_darrivee 
    from Circuit
    where identifiant = identifiantC;

    select count(*) into nombreEtape from Etape where IDENTIFIANT = identifiantC;

    DBMS_OUTPUT.PUT('Information sur le circuit : ');
    DBMS_OUTPUT.PUT(identifiantC);
    DBMS_OUTPUT.PUT(' : ' || ville_depart || ',' || ville_darrivee);
    DBMS_OUTPUT.PUT(', '  || nombreEtape  || ' etape(s)');
    DBMS_OUTPUT.PUT_LINE('');

end;

-------------------------------------------------------
--q2

select * from LIEUAVISITER;
insert into LieuAvisiter values(6, 'lieu6', 'ville6', 'maroc', 'des1', 1200);

---

create or replace procedure deleteLieu
(numL number)
is

    isExist number;

BEGIN

    select count(*) into isExist from LieuAvisiter where numL in 
    (select numLieu from etape);

    if isExist = 0 then
        delete from LieuAvisiter where numLieu = numL;
    end if;

EXCEPTION
    when others then
        DBMS_OUTPUT.PUT_LINE('error');
END;

-------------------------------------------------------
--q3


insert into CIRCUIT values(2, 'des1', 'ville1', 'maroc', 'ville5', 'maroc', date '2021-09-07', 30, 5, 1200);
insert into CIRCUIT values(3, 'des1', 'ville1', 'maroc', 'ville5', 'maroc', date '2021-07-09', 30, 5, 1200);

select * from CIRCUIT;

select identifiant, dateDepart - SYSDATE from Circuit
where  dateDepart - SYSDATE < 62;

----

create or replace procedure bloqueRes
(N number)
is

    cursor c is 
    select identifiant from Circuit
    where  dateDepart - SYSDATE < N;

    counter number := 0;

BEGIN

    for item in c loop
        -- identifiant par default est != null
        counter := counter + 1;
        update Circuit set nbPlaceDisponible = 0 where identifiant = item.identifiant;
    end loop;

    if counter = 0 then
        DBMS_OUTPUT.PUT_LINE(q'[qu'aucune ligne n'est modifiee]');
    else
        DBMS_OUTPUT.PUT_LINE('le nombre de circuits modifies est : ' || counter);
    end if;

END;
