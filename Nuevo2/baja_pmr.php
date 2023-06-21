<?php
// Realizar la conexión a la base de datos MySQL
$conexion = mysqli_connect("localhost", "root", "", "monitoreo_pmr");

// Verificar la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}

    // Verificar si se recibió el ID del PMR a dar de baja
    if (isset($_POST['id_pmr'])) {
    $id_pmr = $_POST['id_pmr'];

    // Eliminar el PMR de la base de datos
    $sql_delete = "DELETE FROM pmr WHERE id_pmr = '$id_pmr'";
    
    if ($conexion->query($sql_delete) === TRUE) {
        echo "PMR eliminado correctamente";
    } else {
        echo "Error al eliminar PMR: " . $conexion->error;
    }
    
}

// Cerrar la conexión a la base de datos
mysqli_close($conexion);
?>