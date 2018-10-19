<!--

Este redireccionador de correo requiere que se le envien tres datos por el metodo POST:

'email' 
correo electronico de la persona que rellena el formulario (remitente)

'destinatario'
el correo electronico de la persona que recibirá el mensaje

'redireccion'
la url de la página de confirmación que se muestra despues

-->

<?
while(list($nombre_campo, $valor_campo ) = each($_POST)) {
  strtolower ($nombre_campo); 
  if(is_array($valor_campo)){
    $msg .= ucfirst($nombre_campo).": \n";
    while (list ($val) = each ($valor_campo)) {
      $msg .= $val."\n";
    }
    $msg .= "\n";
  }else{
    if($nombre_campo != "destinatario" and $nombre_campo != "redireccion"){
      $msg .= ucfirst($nombre_campo).": ".$valor_campo."\n\n"; }
  }
}
$msg .= "----------------------------------------------\n";
$msg .= "Datos enviados desde {$_SERVER['SERVER_NAME']} por cortesía de Luis Miguel Richart \n";
mail($_POST[destinatario],"Mensaje de contacto",$msg,"From: $_POST[email]");
header("Location: $_POST[redireccion]");
?>