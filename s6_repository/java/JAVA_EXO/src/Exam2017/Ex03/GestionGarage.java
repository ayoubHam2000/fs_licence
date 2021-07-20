package Exam2017.Ex03;

import java.util.Scanner;

public class GestionGarage {

    public static void main(String[] args){
        Service[] services = new Service[3];

        services[0] = new Service("Lavage", 60, 30);
        services[1] = new Service("Vidange", 15, 20);
        services[2] = new Service("Batterie", 10, 10);

        Scanner scanner = new Scanner(System.in);
        System.out.println("1 - Lavage");
        System.out.println("2 - Vidange");
        System.out.println("3 - Batterie");


        while (true){
            System.out.print("Choisissez vous service 1-3: ");
            if(scanner.hasNextInt()){
                int choix = scanner.nextInt();
                if (choix >= 1 && choix <= 3){
                    System.out.println(services[choix]);
                    break;
                }
            }
            scanner.nextLine();
        }

    }

}
