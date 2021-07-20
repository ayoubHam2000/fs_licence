package Classes;

import javax.swing.*;
import java.awt.*;

public class MyProgressBar extends JFrame {

    JProgressBar progressBar;

    public MyProgressBar(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(new FlowLayout());
        this.setTitle("Progress Bar");


        progressBar = new JProgressBar();
        progressBar.setValue(0);
        progressBar.setStringPainted(true);
        progressBar.setFont(new Font("MV Boli", Font.BOLD, 25));
        progressBar.setForeground(Color.BLUE);
        progressBar.setBackground(Color.BLACK);
        

        this.add(progressBar);
        this.setSize(420, 420);
        this.setVisible(true);
        fill();
    }

    private void fill(){
        int counter = 0;

        while(progressBar.getValue() < 100){
            progressBar.setValue(counter);
            try {
                Thread.sleep(50);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            counter++;
        }
        progressBar.setString("Done");
        System.out.println("End");
    }

}
