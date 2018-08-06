<?php
include('config.php');

	$art = $_GET['art'];
	echo $art;
	
	mysqli_query($link, "UPDATE articulos SET power = 'off'");
	mysqli_query($link, "UPDATE articulos SET power = 'on' WHERE id_articulo = '".$art."'");
	
	header('refresh:0;panel.php');



?>