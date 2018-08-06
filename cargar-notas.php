<?php include('config.php'); ?>
<!DOCTYPE hmtl>
<html lang="es">
<head>
	<title>ivoto</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<style>
	@font-face {
		font-family: Oswald;
		src: url('../fonts/Oswald-Regular.ttf');
	}
	body {
		font: 16px Helvetica, Arial, Serif;
		margin-bottom: 70px;
	}
	h1 {
		font-family: Oswald, Arial, Serif;
		font-size: 6em;
	}
	html {
		position: relative;
		min-height: 100%;
	}
	
	.footer {
		background: #333;
	  	position: absolute;
	  	bottom: 0;
	  	padding: 20px 0;
	  	width: 100%;
	  	height: 60px;
	  	text-align: center;
	  }

	.text-muted {
		color: #fff;
	}

	@media only screen and (max-width: 600px) {
		aside {
			display: none;
		}
		h1 {
			font-size: 3em;
		}
	}
	</style>
	<script language="javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>

<body>

	<!-- Menú -->

	<!-- Static navbar -->

    <nav class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="inicio.php">ivoto</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Base de Datos <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="exptes.php">Expedientes</a></li>
                <li><a href="carga.php">Publicar</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="notas.php">Notas</a></li>
                <li><a href="cargar-notas.php">Publicar</a></li>
              </ul>
            </li>
          </ul>

        </div><!--/.nav-collapse -->
      </div>
    </nav>


	<section class="container">

		<h2 class="page-header">Formulario para publicar notas</h2>

		<form method="post" action="">

			<div class="form-group">
			<label name="sesion">Sesión</label>
			<input type="number" name="sesion" class="form-control">
			</div>

			<div class="form-group">
			<label name="item">Item</label>
			<input type="text" name="item" class="form-control">
			</div>

			<div class="form-group">
			<label name="nota">Nota Nº</label>
			<input type="text" name="nota" class="form-control">
			</div>

			<div class="form-group">
				<label for="categoria">Categorías</label>
				<select name="categoria" class="form-control">
					<?php
					$registros = mysqli_query($link, "SELECT * FROM categorias");
					echo '<option value="Sin asignar" selected></option>';
					while($reg = mysqli_fetch_array($registros)) {
						echo '<option value="'.$reg['id_cat'].'">'.$reg['categoria'].'</option>';
					}
					?>
				</select>
			</div>

			<div class="form-group">
				<label for="subcategoria">Subcategorías</label>
				<select name="subcategoria" class="form-control">
					<?php
					$registros = mysqli_query($link, "SELECT * FROM subcategorias");
					echo '<option value="Sin asignar" selected></option>';
					while($reg = mysqli_fetch_array($registros)) {
						echo '<option value="'.$reg['id_subcat'].'">'.$reg['subcategoria'].'</option>';
					}
					?>
				</select>
			</div>

			<div class="form-group">
			<label name="extracto">Extracto</label>
			<textarea name="extracto" rows="5" class="form-control"></textarea>
			</div>

			<button type="submit" name="submit" class="btn btn-primary">Guardar</button>

		</form>

	</section>

<!-- Pie de página -->
	   
	<footer class="footer text-center">

		<div class="container">
	    
	        <p class="text-muted">ivoto <?=date('Y'); ?></p>
	    
	      </div>
	    
	    </footer>

</body>
</html>

<?php

	if(isset($_POST['submit'])) {
	$sesion = $_POST['sesion'];
	$item = $_POST['item'];
	$nota = $_POST['nota'];
	$extracto = $_POST['extracto'];
	$categoria = $_POST['categoria'];
	$subcategoria = $_POST['subcategoria'];
	$fecha = date('Y-m-d');
	$sql = "INSERT INTO notas (sesion, item, nota, extracto, SI, NO, ABS, estado, categoria, subcategoria, resultado, nominal, fecha) VALUES ('".$sesion."', '".$item."', '".$nota."', '".$extracto."', '', '', '', 'inactivo', '".$categoria."', '".$subcategoria."', '', '', '$fecha')";

	
	
	if ($link->query($sql) === TRUE) {
			echo "Un nuevo expediente se ha ingresado en la base de datos";
		} else {
			echo "Error: " . $sql . "<br>" . $link->error;
		}
		
	}

?>