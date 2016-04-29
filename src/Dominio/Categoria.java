package Dominio;

import Helper.dbHelper;

public class Categoria {
	private int idCategoria;
	private String nombre;
	
	private dbHelper helper=new dbHelper();
	
	public Categoria(int idCategoria, String nombre) {
		super();
		this.idCategoria = idCategoria;
		this.nombre = nombre;
	}

	public int getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public void guardarCategoria(){
		helper.abrirConexion();
		String sql="insert into categoria(idCategoria,nombre) values('"+getIdCategoria()+"','"+getNombre()+"')";
		helper.ejecutarUpdateInsert(sql);
	}
}
