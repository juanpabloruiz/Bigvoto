<?php

	include('config.php');
	$id = $_GET['id'];
	mysqli_query($link, "UPDATE exptes SET tablero = 'apagado'");
	mysqli_query($link, "UPDATE exptes SET nominal = 'inhabilitado'");
	mysqli_query($link, "UPDATE tablas SET tablero = 'apagado'");
	mysqli_query($link, "UPDATE tablas SET nominal = 'inhabilitado'");
	mysqli_query($link, "UPDATE articulos SET tablero = 'apagado'");
	mysqli_query($link, "UPDATE articulos SET nominal = 'inhabilitado'");
	mysqli_query($link, "UPDATE articulos SET power = 'off'");
	mysqli_query($link, "UPDATE mociones SET tablero = 'apagado'");
	mysqli_query($link, "UPDATE tablas SET tablero = 'encendido' WHERE id_tabla = $id");
	$registros = mysqli_query($link, "SELECT * FROM exptes WHERE estado = 'activo'");
	while($re = mysqli_fetch_array($registros)) {
		$expediente = $re['expte'];
		$extracto = $re['extracto'];
		$fecha = date('Y-m-d');
		mysqli_query($link, "INSERT INTO tablas (expte, fecha, extracto, estado, tablero, nominal) VALUES ('$expediente', '$fecha', '$extracto', 'activo', 'encendido', 'inhabilitado')");
		$item = $re['item'];
		header('Location:control.php#'.$item.'');
	}

?>