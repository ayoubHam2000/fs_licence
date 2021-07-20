package TP1;

import java.util.Locale;
import java.util.Scanner;

public class Ex01 {

    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.print("Entrez la largeur: ");
        double largeur = scanner.nextInt();

        System.out.print("Entrez la hauteur: ");
        double hauteur = scanner.nextInt();
        //scanner.close(); close scanner here lead to an error  when i want to open it again in calculer

        boolean donneesOk = testerDonnes(largeur, hauteur);

        if(donneesOk){
            calculer(largeur, hauteur);
        }else{
            afficherErreur();
        }
    }

    private static void calculer(double largeur, double hauteur){
        char taskType;
        Scanner scanner = new Scanner(System.in);

        do {
            System.out.print("Surface ('s/S') ou périmètre ('p/P')?: ");
            taskType = scanner.next().charAt(0);
        }while (taskType != 's' && taskType != 'S' && taskType != 'p' && taskType != 'P');
        scanner.close();


        if(taskType == 's' || taskType == 'S'){
            System.out.println("la surface est : " + (largeur * hauteur));
        }else{
            System.out.println("la largeur est : " + (largeur + hauteur) * 2);
        }

    }

    private static boolean testerDonnes(double largeur, double hauteur){
        return largeur >= 0 && hauteur >= 0;
    }

    private static void afficherErreur(){
        System.out.println("Erreur: vous avez introduit une largeur ou une hauteur négative!");
    }

}
