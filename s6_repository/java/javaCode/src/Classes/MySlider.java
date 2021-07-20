package Classes;

import com.sun.org.apache.bcel.internal.generic.LADD;

import javax.swing.*;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MySlider extends JFrame implements ChangeListener {

    JLabel label;
    JSlider slider;

    public MySlider(){
        this.setTitle("Slide Bar");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        //this.setLayout(new FlowLayout());

        JPanel panel = new JPanel();

        slider = new JSlider(0, 100, 50);
        slider.setPreferredSize(new Dimension(400, 200));
        slider.setPaintTicks(true);
        slider.setMinorTickSpacing(10);
        slider.setPaintTrack(true);
        slider.setMajorTickSpacing(25);
        slider.setPaintLabels(true);
        slider.setFont(new Font("MV Boli", Font.BOLD, 15));
        slider.setOrientation(SwingConstants.VERTICAL);
        slider.addChangeListener(this);

        label = new JLabel();
        label.setText("Value : " + slider.getValue());
        label.setFont(new Font("MV Boli", Font.BOLD, 25));

        panel.add(slider);
        panel.add(label);
        this.add(panel);
        this.setSize(500, 500);
        this.setVisible(true);
    }

    @Override
    public void stateChanged(ChangeEvent e) {
        if(slider.equals(e.getSource())){
            label.setText("Value : " + slider.getValue());
        }
    }
}
