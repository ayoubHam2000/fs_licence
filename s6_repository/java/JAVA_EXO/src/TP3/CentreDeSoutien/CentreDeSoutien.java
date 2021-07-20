package TP3.CentreDeSoutien;

import java.util.InputMismatchException;
import java.util.Scanner;

public class CentreDeSoutien {

    public static void main(String[] args) {
        Matiere[] matieres = new Matiere[3];
        Enseignant[] enseignants = new Enseignant[3];
        Eleve[] eleves = new Eleve[3];
        Directeur directeur = new Directeur("Alaoui", "Mohammed", "Alaoui123", "123");

        try {
            matieres[0] = new Matiere(Matiere.MATH);
            matieres[1] = new Matiere(Matiere.PHYSIC);
            matieres[2] = new Matiere(Matiere.SVT);

            enseignants[0] = new Enseignant("ayoub", "ben hamou", matieres[0]);
            enseignants[1] = new Enseignant("alae", "dine", matieres[1]);
            enseignants[2] = new Enseignant("achraf", "zrouki", matieres[2]);

            eleves[0] = new Eleve("elev1", "prenom1", 1);
            eleves[1] = new Eleve("elev2", "prenom1", 2);
            eleves[2] = new Eleve("elev3", "prenom1", 3);

            System.out.println("-------------------- Liste des Personne -------------");
            directeur.statut();

            for (Personne item : enseignants) {
                item.statut();
            }
            for (Personne item : eleves) {
                item.statut();
            }
            System.out.println("-------------------- Liste des Matieres -------------");
            for (Matiere item : matieres) {
                System.out.println(item);
            }


            System.out.println("-------------------- Liste des Matieres -------------");

            System.out.println("Mathématiques : 0\nPhysique : 1\nScience de la vie : 2");
            System.out.print("votre choix : ");
            Scanner scanner = new Scanner(System.in);
            int choix = scanner.nextInt();
            System.out.println(matieres[choix]);

        }catch (ArrayIndexOutOfBoundsException | InputMismatchException e){
            e.printStackTrace();
        } catch(Exception e){
            e.printStackTrace();
        }

    }

}
