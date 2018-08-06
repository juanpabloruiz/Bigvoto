<?php

include('config.php');
include('functions.php');
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Tablero</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/sticky-footer.css">
   
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <style>
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
    .list-group-item a {
        color: #ffffff;
    }
    </style>
</head>
<body>




    <nav class="navbar navbar-default">
          <div class="container-fluid">
            
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<?php $_SERVER['PHP_SELF']; ?>">ivoto</a>
            </div>

            
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="exptes.php" target="_BLANK">Control</a></li>
                <li class="active"><a href="tablero.php" target="_BLANK">TV</a></li>
                
                
              </ul>
              


            </div>
          </div>
        </nav>




<section class="container col-xs-6">
<article>

<?php 

    $registros = mysqli_query($link, "SELECT * FROM funciones WHERE id_funcion = 1");
    while($reg = mysqli_fetch_array($registros)) {
        if($reg['estado'] == 'inactivo') {?>
            <p><a href="tablets.php" class="btn btn-success">Tablets desbloqueadas</a>
        <?php } else {?>
            <a href="tablets.php" class="btn btn-danger">Tablets bloqueadas</a>
        <?php }
    }

    $registros = mysqli_query($link, "SELECT * FROM funciones WHERE id_funcion = 2");
    while($reg = mysqli_fetch_array($registros)) {
        if($reg['estado'] == 'inactivo') {?>
            <a href="tele.php" class="btn btn-success">Televisores desbloqueados</a></p>
       <?php } else { ?>
            <a href="tele.php" class="btn btn-danger">Televisores bloqueados</a></p>
       <?php }
    }





   







echo '<a class="btn btn-primary" href="mocion.php">Votar moción</a>';
$mociones = mysqli_query($link, "SELECT * FROM mociones WHERE tablero = 'encendido'");
            while($moc = mysqli_fetch_array($mociones)) {
                ?>
                
              <a class="btn btn-success" href="aprobado_mocion.php?id_mocion=<?php echo $moc['id_mocion']; ?>" role="button">aprobado</a>
              <a class="btn btn-danger" href="rechazado_mocion.php?id_mocion=<?php echo $moc['id_mocion']; ?>" role="button">rechazado</a>
              <a class="btn btn-warning" href="nominal_mocion.php?id_mocion=<?php echo $moc['id_mocion']; ?>" role="button">nominal</a>
              <a class="btn btn-warning" href="limpiar_mocion.php?id_mocion=<?php echo $moc['id_mocion']; ?>" role="button"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><br>
            <?php
            }






