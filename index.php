
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
		<style>
	body{background: #eee;}
html,body{
    position: relative;
    height: 100%;
}

.login-container{
    position: relative;
    width: 300px;
    margin: 80px auto;
    padding: 20px 40px 40px;
    text-align: center;
    background: #fff;
    border: 1px solid #ccc;
}

#output{
    position: absolute;
    width: 300px;
    top: -75px;
    left: 0;
    color: #fff;
}

#output.alert-success{
    background: rgb(25, 204, 25);
}

#output.alert-danger{
    background: rgb(228, 105, 105);
}


.login-container::before,.login-container::after{
    content: "";
    position: absolute;
    width: 100%;height: 100%;
    top: 3.5px;left: 0;
    background: #fff;
    z-index: -1;
    -webkit-transform: rotateZ(4deg);
    -moz-transform: rotateZ(4deg);
    -ms-transform: rotateZ(4deg);
    border: 1px solid #ccc;

}

.login-container::after{
    top: 5px;
    z-index: -2;
    -webkit-transform: rotateZ(-2deg);
     -moz-transform: rotateZ(-2deg);
      -ms-transform: rotateZ(-2deg);

}

.avatar{
    width: 100px;height: 100px;
    margin: 10px auto 30px;
    border-radius: 100%;
    border: 2px solid #aaa;
    background-size: cover;
}

.form-box input{
    width: 100%;
    padding: 10px;
    text-align: center;
    height:40px;
    border: 1px solid #ccc;;
    background: #fafafa;
    transition:0.2s ease-in-out;

}

.form-box input:focus{
    outline: 0;
    background: #eee;
}

.form-box input[type="text"]{
    border-radius: 5px 5px 0 0;
    text-transform: lowercase;
}

.form-box input[type="password"]{
    border-radius: 0 0 5px 5px;
    border-top: 0;
}

.form-box button.login{
    margin-top:15px;
    padding: 10px 20px;
}

.animated {
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}

@keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    -ms-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }
}

.fadeInUp {
  -webkit-animation-name: fadeInUp;
  animation-name: fadeInUp;
}
</style>
</head>
<body>



<?php

include('config.php');
include('functions.php');
 session_start();
if(!isset($_SESSION["s_usuario"])) {


	
	echo '

	<div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="form-box">
                <form action="ingresando.php" method="post">
                    <input name="usuario" type="text" placeholder="Usuario">
                    <input type="password" name="clave" placeholder="Contraseña">
                    <button class="btn btn-info btn-block login" name="Submit" type="submit">Ingresar</button>
                </form>
            </div>
        </div>
        
</div>';
	
} else {
	include('config.php');
   
	$user = $_SESSION['s_usuario'];
	$users = mysqli_query($link, "SELECT * FROM usuarios WHERE usuario = '".$user."'");
	while($us = mysqli_fetch_array($users)) {
		if($us['rango'] == 'diputado') {

			echo '
    <div class="container">
    <div class="login-container">
            <div id="output"></div>
            <div class="avatar"><img src="img_dips/'.$_SESSION['perfil'].'" class="img-circle" alt="Foto" width="96"></div>
            <div class="form-box">
                <form action="ingresando.php" method="post">
                    <input name="usuario" type="text" style="display: none;" value="'.$us['usuario'].'">
                    <input type="password" name="clave" style="display: none;" value="'.$us['clave'].'">
                    <button class="btn btn-info btn-block login" name="Submit" type="submit">Presione aquí para ingresar</button>
                </form>
            </div>
        </div>
        
</div>';

include('config.php');
$usuario = $_SESSION["s_usuario"];


		} elseif($us['rango'] == 'operador') {
			echo '

    <div class="container">
    <div class="login-container">
            <div id="output"></div>
            <div class="avatar"><a href="inicio.php"><img src="img_dips/'.$_SESSION['perfil'].'" class="img-circle" alt="Foto" width="96"></a></div>
            <div class="form-box">
                <form action="ingresando.php" method="post">
                    <input name="usuario" type="text" placeholder="Usuario">
                    <input type="password" name="clave" placeholder="Contraseña">
                    <button class="btn btn-info btn-block login" name="Submit" type="submit">Presione aquí</button>
                </form>
            </div>
        </div>
        
</div>';
		}
	} 
	
}
	

?>
</body>
</html>