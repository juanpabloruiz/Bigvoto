<?php

header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "root", "Smansilla_269", "ivoto");

$result = $conn->query("SELECT * FROM exptes");

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {$outp .= ",";}
    $outp .= '{"expte":"'  . $rs["expte"] . '",';
   
   
    $outp .= '"Estado":"'. $rs["estado"]     . '"}';
}
$outp ='{"records":['.$outp.']}';
$conn->close();

echo utf8_encode(($outp));
?>