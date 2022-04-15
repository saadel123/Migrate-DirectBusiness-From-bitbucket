/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.models;

/**
 *
 * @author saad
 */
public class ItemWishlist {

    private Produit produit;
    private int qte;

    public ItemWishlist() {
    }

    public ItemWishlist(Produit produit, int qte) {
        this.produit = produit;
        this.qte = qte;
    }

    public int getQte() {
        return qte;
    }

    public void setQte(int qte) {
        this.qte = qte;
    }

   

    public Produit getProduit() {
        return produit;
    }

    public void setProduit(Produit produit) {
        this.produit = produit;
    }
}
