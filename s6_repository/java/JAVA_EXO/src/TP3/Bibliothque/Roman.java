package TP3.Bibliothque;

public class Roman extends Livre{

    private int prixLitt;

    static final int GONCOURT = 0;
    static final int MEDICIS = 1;
    static final int INTERALLIE = 2;

    public Roman(int numeroEng, String titre, String auteur, int nbrPage, int prixLitt) {
        super(numeroEng, titre, auteur, nbrPage);
        this.prixLitt = prixLitt;
    }

    public int getPrixLitt() {
        return prixLitt;
    }

    public void setPrixLitt(int prixLitt) {
        this.prixLitt = prixLitt;
    }



    @Override
    public String toString(){

        return super.toString() + "\nPrixLitt : " + prixLitt;
    }


}
