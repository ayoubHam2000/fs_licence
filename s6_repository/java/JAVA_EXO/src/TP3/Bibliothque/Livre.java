package TP3.Bibliothque;

public class Livre extends Document{

    private String auteur;
    private int nbrPage;

    public Livre(int numeroEng, String titre, String auteur, int nbrPage){
        super(numeroEng, titre);

        this.auteur = auteur;
        this.nbrPage = nbrPage;
    }

    public String getAuteur() {
        return auteur;
    }

    public int getNbrPage() {
        return nbrPage;
    }

    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }

    public void setNbrPage(int nbrPage) {
        this.nbrPage = nbrPage;
    }

    @Override
    public String toString(){

        return super.toString() + "\nAuteur : " + auteur + "\n" +
                "Nbr Page : " + nbrPage;
    }

}
