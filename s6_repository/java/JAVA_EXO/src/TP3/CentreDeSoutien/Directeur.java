package TP3.CentreDeSoutien;

public class Directeur extends Personne{

    private String nomConnexion;
    private String password;

    public String getNomConnexion() {
        return nomConnexion;
    }

    public String getPassword() {
        return password;
    }

    public Directeur(String nom, String prenom, String nomConnexion, String password) {
        super(nom, prenom);
        this.nomConnexion = nomConnexion;
        this.password = password;
    }

    @Override
    public void statut() {
        System.out.println("Directeur : " + getNom() + " " + getPrenom());
    }
}
