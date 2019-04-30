<?php
   $user = $_GET['user'];
   $password = $_GET['password'];

   if (($user == "Editor") AND ($password == "123")) {
      header("Location: listar.php");

   } else {
      echo "¡Usuario o contraseña incorrectos!";
      echo '<br><a href="'.$_SERVER['HTTP_REFERER'].'">Volver</a>';
   }
?>