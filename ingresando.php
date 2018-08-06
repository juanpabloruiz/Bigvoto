<?php

include('config.php');

session_start();

if ($_POST['usuario']) {
	setcookie("ejemusuario", $_POST['usuario'], time()+21600,"/","");

	$usuario=$_POST['usuario'];
	$clave=$_POST['clave'];

		if ($clave==NULL) {
			echo "La clave no fue enviada";
		} else {
			$query = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '$usuario'");
			$data = mysqli_fetch_array($query);

		if($data['clave'] != $clave) {
			echo "Login incorrecto";
		} else {
			$query = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '$usuario'");
			$row = mysqli_fetch_array($query);

			$_SESSION["perfil"] = $row['foto'];
			$_SESSION["id_usuario"] = $row['id_usuario'];
			$_SESSION["s_usuario"] = $row['usuario'];
			$_SESSION["pass"] = $row['clave'];
			$_SESSION["nombre"] = $row['nombre'];
			$_SESSION["rango"] = $row['rango'];
			$_SESSION["logeado"] = "SI";
			
			




		if($data['rango'] == 'diputado') {header( "refresh:0;url=votar.php" );}
		if($data['rango'] == 'administrador') {header( "refresh:0;url=escritorio" );}
		if($data['rango'] == 'editor') {header( "refresh:0;url=panel.php");}
		if($data['rango'] == 'operador') {header( "refresh:0;url=inicio.php");}
		mysqli_query($link, "UPDATE usuarios SET estado = 'presente', registro = now() WHERE usuario = '".$usuario."' ");
		mysqli_query($link, "UPDATE usuarios SET registro = now() WHERE usuario = '$usuario' ");
		}
	}
}

?>
