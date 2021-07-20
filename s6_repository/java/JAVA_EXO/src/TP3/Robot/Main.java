package TP3.Robot;

public class Main {

    public static void main(String[] args){
        Robot[] robots = new Robot[4];

        robots[0] = new Robot("Normal Robot 1");
        robots[1] = new Robot("Normal Robot 2");
        robots[2] = new RobotNG("NG Robot 1");
        robots[3] = new RobotNG("NG Robot 2");

        RobotNG ngRobot = (RobotNG)robots[2];
        ngRobot.setTurboMode();
        ngRobot.avance(5);
        ngRobot.droite();
        ngRobot.avance(1);
        ngRobot.gauche();

        for(Robot robot : robots){
            robot.afficher();
            System.out.println("----------------");
        }

    }

}
