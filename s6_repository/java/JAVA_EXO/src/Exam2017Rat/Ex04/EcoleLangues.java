package Exam2017Rat.Ex04;

import java.util.InputMismatchException;
import java.util.Scanner;

public class EcoleLangues {

    public static void main(String[] args) {
        Langue[] langues = new Langue[3];
        Professeur[] professeurs = new Professeur[3];
        Etudiant[] etudiants = new Etudiant[3];

        try{
            langues[0] = new Langue("Francais", 1000, 1500, 2000);
            langues[1] = new Langue("Anglais", 1500, 2000, 2500);
            langues[2] = new Langue("Allemand", 2000, 2500, 3000);

            professeurs[0] = new Professeur("Ayoub", "Ben Hamou", langues[0]);
            professeurs[1] = new Professeur("Safae", "ouezgane", langues[1]);
            professeurs[2] = new Professeur("Khawla", "ben", langues[2]);

            etudiants[0] = new Etudiant("etudiant1", "nom", 1);
            etudiants[1] = new Etudiant("etudiant1", "nom", 2);
            etudiants[2] = new Etudiant("etudiant1", "nom", 3);

            for(Personne p : professeurs)
                p.statut();
            for(Personne p : etudiants)
                p.statut();
            for(Langue langue : langues)
                System.out.println(langue);

            try {
                Scanner scanner = new Scanner(System.in);
                System.out.println("Francais : 0\nAnglais : 1\nAllemand : 2");
                System.out.print("Votre Choix : ");
                int choix = scanner.nextInt();
                System.out.println(langues[choix]);

            }catch (InputMismatchException | ArrayIndexOutOfBoundsException e){
                e.printStackTrace();
            }


        }catch (Exception e){

            e.printStackTrace();

        }



    }

}
