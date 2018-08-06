<html>
<head>
	<meta charset="UTF-8">
	<title>Tablero</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/tablero.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>

	<?php

	include('config.php');
	include('functions.php');

	$registros = mysqli_query($link, "SELECT * FROM funciones WHERE id_funcion = 2");
	while($reg = mysqli_fetch_array($registros)) {
		if($reg['estado'] == 'activo') {
			echo '<div style="border: 0px solid #fff;margin: auto;width: 95%;">';
			echo '<img src="img/Logo-Animado.gif" class="img-responsive">';
			echo '</div>';
		} else {
			tablas();
			expedientes();
			articulos();
			mociones();
			presencia();
		}
	}

?>

</body>
</html>
