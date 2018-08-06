<?php

	include('config.php');
	$dip = $_GET['usuario'];

	$usuarios = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '$dip'");
	$usuario = mysqli_fetch_array($usuarios);
	
	if($usuario['estado'] == 'ausente') {
		mysqli_query($link, "UPDATE usuarios SET estado = 'presente' WHERE usuario = '$dip'");
	} elseif($usuario['estado'] == 'presente') {
		mysqli_query($link, "UPDATE usuarios SET estado = 'ausente' WHERE usuario = '$dip'");
	}

	echo '<script>window.location="aside.php"</script>';

?>