package TP2.EX04;

import java.util.ArrayList;

public class Client {

    private long cin;
    private String nom;
    private String prenom;
    private final ArrayList<CompteBancaire> comptes;

    public Client(long cin, String nom, String prenom) {
        this.cin = cin;
        this.nom = nom;
        this.prenom = prenom;
        this.comptes = new ArrayList<>();
    }

    //------------------------------------------

    public long getCin() {
        return cin;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void addCompte(CompteBancaire c){
        comptes.add(c);
    }

    //-----------------------------------------

    public void compteInfo(int nbCompte){
        for(CompteBancaire c : comptes){
            if(c.getId() == nbCompte){
                c.afficherInfo();
            }
        }
    }

    public void allCompteInfo(){
        for(CompteBancaire c : comptes){
            System.out.println("--------------------------------");
            c.afficherInfo();
            System.out.println("--------------------------------");
        }
    }
}
