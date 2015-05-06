
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBconnection {
    public static Connection connection(){
        try {
            Class.forName("org.postgresql.Driver");
            System.out.println("znaleziony");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String url="jdbc:postgresql://178.19.104.18:5432/webtarsl_ads";
        String user="webtarsl_webtar";
        String password="webtar";
        
        Connection con=null;
        
        try {
            con=DriverManager.getConnection(url, user, password);
            System.out.println("jest ok");
        } catch (SQLException ex) {
            Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    return con;    
        
        
    }
}
