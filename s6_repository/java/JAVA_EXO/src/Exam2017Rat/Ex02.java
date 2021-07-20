package Exam2017Rat;

public class Ex02 {

    static int count = 0;

    public Ex02(){
        while(count < 10)
            new Ex02(++count);
    }

    public Ex02(int count){
        super();
    }

    public static void main(String[] args) {
        new Ex02();
        new Ex02(count);
        System.out.println(count++);
    }

}
