package TP3.Entreprise;

public class Salaires {

    public static void main(String[] args) {
        Personnel p = new Personnel();
        p.ajouterEmploye(new Vente("Mohammed", "Kamil", 45, "1995", 300000));
        p.ajouterEmploye(new Representation("Tayeb", "Amrani", 25, "2001", 200000));
        p.ajouterEmploye(new Production("Sara", "Kamili", 28, "1998", 1000));
        p.ajouterEmploye(new Manutention("Amine", "Moukhtari", 32, "1998", 45));
        p.ajouterEmploye(new SProduction("Anas", "Alaoui", 28, "2000", 1000));
        p.ajouterEmploye(new SManutention("Kamal", "Sabir", 30, "2001", 45));
        p.voidcalculerSalaires();
        System.out.println("Le salaire moyen dans l'entreprise est de "+p.salaireMoyen()+" Dhs.");
    }

}
