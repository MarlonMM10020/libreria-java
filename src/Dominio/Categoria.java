package Dominio;

import java.util.ArrayList;

import Helper.dbHelper;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Categoria {
	private int idCategoria;
	private String nombre;
	
	private static dbHelper helper=new dbHelper();
	
	public Categoria(int idCategoria, String nombre) {
		super();
		this.idCategoria = idCategoria;
		this.nombre = nombre;
	}
	
	public Categoria(String nombre) {
		super();
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
		String sql="insert into categoria(nombre) values('"+getNombre()+"')";
		helper.ejecutarUpdateInsert(sql);
	}
	
	public static ArrayList<Categoria> listarCategorias(){
		ResultSet rs=null;
		ArrayList<Categoria> listaCategorias=new ArrayList<Categoria>();
		helper.abrirConexion();
		String sql="SELECT idcategoria,nombre from categoria";
		rs=helper.ejecutarConsulta(sql);
		try{
				while(rs.next()){
				listaCategorias.add(new Categoria(Integer.parseInt(rs.getString("idcategoria")),rs.getString("nombre")));
			}
		}catch(SQLException e){
			System.out.println("Error de lectura de categorías "+e.getMessage());
		}
		return listaCategorias;
	}
}
