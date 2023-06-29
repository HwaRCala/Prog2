<?php
// Realizar la conexión a la base de datos MySQL
$conexion = mysqli_connect("localhost", "root", "", "monitoreo_pmr");

// Verificar la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}

 
    if (isset($_GET['numero_serie'])) {
    $dispositivo = $_GET['numero_serie'];

    // Eliminar el PMR de la base de datos
    $sql = "DELETE FROM dispositivo WHERE numero_serie = '$dispositivo'";
    
    if ($conexion->query($sql) === TRUE) {
        echo "<html><head><script>alert('DISPOSITIVO Eliminado');</script></head></html>";
        echo "<meta http-equiv='refresh' content='0; url=bm.php'>";
    } else {
        echo "<html><head><script>alert('ERROR! El borrado no se completo');</script></head></html>". $conexion->error;
        echo "<meta http-equiv='refresh' content='0; url=bm.php'>";
    }
  
}

// Cerrar la conexión a la base de datos
mysqli_close($conexion);
?>