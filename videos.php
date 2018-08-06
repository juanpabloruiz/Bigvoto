<?php include('config.php'); ?>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Tablero</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/stylee.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.js"></script>
    <style>


    .btn {
        border: 0px;
        border-radius: 0px;
        font-size: 1em;
        margin: 0.2em;
        padding: 1em;
        width: 23.8%;
    }
    .btn-danger {
        background: red;
    }
    .btn-success {
        background: green;
    }
    .btn-warning {
        background: #963801;
    }
    .navbar {
        
        
    }
    .col-xs-2 {
        right: 0px;
        width: 24%;
    }
    .col-xs-3 {
        border: 0px solid;
        margin: 0px;
        padding: 0px;
    }
    .list-group-item {
        border-radius: 0;
        color: white;
        display: inline-block;
        margin: 0px;
        padding: 0.3em 0.7em;
        text-transform: uppercase;
        width: 50%;
    }
   
    @media screen and (max-width: 768px) {
        .col-xs-6 {
            width: 100%;
        }
        .affix {
            position: relative;
        }
        .navbar {
            position: relative;
            width: 100%;
        }
    } 
    </style>
</head>
<body>
	


<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
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
                <li class="active"><a href="../">Inicio</a></li>
                <li><a href="exptes.php">Expedientes</a></li>
                <li><a href="tablero.php">Tablero</a></li>
                <li><a href="diputados.php">Diputados</a></li>
                <li><a href="videos.php">Vídeos</a></li>
                <li><a href="cerrar.php">Salir</a></li>
            </ul>
        </div>
    </div>

</nav>

<section>

	<?php
	include('config.php');
	$videos=mysqli_query($link, "SELECT * FROM videos");
	while($vi=mysqli_fetch_array($videos)) {
        echo $vi['video'];
		
	}
	?>

</section>

<footer>

</footer>
</body>
</html>