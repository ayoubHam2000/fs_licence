package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

public class TheMouseListener extends JFrame implements MouseListener {

    public TheMouseListener(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(500, 500);
        this.setLayout(null);

        JLabel label = new JLabel("label");
        label.setBounds(50, 50, 100, 100);
        label.addMouseListener(this);
        label.setBackground(Color.ORANGE);
        label.setOpaque(true);

        this.add(label);

        this.setVisible(true);
    }

    @Override
    public void mouseClicked(MouseEvent e) {
        System.out.println("mouse clicked");
    }

    @Override
    public void mousePressed(MouseEvent e) {
        System.out.println("mouse presses");
    }

    @Override
    public void mouseReleased(MouseEvent e) {
        System.out.println("mouse released");
    }

    @Override
    public void mouseEntered(MouseEvent e) {
        System.out.println("mouse entered");
    }

    @Override
    public void mouseExited(MouseEvent e) {
        System.out.println("mouse exist");
    }
}
