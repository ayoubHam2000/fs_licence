package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MyColorChooser extends JFrame implements ActionListener {

    JButton button;
    JLabel label;

    public MyColorChooser(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(new FlowLayout());

        button = new JButton("Pick a Color");
        button.addActionListener(this);

        label = new JLabel("This is some text");
        label.setBackground(Color.WHITE);
        label.setOpaque(true);
        label.setFont(new Font("MV Boli", Font.PLAIN, 100));

        this.add(button);
        this.add(label);

        this.pack();
        this.setVisible(true);

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == button){
            //JColorChooser c = new JColorChooser();
            Color color = JColorChooser.showDialog(null, "Pick a color", Color.black);
            label.setBackground(color);
        }
    }
}
