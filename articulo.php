<?php




	$idart = $_GET['id_articulo'];
if ($_REQUEST['cod'] == $idart)
	include('config.php');


	$registros = mysqli_query($link, "SELECT * FROM articulos ORDER BY id_articulo Desc");
	$registros = mysqli_query($link, "UPDATE articulos SET estado = 'off'");
	$registros = mysqli_query($link, "UPDATE articulos SET estado = 'on' WHERE id_articulo = '".$idart."'");
	echo 'listo '.$idart;
	




?>