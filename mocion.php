<?php
include('config.php');
mysqli_query($link, "UPDATE articulos SET power = 'off'");
mysqli_query($link, "UPDATE exptes SET tablero = 'apagado'");
mysqli_query($link, "UPDATE exptes SET estado = 'inactivo'");
mysqli_query($link, "UPDATE tablas SET tablero = 'apagado'");
mysqli_query($link, "UPDATE articulos SET tablero = 'apagado'");
mysqli_query($link, "UPDATE mociones SET tablero = 'apagado'");
$registros = mysqli_query($link, "INSERT INTO mociones (extracto, SI, NO, ABS, tablero, resultado, nominal) VALUES ('', '', '', '', 'encendido', '', 'inhabilitado')");
header('Location:control.php');
?>