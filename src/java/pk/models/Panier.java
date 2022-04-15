 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.models;

import java.util.ArrayList;
import org.hibernate.Session;
import pk.dao.HibernateUtil;

/**
 *
 * @author Abdelmojib chrara
 */
public class Panier {
    private ArrayList<LignePanier> items=new ArrayList<LignePanier>();

    public void setItems(ArrayList<LignePanier> items) {
        this.items = items;
    }

    public ArrayList<LignePanier> getItems() {
        return items;
    }
    public void addItem(int idp,int qte){
        boolean flag=true;
        for(LignePanier lp:items){
            if(lp.getProduit().getIdp()==idp){
               lp.setQte(lp.getQte()+qte);
               flag=false;
               break;
            }
        }
        if(flag){
            Session s=HibernateUtil.getSession();
            Produit pr=(Produit) s.get(Produit.class, idp);
            LignePanier lp=new LignePanier(pr, qte);
            items.add(lp);
        }
    }

    public void augmenterQte(int idp) {
         for(LignePanier lp:items){
            if(lp.getProduit().getIdp()==idp){
               lp.setQte(lp.getQte()+1);
               
               break;
            }
        }
    }
    public void dimunierQte(int idp) {
         for(LignePanier lp:items){
            if(lp.getProduit().getIdp()==idp){
               lp.setQte(lp.getQte()-1);
               if(lp.getQte()==0){
                   items.remove(lp);
               }
               break;
            }
        }
    }
    public float fraisexpadition(){
        float f=0;
        for(LignePanier lp:items){
          f+=lp.getProduit().getFraisexpedition();       
        }
        return f;
    }
    public float total(){
        float f=0;
        for(LignePanier lp:items){
          f+=lp.getProduit().getPrix()*lp.getQte();      
        }
        return f;
        
    }

    public void supprimerProduit(int idp) {
       for(LignePanier lp:items){
            if(lp.getProduit().getIdp()==idp){
               items.remove(lp);
               break;
            }
        }
    }
    
}
