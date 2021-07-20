package TP3.CentreDeSoutien;

public class Eleve extends Personne{

    private int niveau;

    public int getNiveau() {
        return niveau;
    }

    public Eleve(String nom, String prenom, int niveau) throws Exception {
        super(nom, prenom);
        inscrit(niveau);
    }

    @Override
    public void statut() {
        System.out.println("Eleve : " + getNom() + " " + getPrenom());;
    }

    public void inscrit(int niveau) throws Exception {
        if(niveau >= 1 && niveau <= 3){
            this.niveau = niveau;
        }else{
            throw new Exception("le niveau doit etre entre 1 et 3");
        }
    }

}
