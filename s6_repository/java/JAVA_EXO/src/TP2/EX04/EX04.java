package TP2.EX04;

public class EX04 {

    public static void main(String[] args){
        //testClient();
        testCompte();

    }

    public static void testClient(){
        Client c1 = new Client(210, "ayoub", "ben");

        CompteBancaire b1 = new CompteBancaire(c1, 200);
        CompteBancaire b2 = new CompteBancaire(c1);
        CompteBancaire b3 = new CompteBancaire(c1, 500);

        b1.crediter(2000);
        b1.setDecouvertMaximal(1000);
        b1.setMaxDebite(1200);

        b2.crediter(3200);
        b2.setDecouvertMaximal(1500);
        b2.setMaxDebite(1800);

        b3.setDecouvertMaximal(15000);
        b3.setMaxDebite(2000);

        c1.compteInfo(1001);

        c1.allCompteInfo();

    }

    public static void testCompte(){
        Client c1 = new Client(210, "ayoub", "ben");
        Client c2 = new Client(210, "alae", "din");


        CompteBancaire b1 = new CompteBancaire(c1);
        CompteBancaire b2 = new CompteBancaire(c2);

        b1.setMaxDebite(500);
        b1.setDecouvertMaximal(300);

        b2.setMaxDebite(500);
        b2.setDecouvertMaximal(400);

        b1.crediter(1200);
        b2.crediter(1500);

        //-----------------------------------------------------------
        b1.debiter(600); //pas de debiter 600 > 500
        b1.debiter(500); //debiter 500 (rest 700)
        b1.debiter(500); //debiter 500 (rest 200)
        b1.debiter(500); //pas de debiter (200 - 500) >= - 300 -> setDecouvertMaximal = 300
        //b1.afficherInfo();
        //------------------------------------------------------------


        b1.crediter(5000); //sold 5200

        //b2 //sold = 1500
        b2.virement(b1, 200);
        b1.afficherInfo();
        System.out.println("-------------------------");
        b2.afficherInfo();



    }

}
