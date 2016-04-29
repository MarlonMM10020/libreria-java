<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Helper.dbHelper"%>
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
	helper.ejecutarConsulta("SELECT * FROM libro");
	helper.cerrarConexion();
%>

</body>
</html>