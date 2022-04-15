
package pk.dao.ws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for payerCommande complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="payerCommande">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="nocart" type="{http://www.w3.org/2001/XMLSchema}long"/>
 *         &lt;element name="datevalid" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="crypto" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="mnt" type="{http://www.w3.org/2001/XMLSchema}float"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "payerCommande", propOrder = {
    "nocart",
    "datevalid",
    "crypto",
    "mnt"
})
public class PayerCommande {

    protected long nocart;
    protected String datevalid;
    protected int crypto;
    protected float mnt;

    /**
     * Gets the value of the nocart property.
     * 
     */
    public long getNocart() {
        return nocart;
    }

    /**
     * Sets the value of the nocart property.
     * 
     */
    public void setNocart(long value) {
        this.nocart = value;
    }

    /**
     * Gets the value of the datevalid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDatevalid() {
        return datevalid;
    }

    /**
     * Sets the value of the datevalid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDatevalid(String value) {
        this.datevalid = value;
    }

    /**
     * Gets the value of the crypto property.
     * 
     */
    public int getCrypto() {
        return crypto;
    }

    /**
     * Sets the value of the crypto property.
     * 
     */
    public void setCrypto(int value) {
        this.crypto = value;
    }

    /**
     * Gets the value of the mnt property.
     * 
     */
    public float getMnt() {
        return mnt;
    }

    /**
     * Sets the value of the mnt property.
     * 
     */
    public void setMnt(float value) {
        this.mnt = value;
    }

}
