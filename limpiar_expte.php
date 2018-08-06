<?php
$get = $_GET['id_expte'];
include('config.php');
mysqli_query($link, "UPDATE exptes SET SI = '', NO = '', ABS = '', resultado = '' WHERE id_expte = '".$get."'");
$registros = mysqli_query($link, "SELECT * FROM exptes WHERE estado = 'activo'");
while($reg=mysqli_fetch_array($registros)) {
	$tag = $reg['item'];
	header('Location:control.php#'.$tag.'');

}
?>