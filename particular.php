<?php
include('config.php');
$id = $_GET['id'];
mysqli_query($link, "UPDATE articulos SET power = 'off'");
mysqli_query($link, "UPDATE articulos SET power = 'on' WHERE expte_id = $id");
$registros = mysqli_query($link, "SELECT * FROM exptes WHERE estado = 'activo'");
while($re = mysqli_fetch_array($registros)) {
	$item = $re['item'];
	header('Location:control.php#'.$item.'');
}
?>