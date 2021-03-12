
package Modelo;

public class tipo {
        
    private int id;
    private String nombre;
    private Articulos articulo;

    @Override
    public String toString() {
        return "tipo{" + "id=" + id + ", nombre=" + nombre + ", articulo=" + articulo + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Articulos getArticulo() {
        return articulo;
    }

    public void setArticulo(Articulos articulo) {
        this.articulo = articulo;
    }

    public tipo(int id, String nombre, Articulos articulo) {
        this.id = id;
        this.nombre = nombre;
        this.articulo = articulo;
    }
}
