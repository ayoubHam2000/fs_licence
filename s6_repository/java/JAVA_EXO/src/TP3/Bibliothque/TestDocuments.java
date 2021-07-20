package TP3.Bibliothque;

public class TestDocuments {

    public static void main(String[] args) {
        Document[] docs = new Document[5];

        docs[0] = new Livre(100, "Livre", "Auteur2", 300);
        docs[1] = new Roman(101, "Roman", "Auteur3", 300,1);
        docs[2] = new Manuel(102, "Manuel", "Auteur1", 300,"niveau");
        docs[3] = new Revue(103, "Revue", 12, 2000);
        docs[4] = new Dictionnaire(104, "Dictionnaire", "Arabe");

        for (int i = 0; i < 5; i++){
            System.out.println(docs[i]);
            System.out.println("------------------------");
        }

    }

}
