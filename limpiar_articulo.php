<?php
$get = $_GET['id_articulo'];
include('config.php');
mysqli_query($link, "UPDATE articulos SET SI = '', NO = '', ABS = '', resultado = '' WHERE id_articulo = '".$get."'");
$registros = mysqli_query($link, "SELECT * FROM articulos WHERE tablero = 'encendido'");
while($reg=mysqli_fetch_array($registros)) {
	$tag = $reg['articulo'];
	header('Location:control.php#'.$tag.'');

}
?>