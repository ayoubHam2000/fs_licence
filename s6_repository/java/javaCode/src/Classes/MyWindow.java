package Classes;

import javax.swing.*;
import java.awt.*;

public class MyWindow extends JFrame {

    public MyWindow(){

        this.setTitle("First Window");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setResizable(false);
        this.setSize(420, 420);
        this.setVisible(true);

        ImageIcon image = new ImageIcon("src\\files\\icon.png");
        this.setIconImage(image.getImage());
        this.getContentPane().setBackground(new Color(0x123456));

    }

}
