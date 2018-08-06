<?php
include('config.php');
$id = $_GET['id'];
mysqli_query($link, "UPDATE exptes SET tablero = 'apagado'");
mysqli_query($link, "UPDATE exptes SET estado = 'inactivo'");
mysqli_query($link, "UPDATE exptes SET nominal = 'inhabilitado'");
mysqli_query($link, "UPDATE tablas SET tablero = 'apagado'");
mysqli_query($link, "UPDATE tablas SET nominal = 'inhabilitado'");
mysqli_query($link, "UPDATE articulos SET tablero = 'apagado'");
mysqli_query($link, "UPDATE articulos SET nominal = 'inhabilitado'");
mysqli_query($link, "UPDATE articulos SET power = 'off'");
mysqli_query($link, "UPDATE mociones SET tablero = 'apagado'");
mysqli_query($link, "UPDATE notas SET estado = 'inactivo'");
mysqli_query($link, "UPDATE notas SET estado = 'activo' WHERE id_nota = $id");
$registros = mysqli_query($link, "SELECT * FROM notas WHERE estado = 'activo'");
while($re = mysqli_fetch_array($registros)) {
	$item = $re['item'];
	header('Location:control.php#'.$item.'');
}
?>