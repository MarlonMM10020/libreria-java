package Helper;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class dbHelper {
	
	private final static String DRIVER="com.mysql.jdbc.Driver";
	private final static String URL="jdbc:mysql://localhost/libreria";
	private final static String USER="root";
	private final static String PASS="root";
	private Connection conexion=null;
	private Statement sentencia=null;
	
	public void abrirConexion(){
		try{
			Class.forName(DRIVER);
			conexion=DriverManager.getConnection(URL,USER,PASS);
		}catch(ClassNotFoundException e){
			System.out.println("Error cargando driver "+e.getMessage());
		}catch(SQLException e){
			System.out.println("Error al conectar "+e.getMessage());
		}
	}
	
	public ResultSet ejecutarConsulta(String sql){
		ResultSet resultado=null;
		try{
			sentencia=conexion.createStatement();
			resultado=sentencia.executeQuery(sql);
			
		}catch(SQLException e){
			System.out.println("Error al ejecutar consulta "+e.getMessage());
		}
		return resultado;
		
	}
	
	public void cerrarConexion(){
		try{
			if(!conexion.isClosed()){
				conexion.close();
			}
		}catch(SQLException e){
			System.out.println("Error cerrando conexion "+e.getMessage());
		}
	}
	
	public void cerrarConsulta(){
		try{
			if(!sentencia.isClosed()){
				sentencia.close();
			}
		}catch(SQLException e){
			System.out.println("Error cerrando consulta "+e.getMessage());
		}
	}

}
