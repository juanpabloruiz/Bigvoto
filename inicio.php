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
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <link rel="stylesheet" href="css/bootstrap.css">
    
    <link rel="stylesheet" href="style.css">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<frameset rows="*" cols="*,700" framespacing="0" frameborder="NO" border="0">
    <frame src="control.php" name="mainFrame">
    <frame src="aside.php" name="rightFrame" scrolling="NO" noresize>
  </frameset>
<body>
 
</body>
</html>