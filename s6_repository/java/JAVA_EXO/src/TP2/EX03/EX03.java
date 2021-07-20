package TP2.EX03;

public class EX03 {

    public static void main(String[] args){
        Stagiaire s1 = new Stagiaire("s1", new float[] {100, 120, 88, 99, 34, 66, 987});
        Stagiaire s2 = new Stagiaire("s2", new float[] {45, 67, 43, 908, 43, 908, 4});
        Stagiaire s3 = new Stagiaire("s3", new float[] {43, 56, 32, 124, 453, 23, 12});
        Stagiaire s4 = new Stagiaire("s4", new float[] {43, 56, 700, 645, 12, 43,23,124, 32});

        //4
        System.out.println("moyenne de s1 : " + s1.calculerMoyenne());
        System.out.println("max des notes de s1 : " + s1.trouverMax());
        System.out.println("min des notes de s1 : " + s1.trouverMin());

        Formation formation = new Formation("formation", 30, new Stagiaire[]{s1, s2, s3, s4});

        System.out.println("Moyeene de formation : " + formation.calculerMoyenneFormation());
        formation.afficherNomMax();
        formation.afficherMinMax();
        formation.trouverMoyenneParNom("s2");


    }

}
