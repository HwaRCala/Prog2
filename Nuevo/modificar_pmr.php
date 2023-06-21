<?php
// Verificar si se recibió el ID del PMR a modificar
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
    
    // Obtener los datos del PMR a modificar
    $sql = "SELECT * FROM pmr WHERE id_pmr = '$id_pmr'";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $pmr = $row['pmr'];
        $direccion = $row['direccion'];
        $sim = $row['ident_sim'];
        $dispositivo = $row['ident_dispositivo'];
        $estado = $row['estado'];
    } else {
        echo "No se encontró el PMR";
        exit;
    }
    
    // Verificar si se recibieron los datos del formulario de modificación
    if (isset($_POST['submit'])) {
        $pmr_nuevo = $_POST['pmr'];
        $direccion_nueva = $_POST['direccion'];
        $sim_nuevo = $_POST['sim'];
        $dispositivo_nuevo = $_POST['dispositivo'];
        $estado_nuevo = $_POST['estado'];
    
        // Actualizar los datos del PMR en la base de datos
        $sql_update = "UPDATE pmr SET pmr = '$pmr_nuevo', direccion = '$direccion_nueva', ident_sim = '$sim_nuevo', ident_dispositivo = '$dispositivo_nuevo', estado = '$estado_nuevo' WHERE id_pmr = '$id_pmr'";
    
        if ($conn->query($sql_update) === TRUE) {
            echo "PMR modificado correctamente";
        } else {
            echo "Error al modificar PMR: " . $conn->error;
        }
    }
    
    // Cerrar la conexión
    $conn->close();
}
?>