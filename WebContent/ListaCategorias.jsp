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
	
	<div class="container">
		<h3 class="center">Lista de categorías</h3>
		<a href=AgregarCategoriaForm.jsp class="btn-floating btn-small waves-effect waves-light red"><i class="material-icons">add</i></a>
		<br>
		<table class="striped highlight">
			<thead>
				<tr>
					<th data-field="idCategoria">ID de categoría</th>
					<th data-field="nombre">Nombre</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(Categoria categoria: listaCategorias){%>
						<tr>
							<td><%=categoria.getIdCategoria()%></td>
							<td><%=categoria.getNombre()%></td>	
						</tr>
					<%}
				%>
			</tbody>
		</table>
	</div>
	
	<!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Compiled and minified JavaScript -->
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  	<script>
	  	$(document).ready(function(){});
	  	$(".button-collapse").sideNav();
  	</script>
</body>
</html>