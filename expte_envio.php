<?php
include('config.php');

	$expte = $_GET['expte'];
	echo $expte;
	mysqli_query($link, "UPDATE articulos SET power = 'off'");
	mysqli_query($link, "UPDATE exptes SET estado = 'inactivo'");
	mysqli_query($link, "UPDATE exptes SET estado = 'activo' WHERE expte = '".$expte."'");
	
	header('refresh:0;panel.php');



?>