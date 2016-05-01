<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Dominio.Libro" %>
<html>
<head>
	  <title>Lista de libros</title>
	  <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>

	<nav>
		<div class="nav-wrapper blue darken-3">
			<div class="container">
				<a href="inicio.jsp" class="brand-logo offset-m2">Librería</a>
				<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
				<ul class="right hide-on-med-and-down">
		        	<li><a href="ListaCategorias.jsp">Categorias</a></li>
		        	<li><a href="ListaLibros.jsp">Libros</a></li>
      			</ul>
			</div>
			
      		<ul class="side-nav" id="mobile-demo">
		        <li><a href="ListaCategorias.jsp">Categorias</a></li>
		        <li><a href="ListaLibros.jsp">Libros</a></li>
		     </ul>			
		</div>
	</nav>
</body>
</html>