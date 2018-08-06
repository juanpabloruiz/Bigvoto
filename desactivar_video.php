<?php
include('config.php');
$id_video = $_GET['id_video'];
mysqli_query($link, "UPDATE videos SET tablero = 'apagado' WHERE id_video = '".$id_video."'");
header('Location:control.php');
?>