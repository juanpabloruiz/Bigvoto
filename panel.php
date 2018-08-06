
<?php session_start(); if($_SESSION["logeado"] != "SI"){echo "Aceso denegado";exit;}?>
<?php include('header.php'); ?>


<?php include('control.php'); ?>
<!-- <iframe id="lateral" src="control.php" style="height: 100%;width: 500px;"></iframe> -->


</section>
<?php include('footer.php'); ?>
