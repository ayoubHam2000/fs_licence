public class CopyClass {

    String name;

    CopyClass(String name){
        this.setName(name);
    }

    CopyClass(CopyClass x){
        copy(x);
    }

    void setName(String name){
        this.name = name;
    }

    String getName(){
        return name;
    }

    void copy(CopyClass x){
        this.setName(x.name);
    }

}
