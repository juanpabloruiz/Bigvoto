
<?php include('config.php');





$registros = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '".$_SESSION['s_usuario']."'");
while($reg = mysqli_fetch_array($registros)) {
	
	if($reg['estado'] == 'presente') {


		$registros = mysqli_query($link, "SELECT * FROM articulos ORDER BY tablero Desc LIMIT 1");
while($reg = mysqli_fetch_array($registros)) {
   
if($reg['tablero'] == 'encendido') {

$registros = mysqli_query($link, "SELECT * FROM articulos WHERE tablero = 'encendido'");while($reg = mysqli_fetch_array($registros)) {
$cadena_de_texto = $reg['SI'].$reg['NO'].$reg['ABS'];$cadena_buscada   = $_SESSION['s_usuario'];$posicion_coincidencia = strpos($cadena_de_texto, $cadena_buscada);
if($posicion_coincidencia == true) {echo '<h1 style="display: block;text-align: center;width: 100%;">Usted ha votado</h1>';header('Location:votar.php');}

else {

	echo '<div id="expte">Artículo N° '.$reg['articulo'].' / Expte N° '.$reg['expte_id'].'</div><br>';
	echo '<form action="" method="post" onsubmit="return checkSubmit();">';
	echo '<input type="hidden" name="SI" value="'.$_SESSION['s_usuario'].'">';
	echo '<input type="hidden" name="NO" value="'.$_SESSION['s_usuario'].'">';
	echo '<input type="hidden" name="ABS" value="'.$_SESSION['s_usuario'].'">';
	
	$registros = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '".$_SESSION['s_usuario']."'");
	while($reg = mysqli_fetch_array($registros)) {
		if($reg['abstencion'] == 'activo') {
			?>
			<button data-dismiss="alert" style="border:0px;background: blue;display: inline-block;font-family: ubuntu;font-size: 4em;height: 50%;margin: 0.2em;width: 60%;" type="submit" onclick="return confirm('¿Está seguro de la abstención?');" name="abs" id="abs" value="ABS">Abstención</button>
			<?php
		} else {
			?>
			<button data-dismiss="alert" style="border:0px;background: green;display: inline-block;font-family: ubuntu;font-size: 5em;height: 50%;margin: 0.2em;width: 40%;" type="submit" onclick="return confirm('¿Está seguro del voto afirmativo?');" name="si" id="si" value="SI">SI</button>
			<button data-dismiss="alert" style="border: 0px;background: red;display: inline-block;font-family: ubuntu;font-size: 5em;height: 50%;margin: 0.2em;width: 40%;" type="submit" onclick="return confirm('¿Está seguro del voto negativo?');" name="no" id="no" value="NO">NO</button>
		<?php
		}
	}
	echo '</form>';}

if(isset($_POST['si'])) {$SI = $_POST['SI'];mysqli_query($link, "UPDATE articulos SET SI = CONCAT(SI,' $SI') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto afirmativo';header('Location:votar.php');}
else if(isset($_POST['no'])) {$NO = $_POST['NO'];mysqli_query($link, "UPDATE articulos SET NO = CONCAT(NO,' $NO') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto negativo';header('Location:votar.php');}
else if(isset($_POST['abs'])) {$ABS = $_POST['ABS'];mysqli_query($link, "UPDATE articulos SET ABS = CONCAT(ABS,' $ABS') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto negativo';header('Location:votar.php');}


}
	} else if($reg['tablero'] == 'apagado') {


$registros = mysqli_query($link, "SELECT * FROM exptes WHERE tablero = 'encendido'");while($reg = mysqli_fetch_array($registros)) {
$cadena_de_texto = $reg['SI'].$reg['NO'].$reg['ABS'];$cadena_buscada   = $_SESSION['s_usuario'];$posicion_coincidencia = strpos($cadena_de_texto, $cadena_buscada);
if($posicion_coincidencia == true) {echo '<h1 style="display: block;text-align: center;width: 100%;">Usted ha votado</h1>';header('Location:votar.php');}

else {
	echo '<div id="expte">N° '.$reg['expte'].'</div><br>';
	echo '<div id="extracto">'.$reg['extracto'].'</div><br>';
	echo '<form action="" method="post" onsubmit="return checkSubmit();">';
	echo '<input type="hidden" name="SI" value="'.$_SESSION['s_usuario'].'">';
	echo '<input type="hidden" name="NO" value="'.$_SESSION['s_usuario'].'">';
	echo '<input type="hidden" name="ABS" value="'.$_SESSION['s_usuario'].'">';
	$registros = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '".$_SESSION['s_usuario']."'");
	while($reg = mysqli_fetch_array($registros)) {
		if($reg['abstencion'] == 'activo') {
			?>
			<button data-dismiss="alert" style="border:0px;background: blue;display: inline-block;font-family: ubuntu;font-size: 4em;height: 50%;margin: 0.2em;width: 60%;" type="submit" onclick="return confirm('¿Está seguro de la abstención?');" name="abs" id="abs" value="ABS">Abstención</button>
			<?php
		} else {
			?>
			<button data-dismiss="alert" style="border:0px;background: green;display: inline-block;font-family: ubuntu;font-size: 5em;height: 50%;margin: 0.2em;width: 40%;" type="submit" onclick="return confirm('¿Está seguro del voto afirmativo?');" name="si" id="si" value="SI">SI</button>
			<button data-dismiss="alert" style="border: 0px;background: red;display: inline-block;font-family: ubuntu;font-size: 5em;height: 50%;margin: 0.2em;width: 40%;" type="submit" onclick="return confirm('¿Está seguro del voto negativo?');" name="no" id="no" value="NO">NO</button>
		<?php
		}
	}
	echo '</form>';}

if(isset($_POST['si'])) {$SI = $_POST['SI'];mysqli_query($link, "UPDATE exptes SET SI = CONCAT(SI,' $SI') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto afirmativo';header('Location:votar.php');}
else if(isset($_POST['no'])) {$NO = $_POST['NO'];mysqli_query($link, "UPDATE exptes SET NO = CONCAT(NO,' $NO') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto negativo';header('Location:votar.php');}
else if(isset($_POST['abs'])) {$ABS = $_POST['ABS'];mysqli_query($link, "UPDATE exptes SET ABS = CONCAT(ABS,' $ABS') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por la abstención';header('Location:votar.php');}

}
}
}











//////////////////////



$registros = mysqli_query($link, "SELECT * FROM tablas WHERE tablero = 'encendido'");while($reg = mysqli_fetch_array($registros)) {
$cadena_de_texto = $reg['SI'].$reg['NO'].$reg['ABS'];$cadena_buscada   = $_SESSION['s_usuario'];$posicion_coincidencia = strpos($cadena_de_texto, $cadena_buscada);
if($posicion_coincidencia == true) {echo '<h1 style="display: block;text-align: center;width: 100%;">Usted ha votado</h1>';header('Location:votar.php');}

else {
	echo '<div id="expte">N° '.$reg['expte'].' SOBRE TABLAS</div><br>';
	echo '<div id="extracto">'.$reg['extracto'].'</div><br>';
	echo '<form action="" method="post" onsubmit="return checkSubmit();">';
	echo '<input type="hidden" name="SI" value="'.$_SESSION['s_usuario'].'">';
	echo '<input type="hidden" name="NO" value="'.$_SESSION['s_usuario'].'">';
	echo '<input type="hidden" name="ABS" value="'.$_SESSION['s_usuario'].'">';
	$registros = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '".$_SESSION['s_usuario']."'");
	while($reg = mysqli_fetch_array($registros)) {
		if($reg['abstencion'] == 'activo') {
			?>
			<button data-dismiss="alert" style="border:0px;background: blue;display: inline-block;font-family: ubuntu;font-size: 4em;height: 50%;margin: 0.2em;width: 60%;" type="submit" onclick="return confirm('¿Está seguro de la abstención?');" name="abs" id="abs" value="ABS">Abstención</button>
			<?php
		} else {
			?>
			<button data-dismiss="alert" style="border:0px;background: green;display: inline-block;font-family: ubuntu;font-size: 5em;height: 50%;margin: 0.2em;width: 40%;" type="submit" onclick="return confirm('¿Está seguro del voto afirmativo?');" name="si" id="si" value="SI">SI</button>
			<button data-dismiss="alert" style="border: 0px;background: red;display: inline-block;font-family: ubuntu;font-size: 5em;height: 50%;margin: 0.2em;width: 40%;" type="submit" onclick="return confirm('¿Está seguro del voto negativo?');" name="no" id="no" value="NO">NO</button>
		<?php
		}
	}
	echo '</form>';}

if(isset($_POST['si'])) {$SI = $_POST['SI'];mysqli_query($link, "UPDATE tablas SET SI = CONCAT(SI,' $SI') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto afirmativo';header('Location:votar.php');}
else if(isset($_POST['no'])) {$NO = $_POST['NO'];mysqli_query($link, "UPDATE tablas SET NO = CONCAT(NO,' $NO') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto negativo';header('Location:votar.php');}
else if(isset($_POST['abs'])) {$ABS = $_POST['ABS'];mysqli_query($link, "UPDATE tablas SET ABS = CONCAT(ABS,' $ABS') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por la abstención';header('Location:votar.php');}









}




// Mociones //

$mociones = mysqli_query($link, "SELECT * FROM mociones WHERE tablero = 'encendido'");
while($mc = mysqli_fetch_array($mociones)) {
	$cadena_de_texto = $mc['SI'].$mc['NO'].$mc['ABS'];
	$cadena_buscada   = $_SESSION['s_usuario'];
	$posicion_coincidencia = strpos($cadena_de_texto, $cadena_buscada);
	if($posicion_coincidencia == true) {
		echo '<h1 style="display: block;text-align: center;width: 100%;">Usted ha votado</h1>';header('Location:votar.php');
	} else {
		echo '<div id="expte">Votar moción</div><br>';
		echo '<div id="extracto">'.$mc['extracto'].'</div><br>';
		echo '<form action="" method="post" onsubmit="return checkSubmit();">';
		echo '<input type="hidden" name="SI" value="'.$_SESSION['s_usuario'].'">';
		echo '<input type="hidden" name="NO" value="'.$_SESSION['s_usuario'].'">';
		echo '<input type="hidden" name="ABS" value="'.$_SESSION['s_usuario'].'">';
		$registros = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '".$_SESSION['s_usuario']."'");
		while($reg = mysqli_fetch_array($registros)) {
		if($reg['abstencion'] == 'activo') {
			?>
			<button data-dismiss="alert" style="border:0px;background: blue;display: inline-block;font-family: ubuntu;font-size: 4em;height: 50%;margin: 0.2em;width: 60%;" type="submit" onclick="return confirm('¿Está seguro de la abstención?');" name="abs" id="abs" value="ABS">Abstención</button>
			<?php
		} else {
			?>
			<button data-dismiss="alert" style="border:0px;background: green;display: inline-block;font-family: ubuntu;font-size: 5em;height: 50%;margin: 0.2em;width: 40%;" type="submit" onclick="return confirm('¿Está seguro del voto afirmativo?');" name="si" id="si" value="SI">SI</button>
			<button data-dismiss="alert" style="border: 0px;background: red;display: inline-block;font-family: ubuntu;font-size: 5em;height: 50%;margin: 0.2em;width: 40%;" type="submit" onclick="return confirm('¿Está seguro del voto negativo?');" name="no" id="no" value="NO">NO</button>
		<?php
		}
	}
		echo '</form>';
	}

	if(isset($_POST['si'])) {$SI = $_POST['SI'];mysqli_query($link, "UPDATE mociones SET SI = CONCAT(SI,' $SI') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto afirmativo';header('Location:votar.php');}
	else if(isset($_POST['no'])) {$NO = $_POST['NO'];mysqli_query($link, "UPDATE mociones SET NO = CONCAT(NO,' $NO') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por el voto negativo';header('Location:votar.php');}
	else if(isset($_POST['abs'])) {$ABS = $_POST['ABS'];mysqli_query($link, "UPDATE mociones SET ABS = CONCAT(ABS,' $ABS') WHERE tablero = 'encendido'");mysqli_query($link, "UPDATE usuarios SET abstencion = 'inactivo'");echo '<br>Gracias por la abstención';header('Location:votar.php');}
}





} else {

	echo '<div class="page-header">';
	echo '<a href="index.php" type="button" class="btn btn-success center-block">Presione aqui para ingresar nuevamente</a>';
	echo '</div>';

}



}
?>
