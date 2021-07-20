package TP3.Entreprise;

import java.util.Date;

public class Commercial extends Employe{

    private double chiffreDaffaire;

    public double getChiffreDaffaire() {
        return chiffreDaffaire;
    }

    public void setChiffreDaffaire(double chiffreDaffaire) {
        this.chiffreDaffaire = chiffreDaffaire;
    }

    public Commercial(String nom, String prenom, int age, String date, double chiffreDaffaire) {
        super(nom, prenom, age, date);
        this.chiffreDaffaire = chiffreDaffaire;
    }

    @Override
    public double calculerSalaire() {
        return 0;
    }
}
