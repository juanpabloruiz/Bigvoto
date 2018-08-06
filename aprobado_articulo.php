<?php
include('config.php');
$get = $_GET['id_articulo'];
$registros = mysqli_query($link, "UPDATE articulos SET resultado = 'aprobado' WHERE id_articulo = '".$get."'");
$registros = mysqli_query($link, "SELECT * FROM articulos WHERE tablero = 'encendido'");
while($reg=mysqli_fetch_array($registros)) {
	$tag = $reg['articulo'];
	header('Location:control.php#'.$tag.'');

}
?>