<?php
session_start();
if($_SESSION["logeado"] != "SI") {
	echo "Aceso denegado";
	exit;
}
include('config.php');
include('functions.php');
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Tablero</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/sticky-footer.css">
    <link rel="stylesheet" href="style.css">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>

        <nav class="navbar navbar-default navbar-fixed-top">

        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegacion-fm">
                    <span class="sr-only">Desplegar / Ocultar Menu</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">ivoto</a>
            </div>
            <div class="collapse navbar-collapse" id="navegacion-fm">
                <ul class="nav navbar-nav">
                    <li><a href="control.php">Inicio</a></li>
                    <li><a href="exptes.php">Expedientes</a></li>
                    <li><a href="tablero.php">Tablero</a></li>
                    <li><a href="diputados.php">Diputados</a></li>
                    <li><a href="videos.php">Vídeos</a></li>
                    <li><a href="cerrar.php">Salir</a></li>
                </ul>
            </div>
        </div>
    </nav>
    