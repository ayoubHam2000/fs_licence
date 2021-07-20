public class ClassFather {
    String fatherName;
    String fatherLastName;

    ClassFather(String fatherName, String fatherLastName){
        this.fatherName = fatherName;
        this.fatherLastName = fatherLastName;
    }

    public void display(){
        System.out.println(fatherName + " " + fatherLastName);
    }

}
