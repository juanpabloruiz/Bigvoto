<!DOCTYPE hmtl>
<html lang="es">
<head>
	<title>ivoto</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<style>
	.container {
		margin-top: 70px;
	}
	body {
		margin-bottom: 70px;
	}
	html {
		position: relative;
		min-height: 100%;
	}
	footer {
		background: #333;
		color: white;
		position: absolute;
		bottom: 0;
		padding: 20px 0;
		width: 100%;
		height: 60px;
		text-align: center;
	}
	</style>
	<script language="javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
            
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="inicio.php">ivoto</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li><a href="exptes.php">Expedientes</a></li>
                <li><a href="carga.php">Publicar</a></li>
                
              </ul>
              


            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>


	<div class="container">

		<?php

include('config.php');

// Editar registro
if(isset($_GET['edit'])) {
	$edit = $_GET['edit'];
	$query = mysqli_query($link, "SELECT * FROM exptes WHERE id_expte = '$edit'");
	$data = mysqli_fetch_array($query);
	echo '<form method="post" action="">';
	echo '<div class="form-group col-md-2"><label for="sesion">Sesión</label><input type="text" name="sesion" id="label" value="'.$data['sesion'].'" class="form-control"></div>';
	echo '<div class="form-group col-md-2"><label for="item">Item</label><input type="text" name="item" id="item" value="'.$data['item'].'" class="form-control"></div>';
	echo '<div class="form-group col-md-2"><label for="expte">Expte</label><input type="text" name="expte" id="expte" value="'.$data['expte'].'" class="form-control"></div>';
	echo '<div class="form-group col-md-2"><label for="despacho">Despacho</label><input type="text" name="despacho" id="despacho" value="'.$data['despacho'].'" class="form-control"></div>';
	echo '<div class="form-group col-md-2"><label for="articulos">Artículos</label><input type="text" name="articulos" id="articulos" value="'.$data['articulos'].'" class="form-control"></div>';


	echo '
	<div class="form-group col-md-6">
	<label for="cats">
	Categorías
	</label>
	<select name="cat" class="form-control">
	';
	$registros = mysqli_query($link, "SELECT * FROM categorias");
	echo '<option value="Sin asignar" selected></option>';
	while($reg = mysqli_fetch_array($registros)) {
	echo '<option value="'.$reg['id_cat'].'">'.$reg['categoria'].'</option>';
	}
	
echo '
	</select>
	</div>
	';


	echo '
	<div class="form-group col-md-6">
	<label for="sub">
	Subcategorías
	</label>
	<select name="sub" class="form-control">
	';
	$registros = mysqli_query($link, "SELECT * FROM subcategorias");
	echo '<option value="Sin asignar" selected></option>';
	while($reg = mysqli_fetch_array($registros)) {
	echo '<option value="'.$reg['id_subcat'].'">'.$reg['subcategoria'].'</option>';
	}
	
echo '
	</select>
	</div>
	';






	echo '<div class="form-group"><textarea name="post" rows="10" class="form-control">'.$data['extracto'].'</textarea></div>';
	echo '<div class="form-group"><button type="submit" name="save" class="btn btn-primary">Guardar</button></div>';
	echo '</form>';
	if(isset($_POST['save'])) {
		$expte = $_POST['expte'];
		$extracto = $_POST['extracto'];
		$extracto_pro = addslashes($extracto);
		mysqli_query($link, "UPDATE posts SET title = '$expte', post = '$extracto_pro' WHERE id_expte = '$edit'");
		echo '<script>window.location="exptes.php"</script>';
	}
} else {
?>

		

		<form method="post" action="">

			<div class="form-group">
				<label for="sesion">Sesión Nº</label>
				<input type="text" name="sesion" class="form-control">
			</div>

			<div class="form-group">
				<label for="item">Item Nº</label>
				<input type="text" name="item" class="form-control">
			</div>

			<div class="form-group">
				<label for="expte">Expediente Nº</label>
				<input type="text" name="expte" class="form-control">
			</div>

			<div class="form-group">
				<label for="despacho">Despacho Nº</label>
				<input type="text" name="despacho" class="form-control">
			</div>

			<div class="form-group">
				<label for="articulos">Artículos</label>
				<input type="number" name="articulos" class="form-control">
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
				<label for="extracto">Extracto</label>
				<textarea name="extracto" class="form-control" rows="5"></textarea>
			</div>

			<button type="submit" name="submit" class="btn btn-primary">Guardar</button>

		</form>

	</section>

<?php } ?>
	
</div><footer>ivoto <?php echo date('Y'); ?> - Corrientes - Argentina</footer>

</body>
</html>

<?php

if(isset($_POST['submit'])) {
	$sesion = $_POST['sesion'];
	$item = $_POST['item'];
	$expte = $_POST['expte'];
	$despacho = $_POST['despacho'];
	$extracto = $_POST['extracto'];
	$articulos = $_POST['articulos'];
	$categoria = $_POST['categoria'];
	$subcategoria = $_POST['subcategoria'];
	$fecha = date('Y-m-d');
	$sql = "INSERT INTO exptes (sesion, item, expte, despacho, extracto, SI, NO, ABS, estado, tablero, articulos, categoria, subcategoria, resultado, nominal, fecha) VALUES ('".$sesion."', '".$item."', '".$expte."', '".$despacho."', '".$extracto."', '', '', '', 'inactivo', 'apagado', '".$articulos."', '".$categoria."', '".$subcategoria."', '', '', '$fecha')";
	
	$articulo = $_POST['articulos']+1;
	
	
for ($i = 1; $i < $articulo; ++$i)
{ 
	$num = 1;
	$sql2 = "INSERT INTO articulos (articulo, expte_id, SI, NO, ABS, power, tablero, resultado, nominal, fecha, sesion) VALUES ('".$i."', '".$expte."', '', '', '', 'off', 'apagado', '', '', '$fecha', '$sesion')";
	if ($link->query($sql2) === TRUE) {
		echo "Un nuevo expediente se ha ingresado en la base de datos";
	} else {
		echo "Error: " . $sql2 . "<br>" . $link->error;
	}
}
	



if ($link->query($sql) === TRUE) {
		echo "Un nuevo expediente se ha ingresado en la base de datos";
	} else {
		echo "Error: " . $sql . "<br>" . $link->error;
	}

}

?>