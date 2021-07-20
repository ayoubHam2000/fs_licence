package TP2.EX02;

//1
public class Complex {

    private double x;
    private double y;

    //2
    public Complex(){
        this.x = 0;
        this.y = 0;
    }

    //2
    public Complex(double x, double y){
        this.x = x;
        this.y = y;
    }

    //2
    public Complex(Complex c){
        this.x = c.x;
        this.y = c.y;
    }

    //4
    public double getX(){
        return x;
    }

    //4
    public double getY() {
        return y;
    }

    //3
    @Override
    public String toString(){
        return x + " + " + y + "i";
    }

    //11
    @Override
    public boolean equals(Object o){
        if (o instanceof Complex){
            Complex z = (Complex)o;
            return x == z.x && y == z.y;
        }
        return false;
    }

    //5 ======================================================

    public void add(Complex z){
        x += z.x;
        y += z.y;
    }

    public void sub(Complex z){
        x -= z.x;
        y -= z.y;
    }

    public void mul(Complex z){
        double tx = x * z.x - y * z.y;
        y = x * z.y + y * z.x;
        x = tx;
    }

    public void div(Complex z){
        double d = z.x * z.x + z.y * z.y;
        if (d == 0)
            throw new RuntimeException("Impossible de diviser par zéro ");
        double tx = (x * z.x + y * z.y) / d;
        y = (z.x * y - z.y * x) / d;
        x = tx;
    }


    //==============================================
    //6
    public static Complex add(Complex a, Complex b){
        Complex res = new Complex(a);
        res.add(b);
        return res;
    }


    //==================================================

    //7
    public double module(){
        return Math.sqrt(x * x + y * y);
    }

    //7
    public double arg(){
        if(x == 0 && y == 0)
            throw new RuntimeException("z est null");
        return Math.atan2(y, x);
    }

    //8
    public void mulScalar(double n){
        x *= n;
        y *= n;
    }

    //9
    public Complex inverse(){
        double d = x * x + y * y;
        return new Complex(x / d, - y / d);
    }

    //9
    public Complex conjugate(){
        return new Complex(x, -y);
    }

    //10
    public Complex expo(){
        return new Complex(this.module(), this.arg());
    }



}
