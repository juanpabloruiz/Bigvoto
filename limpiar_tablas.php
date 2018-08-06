<?php
$get = $_GET['id_tabla'];
include('config.php');
mysqli_query($link, "UPDATE tablas SET SI = '', NO = '', ABS = '', resultado = '' WHERE id_tabla = '".$get."'");
$registros = mysqli_query($link, "SELECT * FROM exptes WHERE estado = 'activo'");
while($reg=mysqli_fetch_array($registros)) {
	$tag = $reg['item'];
	header('Location:control.php#'.$tag.'');

}
?>