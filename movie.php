<script>
var elem = document.getElementById("video");
if (elem.requestFullscreen) {
  elem.requestFullscreen();
}
</script>

<?php
$get = $_GET['archivo'];
echo $get;
$url = 'http://192.168.25.125/videos/'.$get;
echo '<video style="height: 100%;width: 100%;" id="video" controls autoplay>';
echo '<source src="http://192.168.25.125/videos/sintecho.mp4" type="video/mp4">';
echo 'Your browser does not support the video tag.';
echo '</video>';
?>