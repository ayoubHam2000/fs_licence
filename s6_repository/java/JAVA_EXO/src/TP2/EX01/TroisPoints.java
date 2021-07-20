package TP2.EX01;

public class TroisPoints {

    Point p1;
    Point p2;
    Point p3;

    //07
    public TroisPoints(Point p1, Point p2, Point p3) {
        this.p1 = p1;
        this.p2 = p2;
        this.p3 = p3;
    }

    public Point getP1() {
        return p1;
    }

    public Point getP2() {
        return p2;
    }

    public Point getP3() {
        return p3;
    }

    public void setP1(Point p1) {
        this.p1 = p1;
    }

    public void setP2(Point p2) {
        this.p2 = p2;
    }

    public void setP3(Point p3) {
        this.p3 = p3;
    }

    //08
    public boolean sontAlignes(){
        double AB = p1.calculerDistance(p2);
        double AC = p1.calculerDistance(p3);
        double BC = p2.calculerDistance(p3);
        return AB == AC + BC || AC == AB + BC || BC == AC + AB;
    }


    //09
    public boolean estIsocele(){
        double AB = p1.calculerDistance(p2);
        double AC = p1.calculerDistance(p3);
        double BC = p2.calculerDistance(p3);
        return AB == AC || AB == BC || BC == AC;
    }

}
