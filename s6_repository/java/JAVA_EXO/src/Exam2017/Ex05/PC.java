package Exam2017.Ex05;

public class PC extends MaterielInfo{

    final Personne administrateur;

    public PC(int type, Personne administrateur) {
        super(type);
        this.administrateur = administrateur;
    }

    @Override
    public String configuration() {
        return administrateur.getNomConnexion() + "\n" + getType();
    }
}
