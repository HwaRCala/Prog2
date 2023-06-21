<?php
$host     = "localhost";    // Host name - servidor al que voy a conectar, como estamos trabajando de forma local, usamos localhost
$username = "root";         // usuario de base de datos, en la creación de la BD, por default MySql define el usuario root si no le indicamos otro.
$password = "";             // MySql password sin psw en nuestro ejemplo
$db_name  = "monitoreo_pmr";// nombre de la base de datos a la cual vamos a conectar

// conectar al servidor y seleccionar bd.
$con      = mysqli_connect($host, $username, $password, $db_name);

if (mysqli_connect_errno()) {
    echo "Error al conectar a MySQl: " . mysqli_connect_errno();
    }else{
   echo "conectado";
}

// Obtener los datos del formulario
$pmr = $_POST['pmr'];
$direccion = $_POST['direccion'];
$sim = $_POST['sim'];
$dispositivo = $_POST['dispositivo'];
$estado = $_POST['estado'];

// Preparar la consulta SQL para la inserción
$sql = "INSERT INTO pmr (pmr, direccion, sim, dispositivo, estado) VALUES ('$pmr', '$direccion', '$sim', '$dispositivo', '$estado')";

//if ($con->query($sql) === TRUE) {
//   echo "PMR agregado correctamente";
//} else {
//    echo "Error al agregar PMR: " . $con->error;
//}
// Cerrar la conexión
$con->close();
?>