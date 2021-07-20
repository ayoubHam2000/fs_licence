package TP3.Entreprise;

public class Personnel {

    private Employe[] employes;

    private int nbrEmployee;
    private final static int MAX_EMPLOYEE = 200;

    public Personnel() {
        this.employes = new Employe[MAX_EMPLOYEE];
        this.nbrEmployee = 0;
    }

    public void ajouterEmploye(Employe e){
        if(nbrEmployee < MAX_EMPLOYEE){
            employes[nbrEmployee] = e;
            nbrEmployee++;
        }else{
            System.out.println("Max Employee est " + MAX_EMPLOYEE);
        }
    }

    public void voidcalculerSalaires(){
        Employe item;
        for(int i = 0; i < nbrEmployee; i++){
            item = employes[i];
            System.out.println(item.getNom() + " => " + item.calculerSalaire());
        }
    }

    public double salaireMoyen(){
        Employe item;
        double total = 0;

        for(int i = 0; i < nbrEmployee; i++){
            item = employes[i];
            total += item.calculerSalaire();
        }
        return total / nbrEmployee;
    }
    


}
