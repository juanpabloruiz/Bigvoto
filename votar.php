<?php session_start(); if($_SESSION["logeado"] != "SI"){header('Location:index.php');exit;}?>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Votar</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">


<script type="text/javascript">
var statSend = false;
function checkSubmit() {
    if (!statSend) {
        statSend = true;
        return true;
    } else {
        return false;
    }
}
</script>
<style>

    body {
        background: black;
        color: #ffffff;
        
    }

 

    button[type='submit']:hover {
        cursor: pointer;
    }

    .btn {

        width: 50%;
    }


    .btn-group-lg {
        width: 80%;
    }

</style>

</head>
<body>
    <?php 
if($_POST)   
{ 
    set_time_limit(0); // para quitar el timeout     
    header("Edge-control: no-store"); 
    include('config.php');
    $content = mysqli_query($link, "SELECT * FROM exptes"); 
    while($content=='') 
        $content = mysqli_query($link, "SELECT * FROM exptes"); 
    include('db.php'); 
    exit(); 
} 
?>
	<div id="content"><h1 style="display: block;text-align: center;width: 100%;">Usted ha votado...</h1><div style="margin: auto;width: 300px;"><img class="img-responsive" src="img/logo2.png" alt="Carga"></div>
    
<script type="text/javascript" src="comet.js"></script>
</body>
</html>