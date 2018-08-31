<?php
session_start();
if($_SESSION["logeado"] != "SI") {
	echo "Aceso denegado";
	exit;
}
include('config.php');
include('functions.php');
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Tablero</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>

	<aside>
	


	<?php
	

if($_POST)
{
    set_time_limit(0); // para quitar el timeout
    header("Edge-control: no-store");
include('config.php');
   
    $content = mysqli_query($link, "SELECT * FROM exptes");
    while($content=='')
        $content = mysqli_query($link, "SELECT * FROM exptes");


	
$registros = mysqli_query($link, "SELECT * FROM usuarios WHERE rango = 'diputado' ORDER BY apellido ASC");

echo '<ul class="list-group">';
while($reg = mysqli_fetch_array($registros)) {
	$dip = $reg['foto'];
	$user = $reg['usuario'];
	$apellido = $reg['apellido'];



	$tablas = mysqli_query($link, "SELECT * FROM tablas WHERE tablero = 'encendido'");
	while($tb = mysqli_fetch_array($tablas)) {

		$si = $tb['SI'];
		$no = $tb['NO'];
		$abs = $tb['ABS'];
		$cadena_buscada   = $user;
		$buscar_si = strpos($si, $cadena_buscada);
		$buscar_no = strpos($no, $cadena_buscada);
		$buscar_abs = strpos($abs, $cadena_buscada);
		if($buscar_si == true) {
			echo '<li class="list-group-item" style="background: green;">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($buscar_no == true) {
			echo '<li class="list-group-item" style="background: red;">'.$apellido;
			echo '<div class="right"><a class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($buscar_abs == true) {
				echo '<li class="list-group-item" style="background: #337ab7;">'.$apellido;
				echo '<div class="right"><a class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($reg['estado'] == 'presente'){
			echo '<li class="list-group-item" style="background: gray;">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a class="btn btn-success"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>';
			if($reg['abstencion'] == 'activo') {
				echo '<a role="button" style="background: red;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';				
			} else {
				echo '<a role="button" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
			}
			
		} else if($reg['estado'] == 'ausente'){
			echo '<li class="list-group-item" style="background: gray;">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a class="btn btn-danger"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>';
			if($reg['abstencion'] == 'activo') {
				echo '<a role="button" style="background: red;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';				
			} else {
				echo '<a role="button" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
			}
		}
	}







	$general = mysqli_query($link, "SELECT * FROM exptes WHERE tablero = 'encendido'");
	while($ge = mysqli_fetch_array($general)) {
		$si = $ge['SI'];
		$no = $ge['NO'];
		$abs = $ge['ABS'];
		$cadena_buscada   = $user;
		$buscar_si = strpos($si, $cadena_buscada);
		$buscar_no = strpos($no, $cadena_buscada);
		$buscar_abs = strpos($abs, $cadena_buscada);
		if($buscar_si == true) {
			echo '<li class="list-group-item list-group-item-success">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($buscar_no == true) {
			echo '<li class="list-group-item" style="background: red;">'.$apellido;
			echo '<div class="right"><a class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($buscar_abs == true) {
				echo '<li class="list-group-item" style="background: #337ab7;">'.$apellido;
				echo '<div class="right"><a class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($reg['estado'] == 'presente'){
			echo '<li class="list-group-item" style="background: gray;">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a class="btn btn-success"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>';
			if($reg['abstencion'] == 'activo') {
				echo '<a role="button" style="background: red;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';				
			} else {
				echo '<a role="button" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
			}
			
		} else if($reg['estado'] == 'ausente'){
			echo '<li class="list-group-item" style="background: gray;">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a class="btn btn-danger"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>';
			if($reg['abstencion'] == 'activo') {
				echo '<a role="button" style="background: red;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';				
			} else {
				echo '<a role="button" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
			}
		}
	}





$articulos = mysqli_query($link, "SELECT * FROM articulos WHERE tablero = 'encendido'");
	while($ar = mysqli_fetch_array($articulos)) {
		$si = $ar['SI'];
		$no = $ar['NO'];
		$abs = $ar['ABS'];
		$cadena_buscada   = $user;
		$buscar_si = strpos($si, $cadena_buscada);
		$buscar_no = strpos($no, $cadena_buscada);
		$buscar_abs = strpos($abs, $cadena_buscada);
		if($buscar_si == true) {
			echo '<li class="list-group-item" style="background: green;">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($buscar_no == true) {
			echo '<li class="list-group-item" style="background: red;">'.$apellido;
			echo '<div class="right"><a class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($buscar_abs == true) {
				echo '<li class="list-group-item" style="background: #337ab7;">'.$apellido;
				echo '<div class="right"><a class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($reg['estado'] == 'presente'){
			echo '<li class="list-group-item" style="background: gray;">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a class="btn btn-success"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>';
			if($reg['abstencion'] == 'activo') {
				echo '<a role="button" style="background: red;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';				
			} else {
				echo '<a role="button" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
			}
			
		} else if($reg['estado'] == 'ausente'){
			echo '<li class="list-group-item" style="background: gray;">'.$apellido;
			echo '<div class="right"><a style="" class="btn list-group-item"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a class="btn btn-danger"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>';
			if($reg['abstencion'] == 'activo') {
				echo '<a role="button" style="background: red;" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';				
			} else {
				echo '<a role="button" class="btn list-group-item" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
			}
		}
	}


$mociones = mysqli_query($link, "SELECT * FROM mociones WHERE tablero = 'encendido'");
	while($mo = mysqli_fetch_array($mociones)) {
		$si = $mo['SI'];
		$no = $mo['NO'];
		$abs = $mo['ABS'];
		$cadena_buscada   = $user;
		$buscar_si = strpos($si, $cadena_buscada);
		$buscar_no = strpos($no, $cadena_buscada);
		$buscar_abs = strpos($abs, $cadena_buscada);
		if($buscar_si == true) {
			echo '<li class="list-group-item" style="background: green;">'.$apellido;
			echo '<div class="right"><a style="" class="btn btn-default"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn btn-default" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($buscar_no == true) {
			echo '<li class="list-group-item" style="background: red;">'.$apellido;
			echo '<div class="right"><a class="btn btn-default"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn btn-default" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($buscar_abs == true) {
				echo '<li class="list-group-item" style="background: #337ab7;">'.$apellido;
				echo '<div class="right"><a class="btn btn-default"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn list-group-item"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a><a role="button" style="width: 30%;" class="btn btn-default" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
		} else if($reg['estado'] == 'presente'){
			echo '<li class="list-group-item" style="background: gray;">'.$apellido;
			echo '<div class="right"><a style="" class="btn btn-default"  href="anular.php?usuario='.$user.'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><a class="btn btn-success"  href="ausentar.php?usuario='.$user.'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>';
			if($reg['abstencion'] == 'activo') {
				echo '<a role="button" style="background: red;" class="btn btn-default" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';				
			} else {
				echo '<a role="button" class="btn btn-default" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
			}
			
		} else if($reg['estado'] == 'ausente'){
			echo '<li class="list-group-item" style="background: gray;">'.$apellido;
			echo '<div class="right">'; ?>
			
			<a class="btn btn-default"  href="anular.php?usuario=<?php echo $user; ?>">
				<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
			</a>
			
			<a class="btn btn-danger"  href="ausentar.php?usuario=<?php echo $user; ?>">
				<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
			</a>

			<?php if($reg['abstencion'] == 'activo') {
				echo '<a role="button" style="background: red;" class="btn btn-default" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';				
			} else {
				echo '<a role="button" class="btn btn-default" href="abstencion.php?usuario='.$user.'"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></div></li>';
			}
			
		}
	}
	
}

echo '</ul>';
exit();
}

?>
<div id="content">Cargando...</div>
<script type="text/javascript" src="comet.js"></script>

	</aside>