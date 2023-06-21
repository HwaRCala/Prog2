<?php

$host     = "localhost";    // Host name - servidor al que voy a conectar, como estamos trabajando de forma local, usamos localhost
$username = "root";         // usuario de base de datos, en la creación de la BD, por default MySql define el usuario root si no le indicamos otro.
$password = "";             // MySql password sin psw en nuestro ejemplo
$db_name  = "monitoreo_pmr";// nombre de la base de datos a la cual vamos a conectar

// conectar al servidor y seleccionar bd.
$con      = mysqli_connect($host, $username, $password, $db_name);

if (mysqli_connect_errno()) {
    echo "Error al conectar a MySQl: " . mysqli_connect_errno();
//    }else{
//        echo "conectado";
    }

?>