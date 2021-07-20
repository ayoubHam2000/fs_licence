package TP3.Bibliothque;

import javax.print.Doc;

public class Bibliotheque {

    private Document[] documents;

    public Bibliotheque(int capacity){
        documents = new Document[capacity];
    }

    public void afficherDocuments(){
        int i;

        for (i = 0; i < documents.length; i++){
            if(documents[i] != null){
                System.out.println(documents[i]);
                System.out.println("------------------------");
            }
        }
    }

    public Document document(int i){
        if(i >= 0 && i < documents.length)
            return documents[i];
        return null;
    }

    public boolean ajouter(Document doc){
        if(doc == null) return false;
        int i = 0;
        while(i < documents.length && documents[i] != null)
            i++;
        if(i == documents.length)
            return false;
        documents[i] = doc;
        return true;
    }

    public boolean supprimer(Document doc){
        if(doc == null) return false;
        int i = 0;
        for(;i < documents.length; i++){
            if (documents[i].equals(doc)){
                documents[i] = null;
            }
        }
        return true;
    }

    public void afficherAuteurs(){
        int i;
        for (i = 0; i < documents.length; i++){
            if(documents[i] instanceof Livre){
                Livre l = (Livre) documents[i];
                System.out.println(l.getAuteur());
                System.out.println("------------------------");
            }
        }
    }

}
