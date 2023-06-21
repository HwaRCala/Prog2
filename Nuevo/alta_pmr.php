<?php
require "conn.php";
// Obtener los datos del formulario
$pmr = $_POST['pmr'];
$direccion = $_POST['direccion'];
$sim = $_POST['sim'];
$dispositivo = $_POST['dispositivo'];
$estado = $_POST['estado'];

// Preparar la consulta SQL para la inserción
$sql = "INSERT INTO pmr (pmr, direccion, sim, dispositivo, estado) VALUES ('$pmr', '$direccion', '$sim', '$dispositivo', '$estado')";

//if ($conn->query($sql) === TRUE) {
//    echo "PMR agregado correctamente";
//} else {
//    echo "Error al agregar PMR: " . $conn->error;
//}
?>