<?php
include('config.php');
$get = $_GET['id_expte'];
$registros = mysqli_query($link, "UPDATE exptes SET resultado = 'aprobado' WHERE id_expte = '".$get."'");
$registros = mysqli_query($link, "SELECT * FROM exptes WHERE estado = 'activo'");
while($reg=mysqli_fetch_array($registros)) {
	$tag = $reg['item'];
	header('Location:control.php#'.$tag.'');

}
?>