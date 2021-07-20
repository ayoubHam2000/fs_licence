package TP3.Entreprise;

import java.util.Date;

public class Production extends Employe{

    private final static int FACTEUR_UNITE = 5;

    private int nbrEntity;

    public Production(String nom, String prenom, int age, String date, int nbrEntity) {
        super(nom, prenom, age, date);
        this.nbrEntity = nbrEntity;
    }

    @Override
    public String getEmpleyeeType() {
        return "Production";
    }

    @Override
    public double calculerSalaire() {
        return FACTEUR_UNITE * nbrEntity;
    }

}
