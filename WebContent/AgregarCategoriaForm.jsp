<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <title>Agregar categoría</title>
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
      			</ul>
			</div>
			
      		<ul class="side-nav" id="mobile-demo">
		        <li><a href="ListaCategorias.jsp">Categorias</a></li>
		     </ul>			
		</div>
	</nav>

	<div class="container">
		<h3 class="center">Agregar Categoría</h3>
	
		<div class="row">
			<form method="post" action="AgregarCategoria.jsp" class="col s12 m8 offset-m2">
			
			<div class="row">
				<div class="input-field col s12 m6">
		          <input id="nombre" name="nombre" type="text" class="validate">
		          <label for="nombre">Nombre de categoría</label>
		        </div>
				<div class="input-field col s12 m6 center">
					<button class="btn waves-effect waves-light" type="submit" name="action">Guardar
					    <i class="material-icons right">send</i>
					</button>      
				</div>
			</div>
			
		</form>
		</div>
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