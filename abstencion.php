<?php
include('config.php');
$dip = $_GET['usuario'];
	

	mysqli_query($link, "UPDATE usuarios SET abstencion = 'activo' WHERE usuario = '".$dip."'") or die (mysqli_connect_error($link));
	
	echo 'listo';
		header('Location:aside.php');
	

	
	exit;

?>