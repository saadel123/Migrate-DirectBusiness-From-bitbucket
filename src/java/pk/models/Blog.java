/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.models;

import java.util.Date;

/**
 *
 * @author saad
 */
public class Blog {
    int ida;  
    String titre;
    String text;
    String img;
    Date datepub;

    public Blog() {
    }

    public Blog(int ida, String titre, String text, String img, Date datepub) {
        this.ida = ida;
        this.titre = titre;
        this.text = text;
        this.img = img;
        this.datepub = datepub;
    }

    public int getIda() {
        return ida;
    }

    public String getTitre() {
        return titre;
    }

    public String getText() {
        return text;
    }

    public String getImg() {
        return img;
    }

    public Date getDatepub() {
        return datepub;
    }


    public void setIda(int ida) {
        this.ida = ida;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setDatepub(Date datepub) {
        this.datepub = datepub;
    }







    @Override
    public String toString() {
        return "Article{" + "ida=" + ida + ", titre=" + titre + ", text=" + text + ", img=" + img + ", datepub=" + datepub +   '}';
    }
    

    
    
    
    
    
    
    
    
}
