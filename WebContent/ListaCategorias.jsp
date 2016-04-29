<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Dominio.Categoria" %>
<%@ page import="java.util.ArrayList" %>
<%
	ArrayList<Categoria> listaCategorias=Categoria.listarCategorias();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de categorías</title>
</head>
<body>
	<h1>Lista de categorías</h1>
	<a href=agregarCategoria.jsp>Agregar Categoría</a>
	<br>
	<%
		for(Categoria categoria: listaCategorias){%>
			<%=categoria.getIdCategoria() %>
			<%=categoria.getNombre() %>	
		<%}
	%>
</body>
</html>