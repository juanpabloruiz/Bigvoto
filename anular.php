<?php
include('config.php');

$registros = mysqli_query($link, "SELECT * FROM tablas WHERE tablero = 'encendido'");
while($reg = mysqli_fetch_array($registros)) {
	$dip = $_GET['usuario'];
	$cadena_de_texto = $reg['SI'].$reg['NO'].$reg['ABS'];
	$cadena_buscada   = $dip;
	$posicion_coincidencia = strpos($cadena_de_texto, $cadena_buscada);
	if($posicion_coincidencia == true) {
		mysqli_query($link, "UPDATE tablas SET SI = REPLACE(SI,' $dip',''), NO = REPLACE(NO, ' $dip',''), ABS = REPLACE(ABS,' $dip','') WHERE tablero = 'encendido'");
		header('Location:aside.php');
	}
}




$mociones = mysqli_query($link, "SELECT * FROM mociones WHERE tablero = 'encendido'");
while($mo = mysqli_fetch_array($mociones)) {
	$dip = $_GET['usuario'];
	$cadena_de_texto = $mo['SI'].$mo['NO'].$mo['ABS'];
	$cadena_buscada   = $dip;
	$posicion_coincidencia = strpos($cadena_de_texto, $cadena_buscada);
	if($posicion_coincidencia == true) {
		mysqli_query($link, "UPDATE mociones SET SI = REPLACE(SI,' $dip',''), NO = REPLACE(NO, ' $dip',''), ABS = REPLACE(ABS,' $dip','') WHERE tablero = 'encendido'");
		header('Location:aside.php');
	} else {
			header('Location:aside.php');
		}
}






$registros = mysqli_query($link, "SELECT * FROM articulos ORDER BY tablero Desc LIMIT 1");
while($reg = mysqli_fetch_array($registros)) {
	$dip = $_GET['usuario'];
	$cadena_de_texto = $reg['SI'].$reg['NO'].$reg['ABS'];

	if($reg['tablero'] == 'encendido') {
	
		$cadena_buscada   = $dip;
		$posicion_coincidencia = strpos($cadena_de_texto, $cadena_buscada);
		if($posicion_coincidencia == true) {
			mysqli_query($link, "UPDATE articulos SET SI = REPLACE(SI,' $dip',''), NO = REPLACE(NO, ' $dip',''), ABS = REPLACE(ABS,' $dip','') WHERE power = 'on'");	
			header('Location:aside.php');
		} else {
			header('Location:aside.php');
		}
	} else {


$registros = mysqli_query($link, "SELECT * FROM exptes WHERE estado = 'activo'");
while($reg = mysqli_fetch_array($registros)) {
	$dip = $_GET['usuario'];
	$cadena_de_texto = $reg['SI'].$reg['NO'].$reg['ABS'];
	
		$cadena_buscada   = $dip;
		$posicion_coincidencia = strpos($cadena_de_texto, $cadena_buscada);
		if($posicion_coincidencia == true) {
	

	mysqli_query($link, "UPDATE exptes SET SI = REPLACE(SI,' $dip',''), NO = REPLACE(NO, ' $dip',''), ABS = REPLACE(ABS,' $dip','') WHERE estado = 'activo'");
	
		header('Location:aside.php');
	

} else {
	header('Location:aside.php');
}
}
	}
	
}

?>