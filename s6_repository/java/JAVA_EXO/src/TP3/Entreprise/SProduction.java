package TP3.Entreprise;

import java.util.Date;

public class SProduction extends Production implements ARisque {


    public SProduction(String nom, String prenom, int age, String date, int nbrEntity) {
        super(nom, prenom, age, date, nbrEntity);
    }

    @Override
    public double calculerSalaire() {
        return super.calculerSalaire() + PrimeMensuelle;
    }

}
