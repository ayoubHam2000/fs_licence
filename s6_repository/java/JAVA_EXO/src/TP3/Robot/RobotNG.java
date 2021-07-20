package TP3.Robot;

public class RobotNG extends Robot{

    private boolean turboMode;

    public RobotNG(String nom){
        super(nom);
        turboMode = false;
    }

    public boolean getTurboMode(){
        return turboMode;
    }

    public void setTurboMode(){
        turboMode = !turboMode;
    }

    //Les nouvelles méthodes doivent appeler
    //les anciennes méthodes pour implémenter le nouveau comportement.

    public void avance(int n){
        if(getTurboMode())
            n = n * 3;
        for(int i = 0; i < n; i++)
            avance();
    }

    public void gauche(){
        droite();
        droite();
        droite();
    }



    @Override
    public void afficher(){
        super.afficher();
        System.out.println("TurboMode : " + turboMode);
    }



}
