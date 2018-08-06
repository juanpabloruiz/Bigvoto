<?php
include('config.php');
$get = $_GET['id_tabla'];
$registros = mysqli_query($link, "UPDATE tablas SET resultado = 'aprobado' WHERE id_tabla = '".$get."'");
$registros = mysqli_query($link, "SELECT * FROM exptes WHERE estado = 'activo'");
while($reg=mysqli_fetch_array($registros)) {
	$tag = $reg['item'];
	header('Location:control.php#'.$tag.'');

}