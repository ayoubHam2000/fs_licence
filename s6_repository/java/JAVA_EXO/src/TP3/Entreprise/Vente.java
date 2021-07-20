package TP3.Entreprise;

import java.util.Date;

public class Vente extends Commercial{

    private final static double POURCENT_VENDEUR = 0.2;
    private final static int BONUS_VENDEUR = 4000;


    public Vente(String nom, String prenom, int age, String date, double chiffreDaffaire) {
        super(nom, prenom, age, date, chiffreDaffaire);
    }

    @Override
    public String getEmpleyeeType() {
        return "Vente";
    }

    @Override
    public double calculerSalaire() {
        return POURCENT_VENDEUR * getChiffreDaffaire() + BONUS_VENDEUR;
    }
}
