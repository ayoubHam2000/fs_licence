package Exam2017Rat.Ex04;

public abstract class Personne {

    private String prenom;
    private String nom;

    public Personne(String prenom, String nom){
        this.prenom = prenom;
        this.nom = nom;
    }


    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public abstract void statut();

}
