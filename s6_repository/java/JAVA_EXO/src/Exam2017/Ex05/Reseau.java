package Exam2017.Ex05;

public class Reseau extends MaterielInfo{

    String nom;
    String password;
    int nbInterfacesReseaux;

    public Reseau(int type, String nom, String password, int nbInterfacesReseaux) {
        super(type);
        this.nom = nom;
        this.password = password;
        this.nbInterfacesReseaux = nbInterfacesReseaux;
    }

    @Override
    public String configuration() {
        return nom + "\n" +
                password + "\n" +
                getType();
    }
}
