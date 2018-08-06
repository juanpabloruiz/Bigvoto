<?php

$cade = 'F.E. B.O. 14.08.91 - ADLA 1991-C p. 3493 del proyecto presentado';
echo '<br>';
echo '<h2>Esta sería la frase:</h2>';
echo '<br>';
echo '<br>';
echo $cade;
echo '<br>';
echo '<br>';
echo '<h2>Ahora extraemos todo a partir de "p. ":</h2>';
echo '<br>';
$ok = strstr($cade, 'p. ');
echo '<br>';
echo $ok;
echo '<br>';
echo '<br>';
echo '<h2>Ahora contamos 7 caracteres:</h2>';
echo '<br>';
$rest = substr($ok, 0, 7);
echo '<br>';
echo $rest;
echo '<br>';
echo '<h2>Ahora extraemos solo los números:</h2>';
echo '<br>';
$listo = preg_replace('/[^0-9]/', '', $rest);
echo '<br>';
echo $listo;
echo '<br>';
echo '<h2>Ahora lo conectamos al enlace como variable</h2>';
echo '<br>';
echo '<a href="">http://hcdcorrientes.gov.ar/Ley'.$listo.'</a>';







?>