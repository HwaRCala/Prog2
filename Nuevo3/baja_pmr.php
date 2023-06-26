<?php
// Realizar la conexión a la base de datos MySQL
$conexion = mysqli_connect("localhost", "root", "", "monitoreo_pmr");

// Verificar la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}

    // Verificar si se recibió el ID del PMR a dar de baja
    if (isset($_GET['pmr'])) {
    $pmr = $_GET['pmr'];

    // Eliminar el PMR de la base de datos
    $sql = "UPDATE pmr SET estado ='inactivo' WHERE pmr = '$pmr'";
    
    if ($conexion->query($sql) === TRUE) {
        echo "<html><head><script>alert('PMR Eliminado');</script></head></html>";
        echo "<meta http-equiv='refresh' content='0; url=bm.php'>";
    } else {
        echo "<html><head><script>alert('ERROR! El borrado no se completo');</script></head></html>". $conexion->error;
        echo "<meta http-equiv='refresh' content='0; url=bm.php'>";
    }
    
}

// Cerrar la conexión a la base de datos
mysqli_close($conexion);
?>