<!DOCTYPE html>
<html lang="es">
<head>
    <script src="js/html5.js"></script>
    <meta charset="UTF-8">
    <title>Panel</title>
    <link rel="stylesheet" href="style_panel.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href='http://fonts.googleapis.com/css?family=Baumans' rel='stylesheet' type='text/css'>
  <script language="JavaScript"> 
 function mueveReloj(){ 
     momentoActual = new Date() 
     hora = momentoActual.getHours() 
     minuto = momentoActual.getMinutes() 
     segundo = momentoActual.getSeconds() 

     str_segundo = new String (segundo) 
     if (str_segundo.length == 1) 
        segundo = "0" + segundo 

     str_minuto = new String (minuto) 
     if (str_minuto.length == 1) 
        minuto = "0" + minuto 

     str_hora = new String (hora) 
     if (str_hora.length == 1) 
        hora = "0" + hora 

     horaImprimible = hora + " : " + minuto + " : " + segundo

     document.form_reloj.reloj.value = horaImprimible 

     setTimeout("mueveReloj()",1000) 
 } 
 </script> 


<script>
 function tamano(mas) {
var signo = (mas)? 1 : -1; // Para sumar o restar el porcentaje
// Obtenemos el objeto que contiene el texto
var obj=document.getElementById("contenido");
// Obtenemos el tamaño de letra y lo modificamos
var fontsize = obj.style.fontSize;
fontsize = parseInt(fontsize.replace(/%/g, ''));
fontsize += signo*10;
if (fontsize > 0 && fontsize < 0) {
obj.style.fontSize = fontsize+"%";
}
}
</script>
 
 
</head>
<?php
session_start();
if($_SESSION["logeado"] != "SI"){ 
echo "Aceso denegado";
exit;
}
?>
<body onload="mueveReloj()">

      <br>

<div style="border: 0px solid #ffffff; color: #ffffff;float: right;font:2em Arial;width: 99%;">
  <div style="border: 0px solid #ffffff;float: right;padding: 2px;vertical-align: top;width: 710px;">  
   <script>
 var lugar = "Corrientes, ";
 var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
 var diasSemana = new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
 var f=new Date();
 document.write(lugar+diasSemana[f.getDay()] + " " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
 </script>
</div>
 <form name="form_reloj" style="background: gray;border: 0px solid #ffffff;display: inline-block; vertical-align: top;width: 290px;"> 
   
 <input type="text" name="reloj" style="border: 0px #ffffff; background-color : black; color : #2BFF0D;float: right; font : 1.9em Impact, Helvetica;padding: 4px;width: 5em;"> 
 </form>

</div>




     
</body>
</html>