<?php
$get = $_GET['id_mocion'];
include('config.php');
mysqli_query($link, "UPDATE mociones SET SI = '', NO = '', ABS = '', resultado = '' WHERE id_mocion = '".$get."'");
header('Location:control.php');
?>