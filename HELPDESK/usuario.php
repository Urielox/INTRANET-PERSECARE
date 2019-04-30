<?php
   $user = $_GET['user'];
   $password = $_GET['password'];

   if (($user == "OperadorS") AND ($password == "123")){
	   header("Location: listarop.php");
   }
   elseif (($user == "IngenieroS") AND ($password == "123")){
	   header("Location: listarprogra.php");
   }
   elseif (($user == "GerenteS") AND ($password == "123")) {
	   header("Location: listar.php");
   } else {
      echo "¡Usuario o contraseña incorrectos!";
      echo '<br><a href="'.$_SERVER['HTTP_REFERER'].'">Volver</a>';
   }
?>