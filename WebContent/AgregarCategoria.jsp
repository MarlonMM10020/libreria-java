<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Dominio.Categoria"%>
<%
	String nombre=request.getParameter("nombre");
	Categoria categoria=new Categoria(nombre);
	
	categoria.guardarCategoria();
	
	 response.sendRedirect("ListaCategorias.jsp");
%>