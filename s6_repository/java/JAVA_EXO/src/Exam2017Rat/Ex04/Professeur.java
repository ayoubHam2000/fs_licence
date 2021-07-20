package Exam2017Rat.Ex04;

public class Professeur extends Personne{

    private final Langue langue;

    public Professeur(String prenom, String nom, Langue langue) {
        super(prenom, nom);

        this.langue = langue;
    }

    @Override
    public void statut() {
        System.out.println("Professeur : " + getNom() + " " + getPrenom() + "langue : " + langue);
    }
}
