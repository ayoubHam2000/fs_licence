package Exam2017.Ex01;

public class Ex01 {


    public static void main(String[] args){
        int i,j;
        for(i = 0;;i++){
            for(j=0;;j++)
                if(j++ < 100) break;
            System.out.printf("%d %d ", i, j);
            if(i == 3) break;
        }
    }

}