$cat=mysqli_query($link, "SELECT * FROM categorias");
while($c=mysqli_fetch_assoc($cat)) {
    echo '<br><h2>'.$c['categoria'].'</h2><br>';
    $id_cat = $c['id_cat'];

    $subcat2=mysqli_query($link, "SELECT * FROM exptes WHERE subcategoria = 'Sin asignar' AND fecha = curdate() AND categoria = $id_cat ORDER BY item Asc");
    
    while($sc2=mysqli_fetch_assoc($subcat2)) {

        if($sc2['estado'] == 'activo') { ?>

 
               <div class="list-group">    
            <div id="<?php echo $sc2['item']; ?>" class="list-group-item active">
                <b><?php echo $sc2['item']; ?>.-<u><a href="activar.php?id_expte=<?php echo $sc2['id_expte']; ?>">Expte. Nº <?php echo $sc2['expte']; ?> con Despacho Nº <?php echo $sc2['despacho']; ?></a></u></b> <?php echo $sc2['extracto']; ?>
            </div>
            </div>
            
            <p>
                <a class="btn btn-primary" href="tablas.php?id=<?php echo $sc2['id_expte']; ?>">sobre tablas</a>
                <a class="btn btn-success" href="aprobado_tablas.php?id_tabla=<?php echo $sc2['id_expte']; ?>">aprobado</a>
                <a class="btn btn-danger" href="rechazado_tablas.php?id_tabla=<?php echo $sc2['id_expte']; ?>">rechazado</a>
                <a class="btn btn-warning" href="nominal_tablas.php?id_tabla=<?php echo $sc2['id_expte']; ?>">nominal</a>
                <a class="btn btn-warning" href="limpiar_tablas.php?id_tabla=<?php echo $sc2['id_expte']; ?>'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
            </p>

            <p>
                <a class="btn btn-primary" href="general.php?id=<?php echo $sc2['id_expte']; ?>" class="voto_opciones">en general</a>
                <a class="btn btn-success" href="aprobado_expte.php?id_expte=<?php echo $sc2['id_expte']; ?>">aprobado</a>
                <a class="btn btn-danger" href="rechazado_expte.php?id_expte=<?php echo $sc2['id_expte']; ?>">rechazado</a>
                <a class="btn btn-warning" href="nominal_exptes.php?id_expte=<?php echo $sc2['id_expte']; ?>">nominal</a>
                <a class="btn btn-warning" href="limpiar_expte.php?id_expte=<?php echo $sc2['id_expte']; ?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
            </p>

            <a class="btn btn-primary"  href="particular.php?id=<?php echo $sc2['expte']; ?>">en particular</a><br>

            <?php $articulos = mysqli_query($link, "SELECT * FROM articulos WHERE power = 'on' AND fecha = curdate()");
            while($art=mysqli_fetch_assoc($articulos)) {
                if($art['power'] == 'on') {
                    echo '<div id="'.$art['articulo'].'"><a class="btn btn-primary" href="activar_articulo.php?id_articulo='.$art['id_articulo'].'">'.$art['articulo'].'</a>';
                    echo '<a class="btn btn-success" href="aprobado_articulo.php?id_articulo='.$art['id_articulo'].'">aprobado</a>';
                    echo '<a class="btn btn-danger" href="rechazado_articulo.php?id_articulo='.$art['id_articulo'].'">rechazado</a>';
                    echo '<a class="btn btn-warning" href="nominal_articulos.php?id_articulo='.$art['id_articulo'].'">nominal</a></div>';
                    echo '<a class="btn btn-warning" href="limpiar_articulo.php?id_articulo='.$art['id_articulo'].'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><br>';
                }
            }
            





        } else {
            echo '<div id="'.$sc2['item'].'"><br><strong>'.$sc2['item'].'.-<u><a href="activar.php?id_expte='.$sc2['id_expte'].'">Expte. Nº '.$sc2['expte'].' con Despacho Nº '.$sc2['despacho'].'</a></u></strong> '.$sc2['extracto'].'</div><br>';
        }



    }

$subcat=mysqli_query($link, "SELECT * FROM subcategorias WHERE categoria_id = $id_cat");
    while($sc=mysqli_fetch_assoc($subcat)) {
        echo '<br> <h3 style="font-style: italic;text-align: center;">'.$sc['subcategoria'].'</h3><br>';
        $id_subcat = $sc['id_subcat'];


        $expte=mysqli_query($link, "SELECT * FROM exptes WHERE subcategoria = $id_subcat AND fecha = curdate() ORDER BY item Asc");
        
    while($ex=mysqli_fetch_assoc($expte)) {

                
                
        if($ex['estado'] == 'activo') { ?>

        <div class="list-group"> 

        <div id="<?php echo $ex['item']; ?>" class="list-group-item active">
            <b><?php echo $ex['item']; ?>.-<u><a href="activar.php?id_expte=<?php echo $ex['id_expte']; ?>">Expte. Nº <?php echo $ex['expte']; ?> con Despacho Nº <?php echo $ex['despacho']; ?></a></u></b> <?php echo $ex['extracto']; ?>
        </div>
        </div>
            
            
        <p>
            <a class="btn btn-primary"  href="tablas.php?id=<?php echo $ex['id_expte']; ?>">Votar sobre tablas</a>
            <a class="btn btn-success"  href="aprobado_tablas.php?id_tabla=<?php echo $ex['id_expte']; ?>">aprobado</a>
            <a class="btn btn-danger"  href="rechazado_tablas.php?id_tabla=<?php echo $ex['id_expte']; ?>">rechazado</a>
            <a class="btn btn-warning"  href="nominal_tablas.php?id_tabla=<?php echo $ex['id_expte']; ?>">nominal</a>
            <a class="btn btn-warning" href="limpiar_tablas.php?id_tabla=<?php echo $ex['id_expte']; ?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
        </p>
        
        <p>

            <a class="btn btn-primary"  href="general.php?id=<?php echo $ex['id_expte']; ?>">Votar en general</a>
            <a class="btn btn-success"  href="aprobado_expte.php?id_expte=<?php echo $ex['id_expte']; ?>">aprobado</a>
            <a class="btn btn-danger"  href="rechazado_expte.php?id_expte=<?php echo $ex['id_expte']; ?>">rechazado</a>
            <a class="btn btn-warning"  href="nominal_exptes.php?id_expte=<?php echo $ex['id_expte']; ?>">nominal</a>
            <a class="btn btn-warning" href="limpiar_expte.php?id_expte=<?php echo $ex['id_expte']; ?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
        </p>
        
            <a class="btn btn-primary"  href="particular.php?id=<?php echo $ex['expte']; ?>">Votar en particular</a><br>


<?php $articulos = mysqli_query($link, "SELECT * FROM articulos WHERE power = 'on' AND fecha = curdate()");
            while($art=mysqli_fetch_assoc($articulos)) {
                if($art['power'] == 'on') {
                    echo '<div id="'.$art['articulo'].'"><a class="btn btn-primary" href="activar_articulo.php?id_articulo='.$art['id_articulo'].'">'.$art['articulo'].'</a>';
                    echo '<a class="btn btn-success"  href="aprobado_articulo.php?id_articulo='.$art['id_articulo'].'">aprobado</a>';
                    echo '<a class="btn btn-danger"  href="rechazado_articulo.php?id_articulo='.$art['id_articulo'].'">rechazado</a>';
                    echo '<a class="btn btn-warning"  href="nominal_articulos.php?id_articulo='.$art['id_articulo'].'">nominal</a></div>';
                    echo '<a class="btn btn-warning" href="limpiar_articulo.php?id_articulo='.$art['id_articulo'].'"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><br>';
                }

            }
            



        } else {
            echo '<div id="'.$ex['item'].'"><br><strong>'.$ex['item'].'.-<u><a href="activar.php?id_expte='.$ex['id_expte'].'">Expte. Nº '.$ex['expte'].' con Despacho Nº '.$ex['despacho'].'</a></u></strong> '.$ex['extracto'].'</div><br>';
        }

    }



    }


}


echo '</article>';
echo '</section>';

exit();

?>

    <div id="content">Cargando...</div>
    <script type="text/javascript" src="comet.js"></script>
    
</body>
</html>