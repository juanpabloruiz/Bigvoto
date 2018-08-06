<?php
$link = new mysqli('localhost','root','','ivoto');
mysqli_query($link, "UPDATE articulos SET fecha = '2017-08-09' WHERE fecha = '2017-08-02'");
echo 'Ok';
?>