package TP1;



import java.util.*;

public class Ex11 {

    public static void main(String[] args){
        Integer[] a = {5, 7,10, 9, 6};
        reverse(a);
        System.out.println(Arrays.toString(a));
    }

    public static Object[] reverse(Object[] tab, int start, int end){
        Object tmp;

        if(end <= start)
            return tab;
        tmp = tab[start];
        tab[start] = tab[end];
        tab[end] = tmp;
        return reverse(tab, start + 1, end - 1);
    }

    public static Object[] reverse(Object[] tab){
        return reverse(tab, 0, tab.length - 1);
    }

}
