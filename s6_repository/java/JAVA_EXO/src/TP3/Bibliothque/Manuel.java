package TP3.Bibliothque;

public class Manuel extends Livre{

    private String niveauScolaire;

    public String getNiveauScolaire() {
        return niveauScolaire;
    }

    public Manuel(int numeroEng, String titre, String auteur, int nbrPage, String niveauScolaire) {
        super(numeroEng, titre, auteur, nbrPage);
        this.niveauScolaire = niveauScolaire;
    }

    public void setNiveauScolaire(String niveauScolaire) {
        this.niveauScolaire = niveauScolaire;
    }


    @Override
    public String toString(){

        return super.toString() + "\nNiveauScolaire : " + niveauScolaire;
    }
}
