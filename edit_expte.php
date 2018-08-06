<?php include('config.php'); ?>
<!DOCTYPE hmtl>
<html lang="es">
<head>
	<title>ivoto</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="style.css">
	
</head>
<body>
	
<?php

	include('config.php');

 

?>

	

	<nav>
		<ul>
			<li><a href="panel.php">Inicio</a></li>
			<li><a href="carga.php">Agregar</a></li>
			<li><a href="exptes.php">Expedientes</a></li>
			<li><a href="diputados.php">Diputados</a></li>
			<li><a href="tablero.php">Tablero</a></li>
			<li><a href="cerrar.php">Cerrar sesión</a></li>
		</ul>
	</nav>

	<section>


<?php
$id_expte = $_GET['id_expte'];
$registros = mysqli_query($link, "SELECT * FROM exptes WHERE id_expte = $id_expte");
while($reg = mysqli_fetch_array($registros)) {
echo '
<form method="post" action="edit_expte_envio.php">
	<label for="sesion">Sesión Nº</label><br>
	<input type="number" name="sesion" value="'.$reg['sesion'].'"><br>
	<label for="expte">Expediente</label><br>
	<input type="number" name="expte" value="'.$reg['expte'].'"><br>
	<label for="expte">Despacho</label><br>
	<input type="number" name="despacho" value="'.$reg['despacho'].'"><br>
	<label for="expte">Artículos</label><br>
	<input type="number" name="articulos" value="'.$reg['articulos'].'"><br>
	<label for="extracto">Extracto</label><br>
	<textarea name="extracto" rows="7" cols="30">'.$reg['extracto'].'</textarea><br>
	<input type="submit" name="submit" value="Guardar">
</form>';

}
	
if(isset($_POST['submit'])) {
	$articulos = $_POST['articulos'];
	$expte = $_POST['expte'];
	$despacho = $_POST['despacho'];
	$extracto = $_POST['extracto'];
	if ($link->connect_error) {
		die("Connection failed: " . $link->connect_error);
	}
	$sql = "UPDATE exptes SET expte = $expte, articulos = $articulos, despacho = $despacho, extracto = 'holaaaa' WHERE expte = $expte";
	mysqli_query($link, "DELETE FROM articulos WHERE expte_id = '".$expte."'");
	
	
	$articulos = $_POST['articulos']+1;
	
	


for ($i = 1; $i < $articulos; ++$i)
{ 
	$num = 1;
	$sql2 = "INSERT INTO articulos (articulo, expte_id, SI, NO, ABS, power, tablero, resultado, nominal, sesion) VALUES ('".$i."', '".$expte."', '', '', '', 'off', 'apagado', '', '', '28')";
	if ($link->query($sql2) === TRUE) {
		echo "Un nuevo expediente se ha ingresado en la base de datos";
	} else {
		echo "Error: " . $sql2 . "<br>" . $link->error;
	}
}
	



if ($link->query($sql) === TRUE) {
		echo "Un nuevo expediente se ha ingresado en la base de datos";
	} else {
		echo "Error: " . $sql . "<br>" . $link->error;
	}
	

}



?>


<?php include('footer.php'); ?>