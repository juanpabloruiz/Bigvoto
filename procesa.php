<?php
 if(isset($_POST["id_cat"]))
 {
    $opciones = '<option value="0"> Elige una subcat</option>';
    $conexion= new mysqli("localhost","root","Smansilla_269","ivoto");
    $strConsulta = "select * from subcategorias where categoria_id = ".$_POST["id_cat"];
    $result = $conexion->query($strConsulta);
    while( $fila = $result->fetch_array() )
    {
       $opciones.='<option value="'.$fila["id_subcat"].'">'.$fila["subcategoria"].'</option>';
    }
     echo $opciones;
 }
?>