package TP2.EX03;

public class Formation {

    //region ex06 ex07

    private String intitule;
    private int nbrJours;
    private Stagiaire[] stagiaires;

    public Formation(String intitule, int nbrJours, Stagiaire[] stagiaires) {
        this.intitule = intitule;
        this.nbrJours = nbrJours;
        this.stagiaires = stagiaires;
    }

    public String getIntitule() {
        return intitule;
    }

    public int getNbrJours() {
        return nbrJours;
    }

    public Stagiaire[] getStagiaires() {
        return stagiaires;
    }

    public void setIntitule(String intitule) {
        this.intitule = intitule;
    }

    public void setNbrJours(int nbrJours) {
        this.nbrJours = nbrJours;
    }

    public void setStagiaires(Stagiaire[] stagiaires) {
        this.stagiaires = stagiaires;
    }

    //endregion

    //ex08 -----------------

    public float  calculerMoyenneFormation(){
        float result = 0;

        for(Stagiaire stagiaire : stagiaires){
            result += stagiaire.calculerMoyenne();
        }
        result /= stagiaires.length;
        return result;
    }

    //ex09------------------------------------

    public int getIndexMax(){
        if (stagiaires.length == 0) return -1;
        int result = 0;

        for(int i = 0; i < stagiaires.length; i++){
            if(stagiaires[result].calculerMoyenne() < stagiaires[i].calculerMoyenne())
                result = i;
        }
        return result;
    }

    //ex10------------------------------
    public void afficherNomMax(){
        System.out.println("le  nom  du  premier  stagiaire  ayant  la meilleure moyenne est : "
        + stagiaires[getIndexMax()].getNom());
    }

    //ex11--------------------------
    public void afficherMinMax(){
        System.out.println("la note minimale du premier stagiaire ayantla meilleure moyenne d’une formation : "
                + stagiaires[getIndexMax()].trouverMin());
    }

    //ex12--------------------------
    public void trouverMoyenneParNom(String nom){
        boolean trouver = false;
        for(Stagiaire stagiaire : stagiaires){
            if(stagiaire.getNom().equals(nom)){
                System.out.println("la moyenne du stagiaire " + stagiaire.getNom() + " est : " +
                        stagiaire.calculerMoyenne());
                trouver = true;
                break;
            }
        }
        if(!trouver)
            System.out.println("aucun stagiaire n'est trouver!!");
    }


}
