package pk.models;
// Generated Mar 18, 2021 3:55:37 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * Image generated by hbm2java
 */
@Entity
@Table(name="IMAGE"
    ,schema="MINE"
)
@SequenceGenerator(name = "image_sq",sequenceName = "image_sq")
public class Image  implements java.io.Serializable {


     private int idimg;
     private Produit produit;
     private String url;
     private String url2;
     private Boolean isprincipal;

    public Image() {
    }

	
    public Image(int idimg) {
        this.idimg = idimg;
    }
    public Image(int idimg, Produit produit, String url, String url2, Boolean isprincipal) {
       this.idimg = idimg;
       this.produit = produit;
       this.url = url;
       this.url2 = url2;
       this.isprincipal = isprincipal;
    }
   
     @Id 
@GeneratedValue(generator = "image_sq",strategy = GenerationType.SEQUENCE)
    
    @Column(name="IDIMG", unique=true, nullable=false, precision=8, scale=0)
    public int getIdimg() {
        return this.idimg;
    }
    
    public void setIdimg(int idimg) {
        this.idimg = idimg;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="IDP")
    public Produit getProduit() {
        return this.produit;
    }
    
    public void setProduit(Produit produit) {
        this.produit = produit;
    }

    
    @Column(name="URL", length=200)
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }

    
    @Column(name="URL2", length=200)
    public String getUrl2() {
        return this.url2;
    }
    
    public void setUrl2(String url2) {
        this.url2 = url2;
    }

    
    @Column(name="ISPRINCIPAL", precision=1, scale=0)
    public Boolean getIsprincipal() {
        return this.isprincipal;
    }
    
    public void setIsprincipal(Boolean isprincipal) {
        this.isprincipal = isprincipal;
    }




}


