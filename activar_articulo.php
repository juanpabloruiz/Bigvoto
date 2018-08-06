<?php
include('config.php');
$get = $_GET['id_articulo'];
echo $get;
mysqli_query($link, "UPDATE mociones SET tablero = 'apagado'");
mysqli_query($link, "UPDATE tablas SET tablero = 'apagado'");
mysqli_query($link, "UPDATE tablas SET nominal = 'inhabilitado'");
mysqli_query($link, "UPDATE exptes SET tablero = 'apagado'");
mysqli_query($link, "UPDATE exptes SET nominal = 'inhabilitado'");
mysqli_query($link, "UPDATE articulos SET tablero = 'apagado'");
mysqli_query($link, "UPDATE articulos SET nominal = 'inhabilitado'");
mysqli_query($link, "UPDATE articulos SET nominal = 'inhabilitado'");
mysqli_query($link, "UPDATE articulos SET tablero = 'encendido' WHERE id_articulo = $get");

$registros = mysqli_query($link, "SELECT * FROM articulos WHERE tablero = 'encendido'");
while($reg=mysqli_fetch_array($registros)) {
	$tag = $reg['articulo'];
	header('Location:control.php#'.$tag.'');

}
?>