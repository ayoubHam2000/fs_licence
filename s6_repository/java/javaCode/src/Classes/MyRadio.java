package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MyRadio extends JFrame implements ActionListener {

    private final JRadioButton pizza;
    private final JRadioButton hamburger;
    private final JRadioButton hotdog;

    public MyRadio(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(new FlowLayout(FlowLayout.CENTER, 10, 10));


        pizza = new JRadioButton();
        hamburger = new JRadioButton();
        hotdog = new JRadioButton();

        pizza.setText("Pizza");
        hamburger.setText("hamburger");
        hotdog.setText("hotdog");

        pizza.addActionListener(this);
        hamburger.addActionListener(this);
        hotdog.addActionListener(this);

        ButtonGroup buttonGroup = new ButtonGroup();
        buttonGroup.add(pizza);
        buttonGroup.add(hamburger);
        buttonGroup.add(hotdog);

        this.add(pizza);
        this.add(hamburger);
        this.add(hotdog);
        this.pack();
        this.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (pizza.equals(e.getSource())) {
            System.out.println("Pizza");
        }
        if (hamburger.equals(e.getSource())) {
            System.out.println("Hamburger");
        }
        if (hotdog.equals(e.getSource())) {
            System.out.println("Hotdog");
        }
    }
}
