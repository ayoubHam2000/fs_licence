package Exam2017.Ex05;

import java.util.InputMismatchException;
import java.util.Scanner;

public class GestionMaterielInfo {

    public static void main(String args[]){
        MaterielInfo[] materielInfos = new MaterielInfo[4];

        materielInfos[0] = new PC(1, new Personne("Ayoub", "123"));
        materielInfos[1] = new PC(1, new Personne("Alae", "123"));
        materielInfos[2] = new Reseau(0, "reseau1", "123", 2);
        materielInfos[3] = new Reseau(0, "reseau2", "123", 2);

        for(int i = 0; i < 4; i++)
            System.out.println("Equipement " + (i+1) + " : " + materielInfos[i].getType());

        Scanner scanner = new Scanner(System.in);
        try{
            int n = scanner.nextInt();
            System.out.println(materielInfos[n].configuration());
        }catch (InputMismatchException  | ArrayIndexOutOfBoundsException e){
            System.out.println("Error");
        }



    }

}
