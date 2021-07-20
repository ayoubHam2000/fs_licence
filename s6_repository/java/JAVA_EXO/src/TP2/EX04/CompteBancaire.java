package TP2.EX04;

public class CompteBancaire {

    static long nextCompte = 1001;

    private final long id;
    private final Client proprietaire;
    private double solde;
    private double decouvertMaximal;
    private double maxDebite;

    public CompteBancaire(Client proprietaire, double sold) {
        this.id = nextCompte;
        this.proprietaire = proprietaire;
        this.solde = sold;
        this.decouvertMaximal = 800; //null si sole > 0 || -sold si sold < 0
        this.maxDebite = 1000;

        this.proprietaire.addCompte(this);
        nextCompte++;
    }

    public CompteBancaire(Client proprietaire){
        this(proprietaire, 0);
    }

    //------------------------------------------

    public long getId() {
        return id;
    }

    public double getDecovert(){
        if(solde < 0){
            return - solde;
        }
        return 0;
    }

    public String estDecovert(){
        if (getDecovert() == 0)
            return "pas decovert";
        else
            return "decovert";
    }

    public void setDecouvertMaximal(double decouvertMaximal) {
        this.decouvertMaximal = decouvertMaximal;
    }

    public void setMaxDebite(double maxDebite){
        this.maxDebite = maxDebite;
    }


    //----------------------------------------------

    public void crediter(double mantant){
        if(mantant > 0){
            solde += mantant;
        }
    }

    public boolean debiter(double mantant){
        if(mantant >= 0 && mantant <= maxDebite){
            if (solde - mantant > - decouvertMaximal){
                solde -= mantant;
                return true;
            }
        }
        return false;
    }

    public void virement(CompteBancaire b, double montant){
        if(debiter(montant))
            b.crediter(montant);
    }

    //------------------------------------------------

    public void afficherInfo(){
        System.out.println("numéro du compte : " + id);
        System.out.println("nom : " + proprietaire.getNom());
        System.out.println("prénom : " + proprietaire.getPrenom());
        System.out.println("montant : " + solde);
        System.out.println("découvert  maximal  autorisé : " + decouvertMaximal);
        System.out.println("montant du  débit  maximal autorisé : " + maxDebite);
        System.out.println("situation du compte : " +  estDecovert());
    }


}
