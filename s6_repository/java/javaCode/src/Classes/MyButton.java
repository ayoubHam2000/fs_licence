package Classes;

import javax.swing.*;
import java.awt.*;

public class MyButton extends JFrame {

    JButton button;

    public MyButton(){

        ImageIcon i = new ImageIcon("src/files/add.png");
        Image b =  i.getImage().getScaledInstance(20, 20, Image.SCALE_DEFAULT);
        ImageIcon icon = new ImageIcon(b);

        button = new JButton();
        button.setBounds(100, 100, 250, 100);
        button.addActionListener(e -> {
            System.out.println("Click");
        });
        button.setText("Click On Me");
        button.setFocusable(false);
        button.setIcon(icon);
        button.setHorizontalTextPosition(JButton.CENTER);
        button.setVerticalTextPosition(JButton.BOTTOM);
        button.setForeground(Color.BLUE);
        button.setBackground(Color.cyan);
        button.setFont(new Font("Comic Sans", Font.BOLD, 15));
        button.setBorder(BorderFactory.createEtchedBorder());
        //button.setEnabled(false);

        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(null);
        this.setSize(500, 500);
        this.setVisible(true);
        this.add(button);

    }

}
