<style>
body {
	background: black;
}
html { overflow-y:hidden; }
</style>
<?php
include('config.php');
$videos = mysqli_query($link, "SELECT * FROM videos WHERE tablero = 'encendido'");
while($vi = mysqli_fetch_array($videos)) {
	$video = $vi['archivo'];
	$duracion = $vi['duracion'];
	echo ' <video style="width: 100%;" controls autoplay>
  <source src="videos/'.$video.'" type="video/mp4">  
</video> ';
	mysqli_query($link, "UPDATE videos SET tablero = 'apagado'");
	header('Refresh:'.$duracion.'; url=tablero.php');
}
?>