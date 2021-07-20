package Classes;
import javax.swing.*;

public class TheDragAndDrop extends JFrame {

    SubDragPanel p = new SubDragPanel();
    public TheDragAndDrop(){

        //this.setLayout(null);
        this.add(p);
        this.setTitle("Drag And Drop");
        this.setSize(600, 600);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setVisible(true);

    }

}
