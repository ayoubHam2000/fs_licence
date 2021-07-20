package TP2.EX01;

import java.util.Scanner;

public class EX01 {

    public static void main(String[] argv){
        Point p1 = saisirPoint("p1");
        Point p2 = saisirPoint("p2");
        Point p3 = saisirPoint("p3");
        TroisPoints tp = new TroisPoints(p1, p2, p3);

        System.out.println("Détails : ");
        System.out.println("p1 = " + p1);
        System.out.println("p2 = " + p2);
        System.out.println("p3 = " + p3);

        System.out.println("les milieux : ");
        System.out.println("Milieux(p1, p2) = " + p1.calculerMilieu(p2));
        System.out.println("Milieux(p1, p3) = " + p1.calculerMilieu(p3));
        System.out.println("Milieux(p2, p3) = " + p2.calculerMilieu(p3));

        System.out.println("les Distances : ");
        System.out.println("Distance(p1, p2) = " + p1.calculerDistance(p2));
        System.out.println("Distance(p1, p3) = " + p1.calculerDistance(p3));
        System.out.println("Distance(p2, p3) = " + p2.calculerDistance(p3));

        System.out.println("sont alignés : " + tp.sontAlignes());
        System.out.println("forment un triangle isocèle : " + tp.estIsocele());

    }

    public static Point saisirPoint(String name){
        double x;
        double y;
        Scanner scanner = new Scanner(System.in);
        System.out.print(name + "(x) = ");
        x = scanner.nextDouble();

        System.out.print(name + "(y) = ");
        y = scanner.nextDouble();

        return new Point(x, y);
    }

}
