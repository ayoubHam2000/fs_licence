package TP3.Bibliothque;

public class Dictionnaire extends  Document {

    private String langue;

    public Dictionnaire(int numeroEng, String titre, String langue) {
        super(numeroEng, titre);
        this.langue = langue;
    }

    public String getLangue() {
        return langue;
    }

    public void setLangue(String langue) {
        this.langue = langue;
    }

    @Override
    public String toString(){

        return super.toString() + "\nLangue : " + langue;
    }

}
