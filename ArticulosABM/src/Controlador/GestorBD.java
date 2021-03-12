
package Controlador;


import Modelo.Articulos;
import Modelo.tipo;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;


public class GestorBD {
    
        private String CADENA ="jdbc:sqlserver://MAURICIO-PC:1433;databaseName=ArticulosABM";
        private String USER = "sa" ;
        private String PASS = "123456" ;
                
        public ArrayList<Articulos> obtenerArticulos() {
            ArrayList<Articulos> lista = new ArrayList<>();
            try {
                Connection con = DriverManager.getConnection(CADENA, USER, PASS);
                Statement stmt = con.createStatement();
                ResultSet query = stmt.executeQuery("SELECT * FROM Articulos");
                
                while(query.next()){
                    
                    int id = query.getInt(1);
                    String descripcion = query.getString(2);
                    float precio = query.getFloat(3);
                    
                    Articulos a = new Articulos(id,descripcion,precio);
                    
                    lista.add(a);
                    
                }
                
                stmt.close();
                con.close();
            } 
            
            catch (SQLException ex) {
                ex.printStackTrace();
            }
            
            return lista;
        }
        public void agregarArticulo(Articulos nuevo){
            
             try {
                Connection con = DriverManager.getConnection(CADENA, USER, PASS);
                PreparedStatement prepare = con.prepareStatement("INSERT INTO Articulos values (?,?)");
                prepare.setString(1, nuevo.getDescripcion());
                prepare.setFloat(2, nuevo.getPrecio());
                
                
                prepare.executeLargeUpdate();
                prepare.close();
                con.close();
             }
             catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        
        
        
          public void agregarTipo(tipo tipo){
            
             try {
                Connection con = DriverManager.getConnection(CADENA, USER, PASS);
                PreparedStatement prepare = con.prepareStatement("INSERT INTO IdTipo (nombre)  values (?,?)");
                prepare.setString(1,tipo.getNombre());
                prepare.setInt(2, tipo.getArticulo().getId());
                
                prepare.executeLargeUpdate();
                prepare.close();
                con.close();
             }
             catch (SQLException ex) {
                ex.printStackTrace();
            }
          }
}
