/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.dao.ws;

/**
 *
 * @author saad
 */
public class PaiementWS {

    public static String payerCommande(long nocart, java.lang.String datevalid, int crypto, float mnt) {
        pk.dao.ws.Paiement_Service service = new pk.dao.ws.Paiement_Service();
        pk.dao.ws.Paiement port = service.getPaiementPort();
        return port.payerCommande(nocart, datevalid, crypto, mnt);
    }






    
}
