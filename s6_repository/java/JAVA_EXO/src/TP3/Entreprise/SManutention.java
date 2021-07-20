package TP3.Entreprise;

import java.util.Date;

public class SManutention extends Manutention implements ARisque{


    public SManutention(String nom, String prenom, int age, String date, int nbr_heure) {
        super(nom, prenom, age, date, nbr_heure);
    }

    @Override
    public double calculerSalaire(){
        return super.calculerSalaire() + PrimeMensuelle;
    }


}
