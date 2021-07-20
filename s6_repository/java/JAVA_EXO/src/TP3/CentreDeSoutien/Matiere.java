package TP3.CentreDeSoutien;

public class Matiere {

    private int niv1;
    private int niv2;
    private int niv3;

    private final int matireType;

    static final int MATH = 0;
    static final int PHYSIC = 1;
    static final int SVT = 2;

    static final String[] M = {
            "Mathématiques",
            "Sciences  Physiques",
            "Sciences de la vie et de la terre"
    };

    Matiere(int type) throws Exception{
        this.matireType = type;

        if(type < 0 || type > 2){
            throw new Exception("type doit etre entre 1 et 3");
        }

        switch (type){
            case MATH:
                niv1 = 1500;
                niv2 = 2500;
                niv3 = 3500;
            case PHYSIC:
                niv1 = 1300;
                niv2 = 1500;
                niv3 = 3000;
            case SVT:
                niv1 = 1300;
                niv2 = 1500;
                niv3 = 3000;
        }
    }

    @Override
    public String toString(){
        StringBuilder s = new StringBuilder();

        s.append(M[matireType]).append(" -> \n");
        s.append("(Niveau 1 : ").append(niv1).append("Dh),");
        s.append("(Niveau 2 : ").append(niv2).append("Dh),");
        s.append("(Niveau 3 : ").append(niv3).append("Dh)");



        return s.toString();
    }


}
