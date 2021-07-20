import Classes.*;

public class Main {

    public static void main(String[] args){

        //region variables 20-32
        /*

        String v_string = "Hello World";
        int v_int = 123;
        char v_char = '4';
        boolean v_boolean = true;
        byte v_byte = 123;
        long v_long = 123123L;
        double v_double = 2.33;
        float v_float = 255.123f;
        short v_short = 123;

        */
        //endregion

        //region input 36-44
        /*
        //import java.util.Scanner;

        Scanner myScanner = new Scanner(System.in);

        System.out.println("you name : ");
        String name = myScanner.nextLine();

        System.out.println("you age : ");
        int age = myScanner.nextInt();
        myScanner.nextLine(); // to consume the \n

        System.out.println("your favorite language : ");
        String fLanguage = myScanner.nextLine();

        System.out.println("Welcome " + name);
        System.out.println("Your age is : " + age );
        System.out.println("Favorite language : " + fLanguage);

        myScanner.close();

        */
        //endregion

        //region expression 44-49

        /*
        expression = operands & operators
        operands = variables, values, numbers, quantity
        operators = + - * / %

        */


        //endregion

        //region GUI intro 49-55

        //import javax.swing.JOptionPane;
        //Integer.parseInt

        /*String name = JOptionPane.showInputDialog("Enter Your Name : ");
        JOptionPane.showMessageDialog(null, "Hello " + name);

        int age = Integer.parseInt(
                JOptionPane.showInputDialog("Enter You Age : ")
        );
        JOptionPane.showMessageDialog(null, "You Age is : " + age);*/

        //endregion

        //region Random
        //import java.util.Random;
        /*
        Random random = new Random();


        for(int i = 0; i < 100; i++){
            int x = random.nextInt(6); //[0, 6[ ;
            //random.nextBoolean();
            //random.nextDouble();
            System.out.println("x = " + x);
        }
        */
        //endregion

        //region statement
        /*
        //&& || !


        //if
        Random r = new Random();


        int age = r.nextInt(100);
        if(age > 50){
            System.out.println("age > 50");
        }else if(age > 20){
            System.out.println("age > 20");
        }else{
            System.out.println("age <= 20");
        }

        //switch
        int a = r.nextInt(10);

        switch(a){
            case 5 : System.out.println("1- a = " + a);
            break;
            case 8 : System.out.println("2- a = " + a);
            break;
            case 2 : System.out.println("3- a = " + a);
            case 3 : System.out.println("3- a = " + a);
            default :
                System.out.println("3- a = " + a);
        }

        //while
        int x = 0;
        while(x != 5){
            System.out.println("Loop");
            x++;
        }

        x = 0;
        do{
            System.out.println("Loop");
            x++;
        }while(x != 5);

        //endregion

        //for
        for(int i = 0; i < 5; i++){
            System.out.println("Loop For");
        }

        */

        //endregion

        //region arrays
/*
        String[] cars = {"Dacia", "Kat", "Kot"};
        String[] obj = new String[5];

        obj[2] = "new Obj";

        //str2
        //String[3][3];
        String[][] bo = {
                {"str11", "str12", "str13"},
                {"str21", "str22", "str23"},
                {"str31", "str32", "str33"}
        };

        bo[0][0] = "str11_";

        for(int i = 0; i < 3; i++){
            for(int j = 0; j < 3; j++){
                System.out.println(bo[i][j]);
            }
        }
*/
        //endregion

        //region string methods
/*
        String name = "Bro";

        boolean result = name.equalsIgnoreCase("bro");
        boolean a = name.equals("Bro");
        int b = name.length();
        int c = name.charAt(0);
        int d = name.indexOf("Br");
        boolean e = name.isEmpty();
        String f = name.toUpperCase(Locale.ROOT);
        String g = name.trim();
        String h = name.replace("oldString", "newString");
        String i = name.toLowerCase(Locale.ROOT);
*/
        //endregion

        //region wrapper classes

        /*
        primitive LIKE boolean char int double
        wrapper = LIKE Boolean Character  Integer Double => More Functionality
        autoboxing = the automatic conversion that the java compiler makes between the primitive to wrapper
        unboxing =  the reverse of autoboxing
        */

        //endregion

        //region ArrayList
        /*
        //import java.util.ArrayList
        //primitive types are not allowed => use wrapper types

        ArrayList<String> a = new ArrayList<String>();

        a.add("Pizza");
        a.add("Orange");
        a.add("hotdog");

        a.set(0, "Cool");
        a.remove(0);
        a.clear();
        for(int i = 0; i < a.size(); i++){
            System.out.println(a.get(i));
        }
        */
        //endregion

        //region 2D ArrayList

        //ArrayList<ArrayList<String>> a = new ArrayList<ArrayList<String>>();

        //endregion

        //region for-each loop
/*
        String[] a = {"1", "2", "3", "4"};
        for(String i : a){
            System.out.println(i);
        }
*/
        //endregion

        //region methods
        //Method is a Method
        //endregion

        //region overloaded methods

        //Method that have the same name nut share different parameters
        //name + parameter = method signature

        //endregion

        //region printf
/*
        //printf of c
        System.out.printf("Sum Of Score is : %d\n", 123);
        //printf => % [flag] [precision] [width] [conversion-chars]
        //%b for boolean
        //%10s 10 space before s
        //-%10S 10 empty spaces after s
        //%.2f
        //+ output a + or - before a number
        //0 numeric values are zero-padded
        //, grouping separator if number > 1000
        float b = 50.22f;
        System.out.printf("Look |%-10.2f|\n", b);
        System.out.printf("Look |%+10.2f|\n", b);
        System.out.printf("Look |%+010.2f|\n", b);
        System.out.printf("Look |%,f|\n", 500890.36);
*/
        //endregion

        //region final keyword

        //final cannot be changed or updated

        final double pi = 3.14159;

        //endregion

        //region objects (OOP) && constructors

        //object = an instance of a class the may contain methods and attributes
        //class 1
/*
        Class1 a = new Class1();
        System.out.println(a.x);
        System.out.println(a.y);
        System.out.println(a.sum());

        Class1 b = new Class1(10, 20);
        System.out.println(b.x);
        System.out.println(b.y);
        System.out.println(b.sum());
*/

        //endregion

        //region variable scope

        //local
        //global

        //endregion

        //region overloaded constructors

        //multiple constructor with the same name but different parameters

        //endregion

        //region toString method

        //he redefine toString Method in the class

        //endregion

        //region array of objects

        //array of objects

        //endregion

        //region static keyword

        //static = a single copy of a variable/method is created and shared
        //CLASSNAME.STATIC_VARIABLE
        //CLASSNAME.STATIC_METHOD

        //endregion

        //region inheritance

        //class extends otherClasses

        //endregion

        //region method overriding & super keyword

        //@Override
        //super in constructor pass the parameter to the father constructor
        //super in method for call the father method
        //ClassFather -- ClassChild

        /*ClassChild child = new ClassChild("Anas", "Ben Hamou", "Mohammed", "Ben Hamou");
        child.display();*/

        //endregion

        //region abstraction

        //abstract class Name
        //abstract void NameMethod();

        //endregion

        //region access modifiers & encapsulation

        //public - private - protected
        //make the class variables all private and use getters and setters
        /*
        *Because 2 weeks (months, years) from now when you realize that your setter needs to do more than just set the value,
        *  you'll also realize that the property has been used directly in 238 other classes :-)
        * */

        //endregion

        //region copy object

        /*CopyClass x = new CopyClass("Cool");
        CopyClass y = new CopyClass("OtherCool");
        CopyClass z = new CopyClass(y);

        y.copy(x);
        System.out.println(x.name);
        System.out.println(y.name);
        System.out.println(z.name);
        System.out.println(x);
        System.out.println(y);
        System.out.println(z);*/
        //endregion

        //region interface

        /*
        * An interface is a special form of an abstract class which does not implement any methods.
        * In Java, you create an interface like this:
        * */
/*
        InterFace interFace = new InterFace();

        interFace.talk();
*/
        //endregion

        //region polymorphism = many form & dynamic polymorphism

        //the same like c++
        /*
        Class C
        Class A have method Override go() inherit C
        Class B have method Override go() inherit C
        C = A
        C = B
        C.go() -> A
        C.go() -> B
        */

        //endregion

        //region exception handling
/*
        try{
            int a = 5 / 0;
        }catch (ArithmeticException e){
            System.out.println("Can divide by 0");
        }catch (InputMismatchException e){
            System.out.println("Please Enter a 0 Or 1 Not a String");
        }catch (Exception e){
            System.out.println("All Exceptions");
        }finally{
            System.out.println("End of Test");
        }
*/
        //endregion

        //region file
        //import java.io.File;
        /*File newFile = new File("src\\test");

        newFile.exists();
        newFile.getAbsolutePath();
        newFile.getName();
        newFile.getPath();
        newFile.delete();
        newFile.isFile();
        if(newFile.exists()){
            System.out.println("Exist");
        }else{
            System.out.println("Not exist");
        }*/

        //endregion

        //region File Writer AND Reader

        /*try{
            FileWriter writer = new FileWriter("src\\test");
            writer.write("first line\n");
            writer.append("Second Line");
            writer.close();
        }catch (IOException e){
            e.printStackTrace();
        }

        try{
            FileReader reader = new FileReader("src\\test");
            int data = reader.read();
            while(data != -1){
                System.out.print((char)data);
                data = reader.read();
            }
            reader.close();
        }catch (IOException e){
            e.printStackTrace();
        }*/


        //endregion

        //region Audio

        /*File file = new File("src\\files\\music.wav");
        try{
            AudioInputStream audioStream = AudioSystem.getAudioInputStream(file);
            Clip c = AudioSystem.getClip();
            c.open(audioStream);

            Scanner scanner = new Scanner(System.in);
            String response = "";

            while(!response.equals("Q")){
                switch(response){
                    case("P") : c.start(); break;
                    case("S") : c.stop();break;
                    case("R") : c.setMicrosecondPosition(0);
                }
                System.out.print("Command : ");
                response = scanner.next();
                response = response.toUpperCase(Locale.ROOT);
            }
            c.close();
            System.out.println("End Player");

        }catch (Exception e){
            e.printStackTrace();
        }*/


        //endregion

        //region GUI

        /*JFrame frame = new JFrame();
        frame.setTitle("First Window");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setResizable(false);
        frame.setSize(420, 420);
        frame.setVisible(true);

        ImageIcon image = new ImageIcon("src\\files\\icon.png");
        frame.setIconImage(image.getImage());
        frame.getContentPane().setBackground(new Color(0x123456));*/

        /*
        MyWindow newWindow = new MyWindow();
        */


        //endregion

        //region Labels

        //JLabel = a GUI component that display area for a string of txt, an image or both

        /*
        JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Label");
        frame.setSize(1000, 1000);


        ImageIcon image = new ImageIcon("src\\files\\icon.png");
        Border border = BorderFactory.createLineBorder(Color.CYAN, 3);

        JLabel label = new JLabel();
        label.setText("New Text");
        label.setIcon(image);
        label.setHorizontalTextPosition(JLabel.CENTER);
        label.setVerticalTextPosition(JLabel.TOP);
        label.setForeground(new Color(0x00FF00));
        label.setFont(new Font("MV", Font.PLAIN, 20)); //set Font
        label.setIconTextGap(-25);
        label.setBackground(Color.BLACK);
        label.setOpaque(true);
        label.setBorder(border);
        label.setVerticalAlignment(JLabel.CENTER);
        label.setHorizontalAlignment(JLabel.CENTER);
        //label.setBounds(0, 0, 500, 750); //related to frame.setLayout(null);


        //frame.setLayout(null);
        frame.add(label);
        frame.pack(); //auto resize
        frame.setVisible(true);
*/
        //endregion

        //region panels


        /*ImageIcon image = new ImageIcon("src\\files\\icon.png");

        JLabel label = new JLabel();
        label.setText("Label 1");
        label.setFont(new Font("MV", Font.PLAIN, 20)); //set Font
        label.setForeground(new Color(0xFFFFFF));
        //label.setIcon(image);
        label.setHorizontalAlignment(JLabel.CENTER);
        //label.setBounds(0, 0, 50, 50);

        JPanel bluePanel = new JPanel();
        bluePanel.setBackground(new Color(0x0000FF));
        bluePanel.setBounds(0, 0, 250, 250);
        bluePanel.setLayout(new BorderLayout());
        bluePanel.add(label);

        JPanel readPanel = new JPanel();
        readPanel.setBackground(new Color(0xFF0000));
        readPanel.setBounds(250, 0, 250, 250);

        JPanel greenPanel = new JPanel();
        greenPanel.setBackground(new Color(0x00FF00));
        greenPanel.setBounds(0, 250, 500, 250);

        JFrame frame = new JFrame();
        frame.setSize(1000, 1000);
        frame.setTitle("Panel");
        frame.setLayout(null);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        frame.add(bluePanel);
        frame.add(readPanel);
        frame.add(greenPanel);
        frame.setVisible(true);*/

        //endregion

        //region button

        //MyButton a = new MyButton();

        //endregion

        //region BorderLayout

        /*JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(500, 500);
        frame.setLayout(new BorderLayout(10, 10));

        JPanel p1 = new JPanel();
        JPanel p2 = new JPanel();
        JPanel p3 = new JPanel();
        JPanel p4 = new JPanel();
        JPanel p5 = new JPanel();

        p1.setBackground(Color.cyan);
        p2.setBackground(Color.BLUE);
        p3.setBackground(Color.GREEN);
        p4.setBackground(Color.red);
        p5.setBackground(Color.ORANGE);

        p1.setPreferredSize(new Dimension(100, 100));
        p2.setPreferredSize(new Dimension(100, 100));
        p3.setPreferredSize(new Dimension(100, 100));
        p4.setPreferredSize(new Dimension(100, 100));
        p5.setPreferredSize(new Dimension(100, 100));

        frame.add(p1, BorderLayout.CENTER);
        frame.add(p2, BorderLayout.WEST);
        frame.add(p3, BorderLayout.EAST);
        frame.add(p4, BorderLayout.NORTH);
        frame.add(p5, BorderLayout.SOUTH);

        frame.setVisible(true);*/

        //endregion

        //region flowLayout

        /*JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(500, 500);
        frame.setLayout(new FlowLayout(FlowLayout.LEADING, 10, 10));

        frame.add(new JButton("1"));
        frame.add(new JButton("2"));
        frame.add(new JButton("3"));
        frame.add(new JButton("4"));
        frame.add(new JButton("5"));
        frame.add(new JButton("6"));

        frame.setVisible(true);*/

        //endregion

        //region GridLayout

        /*JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(500, 500);
        frame.setLayout(new GridLayout(3, 3, 10, 10));

        frame.add(new JButton("1"));
        frame.add(new JButton("2"));
        frame.add(new JButton("3"));
        frame.add(new JButton("4"));
        frame.add(new JButton("5"));
        frame.add(new JButton("6"));
        frame.add(new JButton("7"));
        frame.add(new JButton("8"));
        frame.add(new JButton("9"));

        frame.setVisible(true);*/

        //endregion

        //region JLayeredPane

        /*JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(500, 500);
        frame.setLayout(null);

        JLabel label1 = new JLabel();
        label1.setOpaque(true);
        label1.setBackground(new Color(255, 0, 0, 150));
        label1.setBounds(100, 100, 75, 75);

        JLabel label2 = new JLabel();
        label2.setOpaque(true);
        label2.setBackground(new Color(0, 255, 0, 150));
        label2.setBounds(120, 120, 75, 75);

        JLabel label3 = new JLabel();
        label3.setOpaque(true);
        label3.setBackground(new Color(0, 0, 255, 150));
        label3.setBounds(140, 140, 75, 75);

        JLayeredPane layeredPane = new JLayeredPane();
        layeredPane.setBounds(0, 0, 500, 500);
        layeredPane.add(label1, Integer.valueOf(2));
        layeredPane.add(label2, Integer.valueOf(1));
        layeredPane.add(label3, Integer.valueOf(0));

        //layeredPane.add(label1, JLayeredPane.DEFAULT_LAYER);
        //layeredPane.add(label2, JLayeredPane.DEFAULT_LAYER);
        //layeredPane.add(label3, JLayeredPane.DRAG_LAYER);



        frame.add(layeredPane);
        frame.setVisible(true);*/

        //endregion

        //region create a new window

        //endregion

        //region JoptionPane

        //JOptionPane.showMessageDialog(null, "Message", "title", JOptionPane.PLAIN_MESSAGE);
        //JOptionPane.showMessageDialog(null, "Message", "title", JOptionPane.INFORMATION_MESSAGE);
        //JOptionPane.showMessageDialog(null, "Message", "title", JOptionPane.QUESTION_MESSAGE);
        //JOptionPane.showMessageDialog(null, "Message", "title", JOptionPane.WARNING_MESSAGE);
        //JOptionPane.showMessageDialog(null, "Message", "title", JOptionPane.ERROR_MESSAGE);

       //int result = JOptionPane.showConfirmDialog(null, "Message", "Title", JOptionPane.YES_NO_CANCEL_OPTION);
        //String answer = JOptionPane.showInputDialog("What is you name ? ");
        //System.out.println(answer);

        /*String[] options = {"Yeh", "Nop", "I don't know"};
        ImageIcon image = new ImageIcon("src/files/add.png");
        JOptionPane.showOptionDialog(null,
                "Message",
                "Title",
                JOptionPane.YES_NO_CANCEL_OPTION,
                JOptionPane.INFORMATION_MESSAGE,
                image, options, 0);*/

        //endregion

        //region TextField

        //new MyInput();

        //endregion

        //region CheckBox

        //new MyCkeckBox();

        //endregion

        //region RadioButtons

        //new MyRadio();

        //endregion

        //region comboBox

        //new MyComboBox();

        //endregion

        //region myJSlider

        //new MySlider();

        //endregion

        //region MyProgressBar

        //new MyProgressBar();

        //endregion

        //region menu bar

        //new MyMenu();

        //endregion

        //region JFile choser

        //new MyFileChooser();

        //endregion

        //region JColorChooser

        //new MyColorChooser();

        //endregion

        //region KeyListener

        //new TheKeyListener();

        //endregion

        //region MouseListener

        //new TheMouseListener();

        //endregion

        //region drag and drop
        new TheDragAndDrop();
        //endregion

    }

}

