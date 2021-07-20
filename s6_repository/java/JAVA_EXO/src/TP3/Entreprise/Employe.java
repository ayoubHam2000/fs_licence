package TP3.Entreprise;

import java.util.Date;

public abstract class Employe {

    private String nom;
    private String prenom;
    private int age;
    private String date;


    public Employe(String nom, String prenom, int age, String date) {
        this.nom = nom;
        this.prenom = prenom;
        this.age = age;
        this.date = date;
    }

    public String getEmpleyeeType(){
        return "L'employé";
    }

    public String getNom() {
        return getEmpleyeeType() + " " + nom + " " + prenom;
    }


    public abstract double calculerSalaire();


}
