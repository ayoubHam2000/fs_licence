-- tyal l groupe
Corrigé Exercice 1: /question 1 / question 2 

DECLARE
     CURSOR curseur1 IS SELECT Salaire FROM Pilote
               WHERE (Age >= 30 AND Age <=40);
     salairePilote  Pilote.Salaire%TYPE;
     sommeSalaires  NUMBER(11,2) := 0;
     moyenneSalaires  NUMBER(11,2);
BEGIN
     OPEN curseur1;
     LOOP
          FETCH curseur1 INTO salairePilote;
          EXIT WHEN (curseur1%NOTFOUND OR curseur1%NOTFOUND IS NULL);
          sommeSalaires := sommeSalaires + salairePilote;
     END LOOP;
     moyenneSalaires := sommeSalaires / curseur1%ROWCOUNT;
     CLOSE curseur1;
     DBMS_OUTPUT.PUT_LINE(‘Moyenne salaires (pilotes de 30 à 40 ans) : ’ || 
          moyenneSalaires);
END;
  /question 3 
SQL> ACCEPT s_nde PROMPT ‘Nombre d’escales : ’
DECLARE
     numEscaleCourante Escales.Numescale%TYPE;
     derniereEscale Escales.Numescale%TYPE;
     escaleCourante Escales.Ville_escale%TYPE;
     dureeEscaleCourante Escales.Duree_escale%TYPE;
     prochaineDestination Vol.Ville_arrivee%TYPE;
     numeroVol Vol.Numvol%TYPE;
     heureDepart Vol.Heure_depart%TYPE;
     destinationFinale Vol.Ville_arrivee%TYPE := ‘Paris’;
BEGIN
     numEscaleCourante := 1;
     derniereEscale := &s_nde;
     IF (derniereEscale > 8) THEN
          DBMS_OUTPUT.PUT_LINE(‘Au maximum 8 escales !’);
     ELSIF (derniereEscale < 1) THEN
          DBMS_OUTPUT.PUT_LINE(‘Au minimum 1 escale !’);
     ELSE
          LOOP
               SELECT Ville_escale, Duree_escale
                    INTO escaleCourante, dureeEscaleCourante
                    FROM Escales WHERE (Numescale = numEscaleCourante);
               IF (numEscaleCourante = derniereEscale) THEN
                    prochaineDestination := destinationFinale;
               ELSE
                    SELECT Ville_escale INTO prochaineDestination
                             FROM Escales
                             WHERE (Numescale = numEscaleCourante + 1);
               END IF;
               SELECT Numvol, Heure_depart INTO numeroVol, heureDepart
                              FROM Vol WHERE (Ville_depart = escaleCourante AND
                                             Ville_arrivee = prochaineDestination);
               DBMS_OUTPUT.PUT_LINE(‘A partir de ’ || escaleCourante ||
                              ‘ (durée’ || dureeEscaleCourante ||
                              ‘ jours) prendre vol ’ || numeroVol ||
                              ‘ à ’ || heureDepart);
               numEscaleCourante := numEscaleCourante + 1;
               EXIT WHEN (numEscaleCourante > derniereEscale);
          END LOOP;
     END IF;
END;


/question 4 
CREATE OR REPLACE PACKAGE paquetageEscales
AS
PROCEDURE proposerVols(nbEscales IN Escales.Numescale%TYPE);
PROCEDURE trouverEscales(villeBase IN Vol.Ville_depart%TYPE,
  nbMinEscales IN INTEGER,
  nbMaxEscales IN INTEGER);
END paquetageEscales;

CREATE OR REPLACE PACKAGE BODY paquetageEscales
AS
PROCEDURE proposerVols(nbEscales IN Escales.Numescale%TYPE)
IS
nbMaxEscales NUMBER := 0;
escaleCourante Escales.Ville_escale%TYPE;
prochaineDestination Vol.Ville_arrivee%TYPE;
dureeEscaleCourante Escales.Duree_escale%TYPE;
numEscaleCourante Escales.Numescale%TYPE;
volAPrendre Vol%ROWTYPE;
CURSOR curseur1 IS SELECT * FROM Vol
WHERE (Ville_depart = escaleCourante AND
 Ville_arrivee = prochaineDestination);
BEGIN
numEscaleCourante := 1;
nbEscales:= &s_nde;
SELECT COUNT(*) INTO nbMaxEscales FROM Pilotes; 
IF (nbEscales > nbMaxEscales) THEN
DBMS_OUTPUT.PUT_LINE(‘Au maximum ’ || nbMaxEscales || ‘ escales !’);
ELSIF (nbEscales < 1) THEN
DBMS_OUTPUT.PUT_LINE(‘Au minimum 1 escale !’);
ELSE
<<boucleEscales>>
LOOP
SELECT Ville_escale, Duree_escale
INTO escaleCourante, dureeEscaleCourante
FROM Escales WHERE (Numescale = numEscaleCourante);
IF (numEscaleCourante = nbEscales) THEN
prochaineDestination := destinationFinale;
ELSE
SELECT Ville_escale INTO prochaineDestination
FROM Escales
WHERE (Numescale = numEscaleCourante + 1);
END IF;
OPEN curseur1;
FETCH curseur1 INTO volAPrendre;
IF (curseur1%NOTFOUND OR curseur1%NOTFOUND IS NULL) THEN
DBMS_OUTPUT.PUT_LINE(‘Aucun vol disponible de ’ ||
escaleCourante);
EXIT boucleEscales;
ELSE  -- retourner au maximum 10 propositions de vol
WHILE (curseur1%FOUND AND curseur1%ROWCOUNT <= 10) LOOP
DBMS_OUTPUT.PUT_LINE(‘A partir de ’ ||
escaleCourante || ‘ (durée’ ||
dureeEscaleCourante ||
‘ jours) prendre vol ’ ||
volAPrendre.Numvol ||
‘ à ’ || volAPrendre.Heure_depart);
FETCH curseur1 INTO volAPrendre;
END LOOP;
END IF;
CLOSE curseur1;
numEscaleCourante := numEscaleCourante + 1;
EXIT WHEN (numEscaleCourante > nbEscales);
END LOOP;
END IF;
EXCEPTION
WHEN TOO_MANY_ROWS THEN OR NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE(‘La table des escales est mal définie !’);
END proposerVols; 
PROCEDURE trouverEscales(villeBase IN Vol.Ville_depart%TYPE,
  nbMinEscales IN INTEGER, nbMaxEscales IN INTEGER)
IS
…
END trouverEscales;

END paquetageEscales;  
