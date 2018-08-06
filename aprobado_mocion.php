<?php
include('config.php');
$get = $_GET['id_mocion'];
$registros = mysqli_query($link, "UPDATE mociones SET resultado = 'aprobado' WHERE id_mocion = '".$get."'");
header('Location:control.php');
?>