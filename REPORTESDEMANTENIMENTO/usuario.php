<?php
   $user = $_GET['user'];
   $password = $_GET['password'];

   if (($user == "GerenteM") AND ($password == "123")) {
	   header("Location: listar.php");
   }
   elseif (($user == "Programador") AND ($password == "123")){
      header("Location: listar.php");
   } else {
      echo "¡Usuario o contraseña incorrectos!";
      echo '<br><a href="'.$_SERVER['HTTP_REFERER'].'">Volver</a>';
   }
?>