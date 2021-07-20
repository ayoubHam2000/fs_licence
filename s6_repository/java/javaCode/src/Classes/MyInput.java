package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MyInput extends JFrame implements ActionListener {

    final private JButton submit;
    final private JTextField input;

    public MyInput(){
        this.setLayout(new FlowLayout());
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        submit = new JButton("Submit");
        submit.addActionListener(this);

        input = new JTextField();
        input.setPreferredSize(new Dimension(250, 40));
        input.setBackground(Color.black);
        input.setCaretColor(Color.white);
        input.setForeground(Color.green);
        input.setFont(new Font(null, Font.PLAIN, 14));

        this.add(submit);
        this.add(input);
        this.pack(); //size of the components
        this.setVisible(true);
    }


    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == submit){
            System.out.println("--> : " + input.getText());
            input.setEditable(false);
            submit.setEnabled(false);
        }
    }
}
