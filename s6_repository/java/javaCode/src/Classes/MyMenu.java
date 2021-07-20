package Classes;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;

public class MyMenu extends JFrame implements ActionListener {


    JMenuItem menuItem;
    JMenuItem saveItem;
    JMenuItem exitItem;

    public MyMenu(){
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(500, 500);
        this.setLayout(new FlowLayout());

        JMenuBar menuBar = new JMenuBar();
        JMenu fileMenu = new JMenu("File");
        menuItem = new JMenuItem("Load");
        saveItem = new JMenuItem("Save");
        exitItem = new JMenuItem("Exit");

        //short-cat keys
        menuItem.setMnemonic(KeyEvent.VK_L);
        saveItem.setMnemonic(KeyEvent.VK_S);
        exitItem.setMnemonic(KeyEvent.VK_E);

        //short cat to menu alt + f
        fileMenu.setMnemonic(KeyEvent.VK_F);

        menuItem.addActionListener(this);
        saveItem.addActionListener(this);
        exitItem.addActionListener(this);

        //------------------------

        ImageIcon saveIcon = new ImageIcon("src/files/checked.png");
        menuItem.setIcon(saveIcon);

        //-----------------------


        fileMenu.add(menuItem);
        fileMenu.add(saveItem);
        fileMenu.add(exitItem);

        JMenu editMenu = new JMenu("Edit");
        JMenu view = new JMenu("View");
        JMenu help = new JMenu("Help");

        menuBar.add(fileMenu);
        menuBar.add(editMenu);
        menuBar.add(view);
        menuBar.add(help);


        this.setJMenuBar(menuBar);
        this.setVisible(true);

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == menuItem){
            System.out.println("Menu");
        }
        if(e.getSource() == saveItem){
            System.out.println("Save");
        }
        if(e.getSource() == exitItem){
            System.out.println("Exit");
        }
    }
}
