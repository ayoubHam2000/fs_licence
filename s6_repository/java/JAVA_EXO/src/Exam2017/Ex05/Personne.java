package Exam2017.Ex05;

public class Personne {
    private String nomConnexion;
    private String password;

    public Personne(String nomConnexion, String password){
        this.nomConnexion = nomConnexion;
        this.password = password;
    }

    public String getNomConnexion() {
        return nomConnexion;
    }

    public String getPassword() {
        return password;
    }

    public void setNomConnexion(String nomConnexion) {
        this.nomConnexion = nomConnexion;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
