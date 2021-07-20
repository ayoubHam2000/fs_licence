package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MyComboBox extends JFrame implements ActionListener {

    private final JComboBox<String> comboBox;

    public MyComboBox(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(new FlowLayout());

        String[] options = {"pizza", "hamburger", "hotdog"};
        comboBox = new JComboBox<>(options);
        comboBox.addActionListener(this);

        comboBox.setEditable(true);
        comboBox.addItem("Item");
        comboBox.insertItemAt("Item 1", 1);
        comboBox.removeItemAt(0);
        comboBox.setSelectedIndex(1);
        comboBox.removeItem("cat");
        comboBox.getItemCount();

        this.add(comboBox);
        this.pack();
        this.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(comboBox.equals(e.getSource())){
            System.out.println(comboBox.getSelectedItem());
        }
    }
}
