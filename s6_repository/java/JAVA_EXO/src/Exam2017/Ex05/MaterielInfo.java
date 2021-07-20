package Exam2017.Ex05;

public abstract class MaterielInfo {

    private int type;

    static int numeroInventaire = 1000;

    MaterielInfo(int type){
        this.type = type;
        numeroInventaire++;
    }

    public int getType() {
        return type;
    }

    public abstract String configuration();

}
