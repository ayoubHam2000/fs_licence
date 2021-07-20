package TP3.Bibliothque;

public class Livrotheque extends Bibliotheque {


    public Livrotheque(int capacity) {
        super(capacity);
    }

    public boolean ajouter(Document doc){
        if(doc instanceof Livre){
           return super.ajouter(doc);
        }
        return false;
    }

    public Livre livre(int i){
        Document doc;

        doc = super.document(i);
        if(doc instanceof Livre){
            return (Livre)doc;
        }
        return null;
    }

    //afficherAuteurs ??


}
