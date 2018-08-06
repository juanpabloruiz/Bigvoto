<?php
// require_once('conexion.php');
include('config.php');


if(!empty($_POST)){


    $pattern = $_POST['pattern'];

    // $db = new conexion();
    // $conex = $db->getConexion();

  // $sql = "SELECT * FROM users WHERE user LIKE '".$pattern."%';";

  $sql = "SELECT * FROM exptes WHERE expte LIKE '%$pattern%'"; 

    if($result = $link->query($sql)){

        $numrows = $result->num_rows;

        if($numrows >= 0){
            $registros = "<table class='table'>
                        
                        <th class='hidden-xs text-center'>Expte</th>
                        <th class='text-center'>extracto</th>
                        <th class='text-center'>Artículos</th>
                        <th class='text-center'>Fecha</th>
                        <th class='text-center'>Borrar</th>

                        </tr>";
                        
                        


            while($row = $result->fetch_assoc()){
                $fecha = $row['fecha'];
                $date = new DateTime($fecha);
                $dato = $date->format('d-m-Y');

                $registros = $registros.

                    "<tr>".
                    "<td width='6%' text-align='center'>".$row['expte']."</td >".
                    "<td><a href='carga.php?edit=".$row['id_expte']."'>".$row['extracto']."</a></td>".
                    "<td class='text-center'>".$row['articulos']."</td >".
                    "<td class='col-md-1'>".$dato."</td >".
                    "<td class='text-center'><a class='btn btn-danger' title='Eliminar' href='user_del.php?id=".$row['id_expte']."'>Eliminar</a></td>".
                    "</tr>";
            }

            $registros = $registros."</table >";

            print $registros;

        }else{
            print "No se Encontraron Coincidencias.";
        }
    }else{
        print $conex->error;
    }
}

?>
