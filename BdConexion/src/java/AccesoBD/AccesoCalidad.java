
package AccesoBD;

import AccesoBD.Conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSet;
/**
 *
 * @author frz
 */
public class AccesoCalidad extends Conexion {
    private ResultSet resultado;
    public AccesoCalidad(){
        conectar();
    }
    public ResultSet listado() throws Exception{
        try{
            getStatement();
            resultado = statement.executeQuery("SELECT * FROM cliente");
            return resultado;
        } catch (Exception e){
            System.err.println("SQLException: "+e.getMessage());
            return null;
        }
    }
    public ResultSet buscarExistencia(String c) throws Exception{
        try{
            getStatement();
            String cc = "SELECT * FROM cliente WHERE idCliente LIKE '"+c+"%'";
            resultado = statement.executeQuery(cc);
            return resultado;
        } catch (Exception e){
            System.err.println("SQLException: "+e.getMessage());
            return null;
        }
    }
    public ResultSet buscarPorNombres(String n) throws Exception{
        try {
            getStatement();
            resultado = statement.executeQuery("SELECT * FROM cliente WHERE nombres LIKE '"+n+"%'");
            return resultado;
        } catch (Exception e) {
            System.err.println("SQLException: "+e.getMessage());
            return null;
        }
    }
    public ResultSet buscarPorProfesion(String p) throws Exception{
        try {
            getStatement();
            resultado = statement.executeQuery("SELECT * FROM cliente WHERE profesion LIKE '"+p+"%'");
            return resultado;
        } catch (Exception e) {
            System.err.println("SQLException: "+e.getMessage());
            return null;
        }
    }
    public ResultSet buscarPorEspecialidad(String es) throws Exception{
        try {
            getStatement();
            resultado = statement.executeQuery("SELECT * FROM cliente WHERE apellidos LIKE '"+es+"%'");
            return resultado;
        } catch (Exception e) {
            System.err.println("SQLException: "+e.getMessage());
            return null;
        }
    }
    public ResultSet buscarPorTelefono(String t) throws Exception{
        try {
            getStatement();
            resultado = statement.executeQuery("SELECT * FROM cliente WHERE telefono LIKE '"+t+"%'");
            return resultado;
        } catch (Exception e) {
            System.err.println("SQLException: "+e.getMessage());
            return null;
        }
    }
    
}