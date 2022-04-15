/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.models;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import pk.dao.HibernateUtil;

/**
 *
 * @author saad
 */
public class Wish {
    private List<ItemWishlist> items = new ArrayList<ItemWishlist>(0);
    public List<ItemWishlist> getItems() {
        return items;
    }
    public void setItems(List<ItemWishlist> items) {
        this.items = items;
    }
    
    public void addItem(int idp, int qte) {
        boolean flag = true;
        for (ItemWishlist lp : items) {
            if (lp.getProduit().getIdp() == idp) {
                lp.setQte(lp.getQte() + qte);
                flag = false;
                break;
            }
        }
        if (flag) {
            Session s = HibernateUtil.getSession();
            Produit pr = (Produit) s.get(Produit.class, idp);
            ItemWishlist lp = new ItemWishlist(pr, qte);
            items.add(lp);
        }
    }
    public void supprimerProduit(int idp) {
       for(ItemWishlist lp:items){
            if(lp.getProduit().getIdp()==idp){
               items.remove(lp);
               break;
            }
        }
    }
}
