<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Helper.dbHelper"%>
<%@ page import="Dominio.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prueba de conexión a base de datos</title>
</head>
<body>
<%
	dbHelper helper=new dbHelper();
	helper.abrirConexion();
	
	//Creando nueva categoria
	Categoria categoria=new Categoria(1,"Prueba");
	categoria.guardarCategoria();
	
	//Guardando Libro
	Libro libro=new Libro(123456789,"Título",1);
	libro.guardarLibro();
	
	helper.cerrarConexion();
%>

</body>
</html>