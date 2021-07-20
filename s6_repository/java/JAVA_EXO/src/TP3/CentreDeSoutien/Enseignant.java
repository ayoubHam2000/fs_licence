package TP3.CentreDeSoutien;

public class Enseignant extends Personne {

    private final Matiere matiere;

    public Enseignant(String nom, String prenom, Matiere matiere) {
        super(nom, prenom);
        this.matiere = matiere;
    }

    @Override
    public void statut() {
        System.out.println("Enseignant : " + getNom() + " " + getPrenom());;
    }
}
