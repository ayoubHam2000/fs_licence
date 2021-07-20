package Exam2017Rat.Ex04;

public class Etudiant extends Personne{

    private int niv;

    public Etudiant(String prenom, String nom, int niv) throws Exception {
        super(prenom, nom);
        if(niv <= 0 || niv > 3){
            throw new Exception("Niveau doit etre entre 1 et 3");
        }
        this.niv = niv;
    }



    @Override
    public void statut() {
        System.out.println("Etudiant : " + getNom() + " " + getPrenom() + "Niveau : " + niv);
    }
}
