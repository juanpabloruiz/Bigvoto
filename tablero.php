<!DOCTYPE html>
<html lang="es">
<head>
    <title>Tablero</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/tablero.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/tablero.css">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
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
    include('tv.php');

exit();
}
?>

<div id="content">Cargando...</div>

<script type="text/javascript" src="comet.js"></script>

</body>
</html>
