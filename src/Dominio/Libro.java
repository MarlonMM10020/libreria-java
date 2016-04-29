package Dominio;

public class Libro {
	private int idLibro;
	private String nombre;
	private int idCategoria;
		
	public Libro(int idLibro, String nombre, int idCategoria) {
		super();
		this.idLibro = idLibro;
		this.nombre = nombre;
		this.idCategoria = idCategoria;
	}
	public int getIdLibro() {
		return idLibro;
	}
	public void setIdLibro(int idLibro) {
		this.idLibro = idLibro;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}
	
	
	
	
}
