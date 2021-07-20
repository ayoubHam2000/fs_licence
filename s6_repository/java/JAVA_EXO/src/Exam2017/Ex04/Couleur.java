package Exam2017.Ex04;

public class Couleur {

    int rouge = 5, vert = 5;

    @Override
    public String toString(){
        return "Rouge = " + rouge + "\nVert = " + vert;
    }

    public static void main(String[] args){
        Couleur c = new Couleur();
        //Couleur c = new couleur();
        System.out.println(c);
    }

}
