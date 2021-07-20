package TP3.Bibliothque;

public class Revue extends Document {

    private int mois;
    private int annee;

    public Revue(int numeroEng, String titre, int mois, int annee) {
        super(numeroEng, titre);
        this.mois = mois;
        this.annee = annee;
    }

    public int getMois() {
        return mois;
    }

    public int getAnnee() {
        return annee;
    }

    public void setMois(int mois) {
        this.mois = mois;
    }

    public void setAnnee(int annee) {
        this.annee = annee;
    }




    @Override
    public String toString(){

        return super.toString() + "\nMois : " + mois + "\n" +
                "Annee : "  + annee;
    }
}
