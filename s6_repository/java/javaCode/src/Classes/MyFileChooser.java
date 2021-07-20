package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;

public class MyFileChooser extends JFrame implements ActionListener {

    JButton button;

    public MyFileChooser(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(new FlowLayout());

        button = new JButton("Select File");
        button.addActionListener(this);

        this.add(button);

        this.pack();
        this.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == button){
            JFileChooser fileChooser = new JFileChooser();

            fileChooser.setCurrentDirectory(new File("E:\\"));

            int response = fileChooser.showOpenDialog(null);
            if(response == JFileChooser.APPROVE_OPTION){
                File f = new File(fileChooser.getSelectedFile().getAbsolutePath());
                System.out.print(f);
            }

        }
    }
}
