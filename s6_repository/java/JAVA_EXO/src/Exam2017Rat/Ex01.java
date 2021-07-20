package Exam2017Rat;

public class Ex01 {

    public static void main(String[] args) {
        final int N = 3;
        int[][] tab = new int[N][];
        for(int n = 0; n < N; n++)
            tab[n] = new int[N - n];
        for(int[] x : tab){
            for(int j : x){
                System.out.print(j + "\t");
            }
            System.out.println();
        }
    }

}
