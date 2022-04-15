package pk.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/*

create user joeur identified by joeur ;
grant resource,connect to joeur ;
connect joeur/joeur ;


 */ 
public class UtilConnexion {
    public static Connection seConnecter() throws SQLException, Exception{
        
        String url="jdbc:oracle:thin:@localhost:1521/xe";
        String user="mine";
        String mdp="mine";
        
        
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            System.out.println("Driver chargé avec succés!");
            Connection con=DriverManager.getConnection(url, user, mdp);
            System.out.println("Connexion réussie!");
            return con;
            
        } catch (Exception ex) {
            throw new Exception ("Une erreur est survenue"+ex.getMessage());
        }
        
        
    }
        
}
