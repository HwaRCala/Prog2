<?php
// Realizar la conexión a la base de datos MySQL
$conexion = mysqli_connect("localhost", "root", "", "monitoreo_pmr");

// Verificar la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Obtener los datos del formulario
$pmr = $_POST['pmr'];
$direccion = $_POST['direccion'];
$sim = $_POST['sim'];
$dispositivo = $_POST['dispositivo'];
$estado = $_POST['estado'];


// Preparar la consulta SQL para la inserción
$sql = "INSERT INTO pmr (pmr, direccion, sim, dispositivo, estado) VALUES ('$pmr', '$direccion', '$sim', '$dispositivo', '$estado')";

if ($conexion->query($sql) === TRUE) {
    echo "PMR agregado correctamente";
} else {
    echo "Error al agregar PMR: " . $conexion->error;
}

// Cerrar la conexión a la base de datos
mysqli_close($conexion);
?>