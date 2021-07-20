package TP2.EX03;

public class Stagiaire {

    //region ex01 - ex03

    private String nom;
    private float[] notes;

    public Stagiaire(String nom, float[] notes){
        this.nom = nom;
        this.notes = notes;
    }

    public String getNom() {
        return nom;
    }

    public float[] getNotes() {
        return notes;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setNotes(float[] notes) {
        this.notes = notes;
    }

    //endregion

    //--ex04

    float calculerMoyenne(){
        float result = 0;

        for(float note : notes){
            result += note;
        }
        result /= notes.length;
        return result;
    }

    //--05

    float trouverMax(){
        if (notes.length == 0) return 0;
        float result = notes[0];

        for(float note : notes){
            if (result < note)
                result = note;
        }
        return result;
    }

    float trouverMin(){
        if (notes.length == 0) return 0;
        float result = notes[0];

        for(float note : notes){
            if (result > note)
                result = note;
        }
        return result;
    }

}
