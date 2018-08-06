<?php

$get = $_GET['id_expte'];
include('config.php');
echo $get;
mysqli_query($link, "UPDATE articulos SET power = 'off'");
mysqli_query($link, "UPDATE notas SET estado = 'inactivo'");
mysqli_query($link, "UPDATE exptes SET estado = 'inactivo'");
mysqli_query($link, "UPDATE exptes SET estado = 'activo' WHERE id_expte = $get");
$registros = mysqli_query($link, "SELECT * FROM exptes WHERE estado = 'activo'");
while($reg=mysqli_fetch_array($registros)) {
	$tag = $reg['item'];
	header('Location:control.php#'.$tag.'');

}
?>