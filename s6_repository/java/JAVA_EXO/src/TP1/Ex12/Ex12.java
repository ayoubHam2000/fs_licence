package TP1.Ex12;

public class Ex12 {

    public static void main(String[] args){

        testAdd();
        //testMulReel();
        //testTranspose();
        //testMul();


    }

    public static void testAdd(){
        Matrix a = new Matrix(new int[][] {{1, 2}, {5, 7}});
        a.print("a = ");

        Matrix b = new Matrix(new int[][] {{1, 7}, {5, 4}});
        b.print("b = ");

        Matrix res = Matrix.add(a, b);
        res.print("res = ");
    }

    public static void testMulReel(){
        Matrix a = new Matrix(new int[][] {{1, 2}, {5, 7}});
        a.print("a = ");


        Matrix res = Matrix.mulReel(a, 5);
        res.print("res = ");
    }

    public static void testTranspose(){
        Matrix a = new Matrix(new int[][] {{1, 3, 5}, {2, 4, 6}});
        a.print("A = ");


        Matrix res = Matrix.transpose(a);
        res.print("Res = ");
    }

    public static void testMul(){
        Matrix a = new Matrix(2, 3);
        a.setRow(0, new int[] {1, 2, 3});
        a.setRow(1, new int[] {4, 5, 6});
        a.print("A = ");

        Matrix b = new Matrix(3, 2);
        b.setColumn(0, new int[] {1, 2, 3});
        b.setColumn(1, new int[] {4, 5, 6});
        b.print("B = ");



        Matrix res = Matrix.mul(a, b);
        res.print("res = ");
    }




}
