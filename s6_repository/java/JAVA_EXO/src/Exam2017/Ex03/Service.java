package Exam2017.Ex03;

public class Service {

    String nom;
    int temps;
    double prix;

    public Service(String nom, int temps, double prix){
        this.nom = nom;
        this.temps = temps;
        this.prix = prix;
    }

    public String getNom(){
        return nom;
    }

    public int getTemps(){
        return temps;
    }

    public double getPrix(){
        return prix;
    }

    @Override
    public String toString(){
        return "Lavage -> temps : " + temps + "min" + ", prix : " + prix + "Dh";
    }



}
