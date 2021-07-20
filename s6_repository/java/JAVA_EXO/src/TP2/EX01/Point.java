package TP2.EX01;

//01
public class Point {

    double x;
    double y;

    //04
    public Point(double x, double y){
        this.x = x;
        this.y = y;
    }

    public Point(){
        this.x = 0;
        this.y = 0;
    }

    //02
    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public void setX(double x) {
        this.x = x;
    }

    public void setY(double y) {
        this.y = y;
    }

    //03
    @Override
    public String toString() {
        return "(" + x + ", " + y + ")";
    }

    //05
    public double calculerDistance(Point p){
        double x = Math.pow(this.x - p.x, 2);
        double y = Math.pow(this.y - p.y, 2);
        return Math.sqrt(x + y);
    }

    //06
    public Point calculerMilieu(Point p){
        double x = (this.x + p.x) / 2;
        double y = (this.y + p.y) / 2;
        return new Point(x, y);
    }

}
