package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

public class TheKeyListener extends JFrame implements KeyListener {

    JLabel label;

    public TheKeyListener(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(null);
        this.setSize(500, 500);

        ImageIcon icon = new ImageIcon("src/files/checked.png");

        label = new JLabel();
        label.setBounds(0, 0,50, 50);
        //label.setBackground(Color.BLUE);
        //label.setOpaque(true);
        label.setIcon(icon);
        this.add(label);
        this.getContentPane().setBackground(Color.cyan);

        this.addKeyListener(this);
        this.setVisible(true);
    }

    @Override
    public void keyTyped(KeyEvent e) {
        System.out.println("You typed a character : " + e.getKeyChar());
    }

    @Override
    public void keyPressed(KeyEvent e) {
        System.out.println("You Pressed a character : " + e.getKeyChar());
        if(e.getKeyCode() == 40){ //down
            label.setLocation(label.getX(), label.getY() + 10);
        }
        if(e.getKeyCode() == 39){ //right
            label.setLocation(label.getX() + 10, label.getY());
        }

        if(e.getKeyCode() == 38){ //up
            label.setLocation(label.getX(), label.getY() - 10);
        }

        if(e.getKeyCode() == 37){ //left
            label.setLocation(label.getX() - 10, label.getY());
        }
    }

    @Override
    public void keyReleased(KeyEvent e) {
        System.out.println("You released a character : " + e.getKeyChar());
        System.out.println("You released a character code : " + e.getKeyCode());
    }
}
