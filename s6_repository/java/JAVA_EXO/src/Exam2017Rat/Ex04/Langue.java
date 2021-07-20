package Exam2017Rat.Ex04;

public class Langue {

    private String langue;
    private int niv1;
    private int niv2;
    private int niv3;


    public Langue(String langue, int niv1, int niv2, int niv3) {
        this.langue = langue;
        this.niv1 = niv1;
        this.niv2 = niv2;
        this.niv3 = niv3;
    }

    @Override
    public String toString(){
        return langue + " -> " + "Niveau 1 : " + niv1 + " Dh, " +
                "Niveau 2 : " + niv2 + " Dh, " +
                "Niveau 3 : " + niv3 + " Dh";
    }


}
