<?php
// Verificar si se recibió el ID del PMR a dar de baja
if (isset($_GET['id_pmr'])) {
    $id_pmr = $_GET['id_pmr'];

    // Establecer la conexión con la base de datos
    $servername = "localhost";
    $username = "tu_usuario";
    $password = "tu_contraseña";
    $dbname = "monitoreo_pmr";
    
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // Verificar si la conexión fue exitosa
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }
    
    // Eliminar el PMR de la base de datos
    $sql_delete = "DELETE FROM pmr WHERE id_pmr = '$id_pmr'";
    
    if ($conn->query($sql_delete) === TRUE) {
        echo "PMR eliminado correctamente";
    } else {
        echo "Error al eliminar PMR: " . $conn->error;
    }
    
    // Cerrar la conexión
    $conn->close();
}
?>