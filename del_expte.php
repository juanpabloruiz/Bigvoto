<?php
include('config.php');
$expte = $_GET['expte'];
mysqli_query($link, "DELETE FROM exptes WHERE expte = '".$expte."'");
mysqli_query($link, "DELETE FROM articulos WHERE expte_id = '".$expte."'");
echo 'listo';
header('Location:exptes.php');
?>