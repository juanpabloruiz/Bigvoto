<?php
session_start();
if($_SESSION["logeado"] != "SI") {
    echo "Aceso denegado";
    exit;
}
include('config.php');
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Tablero</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/search.js"></script>
    <style>
    .container {
        margin-top: 70px;
    }
    body {
        margin-bottom: 70px;
    }
    html {
        position: relative;
        min-height: 100%;
    }
    footer {
        background: #333;
        color: white;
        position: absolute;
        bottom: 0;
        padding: 20px 0;
        width: 100%;
        height: 60px;
        text-align: center;
    }
    </style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
            
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="inicio.php">ivoto</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="exptes.php">Expedientes</a></li>
                <li><a href="carga.php">Publicar</a></li>
                
              </ul>
              


            </div>
          </div>
        </nav>



	

	


	<div class="container">
        

<?php

// Eliminar registro
if(isset($_GET['id'])) {
    $id = $_GET['id'];
    mysqli_query($link, "DELETE FROM exptes WHERE id_expte = '$id'");
    mysqli_query($link, "DELETE FROM tablas WHERE id_tabla = '$id'");
    echo '<script>window.location="exptes.php"</script>';
}


// Lista de registros

?>

<div class="form-group"><input type="search" class="form-control" placeholder="Buscar" id="buscar_post"></div>
    <div id="datos">


<?php
$query = mysqli_query($link, "SELECT * FROM exptes ORDER BY id_expte DESC");
echo '<table class="table">';
echo '<tr>';
echo '<th class="text-center">Expte</th>';
echo '<th class="text-center">Extracto</th>';
echo '<th class="text-center">Artículos</th>'; 
echo '<th class="text-center">Fecha</th>'; 
echo '<th class="text-center">Borrar</th>';
echo '</tr>';
while($data = mysqli_fetch_array($query)) {
    $fecha = $data['fecha'];
    $date = new DateTime($fecha);
    $dato = $date->format('d-m-Y');
    echo '<tr>'; 
    // echo '<a href="admin?edit='.$data['id_post'].'">';
    echo '<td class="text-center">'.$data['expte'].'</td>';
    echo '<td><a href="carga.php?edit='.$data['id_expte'].'">'.$data['extracto'].'</td>';
    echo '<td class="text-center">'.$data['articulos'].'</td>';
    echo '<td class="col-md-1">'.$dato.'</td>';
    echo '<td class="text-center"><a href="exptes.php?id='.$data['id_expte'].'" class="btn btn-danger">Eliminar</a></td>';
    echo '</tr>';
    // echo '<a href="admin?id='.$data['id_post'].'"> | Eliminar </a>';

}
echo '</table>';



?>
</div>
    <footer>
        ivoto <?php echo date('Y'); ?> - Corrientes - Argentina
    </footer>
</body>
</html>