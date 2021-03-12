
package articulosabm;

import Controlador.GestorBD;
import Modelo.Articulos;
import Vista.ArticuloVentana;
import java.util.ArrayList;

/**
 *
 * @author Mauricio
 */
public class ArticulosABM {

    public static void main(String[] args) {
        
        
        
      /*  GestorBD g = new GestorBD();
        //g.agregarArticulo(new Articulos("parches 2.0", 1030));
        ArrayList<Articulos> lista = g.obtenerArticulos();
        for (Articulos articulo : lista) {
            System.out.println(articulo);
        }
       */
        
      ArticuloVentana AV = new ArticuloVentana();
      AV.setVisible(true);
    }
    
}
