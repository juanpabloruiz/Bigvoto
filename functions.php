<?php 

// Presentes //

function presencia() {
	include('config.php');
	$registros=mysqli_query($link, "SELECT * from usuarios WHERE rango = 'diputado' AND estado = 'presente'") or die("Problemas en el select:".mysqli_connect_error());
    echo '<br><div id="presentes">Diputados: '.$registros->num_rows.'</div>';
}


// Mociones //

function mociones() {
	include('config.php');
	$mociones = mysqli_query($link, "SELECT * FROM mociones WHERE tablero = 'encendido'");
	while($mc = mysqli_fetch_array($mociones)) {
		$si = $mc['SI'];
		$no = $mc['NO'];
		$abs = $mc['ABS'];
		$tab = $mc['extracto'];
		if($mc['nominal'] == 'habilitado') {

			echo '<div id="expte"><img src="img/escudo.png" width="120" class="left" alt="Diputados"><div style="border: 0px solid #ffffff;float: left;width: 84%;"><div style="font-family: ubuntu;font-size: 0.5em;">Votar moción</div></div><img src="img/logo2.png" class="left" width="150" alt="Diputados"></div><div style="clear:both;"></div></header><div id="extracto" style="text-align: center;">';
			$users = mysqli_query($link, "SELECT * FROM usuarios WHERE estado = 'presente' AND rango = 'diputado'");
			while ($us = mysqli_fetch_array($users)) {
				$user = $us['usuario'];
				$apellido = $us['apellido'];
				$cadena_buscada   = $user;
				$buscar_si = strpos($si, $cadena_buscada);
				$buscar_no = strpos($no, $cadena_buscada);
				$buscar_abs = strpos($abs, $cadena_buscada);
				if($buscar_si == true) {echo '<div style="background: green;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else if($buscar_no == true) {echo '<div style="background: red;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else if($buscar_abs == true) {echo '<div style="background: #337ab7;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else {echo '<div style="background: gray;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
			}
			echo '</div>';

        $ejemplo = count(explode(' ', $mc['SI']));$arreglo_si = $ejemplo - 1;
		$ejemplo = count(explode(' ', $mc['NO']));$arreglo_no = $ejemplo - 1;
		$ejemplo = count(explode(' ', $mc['ABS']));$arreglo_abs = $ejemplo - 1;

		echo '<div id="result">';
		echo '<div class="calculos"><div id="suma_SI_titulo">Afirmativo</div><div id="suma_SI_titulo">'.$arreglo_si.'</div></div>';
 		echo '<div class="calculos"><div id="suma_NO_titulo">Negativo</div><div id="suma_NO_titulo">'.$arreglo_no.'</div></div>';
		echo '<div class="calculos"><div id="abstenciones">Abstención</div><div id="abstenciones">'.$arreglo_abs.'</div></div>';
        echo '</div>';

		if($mc['resultado'] == 'aprobado') {echo '<h1 class="parpadea" style="color: #2BFF0D;font-size: 8em;height: 300px;text-align: center;">Aprobado</h1><br>';}
		else if($mc['resultado'] == 'rechazado') {echo '<h1 class="parpadea" style="color: red;font-size: 8em;height: 300px;text-align: center;">Rechazado</h1><br>';}

		} else {

			echo '<div id="expte"><img src="img/escudo.png" width="120" class="left" alt="Diputados"><div style="border: 0px solid #ffffff;float: left;width: 84%;"><div style="font-family: ubuntu;font-size: 0.5em;">Votar moción</div></div><img src="img/logo2.png" class="left" width="150" alt="Diputados"></div><div style="clear:both;"></div></header><div id="extracto">'.$mc['extracto'].'</div>';

	       	$ejemplo = count(explode(' ', $mc['SI']));$arreglo_si = $ejemplo - 1;
			$ejemplo = count(explode(' ', $mc['NO']));$arreglo_no = $ejemplo - 1;
			$ejemplo = count(explode(' ', $mc['ABS']));$arreglo_abs = $ejemplo - 1;

			echo '<div id="result">';
			echo '<div class="calculos"><div id="suma_SI_titulo">Afirmativo</div><div id="suma_SI_titulo">'.$arreglo_si.'</div></div>';
			echo '<div class="calculos"><div id="suma_NO_titulo">Negativo</div><div id="suma_NO_titulo">'.$arreglo_no.'</div></div>';
			echo '<div class="calculos"><div id="abstenciones">Abstención</div><div id="abstenciones">'.$arreglo_abs.'</div></div>';
	        echo '</div>';

			
			if($mc['resultado'] == 'aprobado') {echo '<h1 class="parpadea" style="color: #2BFF0D;font-size: 8em;height: 300px;text-align: center;">Aprobado</h1><br>';}
			else if($mc['resultado'] == 'rechazado') {echo '<h1 class="parpadea" style="color: red;font-size: 8em;height: 300px;text-align: center;">Rechazado</h1><br>';}
		}
	}
}






// Sobre Tablas //

function tablas() {
	include('config.php');
	$tablas = mysqli_query($link, "SELECT * FROM tablas WHERE tablero = 'encendido'");
	while($tab = mysqli_fetch_array($tablas)) {
		$si = $tab['SI'];
		$no = $tab['NO'];
		$abs = $tab['ABS'];
		
		if($tab['nominal'] == 'habilitado') {

			echo '<div id="expte"><img src="img/escudo.png" width="120" class="left" alt="Diputados"><div style="border: 0px solid #ffffff;float: left;width: 84%;"> Expediente Nº '.$tab['expte'].'<br><div style="font-family: ubuntu;font-size: 0.5em;">Votación nominal</div></div><img src="img/logo2.png" class="left" width="150" alt="Diputados"></div><div style="clear:both;"></div></header><div id="extracto" style="text-align: center;">';
			$users = mysqli_query($link, "SELECT * FROM usuarios WHERE estado = 'presente' AND rango = 'diputado'");
			while ($us = mysqli_fetch_array($users)) {
				$user = $us['usuario'];
				$apellido = $us['apellido'];
				$cadena_buscada   = $user;
				$buscar_si = strpos($si, $cadena_buscada);
				$buscar_no = strpos($no, $cadena_buscada);
				$buscar_abs = strpos($abs, $cadena_buscada);
				if($buscar_si == true) {echo '<div style="background: green;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else if($buscar_no == true) {echo '<div style="background: red;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else if($buscar_abs == true) {echo '<div style="background: #337ab7;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else {echo '<div style="background: gray;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
			}
			echo '</div>';

			$ejemplo = count(explode(' ', $tab['SI']));$arreglo_si = $ejemplo - 1;
			$ejemplo = count(explode(' ', $tab['NO']));$arreglo_no = $ejemplo - 1;
			$ejemplo = count(explode(' ', $tab['ABS']));$arreglo_abs = $ejemplo - 1;

			echo '<div id="result">';
			echo '<div class="calculos"><div id="suma_SI_titulo">Afirmativo</div><div id="suma_SI_titulo">'.$arreglo_si.'</div></div>';
			echo '<div class="calculos"><div id="suma_NO_titulo">Negativo</div><div id="suma_NO_titulo">'.$arreglo_no.'</div></div>';
			echo '<div class="calculos"><div id="abstenciones">Abstención</div><div id="abstenciones">'.$arreglo_abs.'</div></div>';
			echo '</div>';

			if($tab['resultado'] == 'aprobado') {echo '<h1 class="parpadea" style="color: #2BFF0D;font-size: 8em;height: 300px;text-align: center;">Aprobado</h1><br>';}
			else if($tab['resultado'] == 'rechazado') {echo '<h1 class="parpadea" style="color: red;font-size: 8em;height: 300px;text-align: center;">Rechazado</h1><br>';} 

		} elseif($tab['nominal'] == 'inhabilitado') {

			echo '<div id="expte"><img src="img/escudo.png" width="120" class="left" alt="Diputados"><div style="border: 0px solid #ffffff;float: left;width: 84%;"> Expediente Nº '.$tab['expte'].'<br><div style="font-family: ubuntu;font-size: 0.5em;">Votación sobre tablas</div></div><img src="img/logo2.png" class="left" width="150" alt="Diputados"></div><div style="clear:both;"></div></header><div id="extracto">'.$tab['extracto'].'</div>';

	       	$ejemplo = count(explode(' ', $tab['SI']));$arreglo_si = $ejemplo - 1;
			$ejemplo = count(explode(' ', $tab['NO']));$arreglo_no = $ejemplo - 1;
			$ejemplo = count(explode(' ', $tab['ABS']));$arreglo_abs = $ejemplo - 1;

			echo '<div id="result">';
			echo '<div class="calculos"><div id="suma_SI_titulo">Afirmativo</div><div id="suma_SI_titulo">'.$arreglo_si.'</div></div>';
			echo '<div class="calculos"><div id="suma_NO_titulo">Negativo</div><div id="suma_NO_titulo">'.$arreglo_no.'</div></div>';
			echo '<div class="calculos"><div id="abstenciones">Abstención</div><div id="abstenciones">'.$arreglo_abs.'</div></div>';
	        echo '</div>';

			
			if($tab['resultado'] == 'aprobado') {echo '<h1 class="parpadea" style="color: #2BFF0D;font-size: 8em;height: 300px;text-align: center;">Aprobado</h1><br>';}
			else if($tab['resultado'] == 'rechazado') {echo '<h1 class="parpadea" style="color: red;font-size: 8em;height: 300px;text-align: center;">Rechazado</h1><br>';}
		}
	}
}	




// Expedientes //

function expedientes() {
	include('config.php');
	$expedientes = mysqli_query($link, "SELECT * FROM exptes WHERE tablero = 'encendido'");
	while($ex = mysqli_fetch_array($expedientes)) {
		$si = $ex['SI'];
		$no = $ex['NO'];
		$abs = $ex['ABS'];
		
		if($ex['nominal'] == 'habilitado') {

			echo '<div id="expte"><img src="img/escudo.png" width="120" class="left" alt="Diputados"><div style="border: 0px solid #ffffff;float: left;width: 84%;"> Expediente Nº '.$ex['expte'].'<br><div style="font-family: ubuntu;font-size: 0.5em;">Votación nominal</div></div><img src="img/logo2.png" class="left" width="150" alt="Diputados"></div><div style="clear:both;"></div></header><div id="extracto" style="text-align: center;">';
			$users = mysqli_query($link, "SELECT * FROM usuarios WHERE estado = 'presente' AND rango = 'diputado'");
			while ($us = mysqli_fetch_array($users)) {
				$user = $us['usuario'];
				$apellido = $us['apellido'];
				$cadena_buscada   = $user;
				$buscar_si = strpos($si, $cadena_buscada);
				$buscar_no = strpos($no, $cadena_buscada);
				$buscar_abs = strpos($abs, $cadena_buscada);
				if($buscar_si == true) {echo '<div style="background: green;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else if($buscar_no == true) {echo '<div style="background: red;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else if($buscar_abs == true) {echo '<div style="background: #337ab7;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else {echo '<div style="background: gray;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
			}
			echo '</div>';

			$ejemplo = count(explode(' ', $ex['SI']));$arreglo_si = $ejemplo - 1;
			$ejemplo = count(explode(' ', $ex['NO']));$arreglo_no = $ejemplo - 1;
			$ejemplo = count(explode(' ', $ex['ABS']));$arreglo_abs = $ejemplo - 1;

			echo '<div id="result">';
			echo '<div class="calculos"><div id="suma_SI_titulo">Afirmativo</div><div id="suma_SI_titulo">'.$arreglo_si.'</div></div>';
			echo '<div class="calculos"><div id="suma_NO_titulo">Negativo</div><div id="suma_NO_titulo">'.$arreglo_no.'</div></div>';
			echo '<div class="calculos"><div id="abstenciones">Abstención</div><div id="abstenciones">'.$arreglo_abs.'</div></div>';
			echo '</div>';

			if($ex['resultado'] == 'aprobado') {echo '<h1 class="parpadea" style="color: #2BFF0D;font-size: 8em;height: 300px;text-align: center;">Aprobado</h1><br>';}
			else if($ex['resultado'] == 'rechazado') {echo '<h1 class="parpadea" style="color: red;font-size: 8em;height: 300px;text-align: center;">Rechazado</h1><br>';} 

		} elseif($ex['nominal'] == 'inhabilitado') {

			echo '<div id="expte"><img src="img/escudo.png" width="120" class="left" alt="Diputados"><div style="border: 0px solid #ffffff;float: left;width: 84%;"> Expediente Nº '.$ex['expte'].'<br><div style="font-family: ubuntu;font-size: 0.5em;">Votación en general</div></div><img src="img/logo2.png" class="left" width="150" alt="Diputados"></div><div style="clear:both;"></div></header><div id="extracto">'.$ex['extracto'].'</div>';

	       	$ejemplo = count(explode(' ', $ex['SI']));$arreglo_si = $ejemplo - 1;
			$ejemplo = count(explode(' ', $ex['NO']));$arreglo_no = $ejemplo - 1;
			$ejemplo = count(explode(' ', $ex['ABS']));$arreglo_abs = $ejemplo - 1;

			echo '<div id="result">';
			echo '<div class="calculos"><div id="suma_SI_titulo">Afirmativo</div><div id="suma_SI_titulo">'.$arreglo_si.'</div></div>';
			echo '<div class="calculos"><div id="suma_NO_titulo">Negativo</div><div id="suma_NO_titulo">'.$arreglo_no.'</div></div>';
			echo '<div class="calculos"><div id="abstenciones">Abstención</div><div id="abstenciones">'.$arreglo_abs.'</div></div>';
	        echo '</div>';

			
			if($ex['resultado'] == 'aprobado') {echo '<h1 class="parpadea" style="color: #2BFF0D;font-size: 8em;height: 300px;text-align: center;">Aprobado</h1><br>';}
			else if($ex['resultado'] == 'rechazado') {echo '<h1 class="parpadea" style="color: red;font-size: 8em;height: 300px;text-align: center;">Rechazado</h1><br>';}
		}
	}
}	






// Artículos //

function articulos() {
	include('config.php');
	$articulos = mysqli_query($link, "SELECT * FROM articulos WHERE tablero = 'encendido'");
	while($art = mysqli_fetch_array($articulos)) {
		$si = $art['SI'];
		$no = $art['NO'];
		$abs = $art['ABS'];
		
		if($art['nominal'] == 'habilitado') {

			echo '<div id="expte"><img src="img/escudo.png" width="120" class="left" alt="Diputados"><div style="border: 0px solid #ffffff;float: left;width: 84%;"> Expte. Nº '.$art['expte_id'].' - Artículo '.$art['articulo'].'º<br><div style="font-family: ubuntu;font-size: 0.5em;">Votación nominal</div></div><img src="img/logo2.png" class="left" width="150" alt="Diputados"></div><div style="clear:both;"></div></header><div id="extracto" style="text-align: center;">';
			$users = mysqli_query($link, "SELECT * FROM usuarios WHERE estado = 'presente' AND rango = 'diputado'");
			while ($us = mysqli_fetch_array($users)) {
				$user = $us['usuario'];
				$apellido = $us['apellido'];
				$cadena_buscada   = $user;
				$buscar_si = strpos($si, $cadena_buscada);
				$buscar_no = strpos($no, $cadena_buscada);
				$buscar_abs = strpos($abs, $cadena_buscada);
				if($buscar_si == true) {echo '<div style="background: green;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else if($buscar_no == true) {echo '<div style="background: red;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else if($buscar_abs == true) {echo '<div style="background: #337ab7;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
				else {echo '<div style="background: gray;color: #ffffff;display: inline-block;margin: 0.1em;padding: 0.2em 1em;" class="perfil">'.$apellido.'</div>';}
			}
			echo '</div>';

			$ejemplo = count(explode(' ', $art['SI']));$arreglo_si = $ejemplo - 1;
			$ejemplo = count(explode(' ', $art['NO']));$arreglo_no = $ejemplo - 1;
			$ejemplo = count(explode(' ', $art['ABS']));$arreglo_abs = $ejemplo - 1;

			echo '<div id="result">';
			echo '<div class="calculos"><div id="suma_SI_titulo">Afirmativo</div><div id="suma_SI_titulo">'.$arreglo_si.'</div></div>';
			echo '<div class="calculos"><div id="suma_NO_titulo">Negativo</div><div id="suma_NO_titulo">'.$arreglo_no.'</div></div>';
			echo '<div class="calculos"><div id="abstenciones">Abstención</div><div id="abstenciones">'.$arreglo_abs.'</div></div>';
			echo '</div>';

			if($art['resultado'] == 'aprobado') {echo '<h1 class="parpadea" style="color: #2BFF0D;font-size: 8em;height: 300px;text-align: center;">Aprobado</h1><br>';}
			else if($art['resultado'] == 'rechazado') {echo '<h1 class="parpadea" style="color: red;font-size: 8em;height: 300px;text-align: center;">Rechazado</h1><br>';} 

		} elseif($art['nominal'] == 'inhabilitado') {

			echo '<div id="expte"><img src="img/escudo.png" width="120" class="left" alt="Diputados"><div style="border: 0px solid #ffffff;float: left;width: 84%;"> Expte. Nº '.$art['expte_id'].' - Artículo '.$art['articulo'].'º<br><div style="font-family: ubuntu;font-size: 0.5em;">Votación en particular</div></div><img src="img/logo2.png" class="left" width="150" alt="Diputados"></div><div style="clear:both;"></div></header><div id="extracto"></div>';

	       	$ejemplo = count(explode(' ', $art['SI']));$arreglo_si = $ejemplo - 1;
			$ejemplo = count(explode(' ', $art['NO']));$arreglo_no = $ejemplo - 1;
			$ejemplo = count(explode(' ', $art['ABS']));$arreglo_abs = $ejemplo - 1;

			echo '<div id="result">';
			echo '<div class="calculos"><div id="suma_SI_titulo">Afirmativo</div><div id="suma_SI_titulo">'.$arreglo_si.'</div></div>';
			echo '<div class="calculos"><div id="suma_NO_titulo">Negativo</div><div id="suma_NO_titulo">'.$arreglo_no.'</div></div>';
			echo '<div class="calculos"><div id="abstenciones">Abstención</div><div id="abstenciones">'.$arreglo_abs.'</div></div>';
	        echo '</div>';

			
			if($art['resultado'] == 'aprobado') {echo '<h1 class="parpadea" style="color: #2BFF0D;font-size: 8em;height: 300px;text-align: center;">Aprobado</h1><br>';}
			else if($art['resultado'] == 'rechazado') {echo '<h1 class="parpadea" style="color: red;font-size: 8em;height: 300px;text-align: center;">Rechazado</h1><br>';}
		}
	}
}	





?>