package Exam2017Rat.Ex04;

public class Directeur extends Personne{

    private String nomConnexion;
    private String motDePasse;

    public Directeur(String prenom, String nom, String nomConnexion, String motDePasse) {
        super(prenom, nom);
        this.nomConnexion = nomConnexion;
        this.motDePasse = motDePasse;
    }

    @Override
    public void statut() {
        System.out.println("Directeur : " + getNom() + " " + getPrenom() + "nomConnexion : " + nomConnexion
        + "motDePasse  : " + motDePasse);
    }
}
