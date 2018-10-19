<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
   <table>
<?php
// abre conexión con bbdd
$mysqli = new mysqli("sql203.epizy.com", "epiz_21412895", "ugqcne47HMet", "epiz_21412895_formacion");
// indica la codificacion de las conexión
$mysqli->set_charset("utf8");
// abre una consulta
$resultado = $mysqli->query("SELECT * FROM profesores ORDER BY name nombre");
// da formato como filas de una tabla HTML
while ($registro = $resultado->fetch_object()) {
echo " <tr>\n";
foreach ($registro as $value) {
echo " <td>" . $value . "</td>\n";
}
echo " </tr>\n";
}
// cierra la consulta
$resultado->close();
// cierra conexión
$mysqli->close();
?>
</table>
    
</body>
</html>