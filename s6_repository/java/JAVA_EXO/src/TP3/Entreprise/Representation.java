package TP3.Entreprise;

import java.util.Date;

public class Representation extends Commercial{

    private final static double POURCENT_VENDEUR = 0.2;
    private final static int BONUS_VENDEUR = 8000;


    public Representation(String nom, String prenom, int age, String date, double chiffreDaffaire) {
        super(nom, prenom, age, date, chiffreDaffaire);
    }

    @Override
    public double calculerSalaire() {
        return POURCENT_VENDEUR * getChiffreDaffaire() + BONUS_VENDEUR;
    }
}
