public class ClassChild extends ClassFather{
    String name;
    String last_name;

    ClassChild(String name, String last_name, String father, String lastFatherName){
        super(father, lastFatherName);
        this.name = name;
        this.last_name = last_name;
    }

    @Override
    public void display(){
        super.display();
        System.out.println(name + " " + last_name);
    }

}
