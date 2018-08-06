<?php

	include('config.php');

	$registros = mysqli_query($link, "SELECT * FROM funciones WHERE id_funcion = 2");
	while($reg = mysqli_fetch_array($registros)) {
		if($reg['estado'] == 'activo') {
			mysqli_query($link, "UPDATE funciones SET estado = 'inactivo' WHERE id_funcion = 2");
		} else {
			mysqli_query($link, "UPDATE funciones SET estado = 'activo' WHERE id_funcion = 2");
		}
	}

	header('Location: control.php');

?>