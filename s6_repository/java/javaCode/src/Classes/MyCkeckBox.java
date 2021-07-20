package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MyCkeckBox extends JFrame implements ActionListener {

    private final JButton submit;
    private final JRadioButton radio;

    public MyCkeckBox(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(new FlowLayout());

        submit = new JButton("Submit");
        submit.addActionListener(this);


        ImageIcon checkedIcon = new ImageIcon("src/files/checked.png");
        ImageIcon notCheckedIcon = new ImageIcon("src/files/not_checked.png");

        radio  = new JRadioButton();
        radio.setText("Is Admin");
        radio.setFont(new Font("Consolas", Font.BOLD, 19));
        radio.setIcon(notCheckedIcon);
        radio.setSelectedIcon(checkedIcon);

        this.add(submit);
        this.add(radio);
        this.pack();
        this.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == submit){
            System.out.println(radio.isSelected());
        }
    }
}
