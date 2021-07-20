package TP3.Entreprise;

import java.util.Date;

public class Manutention extends Employe{

    private final static int HEURE_PRICE = 650;

    private int nbr_heure;

    public Manutention(String nom, String prenom, int age, String date, int nbr_heure) {
        super(nom, prenom, age, date);
        this.nbr_heure = nbr_heure;
    }

    @Override
    public String getEmpleyeeType() {
        return "Manutention";
    }

    @Override
    public double calculerSalaire() {
        return nbr_heure * HEURE_PRICE;
    }
}
