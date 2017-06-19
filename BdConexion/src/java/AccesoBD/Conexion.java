
package AccesoBD;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author frz
 */
public class Conexion {
    protected Connection connection=null;
    protected Statement statement=null;
    private String errString;
    public Conexion(){}
    public Connection conectar(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/facturacion?zeroDateTimeBehavior=convertToNull","root","");
            statement = connection.createStatement();
            System.out.println("Conectado");
        } catch(Exception e) {
            errString = "Error mientras se conectaba a la base de datos";
            System.out.println(errString);
            return null;
        }
        return connection;
    }
    
    public Statement getStatement(){return this.statement;}
    
}