

	<?php
	include('config.php');

		
	if(isset($_POST['submit'])) {
		$sesion = $_POST['sesion'];
		$articulos = $_POST['articulos'];
		$expte = $_POST['expte'];
		$extracto = $_POST['extracto'];
		if ($link->connect_error) {
			die("Connection failed: " . $link->connect_error);
		}
		$sql = "UPDATE exptes SET sesion = $sesion, expte = $expte, articulos = $articulos, extracto = '".$extracto."' WHERE expte = $expte";
		mysqli_query($link, "DELETE FROM articulos WHERE expte_id = '".$expte."'");
		
		
		$articulos = $_POST['articulos']+1;
		
		


	for ($i = 1; $i < $articulos; ++$i)
	{ 
		$num = 1;
		$fecha = date('Y-m-d');
		$sql2 = "INSERT INTO articulos (articulo, expte_id, SI, NO, ABS, power, tablero, resultado, nominal, sesion, fecha) VALUES ('".$i."', '".$expte."', '', '', '', 'off', 'encendido', '', '', '28', '$fecha')";
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

	header('Location:exptes.php');

	?>





