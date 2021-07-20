package TP3.Bibliothque;

public class Document {

    private int numeroEng;
    private String titre;

    public int getNumeroEng() {
        return numeroEng;
    }

    public String getTitre() {
        return titre;
    }

    public void setNumeroEng(int numeroEng) {
        this.numeroEng = numeroEng;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public Document(int numeroEng, String titre){
        this.numeroEng = numeroEng;
        this.titre = titre;
    }

    @Override
    public String toString(){
        return "numéro d’enregistrement : " + numeroEng + "\n" +
        "Titre : " + titre;
    }


}
