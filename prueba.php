<?php

$link = new mysqli('localhost', 'root', 'Smansilla_269', 'prueba');


$registros = mysqli_query($link, "SELECT * FROM exptes ORDER BY categoria");

while($reg=mysqli_fetch_array($registros)) {
	echo '<h2>'.$reg['categoria'].'</h2>';
	echo $reg['post'].'<br>';
}



$registros = mysqli_query($link, "SELECT * FROM cats ORDER BY id_cat");

while($reg=mysqli_fetch_array($registros)) {
	echo '<h2>'.$reg['cat'].'</h2>';
}





$registros = mysqli_query($link, "SELECT * FROM subcats ORDER BY id_subcat");

while($reg=mysqli_fetch_array($registros)) {
	echo '<h3>'.$reg['subcat'].'</h3>';
}




echo '-----------------<br>';

    $sent="SELECT * FROM cats";
    $result=mysqli_query($link, $sent);
    while($ver=mysqli_fetch_object($result)){
    $idcat=$ver->id_cat;
    $categoria=$ver->cat;
    echo"<b>$categoria</b><br/>";

    //inicio para mostrar las subcategorias de esta categoria
    $sent2="SELECT * FROM subcats WHERE id_subcat='".$idcat."'";
    $result2=mysqli_query($link, $sent2);
    while($ver2=mysqli_fetch_object($result2)){
    $idsubcat=$ver2->id_subcat;
    $subcategoria=$ver2->subcat;
    echo"---$subcategoria<br/>";

    //inicio para mostrar las subcategorias de esta categoria
    $sent3="SELECT * FROM exptes WHERE subcategoria='".$idsubcat."'";
    $result3=mysqli_query($link, $sent3);
    while($ver3=mysqli_fetch_array($result3)){
    $expte=$ver3['post'];
    echo"------$expte<br/>";
    }//fin tercer while
    //---------------
    }//fin segundo while
    //---------------
    }//fin primer while
















?>