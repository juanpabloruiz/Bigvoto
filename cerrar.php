<?php
session_start();
include('config.php');
mysqli_query($link, "SELECT * from usuarios");
$user = $_SESSION['id_usuario'];
if(session_destroy()){
mysqli_query($link, "UPDATE usuarios SET estado = 'desconectado' WHERE id_usuario = '$user' ") OR DIE(mysqli_connect_error());
}
header( "refresh:0;url=index.php" );
?>