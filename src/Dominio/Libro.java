package Dominio;
import Helper.dbHelper;

public class Libro {
	private int idLibro;
	private String nombre;
	private int idCategoria;
	private dbHelper helper=new dbHelper();
		
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
	
	public void guardarLibro(){
		helper.abrirConexion();
		String sql="insert into libro(idlibro,nombre,idcategoria) values('"+getIdLibro()+"','"+getNombre()+"','"+getIdCategoria()+"')";
		helper.ejecutarUpdateInsert(sql);
	}
		
}
