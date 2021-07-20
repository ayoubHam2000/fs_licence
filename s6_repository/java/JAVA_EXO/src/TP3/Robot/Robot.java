package TP3.Robot;

public class Robot {

    private String nom;
    private int x;
    private int y;
    private String direction;

    //optional
    static final String EST = "Est"; //x++
    static final String NORD = "Nord"; //y++
    static final String SUD = "Sud"; //y--
    static final String OUEST = "Ouest"; //x--




    public Robot(String nom){
        this.nom = nom;
        x = 0;
        y = 0;
        //x = y = 0;
        direction = EST;
    }

    public void avance(){
        switch (direction){
            case EST -> x++;
            case NORD -> y++;
            case SUD -> y--;
            case OUEST -> x--;
        }
    }

    public void droite(){
        direction = switch (direction){
            case NORD -> EST;
            case EST -> SUD;
            case SUD -> OUEST;
            case OUEST -> NORD;
            default -> direction;
        };
    }

    public void afficher(){
        System.out.println("Nom : " + nom);
        System.out.println("Position : (" + x + ", " + y + ")");
        System.out.println("Direction : " + direction);
    }

}
