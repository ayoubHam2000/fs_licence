package TEST;


import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collections;
import java.util.Scanner;

public class Main {

    final int a;

    @Override
    public String toString(){
        return "Rouge = ";
    }

    public Main(int u){
        a = 20;
        
    }

    static void changeTable(Integer[] tab){
        tab[0] = 20;
    }

    static void displayTable(Integer[] tab){
        for(int item : tab){
            System.out.print(item);
        }
        System.out.println();
    }

    public static void main(String args[]){
        Integer[] tab = {10, 20, 30};
        Integer[] tab2 = {10, 20, 30};

        changeTable(tab);
        displayTable(tab);

        int r;
        r = Arrays.binarySearch(tab, 10);
        Arrays.sort(tab, 0, tab.length);
        Arrays.sort(tab, Collections.reverseOrder());
        Arrays.parallelSort(tab);
        Arrays.fill(tab, 10);
        boolean equal = Arrays.equals(tab, tab2);
    }

}
